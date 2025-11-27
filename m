Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61FC4CFD2F6
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 10:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4dObcgcTAQbrNafKPRTwapyiLlzO5ggxxr2GyJNP0s=; b=1u5K+Kt4FPCXbr
	UsOVWa2wtCA98NYINqur0R8ZGAN0Ca53FabTsKGTAEQXsQ7UeM+AkrxrPT87uClAYXLX2wuSIx9Hs
	24jMVpdx9bujC0qKu/3UnBe9SBk2QCyq0c19Zh9AvL0q20MIX/U+dA+SDHgtLZw7njNBKj3jW7dzF
	XyrEC/EGfCYhFN6IUxYyTyiiJBGNjiSZcR8sWn4tlQkmnAIJjIzn+s7XK9y3AVOODFuZ9E7nDd3lB
	B3GnmPhYSf+w/aTJsTbJqOBxd6ER6NbBcWE90P+LRsUaGnmmap798NppRFEu6/g8Qq6ystV8wVJbl
	JOVtn/qCdOkGYJgEQBpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZ5U-0000000GMfY-39bz;
	Thu, 27 Nov 2025 10:18:56 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZ5R-0000000GMeS-08mZ
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Nov 2025 10:18:54 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 390D2C16A19;
	Thu, 27 Nov 2025 10:18:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 0474D6068C;
	Thu, 27 Nov 2025 10:18:51 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0A079102F08C5;
	Thu, 27 Nov 2025 11:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764238730; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=LgG9gPlkIJWvQG8qqwMiPTiG2WAG9DKgMroYDQ2bIs4=;
	b=YrQfQhb+6aDx5eS3gn6+AMkY79V3G5HwUWsG48DP7Ih/mZrx7WTptzXRO827bZSdUtZllW
	kEUg5cJcFYjDa8na85/pJT2Pfw/MIOpVY/Tb9RJ7joAiKOugYhzu9Lu0s6AfmFvS2aFTsd
	fTG30Dvk6BijXC7uKs901C/NK3KqDw7AG6N2qSsZ02TBvgPr2+du1ZfwHQMKHVvCHmqCy9
	nBZZsUcQmH2ycbgM3mzVBeGTtroQY9IJEREPP4Gvg+OebLRWeFj0P0btFjtvy5EyFEMoOi
	B2moEm7ez2lAOSdFt18NQ2Ek/LaVAov9so6PXi6rAOPAzdCzKX2wpoWmmimRHg==
Mime-Version: 1.0
Date: Thu, 27 Nov 2025 11:18:45 +0100
Message-Id: <DEJEFLKA9IJR.237ZLV8HBD2VS@bootlin.com>
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
Subject: Re: [PATCH 1/2] phy: rockchip: inno-usb2: fix disconnection in
 gadget mode
X-Mailer: aerc 0.20.1
References: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-0-239872f05f17@bootlin.com> <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-1-239872f05f17@bootlin.com> <DEHVRC8CY12S.3LSC6UVSMU0C1@bootlin.com> <DEJD8DJZFNZO.11B1UBXJBN7MO@bootlin.com> <DEJDSE73CJES.2AB8YSKLW6VE1@bootlin.com>
In-Reply-To: <DEJDSE73CJES.2AB8YSKLW6VE1@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_021853_220403_A4723564 
X-CRM114-Status: GOOD (  15.81  )
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

