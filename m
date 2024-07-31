Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2F7CC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 11:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uxDqZ8Wnn0RGnE88wZysnMnzO8DHDAC+O3lkYG4F4X8=; b=Qnh5BIXgn/bUUk
	IFRmqj5vxDDOcGilWy+9cAbMze4crKY1Np7VPBarKdnJEB7Ur3zS0uuOQCnYwP+M+RPlmOZVV4sc0
	RmdoEAODk1sOzMm4SUSamg+rC0DiGnMphS1C9M9OKY8cdgXXycGWDpdQE481FwMVlfOSLMuNdoRg7
	1w56HLT1VVZsFkQW14Xys/fWwBatjk50NoXOT7NReUJIzxjhsyCGd+LGSmLLUT+rTdjBUJjqc9PW2
	z8R64qMvCImbeAT8ZEyy/TZ3gG8bXphz8kn587i6onebaVxh2biwCGyItOMjh85zWIduqZhIkuBsk
	KnSCwROo9SZWzYqypiFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7d4-00000000vNn-46yg;
	Wed, 31 Jul 2024 11:36:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ7cb-00000000vH5-1Vyr;
	Wed, 31 Jul 2024 11:35:58 +0000
Received: from i53875ac5.versanet.de ([83.135.90.197] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sZ7cT-0003Dc-Jz; Wed, 31 Jul 2024 13:35:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Quentin Schulz <foss+kernel@0leil.net>,
	Rob Herring <robh@kernel.org>,
	Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] fix eMMC/SPI flash corruption when audio has been used on RK3399 Puma
Date: Wed, 31 Jul 2024 13:35:47 +0200
Message-Id: <172242573602.2549881.5467215847844665967.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
References: <20240731-puma-emmc-6-v1-0-4e28eadf32d0@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_043557_422381_4BACDDD5 
X-CRM114-Status: GOOD (  13.37  )
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

On Wed, 31 Jul 2024 13:05:27 +0200, Quentin Schulz wrote:
> In commit 91419ae0420f ("arm64: dts: rockchip: use BCLK to GPIO switch
> on rk3399"), an additional pinctrl state was added whose default pinmux
> is for 8ch i2s0. However, Puma only has 2ch i2s0. It's been overriding
> the pinctrl-0 property but the second property override was missed in
> the aforementioned commit.
> 
> On Puma, a hardware slider called "BIOS Disable/Normal Boot" can disable
> eMMC and SPI to force booting from SD card. Another software-controlled
> GPIO is then configured to override this behavior to make eMMC and SPI
> available without human intervention. This is currently done in U-Boot
> and it was enough until the aforementioned commit.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: fix eMMC/SPI corruption when audio has been used on RK3399 Puma
      commit: bb94a157b37ec23f53906a279320f6ed64300eba
[2/2] arm64: dts: rockchip: override BIOS_DISABLE signal via GPIO hog on RK3399 Puma
      commit: 741f5ba7ccba5d7ae796dd11c320e28045524771

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
