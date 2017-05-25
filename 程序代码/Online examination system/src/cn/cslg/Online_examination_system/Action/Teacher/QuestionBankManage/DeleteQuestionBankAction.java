package cn.cslg.Online_examination_system.Action.Teacher.QuestionBankManage;

import cn.cslg.Online_examination_system.ActionForm.Teacher.QuestionBankManage.DeleteQuestionBankActionForm;
import cn.cslg.Online_examination_system.ToolBean.Teacher;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Administrator on 2017/5/24.
 * LastEdit: 2017-5-25
 * Contact me:
 *     Phone: 18852923073
 *     E-mail: 18852923073@163.com
 */
public class DeleteQuestionBankAction extends Action {
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
                                 HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        Teacher teacher = (Teacher) request.getSession().getAttribute("user");
        DeleteQuestionBankActionForm deleteQuestionBankActionForm = (DeleteQuestionBankActionForm) form;
        int questionBankID = Integer.parseInt(deleteQuestionBankActionForm.getQuestionBankID());
        int courseID = teacher.queryQuestionBankCourseID(questionBankID);

        request.setAttribute("courseID", courseID);
        teacher.deleteQuestionBank(questionBankID);
        return mapping.findForward("questionBankIndex");
    }
}
