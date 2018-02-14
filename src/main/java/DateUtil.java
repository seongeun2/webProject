package main.java;

import java.util.Locale;
import java.util.Map;
import java.util.HashMap;
import java.util.Date;
import java.util.Calendar;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.text.StrSubstitutor;
import org.apache.commons.lang.time.DateUtils;
import org.apache.commons.lang.time.FastDateFormat;
import org.apache.commons.lang.time.DateFormatUtils;

/**
  <PRE>
 * Date Util class

 * Provide Method List
   DateUtil#system()                                                                 �ý��۳�¥
   DateUtil#system(String pattern)                                                   java.text.SimpleDateFormat compatible pattern�� �ý��۳�¥
   DateUtil#conv(String source, char c, String dt)                                   see javadoc
   DateUtil#convDyna(String source, char c, String dt)                               see javadoc
   DateUtil#convFULL(String source, char c, char t)                                  see javadoc
   DateUtil#add(final String source, int calendarField, int amount, final String dt) ��¥ ����
   DateUtil#calendar(final String source, int calendarField, final String dt)        see java.util.Calendar.get(int calendarField)�� String version
   DateUtil#week()                                                                   see javadoc
   DateUtil#week(int rangeStyle)                                                     see javadoc
   DateUtil#week(String source, int rangeStyle)                                      see javadoc
   DateUtil#bnbWeek()                                                                see javadoc
   DateUtil#bnbWeek(String source, final String dt)                                  see javadoc

   Ex. ���糯¥�� ���ϰ��� �� ���?
       DateUtil.system() = "20080123180000"
       DateUtil.system("yyyyMMdd") = "20080123"

       ��¥������ String���� delimiter�� �ְ� ���� ���?
       DateUtil.conv("20080122", '.', DateUtil.YYYYMMDD)   = "2008.01.22"
       DateUtil.conv("20080122", '/', DateUtil.YYYYMMDD)   = "2008/01/22"
       DateUtil.conv("200801", '/', DateUtil.YYYYMM)       = "2008/01"
       DateUtil.conv("200801", '-', DateUtil.YYYYMM)       = "2008-01"
       DateUtil.conv("080122", '/', DateUtil.YYMMDD)       = "08/01/22"
       DateUtil.conv("080122", '.', DateUtil.YYMMDD)       = "08.01.22"
       DateUtil.conv("0122", '/', DateUtil.MMDD)           = "01/22"
       DateUtil.conv("20080122180000", '/', DateUtil.FULL) = "2008/01/22 18:00:00"
       DateUtil.conv("20080122180000", '-', DateUtil.FULL) = "2008-01-22 18:00:00"
        
       ���糯¥�� �����? ���� Delimiter�� �ְ� ���� ���?       
       DateUtil.conv(DateUtils.system("MMdd"), '/', DateUtil.MMDD) = "01/22"
        
       FULL Format(yyyyMMddHHmmss)�� String���� ���? Delimiter�� �ְ� ���� ���? 
       DateUtil.convDyna(DateUtils.system(), '/', DateUtil.MMDD) = "01/22"
        
       ��¥�� �ð��� Delimiter�� ���? �ٲٰ� ���� ���?
       DateUtil.convFULL("20080122180000", '/', ':') = "2008/01/22 18:00:00"
       DateUtil.convFULL("20080122180000", '/', '-') = "2008/01/22 18-00-00"

       ��¥�� ���ϰų� �� ���?
       DateUtil.add("20080122180000", Calendar.MONTH, 2, DateUtil.FULL)  = "20080322180000"
       DateUtil.add("20080122180000", Calendar.MONTH, -2, DateUtil.FULL) = "20071122180000"
       DateUtil.add("20080122", Calendar.YEAR, 1, DateUtil.YYYYMMDD)     = "20090122"
       DateUtil.add("20080122", Calendar.DATE, 1, DateUtil.YYYYMMDD)     = "20080123"

       ������ �� �ָ� ��Ÿ���� ���ڷ� ���� ���?
       DateUtil.calendar("20080122180000", Calendar.DAY_OF_WEEK, DateUtil.FULL)  = 3

       ���Ͽ� ���� ����(���Ͻ�����,����������,����)�� ���� ���?
       DateUtil.week()                                             = "20080120" (���� ������)
                                                                     "20080124" (current date)
                                                                     "20080126" (���� ������)
                                                                     "2008�� 01�� 4����"
       DateUtil.week(DateUtil.RANGE_WEEK_SUNDAY)                   = "20080120" (���� ������)
                                                                     "20080124" (current date)
                                                                     "20080126" (���� ������)
                                                                     "2008�� 01�� 4����"
       DateUtil.week("20080122180000", DateUtil.RANGE_WEEK_SUNDAY) = "20080120180000" (���� ������)
                                                                     "20080124180000" (������)
                                                                     "20080126180000" (���� ������)
                                                                     "2008�� 01�� 4����"

	   �־��� ��¥�� �������� �յ� ������ ��¥�� ���� ���?
       DateUtil.bnbWeek()                              = "20080117" (�� ������ ��¥)
                                                         "20080124" (current date)
                                                         "20080131" (�� ������ ��¥)
       DateUtil.bnbWeek("20080124", DateUtil.YYYYMMDD) = "20080117" (�� ������ ��¥)
                                                         "20080124" (������)
                                                         "20080131" (�� ������ ��¥)

 * Required Method List
   N/A

 * Dependency 3rd-party Library List
   jakarta commons lang 2.3
   jakarta commons collections 3.2
  </PRE>

 * @author bigbang
 
 * @since
 <PRE>
 2008.01.22 created
 </PRE>
 */
