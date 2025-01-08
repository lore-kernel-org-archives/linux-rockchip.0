Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF55E77188
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jan 2025 13:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xFpmNuztzC990PTQU+ZJ2SfMCklaBacH6Fc3M7+r4hA=; b=Ls52KwZDSwOx9S
	y9IbgHJVxD8jdgjziURVAwtGJBnbBRt+NCRwpVO3hbep3EIvwgThv0Ir5u0T0fC+DnZR9hTKqV/D5
	vfKvXlrDcxtqa4eqsqKRekyAa3mQsQLvYDK/jZkWhqhnsnzdjChJyHeTx6C4s3rSq2A/c7Gw0ylQy
	7C413oUOs9JIB+5+uWTl4H94yRA1tjoVciOExNIyKiQ1el8wEyHSuj5K4bFOjqClhGV8Z64jl8F+M
	jCVtQpwWSXiHC52HyOhRzU5hcPE9u3zbX6IrX+EswvhWF9zhQwH0Pzf15NByN29HsK6iL2FYq8DOu
	QqtPZEu65fwT/LQgONUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVVnH-00000008YEG-3baN;
	Wed, 08 Jan 2025 13:08:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVV7s-00000008PuZ-1RDQ;
	Wed, 08 Jan 2025 12:25:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SEKuUp6eK4AQc3wwaf4maYj/ZOeK94EgW3nX9qE7bw0=; b=VLb8w03rUpvuGFHfO6zrkXhWWk
	RN6z6K7Tc5qV+AH0xvLxLsGDWieWszSbVa5zw3eBMrlLB0cwYtrnX9vbeiGmslFn9kJy3EhyPR3qM
	PQ97EFsJWNGDctB+8Ww7Nqx+SBcd+GAHeTvqeHRRWtKcD5DiVB1BPeoNJUf84OYOGVOhK60GsGell
	JcJbtGl945ZlEfs4xNfK0L6tgRm5A+/5SOEhO7bkj30lR1rxcsCQrAlWaYRs1kVRQHSSmfK3mAyxR
	vryR8Nk4tcCaXxWTxnT2nbANk74MCuisgGqtPITqKF+42FGgF4KRMoAgmfvsfz9ZSB96GMn+ZpsBC
	eCv5UOYA==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVV7p-0005gn-53; Wed, 08 Jan 2025 13:25:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Rebmann <jre@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	David Jander <david@protonic.nl>
Subject: Re: [PATCH 0/2] Add FRAM to Protonic MECSBC device-tree
Date: Wed,  8 Jan 2025 13:25:16 +0100
Message-ID: <173633908211.2779821.7196542630655064232.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
References: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_042532_381793_8C3E846D 
X-CRM114-Status: GOOD (  11.95  )
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


On Thu, 19 Dec 2024 13:34:55 +0100, Jonas Rebmann wrote:
> The MECSBC single board computer is equipped with a Fujitsu MB85RS128TY
> FRAM. This series adapts the devicetree accordingly.
> 
> Tested on current mtd/next which contains the required driver and
> bindings update:
> - 5b68d4d2db29 ("dt-bindings: mtd: mchp48l640 add mb85rs128ty compatible")
> - 02ba194feacb ("mtd: mchp48l640: add support for Fujitsu MB85RS128TY FRAM")
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: MECSBC: Remove i2c2 node
      commit: 60f7293a3da9eb1d8127cb8e331ddfc4ed605ff8
[2/2] arm64: dts: rockchip: MECSBC: Add FRAM MB85RS128TY
      commit: bd266303f7a44bd033f9580ce4ef161684aaf468

Moved the new &spi node to its correct alphabetical position

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
