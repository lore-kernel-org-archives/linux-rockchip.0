Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EA21C77B7D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGUSVr+017We2pZoVAFJjE1u4pWSuOcfxKu8nt8R/M0=; b=OtWAZa6IcCPDFT
	XSlwPJVwVEZsConh12yRyGQ8xj2avzEBGfd5JVmj+OaJRJgoOAIfFpN6vNokNAcMWjMAtxAC5TN16
	Ee23Oxv/wOhsLbqPSVrrdA8wifIZz2g0lfHeA2i++2P/DHuOvS24aAEc6j6UbsBE3/hsiOHsUQ4hi
	7RvN9UMIUF4PyrOYT4ZGimLdVICcb4RlkSwoRUywD8P9gGIizreTT8CwYCMdNNp3KWDRNrlJCI7+H
	az6waLfmIzRLckZ4shxlyRxFQcVUQDBp9IinzU1XlNHLp4Db8pmu0fVp9Q/VgxWzEucRLpPYVQcl5
	dOhX/TybHUtnaAOZ2VZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pya0O-002YSp-0m;
	Mon, 15 May 2023 15:20:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pya0L-002YS5-1P
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:20:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0794962112;
	Mon, 15 May 2023 15:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A02BC433D2;
	Mon, 15 May 2023 15:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684164052;
	bh=nxvWi/otVuWMaj62KIoDJ9818+/B5dyaNH4gjpPPa7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aPS6Q07r7GinekYV3ypLQIXtnCz99RqqM7yEvIpBs8a6wFffLeK03sJb3YgGYrPdm
	 O3kHwK7atvneP5N56RzyGJHfGy/CVN+f+zL1jsGByXXe3errUQ0zyb2UgW9rn7sq7Z
	 09JvtctsWV8VBHULU7x095WopQQJv6BluH7aI4qc0igN0JfIZ7qp4zPOCslwlOPYeN
	 zJ9y04RL2NJpyhbZJc671iM5oMm2PD+XEoMx8O6O7YM+KTd4CvVxN+3sgucpj45CgC
	 i/eqRUAxlsn4xAPmpZDeB9XePaWXrrqbaufJZDx2HrjgotS7MXqF5tsaGJv7T5vn2j
	 8OtrO16qQudAQ==
Date: Mon, 15 May 2023 16:20:44 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 08/14] mfd: rk8xx: add rk806 support
Message-ID: <20230515152044.GT10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-9-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_082053_511909_1CBF743E 
X-CRM114-Status: GOOD (  14.35  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEFkZCBzdXBw
b3J0IGZvciBTUEkgY29ubmVjdGVkIHJrODA2LCB3aGljaCBpcyB1c2VkIGJ5IHRoZSBSSzM1ODgK
PiBldmFsdWF0aW9uIGJvYXJkcy4gVGhlIFBNSUMgaXMgYWR2ZXJ0aXNlZCB0byBzdXBwb3J0IEky
QyBhbmQgU1BJLAo+IGJ1dCB0aGUgZXZhbHVhdGlvbiBib2FyZHMgYWxsIHVzZSBTUEkuIFRodXMg
b25seSBTUEkgc3VwcG9ydCBpcwo+IGFkZGVkIGhlcmUuCj4gCj4gQWNrZWQtZm9yLU1GRC1ieTog
TGVlIEpvbmVzIDxsZWVAa2VybmVsLm9yZz4KPiBUZXN0ZWQtYnk6IERpZWRlcmlrIGRlIEhhYXMg
PGRpZGkuZGViaWFuQGNrbm93Lm9yZz4gIyBSb2NrNjQsIFF1YXJ0ejY0IE1vZGVsIEEgKyBCCj4g
VGVzdGVkLWJ5OiBWaW5jZW50IExlZ29sbCA8dmluY2VudC5sZWdvbGxAZ21haWwuY29tPiAjIFBp
bmU2NCBRdWFydHpQcm82NAo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9LY29uZmln
ICAgICAgIHwgIDE0ICsrCj4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgfCAgIDEgKwo+ICBk
cml2ZXJzL21mZC9yazh4eC1jb3JlLmMgIHwgIDY5ICsrKysrKy0KPiAgZHJpdmVycy9tZmQvcms4
eHgtc3BpLmMgICB8IDEyNCArKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDgu
aCB8IDQwOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICA1IGZpbGVz
IGNoYW5nZWQsIDYxNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9tZmQvcms4eHgtc3BpLmMKCkFwcGxpZWQsIHRoYW5rcwoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
