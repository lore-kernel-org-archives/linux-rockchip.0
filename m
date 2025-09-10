Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D52CA101F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 19:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gkPviySVOiVKgwsWe9H9v9BhOAAAv59B9EtVvgoMxuY=; b=FEULogZHHrhFno
	yhgDC9tzCvPVH1N9RLyt4v0749QWIzSbnhIWbEDYxPWUo2WFrp9wADuC1DDb5KkX4OLlr6PMR6m2A
	G49uo2iXfceCHIqvRa+LC2YUROMgq6Ss0wmahVNvKBnYKMzFNw3YUBMumZam7iUMBaBFTjsmxeRBd
	A6BXBVaWUYrJj55h9Av66kCtrr6j94QM/OmNkMgb1U/HVuH/FHorj6SfnUk05dnJbfrSxzOW2pRiR
	vUVrj+VWA4kvTU7962xznVI3zGhoBaSZYGD6alQt2WIivfHQgSPS0DWuoiDSK1iCbCXhibDg95dTB
	4298vT9IfovkVQAAkFbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwQNk-0000000GFSn-31V3;
	Wed, 10 Sep 2025 19:21:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwQNh-0000000GFQ3-0N9y;
	Wed, 10 Sep 2025 19:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uhFI9oI1xsX/5VketVeksgJo6o20zmCCJbkUrT20l+4=; b=Zg95o4qdhQ3n5T72uj5V2eaTxd
	VbPPVM1DcFUw4tMgnKoPHVlb0k+AZnZmGRS51s0Wnh5SGPnQo5N8OZKxcMeK+ggYYA55asJBryyPA
	LMTUVzjI7nOygkIJM6AHGAnADS8cbzoUK8SgKF3g6PM41ibsclMNJiFouUQaScYlVIou8iadwnEaB
	oysIgeMbqjDsnStF/iIe/B/zaVxOeBi6O3YjSTAWHZhBck6On3L4zUooO0wUCUrMR5nG5ht9Yv7lE
	orCYm7q2L5QFLHmHJhlOieOS4GXp3ZoMAlUvsVYhWL6nX7JOv0/fk3meEy9Ybv5hfsOy3kGawWqgL
	ojyrPRKw==;
Received: from i53875b8a.versanet.de ([83.135.91.138] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uwQNM-0003mh-8i; Wed, 10 Sep 2025 21:21:04 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Collabora Kernel Team <kernel@collabora.com>,
 Michael Riesch <michael.riesch@collabora.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, stable@kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v4 0/7] phy: rockchip: phy-rockchip-inno-csidphy: add
 support for rk3588 variant
Date: Wed, 10 Sep 2025 21:21:03 +0200
Message-ID: <2070639.PIDvDuAF1L@diego>
In-Reply-To: <175752285211.484319.18097786132863236205.b4-ty@kernel.org>
References: <20250616-rk3588-csi-dphy-v4-0-a4f340a7f0cf@collabora.com>
 <175752285211.484319.18097786132863236205.b4-ty@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_122125_423532_DEB92157 
X-CRM114-Status: GOOD (  16.04  )
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

SGkgVmlub2QsCgpBbSBNaXR0d29jaCwgMTAuIFNlcHRlbWJlciAyMDI1LCAxODo0NzozMiBNaXR0
ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFZpbm9kIEtvdWw6Cj4gCj4gT24gV2Vk
LCAwMyBTZXAgMjAyNSAxOTowNDo0OCArMDIwMCwgTWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4gPiBI
YWJpZGVyZSwKPiA+IAo+ID4gVGhlIFJvY2tjaGlwIFJLMzU4OCBmZWF0dXJlcyB0d28gTUlQSSBD
U0ktMiBEUEhZcyAobm90IHRvIGJlIGNvbmZ1c2VkIHdpdGgKPiA+IHRoZSB0d28gY29tYm8gTUlQ
SSBEU0kvQ1NJIENQSFkvRFBIWSBibG9ja3MpLiBUaGUgQ1NJLTIgRFBIWXMgY2FuIGJlCj4gPiBz
dXBwb3J0ZWQgdXNpbmcgdGhlIGV4aXN0aW5nIHBoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkgZHJp
dmVyLCB0aGUgbm90YWJsZQo+ID4gZGlmZmVyZW5jZXMgYmVpbmcKPiA+ICAtIHRoZSBjb250cm9s
IGJpdHMgaW4gdGhlIEdSRgo+ID4gIC0gdGhlIGFkZGl0aW9uYWwgcmVzZXQgbGluZQo+ID4gVGhp
cyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGlzIHZhcmlhbnQuCj4gPiAKPiA+IFsu
Li5dCj4gCj4gQXBwbGllZCwgdGhhbmtzIQo+IAo+IFsyLzddIGR0LWJpbmRpbmdzOiBwaHk6IHJv
Y2tjaGlwLWlubm8tY3NpLWRwaHk6IG1ha2UgcG93ZXItZG9tYWlucyBub24tcmVxdWlyZWQKPiAg
ICAgICBjb21taXQ6IGMyNTQ4MTViMDI2NzNjYzc3YTg0MTAzYzRjMGQ2MTk3YmQ5MGMwZWYKPiBb
My83XSBkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcC1pbm5vLWNzaS1kcGh5OiBhZGQgcmszNTg4
IHZhcmlhbnQKPiAgICAgICBjb21taXQ6IDUwNzJiOGU5OGVlZjQ2ODVhNWE5YThiYWU1NjA3MmNi
NjVhMmVmNjkKPiBbNC83XSBwaHk6IHJvY2tjaGlwOiBwaHktcm9ja2NoaXAtaW5uby1jc2lkcGh5
OiBhbGxvdyB3cml0ZXMgdG8gZ3JmIHJlZ2lzdGVyIDAKPiAgICAgICBjb21taXQ6IDhjN2MxOTQ2
NmM4NTRmYTg2YjgyZDIxNDhlYWE5YmYwZTY1MzE0MjMKPiBbNS83XSBwaHk6IHJvY2tjaGlwOiBw
aHktcm9ja2NoaXAtaW5uby1jc2lkcGh5OiBhbGxvdyBmb3IgZGlmZmVyZW50IHJlc2V0IGxpbmVz
Cj4gICAgICAgY29tbWl0OiAyNjA0MzUxNTNjOTBjOGU5MDU1M2U0NTZlYzQzNTc4ODM0YTE0YTcx
CgpxdWVzdGlvbiwgd2hhdCBoYXBwZW5lZCB0byBwYXRjaCA2PwogIFtQQVRDSCB2NCA2LzddIHBo
eTogcm9ja2NoaXA6IHBoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHk6IGFkZCBzdXBwb3J0IGZvciBy
azM1ODggdmFyaWFudAoKb3IgaXMgaXQganVzdCBtaXNzaW5nIGZyb20gdGhpcyBtYWlsPwoKVGhh
bmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
