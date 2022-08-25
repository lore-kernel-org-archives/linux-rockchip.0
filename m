Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AD0DC64990
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 14:23:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWLxMC4WveNuk4nHeKcwkCmFnZsG4wSxzVMxXNwqwLc=; b=0A8DubvEfMTjDj
	DvFT5PqSmLj0fE+rYgzpVNc68juDEsxxsm8W3A97V1Xdvqd6JPbh6NaheIHgsUPz1lnSv+pU4Cg/v
	xDPIrS82afoOnG8pudtifufJXwyeA2Ft5T0YyiOuy95s7duXOHihK5JIpiHn6Fpdkc/yWEGdFkOhk
	ju6ce2TnOCyNgNnQEj2Vtsn3ZSk7iYtb55AJCNe3Wdoa+26xnlWY7/nj51G2RLx5fOySkQKD9exQf
	8wGoHpRsDYuzbxC0bJFFr14L9ujtl2AkrBv8Ej5EwIv9CmXPpac0qSixXu5i8BoV/efLbo9fE+a0Y
	8g3aQfl21agOdDBVpyMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRDld-00FGul-75; Thu, 25 Aug 2022 14:23:33 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRDlY-00FGqD-U8
	for linux-rockchip@lists.infradead.org; Thu, 25 Aug 2022 14:23:32 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20220825142325euoutp01590d3a9a1259d54e45e86363ac1c49d0~OnIRooIla1264412644euoutp01m
	for <linux-rockchip@lists.infradead.org>; Thu, 25 Aug 2022 14:23:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20220825142325euoutp01590d3a9a1259d54e45e86363ac1c49d0~OnIRooIla1264412644euoutp01m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1661437405;
	bh=Huwdp/Iixibsm1+U+Ec1zSSlNuiVTB4RieBDCeUbh60=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=aCTPEhxjI4Kn3h+UMdnKxEwTwvAGUhaGwLVFcSc+7NDlSS6++JN3cJTtwlcjf5b4D
	 CYDAwydULWyIA4Sfb8sTwbE7ioVtlS+y5ZDiK936luIjffWj1jRz2X88I0P9LyFjrG
	 hrlQeu2lqKCC2mwvdrzsK5DfZNJN3TvroolSRbuc=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20220825142324eucas1p28b9945a763d61eefa0a1926d478203ec~OnIRVXztV1050010500eucas1p2e;
	Thu, 25 Aug 2022 14:23:24 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id 89.32.29727.CD587036; Thu, 25
	Aug 2022 15:23:24 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20220825142324eucas1p1cd5c4bbba236542b758269a11a2fb9ab~OnIQz1uqE1219512195eucas1p13;
	Thu, 25 Aug 2022 14:23:24 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220825142324eusmtrp14df396a5be6d1910922e318235988b4d~OnIQy45Ad1357613576eusmtrp1N;
	Thu, 25 Aug 2022 14:23:24 +0000 (GMT)
X-AuditID: cbfec7f2-205ff7000001741f-83-630785dc1bdc
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 9F.EB.07473.CD587036; Thu, 25
	Aug 2022 15:23:24 +0100 (BST)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20220825142323eusmtip2b3f4a238ad06be12ed4d0ea06e8bfa49~OnIQMl41E3051730517eusmtip2b;
	Thu, 25 Aug 2022 14:23:23 +0000 (GMT)
Message-ID: <a78822d5-f0a1-6c42-8269-e8168ea5cd5b@samsung.com>
Date: Thu, 25 Aug 2022 16:23:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0)
	Gecko/20100101 Thunderbird/91.12.0
