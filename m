Return-Path: <SRS0=pRwE=CY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E31D1C433E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 01:05:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3189A206C9
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2020 01:05:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zcWOTP81";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="lqBhElr6"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3189A206C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:Date:Message-ID:
	From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nL/J1316mW95H/TLXiibcuPrmPq81fZ7pok6EvOwXE8=; b=zcWOTP81z3FkZpQ1sh6ZsQCWF
	LiXKorFZwJ6Iu0EvbDxRKG8KfauvDayIZfvZUFjOHFpmRiYk6t4zn5f710O+uM0j87tlVwiUkh5NG
	MN3gqCSfwRp55DhgiDjqVJJ/lG7aGJ5ZNbhspra/iB5M/XIJkq2DioMtqdvFaEX5tBGe54N36vWl3
	mwLY3k7qnBcLOwXmxHVAVyMC8f+u5d95kUxzGDbcEhWZ1F6s1TaZy/Z7vRtq+NEWsSl1LNMi9/OwA
	Pq3Da3KVq5YfqI1pYxmc0OJvJVF0ePYGxS6wzedfXjOZI4LIkpr/3C/Km6s1NxyE4bpwI82cQE2nv
	hj4n7YHcw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHzPm-0001Q7-Dj; Tue, 15 Sep 2020 01:05:46 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHzPi-0001NC-E9
 for linux-rockchip@lists.infradead.org; Tue, 15 Sep 2020 01:05:43 +0000
Received: from epcas1p4.samsung.com (unknown [182.195.41.48])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200915010537epoutp028835b3e0ab56dc640f235ad565cac64a~0z4UNCTEf0874808748epoutp02M
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2020 01:05:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200915010537epoutp028835b3e0ab56dc640f235ad565cac64a~0z4UNCTEf0874808748epoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1600131938;
 bh=7cG9MyWGNwhBGZW4n3v7v7+PSj/Cs4aYSzQytH3+M1c=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=lqBhElr6A4KvCCkAVQjnhXzjEm7cY/FPQ0ye9dc/FohioKV8sS6NrFGGun75WEr1D
 Y9B8IwpQZv3rQioUMPW+QmGea4r8HSq5UNUj4waAalj9oZ+4XVWSStql9UIfbIsAjW
 TgxcJcsSCh6awRau4X+q2EQcyykhBAn0puq56oJI=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200915010536epcas1p2c42d3884a5b8706df0f1fef293ce5797~0z4SiGtWv0119101191epcas1p2Z;
 Tue, 15 Sep 2020 01:05:36 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.154]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4Br4lx6RsjzMqYks; Tue, 15 Sep
 2020 01:05:33 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 5B.28.29173.953106F5; Tue, 15 Sep 2020 10:05:29 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
 20200915010529epcas1p34e3c68a606252fd079a8c72055b1e958~0z4MGFYXh0370203702epcas1p3A;
 Tue, 15 Sep 2020 01:05:29 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200915010529epsmtrp15aad051a12a55fb29e4887e4d7227b86~0z4MFSq4B1118711187epsmtrp1b;
 Tue, 15 Sep 2020 01:05:29 +0000 (GMT)
X-AuditID: b6c32a37-9cdff700000071f5-2f-5f601359ded1
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 28.B2.08303.953106F5; Tue, 15 Sep 2020 10:05:29 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200915010528epsmtip18bae177a6c5b134aaa6762c3fd0da5a8~0z4Ly_myB0862308623epsmtip1x;
 Tue, 15 Sep 2020 01:05:28 +0000 (GMT)
