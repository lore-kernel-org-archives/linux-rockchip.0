Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB728CED62A
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 08:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiygBZt+6nMP5bqd0rSei86n98tRRrGi/55wt0BFbQs=; b=miWRmLaj9WzA1r
	T+qoyWZb2Y+kDmYeYSsyVMzDNP5L1ZTXxgbtUx8FTSmyYhYL+bGt/siBvUxVkyWEVruszresp+rHy
	2djppaUv18wnS8LdGdbxz+sFzq2cxB7qztdhWp9j79Mhx/GMHCvwnNaYMLI+3Rksd71PP3GRqg3Xh
	ib82qxxzFLsvoMDpYZRRmpj1gMbUt6qaecjygU6GP39BglyA4b/pwjjuv22huXynJgU3B3VfVIkK1
	IsD61l2K9SbXR0KrTm/wshWliRriFYVQlaFn+eeL8K1tLFV+dEoIomL+bzECcyVbe181z5jleY1pb
	xdqjJawYd6lUD4IvXxxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sySK2-00000008Wma-0ZmI;
	Wed, 09 Oct 2024 08:45:30 +0000
Received: from omta040.useast.a.cloudfilter.net ([44.202.169.39])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sySJP-00000008WU5-1Uwq
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Oct 2024 08:44:53 +0000
Received: from eig-obgw-5007a.ext.cloudfilter.net ([10.0.29.141])
	by cmsmtp with ESMTPS
	id yAeLsWfqinNFGySJ8sugbt; Wed, 09 Oct 2024 08:44:34 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id ySJ4s2JnBky5UySJ6sM5GM; Wed, 09 Oct 2024 08:44:32 +0000
X-Authority-Analysis: v=2.4 cv=Cum5cG4D c=1 sm=1 tr=0 ts=67064270
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=L2ZAzL5Tc2YXbkthkrQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kjer777veAS4MsonIO7ZNfH7bB3CmtYfsy4XksivrrU=; b=D753RUIG2S8fD8Ru8o2mx55yae
	3fJdjxM1T8dU6bdAMMYpi2K3noLZ20hXFebknCjNlyB4/zpfbTYGS24Qh0LbmFzzyiFEdVwpDENwD
	CyJtohV6Les7xWAtw2AswcfooQd0N5WFK4hJejeAld9LhnDQWhODzdcAx4pg7c0iDxYE0Krx3ly4E
	hdvLDTTQluEKjqEpNt9a4MYI33gR5P0IW4M+nUIH0u/Xy//nTRM0R4Sq1lFEQW8QJ+TqtdL1nBCs5
	8mbjyGOuUztafcR/HO+9wDzpKHqO08+089fWXt+buLaVwF5KmBULkswmIYbyBERGor4EZYqIdk+hu
	9VDxWzxQ==;