Subject: Re: [PATCH v4] regulator: core: Resolve supply name earlier to
 prevent double-init
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: =?UTF-8?Q?Christian_Kohlschu=cc=88tter?= <christian@kohlschutter.com>,
	heiko@sntech.de, lgirdwood@gmail.com, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, m.reichl@fivetechno.de,
	robin.murphy@arm.com, vincent.legoll@gmail.com, wens@kernel.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <YwdpOX0xCzYwhjmx@sirena.org.uk>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPKsWRmVeSWpSXmKPExsWy7djP87p3WtmTDf7sU7OY+vAJm8X2Q8/Z
	LP4/es1q8e1KB5PFpsfXWC0u75rDZnHkfz+jxacH/5ktXh75wWhx8MMTVovja5+xWcyae53N
	gcdjzbw1jB637tR77Jx1l91j06pONo9Jk3cxeWxeUu+x/do8Zo/Pm+QCOKK4bFJSczLLUov0
	7RK4MprepBZsFa5o2NfG0sB4nb+LkYNDQsBE4t/S2i5GLg4hgRWMEkcedDNCOF8YJWa9bmDp
	YuQEcj4zSsyfGQdigzR0XOtggyhazigx79IaJgjnI6NE16EuZpAqXgE7ib0HZ4LZLAKqEqdP
	9zJBxAUlTs58AjZVVCBZ4tn/xewgtrBArETX9O1gcWYBcYlbT+aD1YsIKEtc/b6XBWQBs8Bl
	JolXi54xgiTYBAwlut52sYHYnAK6Ev8fLGOGaJaXaN46mxmkQUKgn1PiwM5+Roi7XSSeHT3C
	AmELS7w6voUdwpaROD25hwUSGPkSf2cYQ4QrJK69XsMMYVtL3Dn3iw2khFlAU2L9Ln2IakeJ
	nl2sECafxI23ghAH8ElM2jadGSLMK9HRJgQxQ01i1vF1cCsPXrjEPIFRaRZSmMxC8vssJK/M
	Qli7gJFlFaN4amlxbnpqsWFearlecWJucWleul5yfu4mRmAaO/3v+KcdjHNffdQ7xMjEwXiI
	UYKDWUmE1+oYS7IQb0piZVVqUX58UWlOavEhRmkOFiVx3uTMDYlCAumJJanZqakFqUUwWSYO
	TqkGphYNtvhbV/7czFkWmsx5wYBp/ralRwQm2vb9OnT35o/K+EV7spZZfJ9/+7X4rwUH1aUW
	GHqvcanYU3/p0JKnzgbaKpxik05vOp6VJM0fpfPHt8jjHYeEu+6eq3Pjw/rslq8vFJsrzMnz
	+WPxWsUTzD6biz5ZdAZkrdxxybu9gu/xlocKz39V+ndV7DL/N1di7v3Lak/t3VWz/33v3sib
	9CZh+z3pSZteHg8LPCKV8Gue78wyUV+lCcnfufQdvmm6hb8wyfw355w2o2XPjNOqs+bF+Au3
	TRD7cluvch7X0qlrfd+/8FSPnZzO9yR7XcCKWOHHE/yO7G5dUcr9sME0yF+PUZMx7OTtUPs9
	J5RqXymxFGckGmoxFxUnAgAFREnM0gMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsVy+t/xe7p3WtmTDXpPs1hMffiEzWL7oeds
	Fv8fvWa1+Halg8li0+NrrBaXd81hszjyv5/R4tOD/8wWL4/8YLQ4+OEJq8Xxtc/YLGbNvc7m
	wOOxZt4aRo9bd+o9ds66y+6xaVUnm8ekybuYPDYvqffYfm0es8fnTXIBHFF6NkX5pSWpChn5
	xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GU1vUgu2Clc07GtjaWC8
	zt/FyMkhIWAi0XGtg62LkYtDSGApo8SpVd/ZIRIyEienNbBC2MISf651QRW9Z5TovQPicHLw
	CthJ7D04kxnEZhFQlTh9upcJIi4ocXLmExYQW1QgWWLBoaVgtrBArETX9O1gNrOAuMStJ/PB
	6kUElCWuft8LFb/MJHHxigrEsl4miaYVj8CWsQkYSnS9hVjMKaAr8f/BMmaIBjOJrq1djBC2
	vETz1tnMExiFZiG5YxaSfbOQtMxC0rKAkWUVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYARv
	O/Zz8w7Gea8+6h1iZOJgPMQowcGsJMJrdYwlWYg3JbGyKrUoP76oNCe1+BCjKTAwJjJLiSbn
	A1NIXkm8oZmBqaGJmaWBqaWZsZI4r2dBR6KQQHpiSWp2ampBahFMHxMHp1QDk0Pjyx5Oh922
	rjueWPNdqqm2+2jgF3dd13TP19gvnmVhEsWBnmuN/1RuilOdqpnpMvXlvxUNgs2RB9+4nYh7
	sqt0bWLNnQieg73zg6Ycs8261f3u/vxvE6aeeSJbVfbb9KrKjN+X187+L9DztznImZ3Z6Y3X
	5rsvtBsFduiWaP8QODNrydoXGxeU1x/KOGmwd0/+3VST+dEc0nP2PD3rPdtcfMbmUiH2PZEb
	NkQaWHu7zZj02OtrRpRHpNcvZSmOF2fP3z7c6R9+YjV39MM4902Kt+4GSnSnRriEZi28KsK4
	Vr9SZIbksXX8mxZbT3v9tyBtrcTFk1+60vceKuN+vObkLed1jGf4b+8QvLZ2R4gSS3FGoqEW
	c1FxIgDAntcbaQMAAA==
