Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA089C46CD2
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 19:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=434KESLUBYuO0/oes/kxwlKOFIDE9QrZDWXANQ6Wu18=; b=qcISYm6PBsu/8b
	QbT9x5veUFqw1/mMx2gPPP96OyLojeQoiV9m1OrGUie8iFkl0C6SRZhfLUqSFl1STKYjKoy9wFv74
	GyrH5BRiJKR/dnfIKh1NsNCKY8N56v/UWqo9Slcg7/DGzmlzq9Iwv20tTKGiXtdE/JPLzPqY9Kaz+
	Hl3QeJoC+eSaAk+3yd1cDSTg0crWbg2I9l/9kJZ4BWxr6hZS6wDfXINWkvOrlbDxuxxIGepgHC/s3
	ERNxPrfMec9Ss8iLYpFNF+zX6uvnw1EmYMwSWnTTsMFIu9yZnHKj1tQhMPFNhzcnBQvUBgtlrwD56
	t/CoJpo7ZIIfDAnWtIww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHUZ4-009p15-1k;
	Sun, 24 Dec 2023 19:55:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHUYn-009ouK-1g;
	Sun, 24 Dec 2023 19:54:55 +0000
Received: from i5e86193c.versanet.de ([94.134.25.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rHUYk-0006HY-20; Sun, 24 Dec 2023 20:54:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sam Edwards <cfsworks@gmail.com>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Sam Edwards <CFSworks@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Joshua Riek <jjriek@verizon.net>,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sven Rademakers <sven.rademakers@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: Fix USB PD clocks
Date: Sun, 24 Dec 2023 20:54:45 +0100
Message-Id: <170344745824.2405994.11750508038108170854.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231216021019.1543811-1-CFSworks@gmail.com>
References: <20231216021019.1543811-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231224_115453_555727_8D229290 
X-CRM114-Status: GOOD (  15.88  )
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

On Fri, 15 Dec 2023 19:10:19 -0700, Sam Edwards wrote:
> The QoS blocks saved/restored when toggling the PD_USB power domain are
> clocked by ACLK_USB. Attempting to access these memory regions without
> that clock running will result in an indefinite CPU stall.
> 
> The PD_USB node wasn't specifying this clock dependency, resulting in
> hangs when trying to toggle the power domain (either on or off), unless
> we get "lucky" and have ACLK_USB running for another reason at the time.
> This "luck" can result from the bootloader leaving USB powered/clocked,
> and if no built-in driver wants USB, Linux will disable the unused
> PD+CLK on boot when {pd,clk}_ignore_unused aren't given. This can also
> be unlucky because the two cleanup tasks run in parallel and race: if
> the CLK is disabled first, the PD deactivation stalls the boot. In any
> case, the PD cannot then be reenabled (if e.g. the driver loads later)
> once the clock has been stopped.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588: Fix USB PD clocks
      commit: 44de8996ed5a10f08f2fe947182da6535edcfae5

I've changed the patch to only add the ACLK_USB.
For the HCLK_* type, Rockchip added both the root as well as the
actual controller clocks, so I guess it should be the same
for the ACLK-type. Powerdomains are strange with their clock-
synchronization, so I'm opting for better save than sorry ;-)

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
