Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A3F9C636CC
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Feb 2023 14:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaAGQjQ3CL1PGndV//1PF7zylvbPBVngM36/bCoBbn8=; b=OjZf/O++fpIJRN
	3mzADCm+zW6jW7IK1a0+kZmghiRUJzTR39Az0/l8bPcG2dldCrqFmIFfncAnEN0aoYeKRTAehZGrR
	KbZztXvJ5Tn0sO5jwLDEUETUxFGTjsUxzP2mT6PdZqUc/lBBn5w+bus9jGxNApEl44FngQixftloj
	862ixndYvc5fg8IvVm0xR5eY4EffZ95bpkztrBMVMPLwWtiOGZeegHORdtq1gjJdahJ4UbqD/y933
	FBXJAs4UFAN+Ur3wq9NSLiqJODKZvIOwrF371MsyNKhSEooJ6bD/37XphdJOMdbI9MKmeITm/brHF
	pRKi93VhYua+kpNLiXBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOgRq-006Rj2-Ah; Sun, 05 Feb 2023 14:56:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOgRf-006Rdi-7v; Sun, 05 Feb 2023 14:56:44 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pOgRM-0007OK-N9; Sun, 05 Feb 2023 15:56:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sascha Hauer <sha@pengutronix.de>,
	David Airlie <airlied@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: Re: (subset) [PATCH v3 0/6] drm/rockchip: vop2: add support for the rgb output block
Date: Sun,  5 Feb 2023 15:56:21 +0100
Message-Id: <167560896725.1025063.3856906837169382269.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
References: <20230124054706.3921383-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_065643_324700_38D1BC9B 
X-CRM114-Status: GOOD (  13.05  )
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

On Tue, 24 Jan 2023 06:47:00 +0100, Michael Riesch wrote:
> This series adds support for the RGB output block that can be found in the
> Rockchip Video Output Processor (VOP) 2. Version 2 of this series
> incorporates the feedback by Dan Carpenter and Sascha Hauer. Version 3
> fixes a dumb mistake pointed out by Sascha :-) Thanks for your comments!
> 
> Patches 1-4 clean up the code and make it more general.
> 
> [...]

Applied, thanks!

[1/6] drm/rockchip: vop2: initialize possible_crtcs properly
      commit: 368419a2d429e2438bef333959732c640310bdc7
[2/6] drm/rockchip: rgb: embed drm_encoder into rockchip_encoder
      commit: f8a852f1f86391127ab57b1c41fe0e62bc14f27c
[3/6] drm/rockchip: rgb: add video_port parameter to init function
      commit: 03db8f25cf16c579fe75fd2230bbe64c221bfe25
[4/6] drm/rockchip: vop2: use symmetric function pair vop2_{create,destroy}_crtcs
      commit: cddddc066b056e7bb629a8c4d99c9c4a8ca70a6a
[5/6] drm/rockchip: vop2: add support for the rgb output block
      commit: c66c6d7c47058a72a00b50d7f5c4538e3fa49b1c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
