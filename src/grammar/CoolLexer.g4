lexer grammar CoolLexer;

tokens{
	ERROR,
	TYPEID,
	OBJECTID,
	BOOL_CONST,
	INT_CONST,
	STR_CONST,
	LPAREN,
	RPAREN,
	COLON,
	ATSYM,
	SEMICOLON,
	COMMA,
	PLUS,
	MINUS,
	STAR,
	SLASH,
	TILDE,
	LT,
	EQUALS,
	LBRACE,
	RBRACE,
	DOT,
	DARROW,
	LE,
	ASSIGN,
	CLASS,
	ELSE,
	FI,
	IF,
	IN,
	INHERITS,
	LET,
	LOOP,
	POOL,
	THEN,
	WHILE,
	CASE,
	ESAC,
	OF,
	NEW,
	ISVOID,
	NOT
}

/*
  DO NOT EDIT CODE ABOVE THIS LINE
*/

@members{

	/*
		YOU CAN ADD YOUR MEMBER VARIABLES AND METHODS HERE
	*/

	/**
	* Function to report errors.
	* Use this function whenever your lexer encounters any erroneous input
	* DO NOT EDIT THIS FUNCTION
	*/
	public void reportError(String errorString){
		setText(errorString);
		setType(ERROR);
	}

	public void processString() {
		Token t = _factory.create(_tokenFactorySourcePair, _type, _text, _channel, _tokenStartCharIndex, getCharIndex()-1, _tokenStartLine, _tokenStartCharPositionInLine);
		String text = t.getText();

		//write your code to test strings here

	}
}

/*
	WRITE ALL LEXER RULES BELOW
*/

SEMICOLON   : ';';
DARROW      : '=>';
BOOL_CONST	: 'T'[Rr][Uu][Ee] | 'F'[Aa][Ll][Ss][Ee] ;
TYPEID		: [A-Z][a-z|A-Z|0-9|_]* ;
OBJECTID	: [a-z][a-z|A-Z|0-9|_]* ;
INT_CONST	: [0-9]+ ;
STR_CONST	: '\"'[A-Z|a-z]*'\"' ;
LPAREN		: '(' ;
RPAREN		: ')' ;
COLON		: ':' ;
ATSYM		: '@' ;
COMMA		: ',' ;
PLUS		: '+' ;
MINUS		: '-' ;
STAR		: '*' ;
SLASH		: '/' ;
TILDE		: '~' ;
LT			: '<' ;
EQUALS		: '=' ;
LBRACE		: '{' ;
RBRACE		: '}' ;
DOT			: '.' ;
LE  		: '<=' ;
ASSIGN		: '<-' ;
CLASS		: [Cc][Ll][Aa][Ss][Ss] ;
ELSE		: [Ee][Ll][Ss][Ee] ;
FI			: [Ff][Ii];
IF			: [Ii][Ff] ;
IN 			: [Ii][Nn] ;
INHERITS	: [Ii][Nn][Hh][Ee][Rr][Ii][Tt][Ss] ;
LET			: [Ll][Ee][Tt] ;
LOOP		: [Ll][Oo][Oo][Pp] ;
POOL		: [Pp][Oo][Oo][Ll] ;
THEN		: [Tt][Hh][Ee][Nn] ;
WHILE		: [Ww][Hh][Ii][Ll][Ee] ;
CASE		: [Cc][Aa][Ss][Ee] ;
ESAC		: [Ee][Ss][Aa][Cc] ;
OF			: [Oo][Ff] ;
NEW			: [Nn][Ee][Ww] ;
ISVOID		: [Ii][Ss][Vv][Oo][Ii][Dd] ;
NOT			: [Nn][Oo][Tt] ;
