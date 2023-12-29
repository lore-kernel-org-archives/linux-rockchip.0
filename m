Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C0E7C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 23:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqpYHTQnK/+9lDbJ8siRUtKzHsvCeqQFTf5PBksQYfY=; b=IxkccR3JV/6BRt
	iYQi7qqmkbiwf7OyHMcF+3FgMi+XRX+huhAptGlvj4qo09z1I4I5FaoQZAq6a7Uj1VcU6aCWb1TRx
	Ne6bcDryR516HtnXrgw5mum3Eh49JJyAj5plGPxNh/k2qWJgucR7xpDm6nhaGt8z9bYvdSWzxbwR2
	OOwThcQUg/Dw1cqb47XZRKk4KgwY0KXcXSNYX0f01B46RBy/k/KYU58MBtUhQEddXfnNOruoI8trF
	4Bt4WLE9hvu1lSQrXvryRrhYAGZyh7pbx1As8oIIhA36BOUoH0QMQbGeRL5XN+tiVUeIWrh2oDGmb
	3MiXsddvFE5pCOgwOVRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJMPe-001mOw-1X;
	Fri, 29 Dec 2023 23:37:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJMPb-001mO9-07;
	Fri, 29 Dec 2023 23:37:08 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rJMPN-0004lD-SV; Sat, 30 Dec 2023 00:36:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Alex Bee <knaerzche@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v4 00/29] Add HDMI support for RK3128
Date: Sat, 30 Dec 2023 00:36:52 +0100
Message-Id: <170389300283.2698513.7009749210069050452.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231229_153707_076027_68906586 
X-CRM114-Status: GOOD (  14.04  )
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

[02/29] drm/rockchip: vop: Add output selection registers for RK312x
        commit: 407eaa4aa64a8429094fa75fac00fff5e471138d
[03/29] drm/rockchip: inno_hdmi: Fix video timing
        commit: 47a145c03484d33e65d773169d5ca1b9fe2a492e
[04/29] drm/rockchip: inno_hdmi: Remove useless mode_fixup
        commit: 099be7b6718685ebafb417e74bb637abf992474a
[05/29] drm/rockchip: inno_hdmi: Remove useless copy of drm_display_mode
        commit: 8f0df2012b8a94aed0cc450016f7592c24e92cfb
[06/29] drm/rockchip: inno_hdmi: Switch encoder hooks to atomic
        commit: ff4d4fa76fcc19f7d5d261f717121f0a88ec4e30
[07/29] drm/rockchip: inno_hdmi: Get rid of mode_set
        commit: d3e040f450ec8e46ff42fa495a433b976ab47686
[08/29] drm/rockchip: inno_hdmi: no need to store vic
        commit: d7ba3d711cf537ef0ece14cd85d2113ca338a00b
[09/29] drm/rockchip: inno_hdmi: Remove unneeded has audio flag
        commit: f8723484e045ff2d176124484907ec0199c55a0c
[10/29] drm/rockchip: inno_hdmi: Remove useless input format
        commit: c1ceee3248742149d1a602fd913bd88857da1d52
[11/29] drm/rockchip: inno_hdmi: Remove YUV-based csc coefficents
        commit: 139771b8239c43ad1bd6c2976aa12788096a5483
[12/29] drm/rockchip: inno_hdmi: Remove tmds rate from structure
        commit: 5f92474844a4fcb7997da20dd1de2031aed1d794

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
