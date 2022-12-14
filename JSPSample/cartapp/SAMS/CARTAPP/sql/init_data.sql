# Data population

delete from CATEGORY_PRODUCT_XREF;
delete from CATEGORY;
delete from PRODUCT;
delete from PROMOTION;

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Java 2 Micro Edition (J2ME) Application Development',
        '2001-11-28','672320959','The key to Java 2 Micro Edition (J2ME) Application Development is the clear, concise explanations of the J2ME technology in relation to the existing Java platform. This book assumes proficiency with Java and presents strategies for understanding and deploying J2ME applications. The book presents numerous real-world examples, including health care and financial sector examples from the authors\' professional experience.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Oracle and Java Development',
        '2001-08-17','672321173','Oracle and Java Application Development describes Oracle\'s Internet Computing Platform for developing applications; outlines Key Oracle Java technologies like Enterprise Java Beans, Business Components, Java Server Pages, and Servlets for developing and deploying applications using Oracle 8i;.describes the creation of dynamic Web content with Java.; and covers database interaction with Java using Java stored procedures, JDBC, and SQLJ.', 39.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Sams Teach Yourself Wireless Java with J2ME in 21 Days',
        '2001-06-27','672321424','Sams Teach Yourself Wireless Java with J2ME in 21 Days begins by establishing the basic parameters of J2ME development and its uses in building wireless applications. The tutorial chapters introduce both text and graphical application development for typical wireless devices. Finally, the book presents the major types of applications that the wireless developer will build-information management, communications, games, etc. The book also introduces the basic concepts of networking wireless devices through Java. ', 39.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Wireless Java Programming with Java 2 Micro Edition',
        '2001-05-24','672321351','Wireless Device Programming with Java 2 Micro Edition assumes readers are motivated to build the next generation wireless application by leveraging the J2ME technology. The book provides commercial-quality code and examples primarily based on the industry-leading Motorola phone emulator.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('"Developing Java Servlets, Second Edition"',
        '2001-05-21','672321076','Developing Java Servlets, Second Edition, is a comprehensive, code-intensive book for professional Java developers. It explains the Java Servlet API architecture and client/server development concepts and contains detailed, professional programming techniques for building sophisticated e-commerce and database servlet applications. New topics covered in the updated edition are: JavaMail; Servlets with XML, JSP, and EJB; Pluggable web applications; Wireless servlets with WML/WMLScripts. ', 39.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('"Sams Teach Yourself Java 2 in 21 Days, Professional Reference Edition, Second Edition"',
        '2001-05-21','672320614','Sams Teach Yourself Java in 21 Days continues to be one of the most popular, best-selling Java tutorials on the market. It has been acclaimed for its clear and personable writing, for its extensive use of examples, and for its logical and complete organization. The Professional Reference Edition of the book includes an extra seven chapters covering advanced topics like object serialization, remote method invocation, accessibility, security, JavaBeans, JDBC, and advanced data structures - as well as a 200-page reference section detailing the most commonly used aspects of the Java language. This edition of the book has been updated and revised to cover version 1.3 of the Java 2 Standard Edition SDK, and the book\'s CD-ROM includes a fully functional Java compiler, as well as the book\'s source code and a collection of third-party Java development tools and utilities. ', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Sams Teach Yourself JavaServer Pages in 24 Hours',
        '2000-12-18','672320231','Sams Teach Yourself JavaServer Pages in 24 Hours guarantees to teach 24 one-hour lessons on JSP and its ties to other J2EE techologies, including Servlets and JDBC. Additionally, this book covers the comprehensive development of JSPs using tools such as BEA\'s WebLogic Server and Apache Tomcat. Each lesson builds on the previous one, allowing the reader to understand the subject of JSPs from the ground-up.', 29.95);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Sams Teach Yourself Java 2 in 24 Hours, Second Edition',
        '2000-11-17','672320363','Revised and updated edition of the leading Java tutorial for beginners with no previous programming experience. The book\'s short, simple one-hour chapters are easy to understand and they carefully step the reader through the fundamentals of Java programming. This edition has been updated to cover the new Java SDK version 1.3. Readers love this book -- they say it explains Java better than any other book they\'ve seen, and that it\'s very clear, well-written, and interesting to read. They even appreciate the author\'s somewhat unique sense of humor.', 24.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('XML Development with Java 2',
        '2000-10-18','672316536','XML Development with Java 2 provides the information and techniques a Java developer will need to integrate XML into Java-based applications. This book presents a fast-paced introduction to XML and moves quickly into the areas where XML has the biggest impact on Java Development. The book covers crucial topics such as the XML Documet Object Model (DOM), Using Java and XSL to transform and format XML data, Integrating XML into JavaBeans and EJB development, and using XML with Java Servlets. The authors also cover the impact XML has on Java database access and the way XML works with the Swing classes.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('"Sams Teach Yourself JavaScript in 24 Hours, Second Edition"',
        '2000-10-9','672320258','Second edition updates the current best-selling book to cover the latest version, JavaScript 1.5', 24.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Java Security Handbook',
        '2000-09-21','672316021','This book is a comprehensive guide to Java security issues. It assumes you are an experienced Java programmer, but have little experience with creating secure applications. This book covers formulating and enacting a network security policy to protect end-users, building e-commerce and database applications that can safely exchange secure information over networks and the Internet, cryptography, digital signatures, key management, and distributed computing: CORBA, RMI, and servlets.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('"Sams Teach Yourself Java 2 in 21 Days, Second Edition"',
        '2000-09-20','672319586','Sams Teach Yourself Java in 21 Days, Second Edition is known for its clear and personable writing, its extensive use of examples, and its logical step-by-step organization. This new edition maintains and improves upon all these qualities, while updating and revising the material to cover the latest developments in Java and the way the language is used today.', 29.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('"JavaScript Unleashed, Third Edition"',
        '2000-06-23','067231763X','JavaScript Unleashed, Third Edition serves as a reference to the JavaScript language for the high-end programmer as well as a guide for developing JavaScript applications from the ground up. The topics most important to the intermediate to advanced Javascript programmer are covered, including Web security, integrating JavaScript with Java, and forms and data validation. Other topics include creating special effects with JavaScript, controlling layers with JavaScript, DHTML and Cascading Style Sheets, and using lookup tables in JavaScript. Some of the new topics covered are Internet Explorer 5, Active Server Pages, Netscape Plug-in autoinstalls and applets digital signature verification, and content layering.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Pure JSP: Java Server Pages',
        '2000-06-8','672319020','Pure JSP gives a very concise conceptual overview of the JavaServer Pages technology and its related components. Once you have a firm foundation with the JSP technology, related topics such as JavaBeans, JDBC and Servlets are covered at a very high level. The book moves on to explain a large number of JSP techniques, which were determined by studying problems faced by JSP users in the professional world. The final section covers the more technical aspects of the JSP technology. Topics include related API\'s, server configuration, and charts and diagrams related to developing JSP applications.', 34.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Building Java Enterprise Systems with J2EE',
        '2000-06-7','672317958','The practical angle of Building Java Enterprise Systems with J2EE provides the conceptual background and wealth of code examples needed to actually assemble systems in a useful manner with the J2EE technologies. Furthermore, this book demonstrates how the technologies complement and build on top of one another via evolution of a cohesive and real sample application. You can use this book to learn, develop, and design your custom applications immediately.', 59.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('JavaBeans Unleashed',
        '1999-12-22','067231424X','JavaBeans Unleashed is a practical, professional, and comprehensive guide to JavaBeans. It assumes you are an experienced Java programmer but have little experience developing network and client/server applications. This book also contains an introduction to Enterprise JavaBeans, a new Java specification from Sun. JavaBeans works with the most popular distributed object protocols, so CORBA (the distributed object leading protocol from the Object Management Group), Java IDL (Interface Definition Language allows Java apps access to CORBA), and JNDI (Java Naming and Directory Interface which allows Java applications to access files on any network server) are also covered.', 49.99);
insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Pure Java 2',
        '1999-12-22','672316544','Pure Java 2 is a substantial and focused reference for professional Java programmers. This book begins with an accelerated introduction to Java 2 so that you can quickly understand the new concepts and begin developing your own applications. Professional programmers prefer to learn by examining code, so Pure Java 2 also contains hundreds of programming techniques, complete with well-commented code examples that you can immediately use in your own Java programs.', 24.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Sams Teach Yourself Java 2 Online in Web Time',
        '1999-09-1','672316684','Sams Teach Yourself Java 2 Online in Web Time helps the first-time programmer or the programmer new to Java to learn Java and its APIs. Written in a warm and familiar style, Teach Yourself Java in WebTime requires no previous programming experience. It incorporates the proven instructional techniques of the Teach Yourself series, including end-of-section quizzes and programming exercises that allow you to review and expand upon the concepts and skills presented in that chapter. The learning experience is further enhanced with an instructional Web site.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Java GUI Development',
        '1999-08-25','672315467','Java GUI Development covers the Java 2 AWT, JFC, and Swing Toolkit technologies for GUI programming. It provides professional developers and software engineers with 1) a clear understanding of the conceptual framework behind Java 2 GUI tools, 2) descriptions of Java GUI idioms, and 3) practical programming techniques proven to work with these tools. This approach enables developers to solve difficult GUI programming tasks faster, write tighter and faster code, and implement more sophisticated GUI designs. ', 34.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Java Thread Programming',
        '1999-08-20','672315858','Java Thread Programming shows you how to take full advantage of Java\'s thread facilities: when to use threads to increase your program\'s efficiency, how to use them effectively, and how to avoid common mistakes. There is thorough coverage of the Thread API, ThreadGroup classes, the Runnable interface, and the synchronized operator. Extensive, complete, code examples show programmers the details of creating and managing threads in real-world applications.', 34.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Pure JavaScript',
        '1999-08-19','672315475','Pure JavaScript is a substantial and focused reference for experienced Web developers. This book begins with an accelerated introduction to the newest features of JavaScript so that experienced Web developers can quickly understand the concepts of JavaScript and begin developing their own JavaScript solutions immediately. Pure JavaScript also contains insightful programming techniques, complete with well-commented code examples that you can immediately use in your own JavaScripts. This book contains the most complete, easily accessible JavaScript object reference with syntax, definitions, and examples of well-commented code for each entry.', 34.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Developing Java Servlets',
        '1999-06-21','672316005','Developing Java Servlets is a comprehensive, code-intensive book for professional Java developers. It explains the Java Servlet API architecture and client-server development concepts, and contains detailed, professional programming techniques for building sophisticated e-commerce and database servlet applications. This book explains HTTP, MIME, server-side includes, and other web-based client-server technologies that developers need to understand to build any servlet application. In addition, the book covers JDBC, RMI, CORBA, and other object technologies to the degree are needed to build sophisticated Java servlets.', 29.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Java 2 for Professional Developers',
        '1999-06-18','672316978','Java 2 for Professional Developers is a practical, code-intensive approach for readers who need to use Java for professional software development. This book teaches Java programming concepts and techniques within the context of professional, object- oriented, software analysis and design. Apply these concepts, idioms, and real-world applications to your own programs to become a more efficient and successful Java developer. In addition to the basic Java language, this book covers JFC, AWT, security, threads, sockets, JARs, JavaBeans, developing packages, and testing and debugging.', 34.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Java 2 Platform Unleashed',
        '1999-04-9','672316315','Java 2 Platform Unleashed is completely revised for Java 2. This complete reference covers all the core APIs of the Java 2 platform as well as higher-level topics that experienced Java programmers need to know. The book includes thousands of lines of code to demonstrate the sophisticated programming techniques that experienced Java programmers demand. Written for experienced Java programmers.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Sams Teach Yourself Java 2 in 21 Days',
        '1999-03-23','672316382','Sams Teach Yourself Java in 21 Days continues to be the most popular, best-selling Java tutorial on the market. It has been acclaimed for its clear and personable writing, for its extensive use of examples, and for its logical and complete organization. The third edition of the book maintains and improves upon all these qualities while updating the material to cover the latest developments in the Java language - such as using Java Foundation Classes, Java 2D Classes, and JavaBeans.', 29.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('The Official VisiBroker for Java Handbook',
        '1999-03-23','672314517','The Official VisiBroker for Java Handbook provides a comprehensive guide to learning how to effectively program with the VisiBroker for Java (VBJ) development tool. This book focuses exclusively on how to use the tool and all of its features and APIs, as well as how to execute both routine and sophisticated tasks. It serves as the most comprehensive collection of VBJ code samples available today and a hands-on reference tool that starts with the VisiBroker for Java basics and concludes by showing you how to make the most difficult features easy to use. High-level issues are discussed, but only in the context of how the tool should be deployed or implemented.', 39.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Java Distributed Objects',
        '1998-12-22','672315378','This book is a comprehensive guide to Java distributed computing. It assumes the reader is an experienced Java programming, but has little experience with network programming and distributed objects. This book covers networking, distributed computing architectures, advanced Java facilities, security, data management, and specific distributed computing techniques including sockets, Remote Method Invocation (RMI), Java servlets, Microsoft\'s Distributed Component Model (DCOM), and the Common Object Request Broker Architecture (CORBA). This book covers all these protocols, gives advice on when to use each protocol, and demonstrates how they work (or don\'t work) together.', 49.99);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Genuine Nagahyde PDA Carrying Case',
        '1998-12-22','PALMCASE','A genuine Nagahyde Palm-compatible PDA case, just the thing to keep your precious PDA safe from the elements.  Made from the skin of the rare endangered Naga, this case is sure to make you a hit at your next trade show.', 25.00);

insert into PRODUCT (TITLE, PUB_DATE, ISBN, DESCRIPTION, PRICE) values
       ('Jamaican Coffee',
        '1998-12-22','COFFEECAN','When a late night of engineering has your eyes defocused and you just can\'t grind out that last method, grind some of these imported Jamaican Blue Mountain coffee beans instead.  The caffeine will be just the thing to keep you going.', 12.00);

insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (1, 'Ben Forta');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (2, 'Bill Mccarty');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (3, 'Bulusu Lakshman');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (4, 'Charlton Ting');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (5, 'Donald Doherty');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (6, 'James Goodwill');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (7, 'Jamie Jaworski');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (8, 'Jason Gilliam');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (9, 'Jose Annunziato');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (10, 'Kenneth Litwak');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (11, 'Laura Lemay');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (12, 'Michael Kroll');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (13, 'Michael McCaffery');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (14, 'Michael Moncur');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (15, 'Michael Morrison');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (16, 'Mike Morgan');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (17, 'Paul Hyde');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (18, 'Paul Perrone');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (19, 'R. Allen Wyke');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (20, 'Rogers Cadenhead');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (21, 'Stefan Haustein');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (22, 'Stephanie Fesler');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (23, 'Stephen Gilbert');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (24, 'Vartan Piroumian');
insert into AUTHOR (AUTHOR_ID, AUTHOR_NAME)
       values (25, 'Yu Feng');

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672320959', author_id from author where author_name='Stefan Haustein';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672320959', author_id from author where author_name='Michael Kroll';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672321173', author_id from author where author_name='Bulusu Lakshman';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672321416', author_id from author where author_name='R. Allen Wyke';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672321424', author_id from author where author_name='Michael Morrison';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672321351', author_id from author where author_name='Yu Feng';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672321076', author_id from author where author_name='James Goodwill';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672320614', author_id from author where author_name='Laura Lemay';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672320231', author_id from author where author_name='Stephanie Fesler';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672320231', author_id from author where author_name='Jose Annunziato';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672320363', author_id from author where author_name='Rogers Cadenhead';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316536', author_id from author where author_name='Michael Daconta';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672320258', author_id from author where author_name='Michael Moncur';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316021', author_id from author where author_name='Jamie Jaworski';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672319586', author_id from author where author_name='Rogers Cadenhead';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672319586', author_id from author where author_name='Laura Lemay';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '067231763X', author_id from author where author_name='R. Allen Wyke';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672319020', author_id from author where author_name='James Goodwill';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672317958', author_id from author where author_name='Paul Perrone';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '067231424X', author_id from author where author_name='Donald Doherty';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316544', author_id from author where author_name='Kenneth Litwak';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316684', author_id from author where author_name='Bill Mccarty';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316684', author_id from author where author_name='Stephen Gilbert';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672315467', author_id from author where author_name='Vartan Piroumian';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672315858', author_id from author where author_name='Paul Hyde';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672315475', author_id from author where author_name='Charlton Ting';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672315475', author_id from author where author_name='Jason Gilliam';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672315475', author_id from author where author_name='R. Allen Wyke';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316005', author_id from author where author_name='James Goodwill';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316978', author_id from author where author_name='Mike Morgan';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316315', author_id from author where author_name='Jamie Jaworski';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672316382', author_id from author where author_name='Laura Lemay';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672314517', author_id from author where author_name='Michael McCaffery';

insert into PRODUCT_AUTHOR_XREF (PRODUCT_ISBN, AUTHOR_ID)
       select '672315378', author_id from author where author_name='Bill Mccarty';

insert into CATEGORY (CATEGORY_ID, CATEGORY_NAME, FEATURED_PRODUCT)
       values (1, 'Java', '672321076');

insert into CATEGORY (CATEGORY_ID, CATEGORY_NAME, FEATURED_PRODUCT)
       values (2, 'J2ME', '672321351');

insert into CATEGORY (CATEGORY_ID, CATEGORY_NAME, FEATURED_PRODUCT)
       values (3, 'J2EE', '672317958');

insert into CATEGORY (CATEGORY_ID, CATEGORY_NAME, FEATURED_PRODUCT)
       values (4, 'JDBC', '672321173');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672320959');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672321173');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672321424');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672321351');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672321076');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672320614');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672320231');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672320363');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316536');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672320258');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316021');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672319586');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '067231763X');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672319020');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672317958');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '067231424X');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316544');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316684');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672315467');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672315858');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672315475');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316005');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316978');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316315');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672316382');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672314517');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (1, '672315378');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (2, '672320959');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (2, '672321424');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (2, '672321351');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (3, '672320231');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (3, '672317958');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (4, '672321173');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (4, '672320614');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (4, '672320231');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (4, '672319020');

insert into CATEGORY_PRODUCT_XREF (CATEGORY_ID, PRODUCT_ISBN)
       values (4, '672316005');

insert into PROMOTION (PROMO_ID, PROMO_NAME, PROD_OR_CAT,
                       CATEGORY_ID, PRODUCT_ISBN, PROMO_TYPE,
                       DISCOUNT_QUANT, GIFT_ID)
       values (1, 'Get a Palm Case with any 2 J2ME Books', 'C', 2, null, 'B', 2, 'PALMCASE');

insert into PROMOTION (PROMO_ID, PROMO_NAME, PROD_OR_CAT,
                       CATEGORY_ID, PRODUCT_ISBN, PROMO_TYPE,
                       DISCOUNT_QUANT, GIFT_ID)
       values (2, 'Buy Javabeans Unleashed, get a can of Jamaican Coffee', 
              'P', null, '067231424X', 'B', 1, 'COFFEECAN');