SGkgVGjDqW8sCgpPbiBUaHUgTm92IDI3LCAyMDI1IGF0IDEwOjQ4IEFNIENFVCwgVGjDqW8gTGVi
cnVuIHdyb3RlOgo+IE9uIFRodSBOb3YgMjcsIDIwMjUgYXQgMTA6MjIgQU0gQ0VULCBMdWNhIENl
cmVzb2xpIHdyb3RlOgo+PiBPbiBUdWUgTm92IDI1LCAyMDI1IGF0IDQ6MjggUE0gQ0VULCBUaMOp
byBMZWJydW4gd3JvdGU6Cj4+Pj4gVGhlIGNvZGUgYWxyZWFkeSBjaGVja3MgZm9yICFycG9ydC0+
c3VzcGVuZGVkLCBzbyBhZGQgYSBndWFyZCBmb3IgVkJVUyBhcwo+Pj4+IHdlbGwgdG8gYXZvaWQg
YSBkaXNjb25uZWN0aW9uIHdoZW4gYSBjYWJsZSBpcyBjb25uZWN0ZWQuCj4+Pgo+Pj4gWW91ciBj
b21taXQgbWVzc2FnZSB3YXMgY2xlYXIgYnV0IEkgd2FzIG1pc3Npbmcgb25lIGtleSBwb2ludDog
d2hhdAo+Pj4gcnBvcnQtPnN1c3BlbmRlZCBtZWFucy4gSXQgaXNuJ3Qgd2hhdCBJIGZpcnN0IHRo
b3VnaHQuIEluc3RlYWQgaXQgbWVhbnMKPj4+IHBoeSBpcyBwb3dlcmVkIG9mZi4gTmFtaW5nIGlz
IGJhZCBidXQgdW5yZWxhdGVkIHRvIHlvdXIgc2VyaWVzLiBNYXliZQo+Pj4gYWRkIGEgY29tbWVu
dCB0byB5b3VyIGNvbW1pdCBtZXNzYWdlIGxpa2UgdGhlIGZvbGxvd2luZz8KPj4+Cj4+PiAgIFRo
ZSBjb2RlIGFscmVhZHkgY2hlY2tzIGZvciAhcnBvcnQtPnN1c3BlbmRlZCAoUEhZIGlzIHBvd2Vy
ZWQgb24pLCAuLi4KPj4KPj4gWW91IGFyZSByaWdodC4gSSBoYXZlIGFkZGVkIGEgc2xpZ2h0bHkg
bG9uZ2VyIHRleHQ6Cj4+Cj4+ICAgVGhlIGNvZGUgYWxyZWFkeSBjaGVja3MgZm9yICFycG9ydC0+
c3VzcGVuZGVkICh3aGljaCwgc29tZXdoYXQKPj4gICBjb3VudGVyLWludHVpdGl2ZWx5LCBtZWFu
cyB0aGUgUEhZIGlzIHBvd2VyZWQgb24pLCAuLi4KPj4KPj4gU3RpbGwgd29ydGggeW91ciBSZXZp
ZXdlZC1ieT8KPgo+IEV2ZW4gbW9yZSBzby4KClRoYW5rcywgdjIgb24gaXRzIHdheS4KCj4+IEkg
YWxzbyBhZGRlZCB0aGUgQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgbGluZSwgd2hpY2ggSSBu
b3RpY2VkIGJlaW5nCj4+IG1pc3NpbmcuCj4KPiBJIG5ldmVyIGFkZCB0aGF0IENjIHRyYWlsZXIg
YW5kIG9ubHkgcmVseSBvbiBgRml4ZXM6YC4gSSB0aG91Z2h0IGl0Cj4gdXNlZCB0byBiZSBkb2N1
bWVudGVkIGFzIGFuIGFsdGVybmF0aXZlIHRvIHRoYXQgQ2MgdHJhaWxlciBidXQgaXQgZG9lcwo+
IG5vdCBzaG93IHVwIGluIGBnaXQgbG9nIC1wIERvY3VtZW50YXRpb24vcHJvY2Vzcy9zdGFibGUt
a2VybmVsLXJ1bGVzLnJzdGAKPgo+IFRoZXJlIGlzIG9uZSBpbmRpcmVjdCBtZW50aW9uIG9mICJz
Y3JpcHRzIHRoYXQgbG9vayBmb3IgY29tbWl0cwo+IGNvbnRhaW5pbmcgYSAnRml4ZXM6JyB0YWci
Ogo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjE3Ljkvc291cmNlL0RvY3Vt
ZW50YXRpb24vcHJvY2Vzcy9zdGFibGUta2VybmVsLXJ1bGVzLnJzdCNMMTMyLUwxMzQKPgo+IEFu
eXdheSwgeW91IGRvIHJpZ2h0IGJ5IGV4cGxpY2l0bHkgdGFnZ2luZyBgQ2M6IHN0YWJsZUAuLi5g
LgoKVGhlb3J5IHNheXMgQ2M6IGlzIG5lZWRlZDoKCj4gTm90ZTogQXR0YWNoaW5nIGEgRml4ZXM6
IHRhZyBkb2VzIG5vdCBzdWJ2ZXJ0IHRoZSBzdGFibGUga2VybmVsIHJ1bGVzCj4gcHJvY2VzcyBu
b3IgdGhlIHJlcXVpcmVtZW50IHRvIENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnIG9uIGFsbCBz
dGFibGUKPiBwYXRjaCBjYW5kaWRhdGVzLgooaHR0cHM6Ly9kb2NzLmtlcm5lbC5vcmcvcHJvY2Vz
cy9zdWJtaXR0aW5nLXBhdGNoZXMuaHRtbCNyZXZpZXdlci1zLXN0YXRlbWVudC1vZi1vdmVyc2ln
aHQpCgpCdXQgaW4gdGhlIHByYWN0aWNlIEkgaGFwcGVuZWQgdG8gZm9yZ2V0IENjOiBzdGFibGUg
aW4gdGhlIHBhc3QsIHRoZSBwYXRjaApnb3QgYXBwbGllZCBhbmQgdGhlIEZpeGVzOiB0YWcgd2Fz
IGVub3VnaCBmb3IgY29ycmVjdCBjaGVycnktcGljayBpbiBzdGFibGUKYnJhbmNoZXMuCgpMdWNh
CgotLQpMdWNhIENlcmVzb2xpLCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJuZWwgZW5n
aW5lZXJpbmcKaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
