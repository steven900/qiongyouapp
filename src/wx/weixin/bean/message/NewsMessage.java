package wx.weixin.bean.message;

import java.util.List;

import wx.weixin.bean.Article;

public class NewsMessage extends BaseMessage{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int ArticleCount;
	
	private List<Article> Articles;

	public int getArticleCount() {
		return ArticleCount;
	}

	public void setArticleCount(int articleCount) {
		ArticleCount = articleCount;
	}

	public List<Article> getArticles() {
		return Articles;
	}

	public void setArticles(List<Article> articles) {
		Articles = articles;
	}

	
	
}
