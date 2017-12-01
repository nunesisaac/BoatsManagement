package com.example.boatsmanagement.controller;


import com.example.boatsmanagement.entity.BoatsEntity;
import com.example.boatsmanagement.entity.BoatsRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoatsController {

    @Autowired
    BoatsRepo boatsRepo;

    @RequestMapping("/")
    public ModelAndView doHome(){
        ModelAndView mv = new ModelAndView("crud");
        mv.addObject("lists",boatsRepo.findAll());
        return mv;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView doSave(@RequestParam("id") String id,@RequestParam("name") String name,@RequestParam("registration_number") String registration_number,@RequestParam("type") String type){
        ModelAndView mv = new ModelAndView("redirect:/");
        BoatsEntity boat;
        if(!id.isEmpty()){
            boat = (BoatsEntity)boatsRepo.findOne(Integer.parseInt(id));
        }else{
             boat =new BoatsEntity();
        }
        boat.setName(name);
        boat.setRegistration_number(registration_number);
        boat.setType(type);
        boatsRepo.save(boat);
        return mv;
    }

    @RequestMapping(value ="/delete/{id}", method = RequestMethod.GET)
    public ModelAndView doDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/");
        boatsRepo.delete(id);
        return mv;
    }

    @RequestMapping(value ="/edit/{id}", method = RequestMethod.GET)
    public ModelAndView doEdit(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("edit");
        mv.addObject("lists",boatsRepo.findOne(id));
        return mv;
    }
}
