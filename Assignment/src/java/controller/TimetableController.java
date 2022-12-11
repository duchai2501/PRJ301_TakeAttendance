/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.LecturerDBContext;
import dal.SessionDBContext;
import dal.TimeSlotDBContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import model.Account;
import model.Lecturer;
import model.Session;
import model.TimeSlot;
import util.DateTimeHelper;

/**
 *
 * @author admin
 */
public class TimetableController extends BaseAuthenticationController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Account account = (Account) req.getSession().getAttribute("account");
        String lecid = account.getLecturer().getLecid();
        String raw_from = req.getParameter("from");
        String raw_to = req.getParameter("to");
        java.sql.Date from = null;
        java.sql.Date to = null;
        if (raw_from == null || raw_from.length() == 0) {
            Date today = new Date();
            int todayOfWeek = DateTimeHelper.getDayOfWeek(today);
            Date e_from = DateTimeHelper.addDays(today, 2 - todayOfWeek);
            Date e_to = DateTimeHelper.addDays(today, 8 - todayOfWeek);
            from = DateTimeHelper.toDateSql(e_from);
            to = DateTimeHelper.toDateSql(e_to);
        } else {
            from = java.sql.Date.valueOf(raw_from);
            to = java.sql.Date.valueOf(raw_to);
        }
        req.setAttribute("from", from);
        req.setAttribute("to", to);
        req.setAttribute("dates", DateTimeHelper.getDateList(from, to));
        
        TimeSlotDBContext slotDB = new TimeSlotDBContext();
        ArrayList<TimeSlot> slots = slotDB.list();
        req.setAttribute("slots", slots);
        
        SessionDBContext sesDB = new SessionDBContext();
        ArrayList<Session> sessions = sesDB.getSession(lecid,from,to);
        req.setAttribute("sessions", sessions);
        
        LecturerDBContext lecDB = new LecturerDBContext();
        Lecturer lecturer = lecDB.getByID(lecid);
        req.setAttribute("lecturer", lecturer);
        
        req.getRequestDispatcher("timetable.jsp").forward(req, resp);
    }

}
