Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E89ECCCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 22:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BDIJLB3GG6ToJm8pI47JKO6r+qfZozoSbIsp9BTbM5A=; b=MzCcmvVeRvCm7/
	XoKHFdN54nhf+i4Noy11K/5t4Nxb+sM9K12PkF18vn+HTiXzQH8Mv1bBQCYNfe49xFWaS6LpFLcPU
	IuYu6E7ZhNGirXQUdFDPVbwSEdfPTCvqboHAoaFNFD8/8+xuFFk4jOOUUTBLo+i74A5EgCpUJoXX0
	VuuAmVQc0K1+Wwf9iNVDcDKt0aPRL9ZhlQey4KT5GlZZoX6JA2xkjZ5BDao1Z7+moEx2g+dppV3uN
	/S+BPM1zBgarQCoWKbN4xCS/TapTyuseEFR/EOt7Df/L8bI4gfCk+va4090wN653VycQZQQVewer6
	WWt/RiKoxaGjwukv4hgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8wP-0000000GLFy-0vCb;
	Thu, 06 Nov 2025 22:58:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8wM-0000000GLDT-3fgH
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 22:58:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=q5BaZus5WeymNKM4U1Ymi+4owlLbrKXJ0bebIgphDZE=; b=JZRdQiVA1H9xwmkuwSA8XFSlh/
	NpSYXs6O4jYKW0v+robg8DBouK500mcy4uafbBLd6Sgb7BBs/mfFgUtvBzzHB6+Yi2PmOP5cx4QAy
	jbFg1X4ytnyI72KR3uBzhkKu/NqYFTsqW3+1bD8vnmGlU3rS6DwkCQ+e31T3oL0xwZk4sH2HwW66b
	9ahQ0bUDV7dksfepnZ+yX8mQDGv5trzld9eUwLqPIJ0QAbhwoX/GZz4WY3SaUrsd7DsDZOJ4ZpHkD
	hO16h92PJ5OfZ1dLqrqYhUIxNY0lzlp8QG71hgVraOWLUV6TPpept7Y4BacIyjayqS55ko/eBy6f0
	Be1whIqw==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8wB-0001pr-Lv; Thu, 06 Nov 2025 23:58:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v3] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
Date: Thu,  6 Nov 2025 23:58:35 +0100
Message-ID: <176246989735.210200.333917172984191028.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251104085227.820-1-naoki@radxa.com>
References: <20251104085227.820-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_145850_920279_B1F02393 
X-CRM114-Status: UNSURE (   9.37  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, Heiko Stuebner <heiko@sntech.de>, detlev.casanova@collabora.com, quentin.schulz@cherry.de, sebastian.reichel@collabora.com, damon.ding@rock-chips.com, didi.debian@cknow.org, jbx6244@gmail.com, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 04 Nov 2025 08:52:27 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK 5B+/5T USB Type-C port supports Dual Role Data and
> should also act as a host. However, currently, when acting as a host,
> only self-powered devices work.
> 
> Since the ROCK 5B+ supports Dual Role Power, set the power-role
> property to "dual" and the try-power-role property to "sink". (along
> with related properties)
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix USB Type-C host mode for Radxa ROCK 5B+/5T
      commit: fbf90d1b697faf61bb8b3ed72be6a8ebeb09de3d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