public class DateUtil
	{

	public static final String YYYY = "yyyy";
	public static final String YYYYMMDD = "yyyyMMdd";
	public static final String YYYYMM = "yyyyMM";
	public static final String YYMMDD = "yyMMdd";
	public static final String MMDD = "MMdd";
	public static final String HHMMSS = "HHmmss";
	public static final String HHMM = "HHmm";
	public static final String YYYYMMDDHHMM = "yyyyMMddHHmm";
	public static final String FULL = "yyyyMMddHHmmss";
	public static final int RANGE_WEEK_SUNDAY = DateUtils.RANGE_WEEK_SUNDAY;
	public static final int RANGE_WEEK_MONDAY = DateUtils.RANGE_WEEK_MONDAY;
	public static final int RANGE_WEEK_RELATIVE = DateUtils.RANGE_WEEK_RELATIVE;
	public static final int RANGE_WEEK_CENTER = DateUtils.RANGE_WEEK_CENTER;

	private static final String TIME_DELIMITER = ":";
	private static final String DATE_TIME_DELIMITER = " ";
	private static final String EMPTY = "";
	private static final String RANGE_YYYYMMWEEK = "${yyyy}�� ${mm}�� ${week}����";


	private static final String[] DARR = { YYYY, YYYYMMDD, YYYYMM, YYMMDD, MMDD, HHMMSS, HHMM, YYYYMMDDHHMM, FULL };
	private static final int[] RARR = {DateUtil.RANGE_WEEK_SUNDAY, DateUtil.RANGE_WEEK_MONDAY, DateUtil.RANGE_WEEK_RELATIVE, DateUtil.RANGE_WEEK_CENTER};
	

	private DateUtil
		(
		)
		{
		}

	/**
	 * �ý��۳�¥�� �������� Method.
	 *
	 * @return String
	 */
	public static String system
		(
		)
		{
		return FastDateFormat.getInstance(FULL).format(new Date());
		}


	/**
	 * �ý��۳�¥�� �������� Method.
	 * @param pattern java.text.SimpleDateFormat compatible pattern
	 * @return String
	 */
	public static String system
		(
		final String pattern
		)
		{
		return FastDateFormat.getInstance(pattern).format(new Date());
		}


	/**
	 * Date Format String�� delimiter�� append�ϴ� Method.
   	   <pre>
       Ex. DateUtil.conv("20080122", '.', DateUtil.YYYYMMDD)   = "2008.01.22"
           DateUtil.conv("20080122", '/', DateUtil.YYYYMMDD)   = "2008/01/22"
           DateUtil.conv("200801", '/', DateUtil.YYYYMM)       = "2008/01"
           DateUtil.conv("200801", '-', DateUtil.YYYYMM)       = "2008-01"
           DateUtil.conv("080122", '/', DateUtil.YYMMDD)       = "08/01/22"
           DateUtil.conv("080122", '.', DateUtil.YYMMDD)       = "08.01.22"
           DateUtil.conv("0122", '/', DateUtil.MMDD)           = "01/22"
           DateUtil.conv("20080122180000", '/', DateUtil.FULL) = "2008/01/22 18:00:00"
           DateUtil.conv("20080122180000", '-', DateUtil.FULL) = "2008-01-22 18:00:00" (�ú����� delimiter�� �ٲٷ��� convFULL method ����)
           DateUtil.conv("", '/', DateUtil.YYMMDD)             = ""
           DateUtil.conv((String)null, '/', DateUtil.HHMMSS)   = ""
   	   </pre>
	 * @param source java.text.SimpleDateFormat compatible pattern�� String
	 * @param c delimiter
	 * @param dt Date Format�� type
			<pre>
                 DateUtil.YYYY         : yyyy
                 DateUtil.YYYYMMDD     : yyyyMMdd
                 DateUtil.YYYYMM       : yyyyMM
                 DateUtil.YYMMDD       : yyMMdd
                 DateUtil.MMDD         : MMdd
                 DateUtil.HHMMSS       : HHmmss
                 DateUtil.HHMM         : HHmm
                 DateUtil.YYYYMMDDHHMM : yyyyMMddHHmm
                 DateUtil.FULL         : yyyyMMddHHmmss
			</pre>
	 * @return String, empty if null String input
	 */
	public static String conv
		(
		final String source,
		final char c,
		final String dt
		)
		{
		if ( StringUtils.isBlank(source) )
			{
			return EMPTY;
			}

		if ( ! ArrayUtils.contains(DARR, dt) )
			{
			return source;
			}

		if ( StringUtils.equals(dt, YYYY) )
			{
			return convYYYY(source, c);
			}
		else if ( StringUtils.equals(dt, YYYYMMDD) )
			{
			return convYYYYMMDD(source, c);
			}
		else if ( StringUtils.equals(dt, YYYYMM) )
			{
			return convYYYYMM(source, c);
			}
		else if ( StringUtils.equals(dt, YYMMDD) )
			{
			return convYYMMDD(source, c);
			}
		else if ( StringUtils.equals(dt, MMDD) )
			{
			return convMMDD(source, c);
			}
		else if ( StringUtils.equals(dt, HHMMSS) )
			{
			return convHHMMSS(source, c);
			}
		else if ( StringUtils.equals(dt, HHMM) )
			{
			return convHHMM(source, c);
			}
		else if ( StringUtils.equals(dt, YYYYMMDDHHMM) )
			{
			return convYYYYMMDDHHMM(source, c);
			}
		else // FULL
			{
			return convFULL(source, c);
			}
		}


	/**
	 * Date Format String�� delimiter�� append�ϴ� Method.
   	   <pre>
       Ex. DateUtil.convDyna("20080122180000", '.', DateUtil.YYYYMMDD) = "2008.01.22"
           DateUtil.convDyna("20080122180000", '.', DateUtil.YYYYMM)   = "2008.01"
           DateUtil.convDyna("20080122180000", '/', DateUtil.YYYYMMDD) = "2008/01/22"
           DateUtil.convDyna("20080122180000", '.', DateUtil.MMDD)     = "01.22"
           DateUtil.convDyna("20080122180000", ':', DateUtil.HHMMSS)   = "18:00:00"
           DateUtil.convDyna("20080122180000", '.', DateUtil.HHMM)     = "18.00"
           DateUtil.convDyna("20080122180000", '.', DateUtil.FULL)     = "2008.01.22 18:00:00" (�ú����� delimiter�� �ٲٷ��� convFULL method ����)
   	   </pre>
	 * @param source java.text.SimpleDateFormat compatible pattern(yyyyMMddHHmmsss)�� String
	 * @param c delimiter
	 * @param dt Date Format�� type
			<pre>
                 DateUtil.YYYY         : yyyy
                 DateUtil.YYYYMMDD     : yyyyMMdd
                 DateUtil.YYYYMM       : yyyyMM
                 DateUtil.YYMMDD       : yyMMdd
                 DateUtil.MMDD         : MMdd
                 DateUtil.HHMMSS       : HHmmss
                 DateUtil.HHMM         : HHmm
                 DateUtil.YYYYMMDDHHMM : yyyyMMddHHmm
                 DateUtil.FULL         : yyyyMMddHHmmss
			</pre>
	 * @return String, empty if null String input
	 */
	public static String convDyna
		(
		final String source,
		final char c,
		final String dt
		)
		{
		if ( StringUtils.isBlank(source) )
			{
			return EMPTY;
			}

		if ( ! ArrayUtils.contains(DARR, dt) )
			{
			return source;
			}

		int slen = source.length();
		if ( slen < FULL.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer(20);
		if ( StringUtils.equals(dt, YYYY) )
			{
			return convDynaYYYY(source,c);
			}
		else if ( StringUtils.equals(dt, YYYYMMDD) )
			{
			return convDynaYYYYMMDD(source,c);
			}
		else if ( StringUtils.equals(dt, YYYYMM) )
			{
			return convDynaYYYYMM(source,c);
			}
		else if ( StringUtils.equals(dt, YYMMDD) )
			{
			return convDynaYYMMDD(source,c);
			}
		else if ( StringUtils.equals(dt, MMDD) )
			{
			return convDynaMMDD(source,c);
			}
		else if ( StringUtils.equals(dt, HHMMSS) )
			{
			return convDynaHHMMSS(source,c);
			}
		else if ( StringUtils.equals(dt, HHMM) )
			{
			return convDynaHHMM(source,c);
			}
		else if ( StringUtils.equals(dt, YYYYMMDDHHMM) )
			{
			return convDynaYYYYMMDDHHMM(source,c);
			}
		else // FULL
			{
			return convDynaFULL(source,c);
			}
		}


	/**
	 * Date Format String�� delimiter�� append�ϴ� Method.
   	   <pre>
       Ex. DateUtil.convFULL("20080122180000", '/', ':') = "2008/01/22 18:00:00"
           DateUtil.convFULL("20080122180000", '/', '-') = "2008/01/22 18-00-00"
   	   </pre>
	 * @param source java.text.SimpleDateFormat compatible pattern�� String
	 * @param c date delimiter
	 * @param t time delimiter
	 * @return String, empty if null String input
	 */
	public static String convFULL
		(
		final String source,
		final char c,
		final char t
		)
		{
		int slen = source.length();
		if ( slen != FULL.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer(20);
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) )
			.append( DATE_TIME_DELIMITER )
		    .append( StringUtils.substring(source,8,10) )
			.append( t )
		    .append( StringUtils.substring(source,10,12) )
			.append( t )
		    .append( StringUtils.substring(source,12,14) );

		return buff.toString();
		}


	/**
	 * Date Format String�� ��¥�� �����ϴ� Method.
   	   <pre>
       Ex. DateUtil.add("20080122180000", Calendar.MONTH, 2, DateUtil.FULL)  = "20080322180000"
           DateUtil.add("20080122180000", Calendar.MONTH, -2, DateUtil.FULL) = "20071122180000"
           DateUtil.add("20080122", Calendar.YEAR, 1, DateUtil.YYYYMMDD)     = "20090122"
           DateUtil.add("20080122", Calendar.DATE, 1, DateUtil.YYYYMMDD)     = "20080123"
   	   </pre>
	 * @param source java.text.SimpleDateFormat compatible pattern�� String
	 * @param calendarField - the calendar field to add to
	 * @param amount - the amount to add, may be negative
	 * @param dt Date Format�� type
			<pre>
                 DateUtil.YYYY         : yyyy
                 DateUtil.YYYYMMDD     : yyyyMMdd
                 DateUtil.YYYYMM       : yyyyMM
                 DateUtil.YYMMDD       : yyMMdd
                 DateUtil.MMDD         : MMdd
                 DateUtil.HHMMSS       : HHmmss
                 DateUtil.HHMM         : HHmm
                 DateUtil.YYYYMMDDHHMM : yyyyMMddHHmm
                 DateUtil.FULL         : yyyyMMddHHmmss
			</pre>
	 * @return String, empty if null String input
	 */
	public static String add
		(
		final String source,
		int calendarField,
		int amount,
		final String dt
		)
		throws ParseException
		{
		if ( StringUtils.isBlank(source) )
			{
			return EMPTY;
			}

		if ( ! ArrayUtils.contains(DARR, dt) )
			{
			return source;
			}

		return FastDateFormat.getInstance(dt).format( DateUtils.add(new SimpleDateFormat(dt, Locale.KOREA).parse(source), calendarField, amount) );
		}


	/**
	 * Date Format String�� java.util.Calendar�� get(int calendarField)�� �̿��Ͽ� �����ϴ� Method.
   	   <pre>
       Ex. DateUtil.add("20080122180000", Calendar.DAY_OF_WEEK, DateUtil.FULL)  = 3
   	   </pre>
	 * @param source java.text.SimpleDateFormat compatible pattern�� String
	 * @param calendarField - the calendar field to get to
	 * @param dt Date Format�� type
			<pre>
                 DateUtil.YYYY         : yyyy
                 DateUtil.YYYYMMDD     : yyyyMMdd
                 DateUtil.YYYYMM       : yyyyMM
                 DateUtil.YYMMDD       : yyMMdd
                 DateUtil.MMDD         : MMdd
                 DateUtil.HHMMSS       : HHmmss
                 DateUtil.HHMM         : HHmm
                 DateUtil.YYYYMMDDHHMM : yyyyMMddHHmm
                 DateUtil.FULL         : yyyyMMddHHmmss
			</pre>
	 * @return String, empty if null String input
	 */
	public static int calendar
		(
		final String source,
		int calendarField,
		final String dt
		)
		throws ParseException
		{
		if ( StringUtils.isBlank(source) )
			{
			throw new ParseException("source string is empty", 0);
			}

		if ( ! ArrayUtils.contains(DARR, dt) )
			{
			throw new ParseException("dt DateUtil Field is not match", 0);
			}

		Calendar c = Calendar.getInstance();
		c.setTime( new SimpleDateFormat(dt, Locale.KOREA).parse(source) );
		return c.get(calendarField);
		}


	/**
	 * ���Ͽ� ���� ����(���Ͻ�����,����������,����)�� ���ϴ� Method.
   	   <pre>
       Ex. DateUtil.week() = "20080120" (���� ������)
                             "20080124" (current date)
                             "20080126" (���� ������)
                             "2008�� 1�� 4����"
   	   </pre>
	 * @return String[], NOT NULL�̸� [0] ���� ������, [1] current date, [2] ���� ������, [3] yyyy�� MM�� W����
	 */


	/**
	 * ���Ͽ� ���� ����(���Ͻ�����,����������,����)�� ���ϴ� Method.
   	   <pre>
       Ex.  DateUtil.week(DateUtil.RANGE_WEEK_SUNDAY) = "20080120" (���� ������)
                                                        "20080124" (current date)
                                                        "20080126" (���� ������)
                                                        "2008�� 1�� 4����"
            DateUtil.week(DateUtil.RANGE_WEEK_MONDAY) = "20080121" (���� ������)
                                                        "20080124" (current date)
                                                        "20080127" (���� ������)
                                                        "2008�� 1�� 4����"
   	   </pre>
	 * @param rangeStyle must be one of 
			<pre>
                 DateUtil.RANGE_WEEK_SUNDAYYYY
                 DateUtil.RANGE_WEEK_MONDAY
                 DateUtil.RANGE_WEEK_RELATIVE
                 DateUtil.RANGE_WEEK_CENTER
			</pre>
	 * @return String[], NOT NULL�̸� [0] ���� ������, [1] current date, [2] ���� ������, [3] yyyy�� MM�� W����
	 */


	/**
	 * ���Ͽ� ���� ����(���Ͻ�����,����������,����)�� ���ϴ� Method.
   	   <pre>
       Ex.  DateUtil.week("20080124", DateUtil.RANGE_WEEK_SUNDAY, DateUtil.YYYYMMDD)   = "20080120" (���� ������)
                                                                                         "20080124" (������)
                                                                                         "20080126" (���� ������)
                                                                                         "2008�� 1�� 4����"
            DateUtil.week("20080124180000", DateUtil.RANGE_WEEK_MONDAY, DateUtil.FULL) = "20080121" (���� ������)
                                                                                         "20080124" (������)
                                                                                         "20080127" (���� ������)
                                                                                         "2008�� 1�� 4����"
   	   </pre>
	 * @param source java.text.SimpleDateFormat compatible pattern�� String
	 * @param rangeStyle must be one of 
			<pre>
                 DateUtil.RANGE_WEEK_SUNDAYYYY
                 DateUtil.RANGE_WEEK_MONDAY
                 DateUtil.RANGE_WEEK_RELATIVE
                 DateUtil.RANGE_WEEK_CENTER
			</pre>
	 * @param dt Date Format�� type
			<pre>
                 DateUtil.YYYYMMDD     : yyyyMMdd
                 DateUtil.YYYYMMDDHHMM : yyyyMMddHHmm
                 DateUtil.FULL         : yyyyMMddHHmmss
			</pre>
	 * @return String[], NOT NULL�̸� [0] ���� ������, [1] source, [2] ���� ������, [3] yyyy�� MM�� W����
	 */


	/**
	 * current date�� �������� �յ� ������ ��¥�� ���ϴ� Method.
   	   <pre>
       Ex. DateUtil.bnbWeek() = "20080117" (�� ������ ��¥)
                                "20080124" (current date)
                                "20080131" (�� ������ ��¥)
   	   </pre>
	 * @return String[], NOT NULL�̸� [0] �� ������ ��¥, [1] ������, [2] �� ������ ��¥
	 */
	public static String[] bnbWeek
		(
		)
		throws ParseException
		{
		return bnbWeek(DateUtil.system(YYYYMMDD), YYYYMMDD);
		}


	/**
	 * �־��� ��¥�� �������� �յ� ������ ��¥�� ���ϴ� Method.
   	   <pre>
       Ex.  DateUtil.bnbWeek("20080124", DateUtil.YYYYMMDD) = "20080117" (�� ������ ��¥)
                                                              "20080124" (������)
                                                              "20080131" (�� ������ ��¥)
   	   </pre>
	 * @param source java.text.SimpleDateFormat compatible pattern�� String
	 * @param dt Date Format�� type
			<pre>
                 DateUtil.YYYYMMDD     : yyyyMMdd
                 DateUtil.YYYYMMDDHHMM : yyyyMMddHHmm
                 DateUtil.FULL         : yyyyMMddHHmmss
			</pre>
	 * @return String[], NOT NULL�̸� [0] �� ������ ��¥, [1] ������, [2] �� ������ ��¥
	 */
	public static String[] bnbWeek
		(
		final String source,
		final String dt
		)
		throws ParseException
		{
		if ( StringUtils.isBlank(source) )
			{
			throw new ParseException("source string is empty", 0);
			}

		if ( ! ArrayUtils.contains(new String[] {YYYYMMDD, YYYYMMDDHHMM, FULL}, dt) )
			{
			throw new ParseException("dt DateUtil Field is not match", 0);
			}

		return new String[] { DateUtil.add(source, Calendar.DATE, -7, dt), source, DateUtil.add(source, Calendar.DATE, 7, dt) };
		}


	private static String convYYYY
		(
		final String source,
		final char c
		)
		{
		char temp = c;
		return source;
		}


	private static String convYYYYMMDD
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != YYYYMMDD.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) );

		return buff.toString();
		}


	private static String convYYYYMM
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != YYYYMM.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) );

		return buff.toString();
		}


	private static String convYYMMDD
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != YYMMDD.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,2) )
			.append( c )
			.append( StringUtils.substring(source,2,4) )
			.append( c )
			.append( StringUtils.substring(source,4,6) );

		return buff.toString();
		}


	private static String convMMDD
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != MMDD.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,2) )
			.append( c )
		    .append( StringUtils.substring(source,2,4) );

		return buff.toString();
		}


	private static String convHHMMSS
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != HHMMSS.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,2) )
			.append( c )
		    .append( StringUtils.substring(source,2,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) );

		return buff.toString();
		}


	private static String convHHMM
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != HHMM.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,2) )
			.append( c )
		    .append( StringUtils.substring(source,2,4) );

		return buff.toString();
		}


	private static String convYYYYMMDDHHMM
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != YYYYMMDDHHMM.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer(20);
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) )
			.append( DATE_TIME_DELIMITER )
		    .append( StringUtils.substring(source,8,10) )
			.append( TIME_DELIMITER )
		    .append( StringUtils.substring(source,10,12) );

		return buff.toString();
		}


	private static String convFULL
		(
		final String source,
		final char c
		)
		{
		int slen = source.length();
		if ( slen != FULL.length() )
			{
			return source;
			}

		StringBuffer buff = new StringBuffer(20);
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) )
			.append( DATE_TIME_DELIMITER )
		    .append( StringUtils.substring(source,8,10) )
			.append( TIME_DELIMITER )
		    .append( StringUtils.substring(source,10,12) )
			.append( TIME_DELIMITER )
		    .append( StringUtils.substring(source,12,14) );

		return buff.toString();
		}


	private static String convDynaYYYY
		(
		final String source,
		final char c
		)
		{
		char temp = c;
		return StringUtils.substring(source,0,4);
		}


	private static String convDynaYYYYMMDD
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) );

		return buff.toString();
		}


	private static String convDynaYYYYMM
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) );

		return buff.toString();
		}


	private static String convDynaYYMMDD
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,2,4) )
			.append( c )
			.append( StringUtils.substring(source,4,6) )
			.append( c )
			.append( StringUtils.substring(source,6,8) );

		return buff.toString();
		}


	private static String convDynaMMDD
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) );

		return buff.toString();
		}


	private static String convDynaHHMMSS
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,8,10) )
			.append( c )
		    .append( StringUtils.substring(source,10,12) )
			.append( c )
		    .append( StringUtils.substring(source,12,14) );

		return buff.toString();
		}


	private static String convDynaHHMM
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer();
		buff.append( StringUtils.substring(source,8,10) )
			.append( c )
		    .append( StringUtils.substring(source,10,12) );

		return buff.toString();
		}


	private static String convDynaYYYYMMDDHHMM
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer(20);
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) )
			.append( DATE_TIME_DELIMITER )
		    .append( StringUtils.substring(source,8,10) )
			.append( TIME_DELIMITER )
		    .append( StringUtils.substring(source,10,12) );

		return buff.toString();
		}


	private static String convDynaFULL
		(
		final String source,
		final char c
		)
		{
		StringBuffer buff = new StringBuffer(20);
		buff.append( StringUtils.substring(source,0,4) )
			.append( c )
		    .append( StringUtils.substring(source,4,6) )
			.append( c )
		    .append( StringUtils.substring(source,6,8) )
			.append( DATE_TIME_DELIMITER )
		    .append( StringUtils.substring(source,8,10) )
			.append( TIME_DELIMITER )
		    .append( StringUtils.substring(source,10,12) )
			.append( TIME_DELIMITER )
		    .append( StringUtils.substring(source,12,14) );

		return buff.toString();
		}


	}