X-CMS-MailID: 20220825142324eucas1p1cd5c4bbba236542b758269a11a2fb9ab
X-Msg-Generator: CA
X-RootMTR: 20220825113251eucas1p247c3d57de823da148ca4790975a4aba8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20220825113251eucas1p247c3d57de823da148ca4790975a4aba8
References: <YvorNPDQQr2SH/NF@sirena.org.uk>
	<20220818124646.6005-1-christian@kohlschutter.com>
	<CGME20220825113251eucas1p247c3d57de823da148ca4790975a4aba8@eucas1p2.samsung.com>
	<58b92e75-f373-dae7-7031-8abd465bb874@samsung.com>
	<YwdpOX0xCzYwhjmx@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_072329_310735_1CE8D6D6 
X-CRM114-Status: GOOD (  17.75  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWFyaywKCk9uIDI1LjA4LjIwMjIgMTQ6MjEsIE1hcmsgQnJvd24gd3JvdGU6Cj4gT24gVGh1
LCBBdWcgMjUsIDIwMjIgYXQgMDE6MzI6NTBQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3NraSB3cm90
ZToKPgo+PiBUaGlzIHBhdGNoIGxhbmRlZCByZWNlbnRseSBpbiBsaW51eCBuZXh0IGFzIGNvbW1p
dCA4YTg2NmQ1MjdhYzAKPj4gKCJyZWd1bGF0b3I6IGNvcmU6IFJlc29sdmUgc3VwcGx5IG5hbWUg
ZWFybGllciB0byBwcmV2ZW50IGRvdWJsZS1pbml0IikuCj4+IFVuZm9ydHVuYXRlbHkgaXQgYnJl
YWtzIGJvb3Rpbmcgb2YgU2Ftc3VuZyBFeHlub3MgNTgwMCBiYXNlZCBQZWFjaC1QaQo+PiAoYXJj
aC9hcm0vYm9vdC9kdHMvZXh5bm9zNTgwMC1wZWFjaC1waS5kdHMpIGFuZCBQZWFjaC1QaXQKPj4g
KGFyY2gvYXJtL2Jvb3QvZHRzL2V4eW5vczU0MjAtcGVhY2gtcGl0LmR0cykgQ2hyb21lYm9va3Mu
IFRoZSBsYXN0Cj4+IG1lc3NhZ2UgaW4gdGhlIGtlcm5lbCBsb2cgaXMgYSBtZXNzYWdlIGFib3V0
IGRpc2FibGluZyAndmRkXzF2MicKPj4gcmVndWxhdG9yLiBUaGlzIHJlZ3VsYXRvciBpcyBub3Qg
dXNlZCBkaXJlY3RseSwgaG93ZXZlciBpdCBpcyBhIHN1cHBseQo+PiBmb3Igb3RoZXIgY3JpdGlj
YWwgcmVndWxhdG9ycy4KPiBUaGlzIHN1Z2dlc3RzIHRoYXQgc3VwcGxpZXMgYXJlIGVuZGluZyB1
cCBub3QgZ2V0dGluZyBib3VuZC4gIENvdWxkIHlvdQo+IHBlcmhhcHMgYWRkIGxvZ2dpbmcgdG8g
Y2hlY2sgdGhhdCB3ZSdyZSBhdHRlbXB0aW5nIHRvIHJlc29sdmUgdGhlIHN1cHBseQo+IChpbiB0
aGUKPgo+Cj4gKyAgICAgICBpZiAoKHJkZXYtPnN1cHBseV9uYW1lICYmICFyZGV2LT5zdXBwbHkp
ICYmCj4gKyAgICAgICAgICAgICAgICAgICAgICAgKHJkZXYtPmNvbnN0cmFpbnRzLT5hbHdheXNf
b24gfHwKPiArICAgICAgICAgICAgICAgICAgICAgICAgcmRldi0+Y29uc3RyYWludHMtPmJvb3Rf
b24pKSB7Cj4KPiBibG9jayk/CgoKSSd2ZSBzcGVudCBhIGxpdHRsZSB0aW1lIGRlYnVnZ2luZyB0
aGlzIGlzc3VlIGFuZCBoZXJlIGFyZSBteSBmaW5kaW5ncy4gClRoZSBwcm9ibGVtIGlzIGR1cmlu
ZyB0aGUgJ3ZkZF9taWYnIHJlZ3VsYXRvciByZWdpc3RyYXRpb24uIEl0IGhhcyBvbmUgCnN1cHBs
eSBjYWxsZWQgJ2luYjEnIGFuZCBwcm92aWRlZCBieSAndmRkXzF2MicgcmVndWxhdG9yLiBCb3Ro
ICd2ZGRfbWlmJyAKYW5kICd2ZGRfMXYyJyByZWd1bGF0b3JzIGFyZSBwcm92aWRlZCBieSB0aGUg
c2FtZSBQTUlDLgoKVGhlIHByb2JsZW0gaXMgdGhhdCAnaW5iMScgc3VwcGx5IGlzIGJlaW5nIHJv
dXRlZCB0byBkdW1teSByZWd1bGF0b3IgCmFmdGVyIHRoaXMgY2hhbmdlLiBUaGUgcmVndWxhdG9y
X3Jlc29sdmVfc3VwcGx5KCksIHdoaWNoIGlzIGp1c3QgYWZ0ZXIgCnRoZSBhYm92ZSBtZW50aW9u
ZWQgY2hlY2ssIHJldHVybnMgMCBhbmQgYm91bmRzICd2ZGRfbWlmJyBzdXBwbHkgdG8gCmR1bW15
LXJlZ3VsYXRvci4gVGhpcyBoYXBwZW5zIGJlY2F1c2UgcmVndWxhdG9yX2Rldl9sb29rdXAoKSBj
YWxsZWQgaW4gCnJlZ3VsYXRvcl9yZXNvbHZlX3N1cHBseSgpIHJldHVybnMgLTE5LCB3aGF0IGlu
IHR1cm4gbGV0cyB0aGUgY29kZSB0byAKdXNlIGR1bW15LXJlZ3VsYXRvci4gSSBkaWRuJ3QgY2hl
Y2sgd2h5IGl0IGRvZXNuJ3QgcmV0dXJuIC1FUFJPQkVfREVGRVIgCmluIHRoYXQgY2FzZSB5ZXQu
Cgo+IEknZCBhbHNvIG5vdGUgdGhhdCBpdCdzIHVzZWZ1bCB0byBwYXN0ZSB0aGUgYWN0dWFsIGVy
cm9yCj4gbWVzc2FnZXMgeW91J3JlIHNlZWluZyByYXRoZXIgdGhhbiBqdXN0IGEgZGVzY3JpcHRp
b24gb2YgdGhlbS4KClRoZXJlIGlzIHJlYWxseSBub3RoaW5nIG1vcmUgdGhhdCBJIGNhbiBwYXN0
ZSBoZXJlOgoKW8KgwqAgMzIuMzA2MjY0XSBzeXN0ZW1kLWxvZ2luZFsxMzc1XTogTmV3IHNlYXQg
c2VhdDAuClvCoMKgIDMyLjMzMTc5MF0gc3lzdGVtZC1sb2dpbmRbMTM3NV06IFdhdGNoaW5nIHN5
c3RlbSBidXR0b25zIG9uIAovZGV2L2lucHV0L2V2ZW50MSAoZ3Bpby1rZXlzKQpbwqDCoCAzMi41
NTA2ODZdIHN5c3RlbWQtbG9naW5kWzEzNzVdOiBXYXRjaGluZyBzeXN0ZW0gYnV0dG9ucyBvbiAK
L2Rldi9pbnB1dC9ldmVudDAgKGNyb3NfZWMpClvCoMKgIDMyLjU3MDQ5M10gc3lzdGVtZC1sb2dp
bmRbMTM3NV06IEZhaWxlZCB0byBzdGFydCB1c2VyIHNlcnZpY2UsIAppZ25vcmluZzogVW5rbm93
biB1bml0OiB1c2VyQDAuc2VydmljZQpbwqDCoCAzMi43NTA5MTNdIHN5c3RlbWQtbG9naW5kWzEz
NzVdOiBOZXcgc2Vzc2lvbiBjMSBvZiB1c2VyIHJvb3QuClvCoMKgIDM1LjA3MDM1N10gdmRkXzF2
MjoKCi0tLSBFT0YgLS0tCgoKQmVzdCByZWdhcmRzCi0tIApNYXJlayBTenlwcm93c2tpLCBQaEQK
U2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
