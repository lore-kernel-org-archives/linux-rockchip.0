Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065B6D116F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 09:22:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:From:To:Cc:
	Subject:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/MElWVd3V4tYZK3asolrdtapl5sY1Z3vIf+JjKLWrc=; b=hkvok0k5+oEgJ0
	FeBlthPPqawd5d9QY1V91rjSx33rSbQVOGLM1GvxpyEwgOoBNLF40J+x7mdquO8bhzQR/6dFN6C4m
	MyrdlGYT7HaKNkOEZBSCTlNAx7kRPi4+J6fRw5di4w6dpTx3uzDt6N1IEMyCtIAbP57AJgZj1kTrl
	wyEseRo9ZYGu+HEHRWhTcYO7PR+MtcrpBR68CNQ8MSt8jl/iE4t5ydk14Mo3XAGO67jljrbHrniGl
	cn26rZDjFRwm6toOUNpcxSp/S1c8OiXJikDFCgY7+azqhjvMhJ1WwyDSuMtJ8x8Z0uDXhmhTV9GQ4
	lJ403zYH0gjb8XriEQtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYCu-0000000GHRW-3UAn;
	Thu, 27 Nov 2025 09:22:32 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYCs-0000000GHQV-0u5y;
	Thu, 27 Nov 2025 09:22:32 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id DC0FD4E41908;
	Thu, 27 Nov 2025 09:22:25 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AE8DB6068C;
	Thu, 27 Nov 2025 09:22:25 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 20965102F260E;
	Thu, 27 Nov 2025 10:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764235344; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LUO1z9qwbt9OCCzyz5bCMm+KUuBCR4sEqoSJH822mh0=;
	b=eqhjdvXZnUp9AmLT5/lJ7M6Z4Pq+LxgKF4WrneIblNx6/isXh+q272Pc5de5vlJP67QIod
	DFU8sAzqbvx7hYfQIAbxZVtXu5ur9wHEeKdpDjlOODOwNrqUFrd3NmrdHOyDFH08bQws28
	0oLC85B8sKuwjnU33G0LkCCYE42UpG3pbGxxAUin2woUQAZxEkAGHk0HQgTVF5nClGO32d
	16vRV1tKmrJLnQ1GKHdAQLyB0ZtTKbK6YgHVIn3JqX/QN3dtxuQjA8uddrokH/SyRy3IqM
	sauT/xOWlNe3hehmB09YO5g+IYyiYJ4hsc4uYwaNdNjVN4EZhQAykkYYebXKnA==
Mime-Version: 1.0
Date: Thu, 27 Nov 2025 10:22:18 +0100
Message-Id: <DEJD8DJZFNZO.11B1UBXJBN7MO@bootlin.com>
Subject: Re: [PATCH 1/2] phy: rockchip: inno-usb2: fix disconnection in
 gadget mode
Cc: "Kever Yang" <kever.yang@rock-chips.com>, "Minas Harutyunyan"
 <Minas.Harutyunyan@synopsys.com>, "Alan Stern" <stern@rowland.harvard.edu>,
 "Louis Chauvet" <louis.chauvet@bootlin.com>, =?utf-8?q?Herv=C3=A9_Codina?=
 <herve.codina@bootlin.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <linux-phy@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-usb@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
To: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "William Wu" <wulf@rock-chips.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-0-239872f05f17@bootlin.com> <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-1-239872f05f17@bootlin.com> <DEHVRC8CY12S.3LSC6UVSMU0C1@bootlin.com>
In-Reply-To: <DEHVRC8CY12S.3LSC6UVSMU0C1@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_012230_380400_4550640A 
X-CRM114-Status: GOOD (  12.89  )
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

