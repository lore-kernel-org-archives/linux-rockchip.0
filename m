Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED57C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 14:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hxo65FixVRCq3SMNtW9wMx2Lj6KRjNDBEWTrVokS2oU=; b=byWwR5n0kHB50VLgGDB8mFS/ga
	O6kCkFU0ZwtumA5c9zu+AOJfoUwv/Pra6ICos+9QEPPNzW1MG9QPxF3C4ZZuYipiqem74MZj8tc1N
	vealoGqUaAwoDbtGPE1c/jlI98rhECTRa0owLr/ilQf9GrbOn8eoxHEwIEgJTc2haf2HSqfV1Z+qD
	wnIpbwbHeWtVmyIBVCygLrHREEoHJfUHResc1VrNNzhWM9knIyGw1q/Eexq/mWNGTVAifdZSiVgGu
	5avHi/PtZeEThomh/iqQLw+fvE6gL/5aYFRzqFKjwYjqRuQv1MxBMtqbv0YBYZeZc7YNDLOkwtRdO
	hyeKbTLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBF5K-00Cz8i-1Z;
	Thu, 07 Dec 2023 14:10:38 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBF5G-00Cz6h-0e;
	Thu, 07 Dec 2023 14:10:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701958229;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GiNAy2Hgm4il6Eg6UIzDiq34mDKxYnVzU21DMZvQkiY=;
	b=LhpCpjC5vmNJlHpagut9DSMEp7fZMKX5K+L+Ii+geqVN4pgmaHB4UNxcmUnA1Fn22twNhZ
	wGOXbrUOuniiEhDXNEt8/YLeWmWHpUuqfR8e0dFRG5t/6Sp8GPaGxGloICafx/QiUopN1O
	ASl05ipLEvscQTis82wNW1612SPQA6sIsELqmIWCo7Qu9I2BEyykYxT8/DmlseQIgPLQN4
	Sp9Rxa89tkvxbLveCrRLRf8e0+ppf4cc3xusNAbecq4wABnXcZk6w/oThvgVJfiaqjSyr8
	koo3jjuqIgHB/fMDE/vnF/sxv9SXR/W/6DJIipJiju/Bf42chPY/o/FTZPaBUg==
Date: Thu, 07 Dec 2023 15:10:29 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, Dmitry Osipenko
 <dmitry.osipenko@collabora.com>, Chris Morgan <macroalpha82@gmail.com>,
 Benjamin Bara <bbara93@gmail.com>
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
In-Reply-To: <CAMpZ1qHUnTDQ78gdrQF9Sx_-XfLM-B+H-0bL1-+twKsno+JOvg@mail.gmail.com>
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
 <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org>
 <CAMpZ1qHUnTDQ78gdrQF9Sx_-XfLM-B+H-0bL1-+twKsno+JOvg@mail.gmail.com>
Message-ID: <5e11553952c02ad20591992be4284bbd@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_061034_703623_E3E7C8C2 
X-CRM114-Status: GOOD (  14.18  )
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

T24gMjAyMy0xMi0wNyAxMDoyNSwgSmVuc2VuIEh1YW5nIHdyb3RlOgo+IE9uIFRodSwgRGVjIDcs
IDIwMjMgYXQgNDozN+KAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90
ZToKPj4gCj4+IE9uIDIwMjMtMTItMDcgMDk6MjEsIEplbnNlbiBIdWFuZyB3cm90ZToKPj4gPiBQ
b3NzaWJsZSBkZWFkbG9jayBzY2VuYXJpbyAob24gcmVib290KToKPj4gPiByazN4X2kyY194ZmVy
X2NvbW1vbihwb2xsaW5nKQo+PiA+ICAgICAtPiByazN4X2kyY193YWl0X3hmZXJfcG9sbCgpCj4+
ID4gICAgICAgICAtPiByazN4X2kyY19pcnEoMCwgaTJjKTsKPj4gPiAgICAgICAgICAgICAtLT4g
c3Bpbl9sb2NrKCZpMmMtPmxvY2spOwo+PiA+ICAgICAgICAgICAgIC4uLgo+PiA+ICAgICAgICAg
PHJrM3ggaTJjIGludGVycnVwdD4KPj4gPiAgICAgICAgIC0+IHJrM3hfaTJjX2lycSgwLCBpMmMp
Owo+PiA+ICAgICAgICAgICAgIC0tPiBzcGluX2xvY2soJmkyYy0+bG9jayk7IChkZWFkbG9jayBo
ZXJlKQo+PiA+Cj4+ID4gU3RvcmUgdGhlIElSUSBudW1iZXIgYW5kIGRpc2FibGUvZW5hYmxlIGl0
IGFyb3VuZCB0aGUgcG9sbGluZyB0cmFuc2Zlci4KPj4gPiBUaGlzIHBhdGNoIGhhcyBiZWVuIHRl
c3RlZCBvbiBOYW5vUEMtVDQuCj4+IAo+PiBJbiBjYXNlIHlvdSBoYXZlbid0IGFscmVhZHkgc2Vl
biB0aGUgcmVsYXRlZCBkaXNjdXNzaW9uIGxpbmtlZCBiZWxvdywKPj4gcGxlYXNlIGhhdmUgYSBs
b29rLiAgSSBhbHNvIGFkZGVkIG1vcmUgcGVvcGxlIHRvIHRoZSBsaXN0IG9mIAo+PiByZWNpcGll
bnRzLAo+PiBpbiBhbiBhdHRlbXB0IHRvIG1ha2UgZXZlcnlvbmUgYXdhcmUgb2YgdGhlIGRpZmZl
cmVudCBhcHByb2FjaGVzIHRvCj4+IHNvbHZpbmcgdGhpcyBpc3N1ZS4KPj4gCj4+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL2FsbC82NTUxNzdmNC4wNTBhMDIyMC5kODVjOS4zYmEwQG14Lmdvb2ds
ZS5jb20vVC8jbTZmYzljMjE0NDUyZmVjNjY4MTg0M2U3ZjQ1NTk3OGMzNWM2ZjZjOGIKPiAKPiBU
aGFuayB5b3UgZm9yIHByb3ZpZGluZyB0aGUgaW5mb3JtYXRpb24uIEkgaGFkbid0IHNlZW4gdGhp
cyBsaW5rIAo+IGJlZm9yZS4KPiBBZnRlciBjYXJlZnVsbHkgbG9va2luZyBpbnRvIHRoZSByZWxh
dGVkIGRpc2N1c3Npb24sIGl0IGFwcGVhcnMgdGhhdAo+IERtaXRyeSBPc2lwZW5rbyBpcyBhbHJl
YWR5IHdvcmtpbmcgb24gYSBzdWl0YWJsZSBwYXRjaC4gVG8gYXZvaWQgCj4gZHVwbGljYXRpb24K
PiBvciBjb25mbGljdHMsIG15IHBhdGNoIGNhbiBiZSBkaXNjYXJkZWQuCgpUaGFuayB5b3UgZm9y
IHJlc3BvbmRpbmcgc28gcXVpY2tseS4gIFBlcmhhcHMgaXQgd291bGQgYmUgYmVzdCB0byBoZWFy
IApmcm9tIERtaXRyeSBhcyB3ZWxsLCBiZWZvcmUgZGlzY2FyZGluZyBhbnl0aGluZy4gIEl0J3Mg
YmVlbiBhIHdoaWxlIApzaW5jZSBEbWl0cnkgd3JvdGUgYWJvdXQgd29ya2luZyBvbiB0aGUgcGF0
Y2gsIHNvIGhlIG1pZ2h0IGhhdmUgCmFiYW5kb25lZCBpdC4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