Received: from [122.165.245.213] (port=35160 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sySJ2-00125N-1R;
	Wed, 09 Oct 2024 14:14:28 +0530
Message-ID: <1562366d-34eb-4698-a722-d9e2d400397f@linumiz.com>
Date: Wed, 9 Oct 2024 14:14:25 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add
 rockchip,rv1126-wdt string
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alexandre.belloni@bootlin.com,
 wim@linux-watchdog.org, linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <ddca4051-0e83-4d39-8654-12210ffa5685@linumiz.com>
 <37e26b46-2f6a-4db4-b003-59088ef1dcc1@linumiz.com> <1988046.PYKUYFuaPT@diego>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <1988046.PYKUYFuaPT@diego>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sySJ2-00125N-1R
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:35160
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 4
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfOHNQWAxsX1lnX8uiGYybGpW24W64h+Kiusm2c6uQXIEbbTZMiz/b/FCNGER2OzTnU1jVnEncycQudM069vuBgOosftjcuYytqHGGCMIyFSck241dR7l
 bSAv2i04iOQR+8KOH72tWZ4nYmvD7Gdeu6WYpisSTlsVOg1UiLkiQ3sSb9STyIXmGvgOsr3Ns69OhsUc4E19zJkbsReR6sz7pCVNJcBhl0rsjIRR6sPeKHkk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_014451_702979_B5C9E090 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAxMC85LzI0IDAwOjU2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSwKPiAKPiBBbSBN
b250YWcsIDcuIE9rdG9iZXIgMjAyNCwgMTU6NTY6NTggQ0VTVCBzY2hyaWViIGthcnRoaWtleWFu
Ogo+Pgo+PiBPbiA5LzE4LzI0IDEyOjU5LCBrYXJ0aGlrZXlhbiB3cm90ZToKPj4+Cj4+Pgo+Pj4g
T24gOS8xOC8yNCAwNDo0NiwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+Pj4gSGV5LAo+Pj4+Cj4+
Pj4gQW0gRG9ubmVyc3RhZywgMTIuIFNlcHRlbWJlciAyMDI0LCAxNjoyNDo0NiBDRVNUIHNjaHJp
ZWIgS2FydGhpa2V5YW4KPj4+PiBLcmlzaG5hc2FteToKPj4+Pj4gQWRkIHJvY2tjaGlwLHJ2MTEy
Ni13ZHQgY29tcGF0aWJsZSBzdHJpbmcuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEthcnRo
aWtleWFuIEtyaXNobmFzYW15IDxrYXJ0aGlrZXlhbkBsaW51bWl6LmNvbT4KPj4+Pgo+Pj4+IEkg
dGhpbmsgdGhpcyBwYXRjaCBtaXNzZXMgc29tZSByZWNpcGllbnRzIGJlY2F1c2UgbmVpdGhlcgo+
Pj4+IHRoZSB3YXRjaGRvZyBtYWludGFpbmVycyBub3IgdGhlIHdhdGNoZG9nIGxpc3QgaXMgaW5j
bHVkZWQuCj4+Pj4KPj4+PiBXZSdsbCBuZWVkIGZvciB0aGVtIHRvIGF0IGxlYXN0IEFjayB0aGlz
IHBhdGNoLCBzbyB0aGV5J2xsCj4+Pj4gbmVlZCB0byBiZSBpbmNsdWRlZC4gUGxlYXNlIGNoZWNr
IHlvdXIgc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbAo+Pj4+IGNhbGwKPj4+Pgo+Pj4+Cj4+Pj4g
VGhhbmtzCj4+Pj4gSGVpa28KPj4+Pgo+Pj4gQXBvbG9naWVzIGZvciBtaXNzaW5nIHRoZW0uIEFk
ZGluZyB0aGVtIGluIHRoaXMgcmVwbHkgbWFpbC4KPiAKPiBJIGRvbid0IHRoaW5rIHRoYXQgd2ls
bCBoYXZlIHdvcmtlZC4KPiAKPiBJZGVhbGx5IGNhbiB5b3UgaW5jbHVkZSBDb25vcidzIEFjayBh
bmQgcmVzZW5kIG9ubHkgdGhlIHdhdGNoZG9nIGJpbmRpbmcKPiBwYXRjaCB0byB0aGUgd2F0Y2hk
b2cgbWFpbnRhaW5lcnMgKGFuZCBsaXN0cyBhbmQgbWUgdG9vIHBsZWFzZSkgLgo+IAo+IEJlY2F1
c2UganVzdCBhZGRpbmcgbW9yZSBwZW9wbGUgdG8gYSByZXBseSBwcm9iYWJseSB3b24ndCB0ZWxs
IHRoZW0KPiB0aGF0IHNvbWUgYWN0aW9uIGlzIGV4cGVjdGVkLgo+IAo+IEhlaWtvCj4gCj4gCgpU
aGFua3MgZm9yIHlvdXIgaW5mby4gSXQncyBteSBtaXN0YWtlLiBJIHdpbGwgcmVzZW5kIHRoZSB3
YXRjaGRvZyBwYXRjaCAKYWxvbmUuCgpCZXN0IHJlZ2FyZHMsCkthcnRoaWtleWFuCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