SGkgVGjDqW8sCgp0aGFua3MgZm9yIHJldmlld2luZyB0aGlzIHNlcmllcyEKCk9uIFR1ZSBOb3Yg
MjUsIDIwMjUgYXQgNDoyOCBQTSBDRVQsIFRow6lvIExlYnJ1biB3cm90ZToKWy4uLl0KPj4gVGhl
IHByb2JsZW0gd2FzIG9ic2VydmVkIG9uIGEgUmFkeGEgUm9jayBQaSBTIGJvYXJkLCB3aGljaCBj
YW4gb25seSBiZQo+PiBwb3dlcmVkIGJ5IHRoZSBvbmx5IFVTQi1DIGNvbm5lY3Rvci4gVGhhdCBj
b25uZWN0b3IgaXMgdGhlIG9ubHkgb25lIHVzYWJsZQo+Cj4gIndoaWNoIGNhbiBvbmx5IGJlIHBv
d2VyZWQgYnkgdGhlIG9ubHkgVVNCLUMgY29ubmVjdG9yIgo+IGRvdWJsZSAib25seSIgbWFrZXMg
aXQgYSBzdXBlciBleGNsdXNpdmUgY29ubmVjdG9yIQoKSGVoZSwgaW5kZWVkISA6LSkKCj4+IFRo
ZSBjb2RlIGFscmVhZHkgY2hlY2tzIGZvciAhcnBvcnQtPnN1c3BlbmRlZCwgc28gYWRkIGEgZ3Vh
cmQgZm9yIFZCVVMgYXMKPj4gd2VsbCB0byBhdm9pZCBhIGRpc2Nvbm5lY3Rpb24gd2hlbiBhIGNh
YmxlIGlzIGNvbm5lY3RlZC4KPgo+IFlvdXIgY29tbWl0IG1lc3NhZ2Ugd2FzIGNsZWFyIGJ1dCBJ
IHdhcyBtaXNzaW5nIG9uZSBrZXkgcG9pbnQ6IHdoYXQKPiBycG9ydC0+c3VzcGVuZGVkIG1lYW5z
LiBJdCBpc24ndCB3aGF0IEkgZmlyc3QgdGhvdWdodC4gSW5zdGVhZCBpdCBtZWFucwo+IHBoeSBp
cyBwb3dlcmVkIG9mZi4gTmFtaW5nIGlzIGJhZCBidXQgdW5yZWxhdGVkIHRvIHlvdXIgc2VyaWVz
LiBNYXliZQo+IGFkZCBhIGNvbW1lbnQgdG8geW91ciBjb21taXQgbWVzc2FnZSBsaWtlIHRoZSBm
b2xsb3dpbmc/Cj4KPiAgIFRoZSBjb2RlIGFscmVhZHkgY2hlY2tzIGZvciAhcnBvcnQtPnN1c3Bl
bmRlZCAoUEhZIGlzIHBvd2VyZWQgb24pLCAuLi4KCllvdSBhcmUgcmlnaHQuIEkgaGF2ZSBhZGRl
ZCBhIHNsaWdodGx5IGxvbmdlciB0ZXh0OgoKICBUaGUgY29kZSBhbHJlYWR5IGNoZWNrcyBmb3Ig
IXJwb3J0LT5zdXNwZW5kZWQgKHdoaWNoLCBzb21ld2hhdAogIGNvdW50ZXItaW50dWl0aXZlbHks
IG1lYW5zIHRoZSBQSFkgaXMgcG93ZXJlZCBvbiksIC4uLgoKU3RpbGwgd29ydGggeW91ciBSZXZp
ZXdlZC1ieT8KCkkgZml4ZWQgdGhlIG90aGVyIGlzc3VlcyB5b3UgaGF2ZSByZXBvcnRlZCwgZm9y
IHBhdGNoIDIgYXMgd2VsbC4KCkkgYWxzbyBhZGRlZCB0aGUgQ2M6IHN0YWJsZUB2Z2VyLmtlcm5l
bC5vcmcgbGluZSwgd2hpY2ggSSBub3RpY2VkIGJlaW5nCm1pc3NpbmcuCgpMdWNhCgotLQpMdWNh
IENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcK
aHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
