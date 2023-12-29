Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B66B8C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 23:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuwLY4xApvq7InEG4nFWj5fik/yCkpxApBWiQNG0okk=; b=DpkhUTC2wMJpO4
	cC/hHZ83ynPAP0za2OkicgGXGXZwFxQUudHOedMRYzgFUufxDJpHa7DksKO1pi3LXOIYgCFWzVdwk
	Efdu9a4DyFiMCPj2DuyDPf7IWYKMmpW7zpUWFnV6hi1cpY3q1DyBuCFdXo75sWa+Mgmlzz/4Yq2LN
	KeKpQcJGCWiD+RtIkZTBFqXy5Qwj/UsgEVHCiyKaeAmssWr+adnHb8hL40CV0n0T7BeVlDnLYhwUv
	I6Ab2IGWkTqaARLGIH4fUm1cwbb40lzqxhoDzCFrOXAW/bQiO8UqV3tM5HFegZU4kuachsGSuedEa
	Rhyg/BfAFDUek03UOrAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJMUn-001mr6-2b;
	Fri, 29 Dec 2023 23:42:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJMUl-001mqF-08;
	Fri, 29 Dec 2023 23:42:28 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJMUX-0004oA-5r; Sat, 30 Dec 2023 00:42:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Thomas Zimmermann <tzimmermann@suse.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Maxime Ripard <mripard@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v4 00/29] Add HDMI support for RK3128
Date: Sat, 30 Dec 2023 00:42:11 +0100
Message-Id: <170389332196.2712965.572879488382890334.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_154227_081129_7B6DDEE8 
X-CRM114-Status: GOOD (  13.51  )
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

On Fri, 22 Dec 2023 18:41:51 +0100, Alex Bee wrote:
> This is version 4 of my series that aims to add support for the display
> controller (VOP) and the HDMI controller block of RK3128 (which is very
> similar to the one found in RK3036). The original intention of this series
> was to add support for this slightly different integration but is by now,
> driven by maintainer's feedback, exploded to be a rework of inno-hdmi
> driver in large parts. It is, however, a change for the better.
> 
> [...]

Applied, thanks!

[13/29] drm/rockchip: inno_hdmi: Drop HDMI Vendor Infoframe support
        commit: aa4f96e2de82f5e0dfc0102d08f66918c5e3637f
[14/29] drm/rockchip: inno_hdmi: Move infoframe disable to separate function
        commit: cc9ec38cb2cd32518fe02615d004e96ce2fd0348
[15/29] drm/rockchip: inno_hdmi: Switch to infoframe type
        commit: 4278ff62b73936a9138b60cc0610381003132b77
[16/29] drm/rockchip: inno_hdmi: Remove unused drm device pointer
        commit: 153fe8dbd866869846af3a359ecf82d5ad9fe247
[17/29] drm/rockchip: inno_hdmi: Drop irq struct member
        commit: 073aa696f8cbc170a2c3502c2165aeb835be0156
[18/29] drm/rockchip: inno_hdmi: Remove useless include
        commit: f68a68fe9d9197ea6aa9cb461270685f370b165e
[19/29] drm/rockchip: inno_hdmi: Subclass connector state
        commit: ceeb0f0104a62c867656c2730a51df47e7350b8f
[20/29] drm/rockchip: inno_hdmi: Correctly setup HDMI quantization range
        commit: 164abbd2b7ef62aae6fc80450a2d085acdc3da3e
[21/29] drm/rockchip: inno_hdmi: Don't power up the phy after resetting
        commit: 71892cee6ceb3e1b88e0bb44b05c8397d8261a85
[22/29] drm/rockchip: inno_hdmi: Split power mode setting
        commit: f01e33cb586b5fd354cba73052f82c3b4246109d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
