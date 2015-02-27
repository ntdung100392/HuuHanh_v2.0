moment.tz.add({
    "zones": {
        "America/New_York": [
            "-4:56:2 - LMT 1883_10_18_12_3_58 -4:56:2",
            "-5 US E%sT 1920 -5",
            "-5 NYC E%sT 1942 -5",
            "-5 US E%sT 1946 -5",
            "-5 NYC E%sT 1967 -5",
            "-5 US E%sT"
        ]
    },
    "rules": {
        "US": [
            "1918 1919 2 0 8 2 0 1 D",
            "1918 1919 9 0 8 2 0 0 S",
            "1942 1942 1 9 7 2 0 1 W",
            "1945 1945 7 14 7 23 1 1 P",
            "1945 1945 8 30 7 2 0 0 S",
            "1967 2006 9 0 8 2 0 0 S",
            "1967 1973 3 0 8 2 0 1 D",
            "1974 1974 0 6 7 2 0 1 D",
            "1975 1975 1 23 7 2 0 1 D",
            "1976 1986 3 0 8 2 0 1 D",
            "1987 2006 3 1 0 2 0 1 D",
            "2007 9999 2 8 0 2 0 1 D",
            "2007 9999 10 1 0 2 0 0 S"
        ],
        "NYC": [
            "1920 1920 2 0 8 2 0 1 D",
            "1920 1920 9 0 8 2 0 0 S",
            "1921 1966 3 0 8 2 0 1 D",
            "1921 1954 8 0 8 2 0 0 S",
            "1955 1966 9 0 8 2 0 0 S"
        ]
    },
    "links": {}
});

function startTime()
{
    var hours = moment().tz("America/New_York").hours();
    var days = moment().tz("America/New_York").weekday();

    var str = '<b>Hours:</b> (New York time) <br/> Mon-Fri 9am-5pm <br/> Sat 10am-4pm<br/><br/>';
    str += '<b>Now is:</b> ' + moment().tz("America/New_York").format('dddd, h:mm:ss a') + '<br /><br />';
    
    

    if (hours >= 9 && hours < 17 && days >= 1 && days <= 5)
    {
        str += 'Full customer support available.';
    }
    else if (days === 6 && hours >= 10 && hours < 16)
    {
        str += 'Full customer support available.';
    }
    else
    {
        str += 'After working hours. Customer support is very limited. Please contact us again during normal working hours if you cannot connect to us now. Thank you.';
    }

    $('#working-hour').html(str);

    var t = setTimeout(function() {
        startTime();
    }, 1000);
}
//weeks

var DateTime = moment().tz("America/New_York").dayOfYear();

startTime();

