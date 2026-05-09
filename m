Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFEB7CD3447
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 02:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:Cc:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G2Vgrw7haXmF509ghxXcE21Yyh6DT+Qj2G/Mukk83uo=; b=R/JQqzcCU+sUML
	UuB6fwtVzPrBus8QWfEXwCRLeFrcT4ZB2RlakG2YEBTqWMSUv/BAs/g/qku2cES9T6o09zfN3t0Nu
	nWXobpCC/3Atwa3KzjfcfqxYbMfOjcgKTC0+ukelqOz9+UagWUo5gRDchddCatz8zSqGyHyosTSJd
	j2jd5RovSLAhxf0YWlSVpM3GRzU+zbWOUoav7QXqE1JJInCLrMYFwR4Ft2hiprJ0wJk/ZIeSITTCd
	+2GCqqJLMHNx6dL/oY0RbeUIMptR358Dsl/fl+2lHk/mzG8lRFX2cbUqWuIudcCHHgAq+GtE7Z0oZ
	xSLKl1g/CFip9F8dmIfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLXKa-00000007zWd-1GIY;
	Sat, 09 May 2026 02:22:16 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLXKW-00000007zTn-09Pk;
	Sat, 09 May 2026 02:22:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=7edoRH6rJpdI38RUa1hZTvGslhZW1R8r4luZRYeOTK8=;
	b=dwOgoAk36toC7MxRIhDvL2x2ZjnB8CATUALHU2Q9zziMme725NcjA2QAHWnnyc
	glvZB3hS4bFNl0Pd+8bEHI0vHkM356CZCeUblxsoDXABfa72WAgki3jlCc4gr4xg
	Ah/VsKMcnh3/mRBapqlISF2mdEFtU05hOLhBhtNSMOzhc=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g0-3 (Coremail) with SMTP id _____wDHLAs9mv5piBw7AQ--.41485S2;
	Sat, 09 May 2026 10:21:51 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] drm/rockchip: Fix error handling and resource leaks in Rockchip DRM drivers
Message-ID: <177829330856.202156.9366848570650672090@openclaw.local>
Date: Sat, 09 May 2026 10:21:48 +0800
X-Patch-Series: drm/rockchip: Fix error handling and resource leaks
X-CM-TRANSID: _____wDHLAs9mv5piBw7AQ--.41485S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7WF1UGr45JFWxZrW8uryDZFb_yoW8Zr1Upr
	Z8u390vr48GrWS9rs3AF4xAryF9ws2vayxKr97K34fZF15uF17A34Igw1kuFy3Ar97A3W7
	trnrJrWrCr4jvrUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j1E_NUUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbC8ADQJGn+mkAUhQAA3Y
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_192212_386278_EBA26219 
X-CRM114-Status: UNSURE (   9.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch series fixes 6 bugs in the Rockchip DRM driver subsystem,
identified through static code analysis and confirmed by technical review.

The bugs range from Critical (of_node reference leaks, use-after-free)
to Medium (unchecked return values), and span 5 different source files.
Each patch addresses exactly one bug to facilitate review and bisection.

Summary of fixes:

  Patch 1/6 (Critical): Fix of_node reference leak in
    rockchip_drm_encoder_set_crtc_endpoint_id(). Both success and error
    paths leaked references acquired via of_graph helpers.

  Patch 2/6 (Critical): Fix dangling crtc->state in vop2_crtc_reset().
    kzalloc() failure left crtc->state as a use-after-free pointer.

  Patch 3/6 (High): Fix vop2_create_crtcs() error path cleanup in
    vop2_bind(). Failures returned directly without calling
    vop2_destroy_crtcs(), leaking of_node references.

  Patch 4/6 (High): Fix vmap address caching in
    rockchip_gem_prime_vmap(). New vmap() results were not saved to
    rk_obj->kvaddr, causing repeated mappings and potential leaks.

  Patch 5/6 (High): Fix leaked vblank event in
    vop_crtc_atomic_disable(). Pending vop->event was warned but never
    sent, causing userspace hangs and vblank reference leaks.

  Patch 6/6 (Medium): Check return value of cdn_dp_grf_write() in
    cdn_dp_enable_phy() error path. Ignored return value could leave
    GRF registers in an inconsistent state.

All patches have been verified against checkpatch.pl --strict.

Signed-off-by: Jiaqi <shijiaqi_develop@163.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c       |  5 +++--
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c  | 14 +++++++++----
 drivers/gpu/drm/rockchip/rockchip_drm_gem.c  |  1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 11 ++++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 13 ++++++++++--
 5 files changed, 35 insertions(+), 9 deletions(-)
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
