package actions;

import dao.Dao;
import formbeans.UserForm;
import model.User;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by korenev on 18.04.2016.
 */
public class SearchUserAction extends Action {


    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        UserForm userForm = (UserForm)form;

        User user = new Dao().getUserById(userForm.getId());
        if(user == null) {
            request.setAttribute("message","could not find user with id =" + userForm.getId());
            return mapping.findForward("failure");
        }
        else {
            request.setAttribute("user", user);
            return mapping.findForward("success");
        }
    }
}
