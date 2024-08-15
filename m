Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A0FFC52D7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 20:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3tmx1+QyhiG7zxxUcgwiKbF4gIkzAKRzyYWh0VL6QMA=; b=w/MA58yguP8kYH
	aIAL+jw7vpUYigx0MkNsbB/Xofeb4QnC3cupyEiFxH5B5bFRTVOBc6ScZzzDI7brb2vBGZeXFs1Fe
	V1ulfsNox+9KsT0lHzHydaqS+ktNVHfZNZWKqmTf3lNPEKTZSTc06SgwhjyTc0rWYjk+Nn0idRpBA
	LjzJbiC5NSkr5+Nu+AJj3Q8RpdMj9vTzik9501wzZgaZ0stM1zOj1xTDJxFGVAaS8QdAZZUdAfUDZ
	+15/+8MInUInJ7qMUZldOcmFSwsOHmD6hdRU6IbwNyvL2gmJCrSaqSY2t6vUcaZTstgf89P7ovQ8U
	ac6MYCTYr4UDtSFFK7vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1segwc-0000000AyL1-3S2W;
	Thu, 15 Aug 2024 20:19:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1segvw-0000000Ay8N-0wpL;
	Thu, 15 Aug 2024 20:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uqEr/qNiSE/VighPLXDluXnxQv1rRIHaob4FAUC7g1E=; b=xo633ORwslz61HBY1z5Tk7O2O9
	7kQLjXRLnMqHFZ6cMRYE9vqBOgN2Y6vU2W2+Xa+sZbtIAuKvKkaoayY89a7AGuYdxV5U+7xhPtvjd
	DHAm3rNk4seX2xvkFhPLO7L9CILCuGdd1MjWxUTtf9ZnP72jHb55zgBst6glZ+knZlmFMSFvthbBK
	dG2RifZQm/enLAuDI+j+0qayUsW7yhDTXd3ueAlls8fD0GorheeR/BeUSQk0b7TXZlXgZNsWCl6Be
	h6jKdxsJ8eGooVe1DtjZKg+/fjBXAraOU99WvhemLmrC50rj23t8W/siT2BKdG0lEsZ2yZ+i2tlA+
	MF806jlg==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1segvn-00089v-EQ; Thu, 15 Aug 2024 22:18:47 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: brgl@bgdev.pl,
	Heiko Stuebner <heiko@sntech.de>
Cc: krzk+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 0/2] giantec,gt24c04a eeproms for qnap ts433
Date: Thu, 15 Aug 2024 22:18:43 +0200
Message-Id: <172375308157.820196.5953024909313392880.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240810211438.286441-1-heiko@sntech.de>
References: <20240810211438.286441-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_131856_311315_02BA9A98 
X-CRM114-Status: GOOD (  10.84  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 10 Aug 2024 23:14:36 +0200, Heiko Stuebner wrote:
> Add the binding and dt-nodes for the product-data eeproms on the TS433.
> 
> Heiko Stuebner (2):
>   dt-bindings: eeprom: at24: Add compatible for Giantec GT24C04A
>   arm64: dts: rockchip: add product-data eeproms to QNAP TS433
> 
> .../devicetree/bindings/eeprom/at24.yaml      |  1 +
>  .../boot/dts/rockchip/rk3568-qnap-ts433.dts   | 20 +++++++++++++++++++
>  2 files changed, 21 insertions(+)
> 
> [...]

Applied, thanks!

[2/2] arm64: dts: rockchip: add product-data eeproms to QNAP TS433
      commit: da6f4130234448122fe3e66c8116f7d9eea8a5c7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
