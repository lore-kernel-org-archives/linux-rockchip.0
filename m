Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3E71D116E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 09:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Cc:Subject:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G86Vj9EZVy6qrEwAdgojPnSK+WwoRIhzPU4AkvgM4AI=; b=qRGSbZbNRY23EG
	a3nUm8xGvvoUX2zRnnDX25UoP8z6F+2QTcQjo1Y+Jy3XiIWnUnMFashSUN7wZ7E91y3yGAM6CyTIt
	yV38+52hZ9yoQkH1xh5pcCZ7k866G/rtWsmkiQz/A6Fj5xiav7g5e1Y/GKS4pIEjJI5dbkXzLBWA2
	wmHA0jjBfYSAyL6znHV5Opubvu/diFDUKDOM1WnmMRDKxVyVQjry4Wwh/P67IgdKcMzMVQ/fD+m78
	M2kQhpW499Tvqxp4Ld2od9gZZwzGEcCmWmU2o6MxCOS201pp0KBcX3QOcJg9o9fps3Pat0e9+bTB2
	WhDwHe2HPYtVGZTnwFQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYcE-0000000GK63-0cNl;
	Thu, 27 Nov 2025 09:48:42 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYcA-0000000GK4i-2RiZ;
	Thu, 27 Nov 2025 09:48:40 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 194DB4E41916;
	Thu, 27 Nov 2025 09:48:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D85086068C;
	Thu, 27 Nov 2025 09:48:33 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3FF99102F2343;
	Thu, 27 Nov 2025 10:48:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764236913; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=BAZLhFiggp3ISn2IlMvvHN2Lj6HBhB4JUomxmoaFyVk=;
	b=gMSaUZeLDRdv7XorMV0FKyzctA/4ZSOlfHUNmQrVCZ+WM3vgTMDTAzCIWb21ezNRx4QYJv
	iwN7ZWp9YPgZVjsmhYZAtipIhD6LRAAeFtP3YsTnGJTfeLLM/FJDqc9twcVfL2ekMnIE5F
	YYuFFO7zSmMsyeumbEcnqxTOP/JEF+yYjFqviylqeP9fxQaSeGpA6/4T6pNMMAcvJRjl+r
	q/PQSQdH+7DnYQhMwzXCN2xdbMyxWN4zSYaGmrQ36SKtfFpvzsgum0qiYcjcqE69ftmTn1
	ivwmnZKJjCz67sul0Q4lbrdcQLshTZJuxBUgW/CRzkd6w6chphh3z6T3QBm9Cw==
Mime-Version: 1.0
Date: Thu, 27 Nov 2025 10:48:26 +0100
Message-Id: <DEJDSE73CJES.2AB8YSKLW6VE1@bootlin.com>
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Subject: Re: [PATCH 1/2] phy: rockchip: inno-usb2: fix disconnection in
 gadget mode
Cc: "Kever Yang" <kever.yang@rock-chips.com>, "Minas Harutyunyan"
 <Minas.Harutyunyan@synopsys.com>, "Alan Stern" <stern@rowland.harvard.edu>,
 "Louis Chauvet" <louis.chauvet@bootlin.com>, =?utf-8?q?Herv=C3=A9_Codina?=
 <herve.codina@bootlin.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <linux-phy@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-usb@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>,
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "William Wu" <wulf@rock-chips.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-0-239872f05f17@bootlin.com> <20250722-rk3308-fix-usb-gadget-phy-disconnect-v1-1-239872f05f17@bootlin.com> <DEHVRC8CY12S.3LSC6UVSMU0C1@bootlin.com> <DEJD8DJZFNZO.11B1UBXJBN7MO@bootlin.com>
In-Reply-To: <DEJD8DJZFNZO.11B1UBXJBN7MO@bootlin.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_014838_786215_CFBE408A 
X-CRM114-Status: GOOD (  14.19  )
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

