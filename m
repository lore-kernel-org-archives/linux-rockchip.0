Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C527CF6499
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 12:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Ph2F93IxkicW+0RR3PxM5im3cwaSavXdUfhdEYyQYQ=; b=E1jCiAyJPX0Ass
	uAR/BcR+o6DIXLQ8tHDhHbV6omET4xS0l1J9TvmMwVlOo2MuO4+CgrrZLs5rlxV3QWJ1arAxOTXRr
	gBj0I0cdhV3TMsFjq8ds6n746bNdJ7gmODLjU3OB3W9Ro6u4ugrSjRDNwbLJqAh8uBEeKIE2Qk/NL
	H4Ww/wibmGP9mYvMO4F++qsInj6JwTeWjondDuNxM5mi9ZTXFryZERkOX9OAR1xiXGxCg/ttTkgVJ
	jglLaRjElCPkviSop6q9YoKXwUVYBZjHJPlPFgbBkBDMVTDo9HOTou7G8Y2nn5Ixmo2H80OhGpHoD
	89s2FCrIHN/yZ9c6tuMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svFJF-0000000GzHa-33VY;
	Mon, 30 Sep 2024 12:15:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE80-0000000GmNV-3zI3;
	Mon, 30 Sep 2024 10:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=s/tFBH3w644dH2BiF2kIdHGJ0YUc1jK2OUYdmfOhNhE=; b=cSN/3WpBNS/Bws30ayJ61/aJSc
	16KqsPgoI4vZWbH9OoNggjy5Gm6BP5rJ91dciyOWBZGfra3dkk59GL37fHr7WA+YM1oo8HD6adRKz
	4XFBPhMKXvFhQCb/a6AHSkdieM14WAs546AAPhN9+JDNh5kCdqD4G7BTbfbTNmdkK8+AgWJy/MwQD
	5wDdTO8U2RZ5paS9DRuROBRu/zVkhwXFChW7PLlWhGUgxbEoCGiFj6iQ5uEgAA5R/IUgWEBhkJDQr
	TlTxkonf9Sl7FpEYM5mECsB048Wl5KEvXlLAAerbIVeNfSEGv3u4GGBXa2gd769zA/u32jpshwk7A
	X1lJ+ltw==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4H-0004Xd-Ei; Mon, 30 Sep 2024 12:55:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 0/3] Add support for ArmSoM LM7 SoM
Date: Mon, 30 Sep 2024 12:55:42 +0200
Message-ID: <172769365132.1880381.4548404807222807004.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240918165008.169917-1-liujianfeng1994@gmail.com>
References: <20240918165008.169917-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035945_028797_8DC9EE2A 
X-CRM114-Status: GOOD (  11.44  )
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

On Thu, 19 Sep 2024 00:50:05 +0800, Jianfeng Liu wrote:
> This series add support for ArmSoM RK3588 based SoM and carrier board.
> Devicetree is split into .dtsi (LM7 SoM) and .dts (W3 Board).
> 
> Info of SoM and carrier board can be found at:
> https://docs.armsom.org/armsom-lm7
> https://docs.armsom.org/armsom-w3
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add ArmSoM LM7 SoM
      commit: 7ad3206b822a69208a4ea47cc1f2cc69b120b513
[2/3] arm64: dts: rockchip: Add ArmSoM LM7 SoM
      commit: 4b6167b3a00fc0eab259484a052be6d53df9b827
[3/3] arm64: dts: rockchip: Add ArmSoM W3 board
      commit: 50c51bc28a7d7e7bb28b40ec3948ae73410bc2fc

With some modifications:
- convert underscore to dash in leds
- some reordering


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
