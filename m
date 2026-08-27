Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F26AFC61DC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 13:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R//3zv7MSG+Suyz0WQgVuC/aMO93LbZF2FQYlq6rRiE=; b=v9LCde73r/D+OU
	qakh4SNoUfmhLl1BnkvdHn8pRJNioySULmiVu30vzRbBcGhIKsyecawz/k7ELOG3liyojlPO0ySIf
	WcK04QOfg0l4Xg6G+bbdijQQA3BG7k7gv2syO/wWgTLqRx14rk6bz7xnYH9rIyF1VSrdEZqSUI/M1
	HOypi21TW3zeki68blDeiHOcUvfe3eOe2svWQ7ma6Dwefyvr0+cvNeEQugv+92SDaVXHClDUoascL
	jsGlleOIvzrMeldnGEfKrENmylBfGz8tRjv7F9roYqDmTXugnVE2MqXUUWOL2K6qUdka9Ct33OUkb
	U2GjRFJ63QnxnSI5sL9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaHl-000000044K2-1lHD;
	Thu, 27 Aug 2026 13:36:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaHi-000000044IX-17zD;
	Thu, 27 Aug 2026 13:36:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=A5r0+yUXSX3XQUcP9QrMrgeywepUhT6vyR5hnyxxQlU=; b=p0Ew9lVdxDMpqqMCJQPiMrrSIN
	oczAEJ9P4l57EslTO8aBrNgTsmyf3KIRpzzzqFAyIcw2u6VTGv3x+sBRVotqHg+IQZRnXc+D1L9bK
	FxpYMMrunx627E71POwRG5r8BxHZmMNbFPRNG/yqtxcaRD6x1Fm6sqmv/PGnNB8w0bWpcUdl4t8qi
	Kw/PTXYKZc7lLDpV9IGV9E54g6GXOB+Op8ho9NgvV4g7b2MsPZm34dGdusYELoqPjQASwuDOlkBrn
	vMK8mB1/bAo9u9yxPy/A9iDc3ygx0FQk+40tvoJK1u2vSs9N8PX7YM2nwxAwv5cH1yCg8sWkEMB2M
	uGh4IFRg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, jason98166@gmail.com
Cc: Heiko Stuebner <heiko.stuebner@cherry.de>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
Subject: Re: [PATCH] phy: rockchip-samsung-dcphy: Enable runtime PM at PHY core level
Date: Thu, 27 Aug 2026 15:36:42 +0200
Message-ID: <10904774.nUPlyArG6x@phil>
In-Reply-To: <20260821-dcphy-rpm-v1-v1-1-a7db728b2539@gmail.com>
References: <20260821-dcphy-rpm-v1-v1-1-a7db728b2539@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_063650_307176_9F8CDAC1 
X-CRM114-Status: UNSURE (   8.19  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMjEuIEF1Z3VzdCAyMDI2LCAxMzo0NDoxOSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEphc29uIFlhbmcgdmlhIEI0IFJlbGF5Ogo+IEZyb206IEphc29u
IFlhbmcgPGphc29uOTgxNjZAZ21haWwuY29tPgo+IAo+IHBoeV9jcmVhdGUoKSBvbmx5IGVuYWJs
ZXMgcnVudGltZSBQTSBvbiB0aGUgbmV3IFBIWSBkZXZpY2UgaWYgdGhlIHBhcmVudAo+IGFscmVh
ZHkgaGFzIGl0IGVuYWJsZWQsIGFuZCB0aGlzIGRyaXZlciBlbmFibGVzIGl0IGFmdGVyd2FyZHMu
IFRoZSBQSFkKPiBkZXZpY2UgdGhlcmVmb3JlIG5ldmVyIGdldHMgcnVudGltZSBQTSwgYW5kIHBo
eV9wbV9ydW50aW1lX2dldF9zeW5jKCkKPiByZXR1cm5zIC1FTk9UU1VQUCBmb3IgZXZlcnkgcGh5
X2luaXQoKSBhbmQgcGh5X3Bvd2VyX29uKCkuIFRoZSBibG9jayBpcwo+IHN0aWxsIHJlc3VtZWQg
dG9kYXksIGJ1dCBvbmx5IHRocm91Z2ggdGhlIHN1cHBsaWVyIGxpbmsgZndfZGV2bGluayBidWls
ZHMKPiBmcm9tIHRoZSBwaHlzIHBoYW5kbGUsIHdoaWNoIGZ3X2Rldmxpbms9b2ZmIGFuZCA9cGVy
bWlzc2l2ZSBkbyBub3QuCj4gCj4gTW92ZSBkZXZtX3BtX3J1bnRpbWVfZW5hYmxlKCkgYmVmb3Jl
IGRldm1fcGh5X2NyZWF0ZSgpLCBhcyBkb25lIGZvciB0aGUKPiBzaWJsaW5nIEhEUFRYIFBIWSBp
biBjb21taXQgMTBiYTg0NzlmNDYwICgicGh5Ogo+IHBoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4
OiBFbmFibGUgcnVudGltZSBQTSBhdCBQSFkgY29yZSBsZXZlbCIpLgo+IAo+IEZpeGVzOiBiMmEx
YTJhZTc4MTggKCJwaHk6IHJvY2tjaGlwOiBBZGQgU2Ftc3VuZyBNSVBJIEQtL0MtUEhZIGRyaXZl
ciIpCj4gU2lnbmVkLW9mZi1ieTogSmFzb24gWWFuZyA8amFzb245ODE2NkBnbWFpbC5jb20+CgpS
ZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