Subject: Re: [PATCH 0/3] extcon: Add Type-C Virtual PD
To: Rob Herring <robh@kernel.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <ce889395-d4f8-b8bb-0288-54f3628d8a02@samsung.com>
Date: Tue, 15 Sep 2020 10:17:39 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
 Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20200914231533.GA429337@bogus>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrAJsWRmVeSWpSXmKPExsWy7bCmvm6kcEK8wbX7Rhbzj5xjtfj/6DWr
 xZdNE9gslk/Yx2ax6fE1VovLu+awWXx68J/Z4nbjCjaL/3t2sFuseLuU2YHLY+3H+6wem1Z1
 snlsXlLvsXi5oUffllWMHtuvzWP2+LxJLoA9KtsmIzUxJbVIITUvOT8lMy/dVsk7ON453tTM
 wFDX0NLCXEkhLzE31VbJxSdA1y0zB+g6JYWyxJxSoFBAYnGxkr6dTVF+aUmqQkZ+cYmtUmpB
 Sk6BZYFecWJucWleul5yfq6VoYGBkSlQYUJ2xtHWVvaCi8IVW7fMYG5g3MffxcjJISFgIrH/
 RQ97FyMXh5DADkaJ7XOfMEM4nxgl+jbPZoNwPjNKbNqzghmmZVH3AxaIxC5Gibnn9rJCOO8Z
 JTr3XGcDqRIWMJPY/fMhK4gtIlAn8WjBSbAiZoEvjBJfjt1hB0mwCWgBbb8B1sAvoChx9cdj
 xi5GDg5eATuJXWfBDmQRUJX48GAXE4gtKhAmcXJbCyOIzSsgKHFy5hMWEJtTQEdiQu8hsF3M
 AuISt57MZ4Kw5SWat84G+0dC4ACHxILtjxkhXnCRePLzMRuELSzx6vgWdghbSuJlfxuUXS2x
 8uQRNojmDkaJLfsvsEIkjCX2L53MBHIos4CmxPpd+hBhRYmdv+cyQizmk3j3tYcVpERCgFei
 o00IokRZ4vKDu0wQtqTE4vZOtgmMSrOQvDMLyQuzkLwwC2HZAkaWVYxiqQXFuempxYYFxsjR
 vYkRnHS1zHcwTnv7Qe8QIxMH4yFGCQ5mJRHeA43x8UK8KYmVValF+fFFpTmpxYcYTYEBPJFZ
 SjQ5H5j280riDU2NjI2NLUwMzUwNDZXEeR/eUogXEkhPLEnNTk0tSC2C6WPi4JRqYFr+xnD6
 4zYPju+dWz8573Zd//rC/QkF8Rw1Fa8eH+vLFZr1zepo9tyHu//G2rGGy6y0N5eyDJ7Gu0Hx
 IHvyjN4V25LP+fjesip0tK188LXZb8nnv5+7jwg8t6mLlBGrEpLce2uxX3hRg2TVwa7j19xY
 nHQni6uZXfasfJiyMX+y6Oq4MwtTfz2Kq7/f2bnlSvHF7uKoHLMfLpu+ttYyVm9xipeZIa1+
 SfZRtk4RF/fLtj/HxXOSFjws9C+/sp/jSJh37Nmj2X//CWltzrk/Ob915qmGboW4mzHhW8/9
 fvHG91rM2U+KRqWMe5etSO3bxrtqk53cfRM+o19TmPu2VO2beva4kSnTtBDjv5d1nJVYijMS
 DbWYi4oTAcRHb99DBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFIsWRmVeSWpSXmKPExsWy7bCSnG6kcEK8wd2tnBbzj5xjtfj/6DWr
 xZdNE9gslk/Yx2ax6fE1VovLu+awWXx68J/Z4nbjCjaL/3t2sFuseLuU2YHLY+3H+6wem1Z1
 snlsXlLvsXi5oUffllWMHtuvzWP2+LxJLoA9issmJTUnsyy1SN8ugSvjaGsre8FF4YqtW2Yw
 NzDu4+9i5OSQEDCRWNT9gKWLkYtDSGAHo8SeS33MEAlJiWkXjwLZHEC2sMThw8UQNW8ZJbZN
 vMsCUiMsYCax++dDVhBbRKBO4uWTW0wgRcwCXxgl1h07yAbRcZlR4sPvPWwgVWwCWhL7X9wA
 s/kFFCWu/njMCLKBV8BOYtdZsItYBFQlPjzYxQRiiwqESexc8hjM5hUQlDg58wnYYk4BHYkJ
 vYfAFjMLqEv8mXeJGcIWl7j1ZD4ThC0v0bx1NvMERuFZSNpnIWmZhaRlFpKWBYwsqxglUwuK
 c9Nziw0LjPJSy/WKE3OLS/PS9ZLzczcxgqNPS2sH455VH/QOMTJxMB5ilOBgVhLhPdAYHy/E
 m5JYWZValB9fVJqTWnyIUZqDRUmc9+ushXFCAumJJanZqakFqUUwWSYOTqkGJvXHKfK8XcL8
 Twp8GHqebmI6tShK14WHS3T7uwk9Xix3Aw7d3vag/m/C5SOLTjV6vwyrn7Bc+NPyoBvshZ6v
 urv9Qu3FPi6e+Wuu88ecM/dSH6ol7hA8HsarZ3P9WeNXbbOqD5Kn7mWueihbuPkqU+O3x3On
 dr3wF9U/FLXZdVP0lm0xPUmCi5tPz2U63RvOIryfY4NXrcLUo1v9G/KuLvl/+lhsce2UhT6C
 b0Ua+HmzWY8qlYrsKC/ZrnvLPS/iPdeJ5crZMcbFvj1v7V6WM9fXGuxs2z9he7HSFN9fP/Xf
 cIo2tCYxrdi5/lmA2vaCrzechadX/i3WqrjS3T93v/Fir1cRH8T8bQ2kZHQ+KbEUZyQaajEX
 FScCADTd9VMtAwAA
