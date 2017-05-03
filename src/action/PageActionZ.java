package action;

import com.opensymphony.xwork2.ActionSupport;

public class PageActionZ extends ActionSupport {

	/**
	 *  表示するページナンバー
	 */
	private int pageNum;

	/**
	 *  ページ数を格納する配列
	 */
	private int[] page;

	/**
	 *   ページの最小数(1ページ)
	 */
	private int minPage;

	/**
	 *   表示するページネーションの数
	 *   現在表示しているページとその前後4ページの合計ページを表示している。
	 */
	private final int  PAGINATION=10;

	/**
	 *   データベースから取ってきたページの合計数
	 */
	private int maxPage;



	public String execute() {
System.out.println(pageNum);
		final int AROUNDPAGE=PAGINATION/2;
		System.out.println(AROUNDPAGE);
		/*
		 *
		 */
		maxPage = (int) Math.ceil((double) 75 / 12);

		/*
		 *   ページネーションに表示するページナンバーの最小単位計算(最低1ページ)
		 *   4は前後4ページ表示するための数字
		 */
		minPage = Math.max(pageNum - AROUNDPAGE, 1);

		/*
		 *   表示してるページナンバー+4が、データベースから取ってきたページの合計数を、上回ったら＆ページの合計数が5より多かったら
		 *    4は前後4ページ表示するための数字
		 *    5は最低1ページ+前後4ページの数字
		 */
		if (maxPage < pageNum + AROUNDPAGE && maxPage > AROUNDPAGE+1) {

			/*
			 * ページの合計数と表示する最大ページを合わせるため、最小単位をページの合計数から引く。
			 *
			 * maxPage(最大ページ数)が24、num(jspで表示してるページナンバー)が22だった場合、
			 * ↑の計算でminPageが18になる。最大ページ数が9以上の場合はページネーションは9個表示されるため
			 * 18から+1ずつの( 18,19,20,21,22,23,24,25,26 )表示されることになってしまうので、
			 * 9番目に最大ページ数の24を表示させるためminPageを16にしなければいけない。
			 * そのための計算　この場合は18+24-(22-4)=16
			 *
			 */
			minPage = Math.max((maxPage+1-PAGINATION),1);
		}

		/*
		 *ページネーションの合計数を計算
		 *変数名PAGINATIONはページ表示するための定数 (値は9)
		 *変数名countPaginationはデータベースから取ってきた合計ページ数
		 *9以下ならcountPaginationに合わせられる
		 */
		int maxPagination = Math.min(PAGINATION, maxPage);

		/*
		 * jspに表示するページネーションの合計を入れる配列。
		 */
		page = new int[maxPagination];

		/*
		 *  jspに表示するページネーションの数だけ繰り返す
		 */
		for (int i = 0; i < maxPagination; i++) {

			/*
			 * ページネーションに表示するページナンバーを1足しながら、
			 * 格納していく。
			 */
			page[i] = minPage + i;
			System.out.println(i+1+"hh" + page[i]);
		}

		return SUCCESS;
	}



	/**
	 * @return pageNum
	 */
	public int getPageNum() {
		return pageNum;
	}



	/**
	 * @param pageNum セットする pageNum
	 */
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}



	/**
	 * @return page
	 */
	public int[] getPage() {
		return page;
	}



	/**
	 * @param page セットする page
	 */
	public void setPage(int[] page) {
		this.page = page;
	}



	/**
	 * @return minPage
	 */
	public int getMinPage() {
		return minPage;
	}



	/**
	 * @param minPage セットする minPage
	 */
	public void setMinPage(int minPage) {
		this.minPage = minPage;
	}



	/**
	 * @return maxPage
	 */
	public int getMaxPage() {
		return maxPage;
	}



	/**
	 * @param maxPage セットする maxPage
	 */
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}



	/**
	 * @return pAGINATION
	 */
	public int getPAGINATION() {
		return PAGINATION;
	}





}
