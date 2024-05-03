Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC60DC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 08:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TnPgvZIKV1ghxlv3F086V1Xv3/9wEeLhbW5m9f8osE=; b=2U0H4DKSH14r/0
	X+kFQw0Rk/4ycnSRXI7jjrSp3HlkbxCZAmIFwTbOawb7a3PC8luiA2vAfxJ3h/6UBjSzEl6BIgZpe
	vW1s70V6usjj9sspy95SK+nqmRzswvqXC2BAYqUT/tHqn1Qq6luvrTe2SKmZaLnLx7DvX4DUJ6lXi
	Wph11IcSPZ1QXcXBd/7iBw71kHbnakQH2SLQuISEZvBHrf/05bG1ktGD/l+PEJV1fV21IUppbEwim
	/7dtl4gsWk53feL9JX1wNvKyoB3QHhJJWZD6+SO97y3A2eAYPyPryIfYky2SQSsxEMUYE2oWLASw0
	3f9pavXFAYfkfxo0/ufQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2o0z-0000000FaYE-3ucc;
	Fri, 03 May 2024 08:11:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2o0v-0000000FaXD-3rab;
	Fri, 03 May 2024 08:11:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 032D161CD0;
	Fri,  3 May 2024 08:11:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FCDBC116B1;
	Fri,  3 May 2024 08:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714723887;
	bh=zW8kPPzhTDL3Y+nV9+ePejm9frxfcTnTVBMJ/MpjjNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=adgumGdhDzuxmYh3kAZsp0gddPLx5Abm3vM/6/swNyiLE1H1qalo40Uo/rvtXd6bH
	 Sq/wMf52ruyGpfkEbeLc9lJXznj2rJsCVrW6ADI9MmzXDn0N9uOHBMmKkJi0J1Dgf3
	 mRIceLQNNJKOmbTJRlqnxEU7ZWULJCN8u/pd1yRLHKWd6l7hZdIRAZOU24JqGopwzx
	 rrpjcREwOH4+9r2W6L2Qn5YUsAFwxvgZVRhoP3bIfBbWWLbp5l2ZBjjtYC+/I7DGn2
	 oeMWU/OX3l3hZx2DRqh9KvDCPGpfv3wkTldS8KTsb40ySBnYoJMZ3g/nOMG+rQZ7FC
	 84Hp4otqKv5+Q==
Date: Fri, 3 May 2024 09:11:21 +0100
From: Lee Jones <lee@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v4 0/5] Add RK816 PMIC support
Message-ID: <20240503081121.GH1227636@google.com>
References: <20240416161237.2500037-1-knaerzche@gmail.com>
 <69945c53-1fa5-4fde-b488-6056c5471095@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69945c53-1fa5-4fde-b488-6056c5471095@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_011130_180314_1D67B5E6 
X-CRM114-Status: GOOD (  14.11  )
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

T24gRnJpLCAwMyBNYXkgMjAyNCwgQWxleCBCZWUgd3JvdGU6Cgo+IEhpIExlZSwKPiAKPiBpdCBs
b29rcyBsaWtlIGFsbCBwYXRjaGVzIGV4Y2VwdCB0aGUgTUZEIG9uZXMgaGF2ZSBiZWVuIHJldmll
d2VkL2Fja2VkIGJ5Cj4gbm93LiBJIGhvcGUgSSBpbnRlZ3JhdGVkIHlvdXIgZmVlZGJhY2sgdG8g
djMgWzBdIGluIGEgd2F5IHlvdSB3ZXJlCj4gZXhwZWN0aW5nLiBBbHNvIEkgd2FzIGhvcGluZyB0
aGlzIHdob2xlIHNlcmllcyBjb3VsZCBiZSBnbyB0aG91Z2ggdGhlIE1GRAo+IHRyZWUsIHNpbmNl
IGFsbCB0aGUgbm9uZS1NRkQgcGF0Y2hlcyBkZXBlbmQgb24gdGhlIGNoYW5nZXMgbWZkLWhlYWRl
ci4KPiAKPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgdGhlcmUgaXMgYW55dGhpbmcgbGVmdCBmb3Ig
bWUgdG8gZG8uCgpJIGhhdmUgdGhlIHBhdGNoIG9wZW4gJ3JpZ2h0IG5vdycsIHBsZWFzZSBiZWFy
IHdpdGggbWUuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