X-CMS-MailID: 20200915010529epcas1p34e3c68a606252fd079a8c72055b1e958
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200914231545epcas1p32532a8bee9c5100e4f45fc0681735e82
References: <20200904191830.387296-1-jagan@amarulasolutions.com>
 <6955091.ERBjKZ0CLf@diego>
 <CGME20200914231545epcas1p32532a8bee9c5100e4f45fc0681735e82@epcas1p3.samsung.com>
 <20200914231533.GA429337@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200914_210542_764643_D2151EA2 
X-CRM114-Status: GOOD (  24.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iLAoKT24gOS8xNS8yMCA4OjE1IEFNLCBSb2IgSGVycmluZyB3cm90ZToKPiBPbiBGcmks
IFNlcCAwNCwgMjAyMCBhdCAxMToyMzoyMVBNICswMjAwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
Pj4gSGkgSmFnYW4sCj4+Cj4+IEFtIEZyZWl0YWcsIDQuIFNlcHRlbWJlciAyMDIwLCAyMToxODoy
NyBDRVNUIHNjaHJpZWIgSmFnYW4gVGVraToKPj4+IFVTQiBUeXBlLUMgcHJvdG9jb2wgc3VwcG9y
dHMgdmFyaW91cyBtb2RlcyBvZiBvcGVyYXRpb25zCj4+PiBpbmNsdWRlcyBQRCwgVVNCMywgYW5k
IEFsdG1vZGUuIElmIHRoZSBwbGF0Zm9ybSBkZXNpZ24KPj4+IHN1cHBvcnRzIGEgVHlwZS1DIGNv
bm5lY3RvciB0aGVuIGNvbmZpZ3VyaW5nIHRoZXNlIG1vZGVzCj4+PiBjYW4gYmUgZG9uZSB2aWEg
ZW51bWVyYXRpb24uCj4+Pgo+Pj4gSG93ZXZlciwgdGhlcmUgYXJlIHNvbWUgcGxhdGZvcm1zIHRo
YXQgZGVzaWduIHRoZXNlIG1vZGVzCj4+PiBvZiBvcGVyYXRpb25zIGFzIHNlcGFyYXRlIHByb3Rv
Y29sIGNvbm5lY3RvcnMgbGlrZSBkZXNpZ24KPj4+IERpc3BsYXkgUG9ydCBmcm9tIG9uLWNoaXAg
VVNCMyBjb250cm9sbGVyLiBTbyBhY2Nlc3NpbmcKPj4+IFR5cGUtQyBBbHRtb2RlIERpc3BsYXkg
UG9ydCB2aWEgb25ib2FyZCBEaXNwbGF5IFBvcnQgCj4+PiBjb25uZWN0b3IgaW5zdGVhZCBvZiBh
IFR5cGUtQyBjb25uZWN0b3IuCj4+PiAgCj4+PiBUaGVzZSBraW5kcyBvZiBwbGF0Zm9ybXMgcmVx
dWlyZSBhbiBleHBsaWNpdCBleHRjb24gZHJpdmVyCj4+PiBpbiBvcmRlciB0byBoYW5kbGUgUG93
ZXIgRGVsaXZlcnkgYW5kIFBvcnQgRGV0ZWN0aW9uLgo+Pj4KPj4+IFRoaXMgc2VyaWVzIHN1cHBv
cnQgdGhpcyBUeXBlLUMgVmlydHVhbCBQRCBhbmQgZW5hYmxlIHRoZQo+Pj4gc2FtZSBpbiBST0NL
IFBpIDRDIFNCQy4KPj4+Cj4+PiBBbnkgaW5wdXRzPwo+Pgo+PiBJIHRlbmQgdG8gZGlzYWdyZWUg
b24gdGhlIGRlc2lnbiB2aWEgYW4gZXh0Y29uLgo+IAo+IEkgZG9uJ3QgYWNjZXB0IG5ldyBleHRj
b24gYmluZGluZ3Mgb3IgdXNlcnMgb2YgaXQgZWl0aGVyLiBJdCdzIGEgCj4gcG9vcmx5IHRob3Vn
aHQgb3V0IGNvbGxlY3Rpb24gb2YgTGludXggZHJpdmVyIHByb3BlcnRpZXMuIFVzZSB0aGUgdXNi
IAo+IGNvbm5lY3RvciBiaW5kaW5nLgoKSSBhZ3JlZSB0aGUgcHJpb3IgYmluZGluZyBmb3JtYXQg
b2YgZXh0Y29uIHdpdGggJ2V4dGNvbicgcHJvcGVydHkgbmFtZQppcyBub3QgcHJvcGVyLiBTbywg
SSdsbCB0cnkgdG8gYmluZCBuZXcgc3R5bGUuIEJ1dCwgSSBoYXZlIGEgcXVlc3Rpb24uCkRvIHlv
dSBoYXZlIHRoZSBvYmplY3Rpb24gb2YgdGhlIHVzZSBvZiBleHRjb24gbGlrZSAndXNlcnMgb2Yg
aXQgZWl0aGVyJyAKb2YgeW91ciBjb21tZW50PwoKPiAKPj4KPj4gVGhhdCB0aGUgUm9ja2NoaXAg
cmszMzk5IGN1cnJlbnRseSBjYXJyaWVzIHRoYXQgZXh0Y29uIHRoaW5neSBpcyB1bmZvcnR1bmF0
ZQo+PiBhbmQgb25seSB3b3JrcyBmb3IgQ2hyb21lT1MgZGV2aWNlcyBiYXNlZCBvbiB0aGUgcmsz
Mzk5Lgo+Pgo+PiBUaGUga2VybmVsIG5vdyBoYXMgYSByZWFsIHR5cGUtYyBmcmFtZXdvcmsgc28g
d2Ugc2hvdWxkIG5vdCBleHRlbmQgdGhpcwo+PiBleHRjb24gaGFjayBhbnkgZnVydGhlciwgYmVj
YXVzZSB0aGF0IHdpbGwgbWFrZSBpdCBldmVuIGhhcmRlciB0byByb2xsIGJhY2sKPj4gbGF0ZXIu
IEFsc28gc2ltcGx5IGJlY2F1c2Ugb3RoZXIgUm9ja2NoaXAgYm9hcmRzIGN1cnJlbnRseSBjYW4n
dCByZWFsbHkgbWFrZQo+PiB1c2Ugb2YgdHlwZS1jIGR1ZSB0byB0aGlzLCBhcyB0aGV5IHVzZSB0
aGUgZnN1c2IzMDIgcGh5cyBkaXJlY3RseSBjb25uZWN0ZWQuCj4+Cj4+IENocm9tZU9TIGFjdHVh
bGx5IHNwZW5kIHNvbWUgdGltZSB0byBtYWtlIHRoZSBjcm9zLWVjIHBkIHBhcnQgb2YgdGhlIHR5
cGUtYwo+PiBmcmFtZXdvcmsgaWYgSSByZW1lbWJlciBjb3JyZWN0bHksIHNvIGEgdmlhYmxlIGJh
dHRsZSBwbGFuIHdvdWxkIGJlIHRvOgo+Pgo+PiAoMSkgbW92ZSB0aGUgUm9ja2NoaXAgdHlwZS1j
IHBoeSBkcml2ZXIgdG8gYWN0dWFsbHkgYmUgcGFydCBvZiB0aGUgdHlwZS1jCj4+ICAgICBmcmFt
ZXdvcmssIHdpdGggdGhlIGV4dGNvbiBiZWluZyBhIGRlcHJlY2F0ZWQgZmFsbGJhY2sgZm9yIG9s
ZCBEVHMuCj4+ICgyKSBpbXBsZW1lbnQgeW91ciBncGlvLWFsdG1vZGUgYXMgcGFydCBvZiB0aGUg
dHlwZS1jIGZyYW1ld29yawo+PiAgICAgKHdoaWNoIG1heSBldmVuIGFscmVhZHkgZXhpc3QpCj4+
Cj4+Cj4+IEluIHNob3J0LCBwbGVhc2UgZG9uJ3QgZXh0ZW5kIHRoZSByazMzOTkgdHlwZS1jIGV4
dGNvbiBoYWNrLgo+Pgo+PiBUaGFua3MKPj4gSGVpa28KPj4KPj4KPj4KPj4KPiAKPiAKCgotLSAK
QmVzdCBSZWdhcmRzLApDaGFud29vIENob2kKU2Ftc3VuZyBFbGVjdHJvbmljcwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
