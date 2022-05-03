Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC6ACC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 May 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imTQP32bKVA9c3wn2Y6OVy3zEv2d7OkqOY/toODzMxw=; b=ntkEasmJSRB0c6
	6nbzMN97Y6eGh570hNVFb8OifhYgFjYHKYoRy1fwXoOIPNHHawWFiJigfvAlN6xdy5H6IpCAI7M3B
	SBux5s80Lvzs6llX/88fLwMBit7LWs4N5x4czr3G4XRBYIe/w96/rBIIifvhMXS0bdFpYiBZbeQXQ
	GcFsovHeYgL4l5zOHaDkK/UH+lWWHGwm5L4+a8qTz486sSAg1XFrK8BIXNXSGOdKskgpZfomCp94i
	l6EHS0ID5fqc+HBUtJpKqmurRj6DPiVjoaEuPD98IkB0h/XCccxOSR8X2BL4u/+oOrK1F8UtR2cyM
	sD6vNqrMrzqC+t1cY0Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlono-004oXj-Pi; Tue, 03 May 2022 09:26:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlonm-004oX4-Ba; Tue, 03 May 2022 09:26:39 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nlonh-0008SU-NK; Tue, 03 May 2022 11:26:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	dri-devel@lists.freedesktop.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: (subset) [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Date: Tue,  3 May 2022 11:26:32 +0200
Message-Id: <165156994608.323667.422449653800274598.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422072841.2206452-1-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_022638_419419_D35E90E5 
X-CRM114-Status: GOOD (  11.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 22 Apr 2022 09:28:17 +0200, Sascha Hauer wrote:
> It's v11 time. There's only one small change to v10. Discussion seems to
> have settled now. Is there anything left that prevents the series from
> being merged? I'd really like to have it in during the next merge
> window.
> 
> This series still depends on:
> drm/rockchip: Refactor IOMMU initialisation (https://lists.freedesktop.org/archives/dri-devel/2022-April/349548.html)
> arm64: dts: rockchip: add basic dts for the radxa rock3 model a
> 
> [...]

Applied, thanks!

[02/24] drm/rockchip: Embed drm_encoder into rockchip_decoder
        commit: 540b8f271e53362a308f6bf288d38b630cf3fbd2
[03/24] drm/rockchip: Add crtc_endpoint_id to rockchip_encoder
        commit: cf544c6a885c52d79e4d8bf139fb8cb63a878512
[04/24] drm/rockchip: dw_hdmi: rename vpll clock to reference clock
        commit: a9d37e684492ab5db1cce28b655e20c01191873f
[05/24] dt-bindings: display: rockchip: dw-hdmi: use "ref" as clock name
        commit: a5fc012e6ee75a899173398573e77207542f588a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
