Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A06AFA3740
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 08:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ncZtfWXxz6fabHSbb3Mv06cuDpudNeZVzLiGERDqh0E=; b=N4vTu7DRK6Mlx7
	I448QwZV2NPH8YiIf74yGfjG+XYDoyuQAWBkJwWNjLUDsQQhlAy1ECh7nCDJwm2beQA3sVY1cVWwS
	0ovi04OJ/+kvdqTBI3wU5VZhAgKaVWa57lVGCBPzYv5jD20GVjiEoUa7YpG/Vq0FfgnhergNXNvz2
	0XUqTDkj0bBVz4NvGqPrC1a6+3X7nZRhdQEgM7E/wuRU/1GuW9ZLUF6Y3zN50lwKKeU6T9mcknSTs
	muXpVb4Ki/P/njaka/RU8j0UQ2UX6mVru8PfsjrUI7mzV6lSiIyW/6GKQts+xYZZvTUR7+eOJB4Dh
	I+sR6Z52+RGcY4V7TImA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opQUr-009kDX-JK; Mon, 31 Oct 2022 08:50:17 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opQUe-009k9P-Nr; Mon, 31 Oct 2022 08:50:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6AA7EB81232;
	Mon, 31 Oct 2022 08:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3D52C433C1;
	Mon, 31 Oct 2022 08:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667206202;
	bh=C2hKUZCNbqyF/PcLDufnR6wqPlEIol7+q42sLgDlNIc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hrIS4HsaFHRj8UIGblGeCBIhQOBmUegwVkuMFSO9TdZ44BP1oRftqoz/tjBvXrFPJ
	 iRQI8PhMEFvhH0DG96Vt92Pt+QJ93WpxrCoxMFbPh/bzkpDZw+VFW/K6/6mia4pWqF
	 kJVWfX0YtOe/s/a/uAB4oYMztQo2I2xrx9zloVEefJlHqGfvrTG0zerUAumXTgtTi2
	 tZ9eJH8D4gY31YNmQdFrdaDQs9oWNxkZ7D2pQgUgQW8ZhwlYKfmFsia9RVYZuA4jip
	 Q3A6PWc7TgDyEuLrlcjq+lNQNuG/YA/mUlqGNWm3SOyJ3HlcKKIIXQ/dE/ee93fEUb
	 lAnNMFeBMYOrg==
Date: Mon, 31 Oct 2022 08:49:56 +0000
From: Lee Jones <lee@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: mfd: Expect specific type for
 monitored-battery
Message-ID: <Y1+MNL+fCfreAqMh@google.com>
References: <20221028231309.565451-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028231309.565451-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_015005_010951_8C683213 
X-CRM114-Status: GOOD (  11.89  )
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

T24gRnJpLCAyOCBPY3QgMjAyMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKCj4gQ29yZSBz
Y2hlbWEgZG9lcyBub3QgZGVmaW5lIHR5cGUgb2YgbW9uaXRvcmVkLWJhdHRlcnksIHNvIHRoZSBz
Y2hlbWFzCj4gYXJlIGV4cGVjdGVkIHRvIHJlZmVyZW5jZSBwcm9wZXIgdHlwZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFy
by5vcmc+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvZW5l
LWtiOTMwLnlhbWwgICAgICB8IDQgKysrLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
