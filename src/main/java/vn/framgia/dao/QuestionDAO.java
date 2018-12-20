package vn.framgia.dao;

import java.util.List;

import vn.framgia.model.Question;

public interface QuestionDAO extends BaseDAO<Integer, Question> {
	Long countListAll();

	List<Question> listAll(int pageSize, int pageNumber);

	Question findQuestionById(int id);

	List<Question> getQuestionByIdSubject(Integer idSubject);

	List<Question> getQuestionByIdExercise(Integer idExercise);

	boolean saveListQuestion(List<Question> listQuestion);
}
