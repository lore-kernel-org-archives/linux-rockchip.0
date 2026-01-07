Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B81A3CF6BEC
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 12:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZbMgAIGzAreoAx04370S9OzjfWrh2fjN1OalJd9TESA=; b=cUYXk44mqKTrE3
	P4Ogmd/BONj4REQB+mJo1jwT8YBeL/iWxbx2R+ZBT2JYbeanyQd+YsTopBLubEEAtcG1stcNDj5vp
	Gj8Xe0IMfyzRrd2P96cAfBak3r3D3RFhvvgEa83OBTwmXLCja5f2UZQhnfcrDYwtPx7Ues5sPecJW
	wv+A+8Qt0bWJ+Z0LYc6zlotFsj6zEJnXlhNIdqnTYuzTs03LWMy/VgaCyngo1DDeSl23SJjPI4dWb
	b2MhsuhSocqZIRRWLvUX3sMKB/Jmy/UPjs+ai2yGtkS9mXpFvQt1JM0jfSlvrEoq/Hlke7Sgr5tVy
	br/pvXu0j5sWLOeIw/nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSZW-0000000Etju-1KlR;
	Wed, 07 Jan 2026 12:23:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdSZT-0000000EtjI-19uY
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jan 2026 12:23:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=UCt1lPgHWvel1sNHnwKhUv+0Xd6FvEiFSdmAT35AsTA=; b=QcMi+Mm2Qxw/hPUjXVJGubc3M9
	ZeuRnypQwkTrC4Sg8m0/qzqCa+MPlSRB1RPQA+ptlRvDCSCQy79wQCzxQRw956eaOdsiWKyCYqclT
	V03Lq5s7AX8jDbtTPprKtEbUpUr/YhVCFifQQlJLIfQds9sL8msieudO/3wIOjfCTPpIYI11FstMz
	gNs3tzD3t17UqLjhPA8l4nnC1BfGwcGpMvr+wLyO0gkIWD7QTixpupJW9FhvY7YYRaryxrs2fI+Xo
	GDH4Iq0l4lAJvKV9x9dezvGjECJH8M7eSpWBHM25kYKeXFnkFht+FGrfJ4VYCimXjQNVuuJSln98i
	Po9ZwSHA==;
Received: from i53875b57.versanet.de ([83.135.91.87] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdSZI-001NGe-8G; Wed, 07 Jan 2026 13:23:16 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH] drm/bridge: dw-hdmi-qp: Fix spurious IRQ on resume
Date: Wed,  7 Jan 2026 13:23:13 +0100
Message-ID: <176778858168.3105559.3292923031171588352.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251014-rockchip-hdmi-suspend-fix-v1-1-983fcbf44839@collabora.com>
References: <20251014-rockchip-hdmi-suspend-fix-v1-1-983fcbf44839@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_042327_311826_81899F92 
X-CRM114-Status: UNSURE (   9.31  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 14 Oct 2025 18:00:57 +0200, Sebastian Reichel wrote:
> After resume from suspend to RAM, the following splash is generated if
> the HDMI driver is probed (independent of a connected cable):
> 
> [ 1194.484052] irq 80: nobody cared (try booting with the "irqpoll" option)
> [ 1194.484074] CPU: 0 UID: 0 PID: 627 Comm: rtcwake Not tainted 6.17.0-rc7-g96f1a11414b3 #1 PREEMPT
> [ 1194.484082] Hardware name: Rockchip RK3576 EVB V10 Board (DT)
> [ 1194.484085] Call trace:
> [ 1194.484087]  ... (stripped)
> [ 1194.484283] handlers:
> [ 1194.484285] [<00000000bc363dcb>] dw_hdmi_qp_main_hardirq [dw_hdmi_qp]
> [ 1194.484302] Disabling IRQ #80
> 
> [...]

Applied, thanks!

[1/1] drm/bridge: dw-hdmi-qp: Fix spurious IRQ on resume
      commit: 14adddc65340f2034751c95616861c0e888e2bb1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
