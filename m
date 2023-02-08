Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EBBEC636CC
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 10:10:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r97nd4qLqC/LufzKf8Ng+A+iezDuxn+zMnR0QEpWPVU=; b=sEGBHtaLZ3aOVR
	YuE4ANL9zpyM6Y7yv9UoPByJVqVTn+8QeCP5DDaqvE4xBsQDSwaaccLC4fBDRS21qHAP82EcBSzQk
	36nz8MXyf4S9MDw7DtJRaeZWpon98fqr2PMZAxsagiDTs1MFwYn5PFNn/KwgT3p4yv3ODWIEUyLxF
	CdE2ibB7OZ79Eb46aURv+Jqrvw+q/FyC0gJGXek1mvIuXwry9liRPE8idw3KJ1042K1ygXzMZR1SV
	/vPUFgLTLGKW9nMA5WD2L+47/mBpv9uvEnVETOxhBFwLVPNDPLE+WWNbXL3OTbeM7OmujKgj75OBf
	OZU1AGpN+ppbX75ixg9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPhP7-00F8wT-2C; Wed, 08 Feb 2023 10:10:17 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPhOo-00F8oj-6I; Wed, 08 Feb 2023 10:10:00 +0000
Received: from beast.luon.net (unknown [IPv6:2a10:3781:2531::8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D3D446602090;
	Wed,  8 Feb 2023 10:09:50 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1675850990;
	bh=/5ijapG9vCBrHU1aJI7Ikdb7hJ0FdiJFM02ACUiAJNs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=Evld1j8rXIZ/3mLNgeHlLCLNJs/4d3VSbkvX1sZ7PeOdemUeAql00HUkS/Bbi7ytH
	 Tg7MD2xyML8kblK7EeYpTlMI00rBCLUbZl/rp9BbFKG+ksjyhYXpcTpiNelWvmamr9
	 MZZ+0FFBnxgNdsC+96gv9aC5XvOP9SkAfFJhiyMvijj8KUgJRwiNxruNN52fxiUIar
	 SrL1bMWYvDu16n+wp5taWPC6LsNURyXmOAzpHOV7RSAlrSg0wlGckBsdPK55u1t7Ky
	 EbY/hYGP2rRCGoJNfhVRo3xMRd54DvRQZBFJE6Qtl+fnC86sHCsNhUV48F4YYVmzsq
	 Jo3ciTtCkTC1w==
Received: by beast.luon.net (Postfix, from userid 1000)
	id 508F669D0985; Wed,  8 Feb 2023 11:09:48 +0100 (CET)
Message-ID: <7aceaa7d85b629e0c135eb3eb6199eea445b65e5.camel@collabora.com>
Subject: Re: [PATCH] ARM: dts: rockchip: fix a typo error for rk3288 spdif
 node
From: Sjoerd Simons <sjoerd@collabora.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Wed, 08 Feb 2023 11:09:48 +0100
In-Reply-To: <20230208091411.1603142-1-jay.xu@rock-chips.com>
References: <20230208091411.1603142-1-jay.xu@rock-chips.com>
Organization: Collabora Ltd.
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_020958_514581_5A38DEFD 
X-CRM114-Status: GOOD (  12.24  )
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

SGV5LAoKT24gV2VkLCAyMDIzLTAyLTA4IGF0IDE3OjE0ICswODAwLCBKaWFucXVuIFh1IHdyb3Rl
Ogo+IEZpeGVzOiA4NzRlNTY4ZTUwMGEgKCJBUk06IGR0czogcm9ja2NoaXA6IEFkZCBTUERJRiB0
cmFuc2NlaXZlciBmb3IKPiBSSzMyODgiKQo+IAo+IFNpZ25lZC1vZmYtYnk6IEppYW5xdW4gWHUg
PGpheS54dUByb2NrLWNoaXBzLmNvbT4KPiBDaGFuZ2UtSWQ6IEkxMzk0MGFlNTQzYmE2Y2E1OTc2
NjNhYTVmMjA5YjFmNWIwMDkwYjE5CgpOaWNlIGNhdGNoOwoKUmV2aWV3ZWQtYnk6IFNqb2VyZCBT
aW1vbnMgPHNqb2VyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiDCoGFyY2gvYXJtL2Jvb3QvZHRz
L3JrMzI4OC5kdHNpIHwgMiArLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC5k
dHNpCj4gYi9hcmNoL2FybS9ib290L2R0cy9yazMyODguZHRzaQo+IGluZGV4IDQ4N2IwZTAzZDRi
NC4uNjQ4ZmE2MjIzMzUxIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JrMzI4OC5k
dHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LmR0c2kKPiBAQCAtOTQyLDcgKzk0
Miw3IEBAIHdkdDogd2F0Y2hkb2dAZmY4MDAwMDAgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgc3RhdHVzID0gImRpc2FibGVkIjsKPiDCoMKgwqDCoMKgwqDCoMKgfTsKPiDCoAo+
IC3CoMKgwqDCoMKgwqDCoHNwZGlmOiBzb3VuZEBmZjg4YjAwMDAgewo+ICvCoMKgwqDCoMKgwqDC
oHNwZGlmOiBzb3VuZEBmZjhiMDAwMCB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzI4OC1zcGRpZiIsCj4gInJvY2tjaGlwLHJrMzA2
Ni1zcGRpZiI7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZWcgPSA8MHgwIDB4
ZmY4YjAwMDAgMHgwIDB4MTAwMDA+Owo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
I3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKCi0tIApTam9lcmQgU2ltb25zCkNvbGxhYm9yYSBMdGQu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
