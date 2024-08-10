Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73ECEC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 19:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nmt+55saXwx3KeFTx6qV4ZuJcnTDlgk9QF3T+0DxEXs=; b=HhnhsXzGH3936f
	ltSY4U5WGB5kwcbWnwkzdbU5WkZJrnzBMyG1mElbhI7/4cPGN6ncnib1RBiBbx+vcqsYzbwjYEPbN
	dGiZpszmrkPFAKKmyWoWgFK99KcXYf9ki78ZKc4SdU0ZVUm/CvRB2d23meuRtols4Y+y8B3SA9spB
	5/NV9ivKyguWkctmRFopBTCEb2XZZ9b+xNjTyH6po6U4MdCYrmdhcKU67NWLlrQfVAhhBHHxYnHfh
	agPiZWiheDwRmlCDJLaED30/fBwSJcO/BSDJez/ISlxR2qoZJebTodqGQKHm8xOAq6KYMJLraiBGP
	YbhmeRJOIdvyxOM2T8JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scrak-0000000EVOo-0eD3;
	Sat, 10 Aug 2024 19:17:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scrZI-0000000EV12-2lvQ;
	Sat, 10 Aug 2024 19:16:02 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1scrYx-0006Wd-7T; Sat, 10 Aug 2024 21:15:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Aurelien Jarno <aurelien@aurel32.net>,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Olivia Mackall <olivia@selenic.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH v9 0/3] hwrng: add hwrng support for Rockchip RK3568
Date: Sat, 10 Aug 2024 21:15:36 +0200
Message-Id: <172331732517.282332.1542655399942627600.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1722355365.git.daniel@makrotopia.org>
References: <cover.1722355365.git.daniel@makrotopia.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_121600_717477_B64B9DE8 
X-CRM114-Status: GOOD (  12.27  )
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

On Tue, 30 Jul 2024 17:08:04 +0100, Daniel Golle wrote:
> Rockchip SoCs used to have a random number generator as part of their
> crypto device.
> 
> However newer Rockchip SoCs like the RK3568 have an independent True
> Random Number Generator device. This patchset adds a driver for it and
> enables it in the device tree for RK3568.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
      commit: afeccc4084963aaa932931b734c8def55613c483

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
