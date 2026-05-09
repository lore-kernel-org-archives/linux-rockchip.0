Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3161BCD37AF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 May 2026 04:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-ID:Subject:Cc:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vbsBguGwvpbr+N4QEOTZi6in4zPrUKm7nKZ93/Z0oJQ=; b=zELyAmv3rUJdTi
	hPfMpmJ/p+3fHgMdZ4REdQjXvCpkvfev4hjVXCd7L7IrzKzatA2Q3XhORyNbWcIZ2oV9StTGkcAzP
	6CyPUmCeaz+P2rlvY4VTqPVWL+5HLxJZt1gT6bm/CDIVKfF4ODojm3B0qrh1ALZKTTs4DVRYGNnhZ
	50aq4xqDLxi/C1Lubp6QSHjgO6pxmKlBHfOzU66go7muhVcqLZ/IoFHdgmLSf0NdQgUmEqgvwjGoW
	PEVvRJZjdYSqovM5A4ktuKMyAPJT4rnGYAtKEf0qhULvyYJd9lrxNM7Vt2iGVCtreKPEDMSs7f6Q2
	Nb7ZUVnygbKmJ7eNHeUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ86-00000008B06-2kcJ;
	Sat, 09 May 2026 04:17:30 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLZ80-00000008AxX-1Mds;
	Sat, 09 May 2026 04:17:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Content-Type:MIME-Version:From:To:Subject:
	Message-ID:Date; bh=AtLlE8BZecYSdlr9Dxuoyv1YHpTPgMWAv1Fu9o0Wbig=;
	b=WOjjt65Rz/Qd5CN7oYpV8FjxlaB81wsSDPGpIHNOupNOoQyx85p83jAcSZQn9j
	GKxOuTJI7rpWRgWcy2YeHjoCAq0HQx03m0BD2h54RUcjtTEBTYC89vv98zbjRxFd
	VKeaeBXzw9QJ/2eeiuPnV8ntiFgqeR8s6y2oz9op69Pdw=
Received: from [127.0.1.1] (unknown [])
	by gzga-smtp-mtada-g1-1 (Coremail) with SMTP id _____wDXZNs6tf5p6HVGAQ--.38867S2;
	Sat, 09 May 2026 12:17:01 +0800 (CST)
MIME-Version: 1.0
From: Jiaqi <shijiaqi_develop@163.com>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] drm/rockchip: Fix error handling and resource leaks in Rockchip DRM drivers
Message-ID: <177830021804.246051.8309807801406217751@openclaw.local>
Date: Sat, 09 May 2026 12:16:58 +0800
X-CM-TRANSID: _____wDXZNs6tf5p6HVGAQ--.38867S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Aw17Ar43ZFW5WrW8uw13XFb_yoW5JF1rpr
	s5W390vr45GrWj9rs7AF4xAr1F9wsFvayIgF97K343ZF15Cr17J34S9w1kuF17Jr93A3W7
	trnrJrWrZw4jvrUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jUpnQUUUUU=
X-Originating-IP: [43.248.8.92]
X-CM-SenderInfo: xvklyxpdtlsvxhyhz0rs6rljoofrz/xtbC7x6W6Wn+tT7DJQAA30
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_211724_975927_6C42C613 
X-CRM114-Status: GOOD (  11.27  )
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

This is v2 of the patch series that was previously withdrawn due to
a critical bug in Patch 3/6.

Changes in v2:
  - Patch 3/6: Removed incorrect devm_free_irq() call in error path.
    The IRQ registered via devm_request_irq() is managed by devres and
    must NOT be manually freed. The corrected patch simply jumps to
    err_crtcs label for proper cleanup via vop2_destroy_crtcs().
  - Patch 5/6: Fixed trailing format issue that caused checkpatch ERROR.

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
    vop2_destroy_crtcs(), leaking of_node references. (v2: fixed
    double-free by removing manual devm_free_irq())

  Patch 4/6 (High): Fix vmap address caching in
    rockchip_gem_prime_vmap(). New vmap() results were not saved to
    rk_obj->kvaddr, causing repeated mappings and potential leaks.

  Patch 5/6 (High): Fix leaked vblank event in
    vop_crtc_atomic_disable(). Pending vop->event was warned but never
    sent, causing userspace hangs and vblank reference leaks. (v2:
    fixed checkpatch format error)

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
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c |  2 +-
 5 files changed, 35 insertions(+), 9 deletions(-)
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
