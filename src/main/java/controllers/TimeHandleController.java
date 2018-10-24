package controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import java.util.Date;
import java.util.TimeZone;

@Controller
@RequestMapping("/time")
public class TimeHandleController {
    @GetMapping
    private ModelAndView get(){
        ModelAndView time = getTime("Asia/Ho_Chi_Minh","viewTime");
        return time;
    }

    @PostMapping
    private ModelAndView returnTime(String city) {
       ModelAndView newTime = getTime(city,"viewTime") ;
        return newTime;
    }

    private ModelAndView getTime(String city ,String view){
        ModelAndView newTime = new ModelAndView(view);
        Date date = new Date();
        TimeZone local = TimeZone.getDefault();
        TimeZone locale = TimeZone.getTimeZone(city);
        long locale_time = date.getTime() +
                (locale.getRawOffset() - local.getRawOffset());
        date.setTime(locale_time);
        newTime.addObject("city", city);
        newTime.addObject("date", date);
        return newTime;
    }
}