T24gVGh1IE5vdiAyNywgMjAyNSBhdCAxMDoyMiBBTSBDRVQsIEx1Y2EgQ2VyZXNvbGkgd3JvdGU6
Cj4gT24gVHVlIE5vdiAyNSwgMjAyNSBhdCA0OjI4IFBNIENFVCwgVGjDqW8gTGVicnVuIHdyb3Rl
Ogo+Pj4gVGhlIGNvZGUgYWxyZWFkeSBjaGVja3MgZm9yICFycG9ydC0+c3VzcGVuZGVkLCBzbyBh
ZGQgYSBndWFyZCBmb3IgVkJVUyBhcwo+Pj4gd2VsbCB0byBhdm9pZCBhIGRpc2Nvbm5lY3Rpb24g
d2hlbiBhIGNhYmxlIGlzIGNvbm5lY3RlZC4KPj4KPj4gWW91ciBjb21taXQgbWVzc2FnZSB3YXMg
Y2xlYXIgYnV0IEkgd2FzIG1pc3Npbmcgb25lIGtleSBwb2ludDogd2hhdAo+PiBycG9ydC0+c3Vz
cGVuZGVkIG1lYW5zLiBJdCBpc24ndCB3aGF0IEkgZmlyc3QgdGhvdWdodC4gSW5zdGVhZCBpdCBt
ZWFucwo+PiBwaHkgaXMgcG93ZXJlZCBvZmYuIE5hbWluZyBpcyBiYWQgYnV0IHVucmVsYXRlZCB0
byB5b3VyIHNlcmllcy4gTWF5YmUKPj4gYWRkIGEgY29tbWVudCB0byB5b3VyIGNvbW1pdCBtZXNz
YWdlIGxpa2UgdGhlIGZvbGxvd2luZz8KPj4KPj4gICBUaGUgY29kZSBhbHJlYWR5IGNoZWNrcyBm
b3IgIXJwb3J0LT5zdXNwZW5kZWQgKFBIWSBpcyBwb3dlcmVkIG9uKSwgLi4uCj4KPiBZb3UgYXJl
IHJpZ2h0LiBJIGhhdmUgYWRkZWQgYSBzbGlnaHRseSBsb25nZXIgdGV4dDoKPgo+ICAgVGhlIGNv
ZGUgYWxyZWFkeSBjaGVja3MgZm9yICFycG9ydC0+c3VzcGVuZGVkICh3aGljaCwgc29tZXdoYXQK
PiAgIGNvdW50ZXItaW50dWl0aXZlbHksIG1lYW5zIHRoZSBQSFkgaXMgcG93ZXJlZCBvbiksIC4u
Lgo+Cj4gU3RpbGwgd29ydGggeW91ciBSZXZpZXdlZC1ieT8KCkV2ZW4gbW9yZSBzby4KCj4gSSBm
aXhlZCB0aGUgb3RoZXIgaXNzdWVzIHlvdSBoYXZlIHJlcG9ydGVkLCBmb3IgcGF0Y2ggMiBhcyB3
ZWxsLgo+Cj4gSSBhbHNvIGFkZGVkIHRoZSBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyBsaW5l
LCB3aGljaCBJIG5vdGljZWQgYmVpbmcKPiBtaXNzaW5nLgoKSSBuZXZlciBhZGQgdGhhdCBDYyB0
cmFpbGVyIGFuZCBvbmx5IHJlbHkgb24gYEZpeGVzOmAuIEkgdGhvdWdodCBpdAp1c2VkIHRvIGJl
IGRvY3VtZW50ZWQgYXMgYW4gYWx0ZXJuYXRpdmUgdG8gdGhhdCBDYyB0cmFpbGVyIGJ1dCBpdCBk
b2VzCm5vdCBzaG93IHVwIGluIGBnaXQgbG9nIC1wIERvY3VtZW50YXRpb24vcHJvY2Vzcy9zdGFi
bGUta2VybmVsLXJ1bGVzLnJzdGAKClRoZXJlIGlzIG9uZSBpbmRpcmVjdCBtZW50aW9uIG9mICJz
Y3JpcHRzIHRoYXQgbG9vayBmb3IgY29tbWl0cwpjb250YWluaW5nIGEgJ0ZpeGVzOicgdGFnIjoK
aHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTcuOS9zb3VyY2UvRG9jdW1lbnRh
dGlvbi9wcm9jZXNzL3N0YWJsZS1rZXJuZWwtcnVsZXMucnN0I0wxMzItTDEzNAoKQW55d2F5LCB5
b3UgZG8gcmlnaHQgYnkgZXhwbGljaXRseSB0YWdnaW5nIGBDYzogc3RhYmxlQC4uLmAuCgpUaGFu
a3MsCgotLQpUaMOpbyBMZWJydW4sIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBl
bmdpbmVlcmluZwpodHRwczovL2Jvb3RsaW4uY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
