Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038F3606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xh5DyWTf;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=airkyi.com header.i=@airkyi.com header.a=rsa-sha256 header.s=altu2504 header.b=Jq9T+k5J
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Unsubscribe-Post:List-Owner;
	bh=gQ1M7fkeQiR2FrigDbyte7OJXmDBwO16KGphYkvqfpM=; b=xh5DyWTfkJ8kYS4zANQSB6gYCh
	0c5T+pGWe1iXDSjuMw3OuoIV7WPNmjRGuExcAUFO65cjuYwfu5Xt0Ym+mrxzpFUWmocv1oIYsISmg
	zLEnS/cXHlx4cR6ZhC28uiK3OYbswkPFVcnikQhzspM8fUmrdM5URNJV347R5GEabJjJrPtBC/GmL
	Msy8A03XcXjpulSd+3++AgSbLhge4FqrKCllLNBXRcnwDQQUQjD9m68sHSPkfrGmv7kXhyMNOJe2r
	HmCN0lu64gqV4RtfBpISN5FUwlq4OxDpUGumkwR9qhj7upZKxT+cfOzcwaKD9ZF4rvRBAZVSWfkD6
	aJ2nmrBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLOr-00000008hdI-3rUs;
	Thu, 29 Oct 2026 08:22:17 +0000
Received: from smtpbgsg2.qq.com ([54.254.200.128])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMLOm-00000008hYV-0UUt;
	Thu, 29 Oct 2026 08:22:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1793262065;
	bh=v8LUTXRwXjrnk8rvFZ0Edc1FBfASGtQZlVn+pZ0Os80=;
	h=From:To:Subject:Date:Message-Id;
	b=Jq9T+k5JusGW6RrX/rSLVjCFmV84sXAQNJgkfa7iP5fRcLERKYr9y3tL2tWHGyPaG
	 iZcgcQDuF5GC/qwzD5tLYGXKOmo4b2MJC5U+4YK5YZS6MRIuLSjyvSvKut3lGOUGf9
	 uqLQpWnRcwkvp+TzKJXtGg9hgD4K5iPgdEZW+FiY=
X-QQ-mid: esmtpsz17t1793262058tcd08bff6
X-QQ-Originating-IP: 5nmMROT/a8dp6xGiJN0AOp1fNoNeWk2QJEtSMkElQ10=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 29 Oct 2026 16:20:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6006500186905104022
From: Chaoyi Chen <kernel@airkyi.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Subject: [PATCH v2 0/3] drm/rockchip: vop2: Add 8K support for RK3588 vop2
Date: Thu, 29 Oct 2026 16:14:26 +0800
Message-Id: <20261029081429.862-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MFPt68G4ezWI3vHWYd5yuX1AobbLrJ9Fvp0jEST0vNGkKxjs11t7TmFi
	GEdJqwAQ8/cejyS/Yj+KK18Pr52dPN/2IS4bLekZwnqyTf9yHBEBvQiR2eBDKZjXXbkSzES
	D2OVvywrbeKBNjTqJEjfuM/S5yMiQRYE2AHLqIzLzHExHNM7ST9VRmh369z/TUosWVYQIY9
	AelFgW26tovAX/8PvyVQjyO02qHvS8AMPDZxwa4wJAocWYWlyr2/vQs5n/GF0N1ZgsiRHgA
	TNaGbUwZn5hr0BRew0+8JSoeftVtgvddP3iDeAe/DmgnwTp42D9MOcLmVdyWDv75R2si2rI
	6J+hK2et3VfK8hPmdONr3u1N5oRuumVt+x25qO4SEiE7JiPX868dL318XvSUmgDEjbpVv8i
	usWmZfO8dpw31dmW5gEf9bT23WH5JhcutlhAolZe/ZYwJs6pVWHL8UfjZGfX2kzCFMxUUtQ
	lgJNq/khoDPoksJzT0srVGB96AUF9XL9yMD0HwAc2kEY+hWiLLMqNRxChZHzxrjL2TnSoW+
	n6uIBm/Q+EU0wBwrrUz9psGSzKDEC9JpZVr8P/sLxl8Iusdl3A2ymA3BeYEe1wvImCvZlIi
	+h5TZ980nRIGusevv3S2LyQS6dyeksWaowH/M2kmSJqIumBa/w/5gsqmsyN/tKVB3bDVxzw
	yBneqGYsUhucEfm4QdigV5LEMzql7fK4WZGebGsaQX5YUcONIjZ/tYK9KuYEtCBigvja2Ju
	DHWLGrJ20OZcZygA/U7F13TGH7GGl+l4jThloKfVN6e4Tdd1jmn0j1nDOtU7Fe64wgsWHI3
	kWdfa3/2eLfbwnL/2hMkThQO1J0Ein6+lVYRwi8NweZhyvd+3XxgjbV1uvoENEe6L8j+rSY
	s/Luijkn6eD3YmlVMAt8GhZ6XcXQzOnzTSDIBtK5TCJGGZFFfEfu8lajqkYOFU6jyrnkFbP
	jGc5/+0LBq9YGQXVI2aniR0mZcqOzNZShvtZRlzSGMS6HRf4pBiALCDpIyl+8Jz/IVAIJcK
	ei7fQh3/6DSh0em3XKgD4yenP5tdI=
X-QQ-XMRINFO: NI4Ajvh11aEjEMj13RCX7UuhPEoou2bs1g==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_012212_532475_2DA3E203 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-rockchip@lists.infradead.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-arm-kernel@lists.infradead.org
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Hi,

This series adds support for 8K output on the RK3588 VOP2. HDMI is not
ready yet, but I believe many people might be interested in this.

8K output on the RK3588 is done by splicing two VPs together, with VP0
outputting the left half of the screen and VP1 the right half. In
addition, 8K planes have to be split in half as well to stay within the
width limit of a single plane. Similarly, there are a few post-processing
details that need to be handled.

Note that splice mode is not only usable for 8K output. This means the
mode can be tested at 4K and even lower resolutions, by simply changing 
this one line:

-#define VOP2_MAX_VP_OUTPUT_WIDTH    4096
+#define VOP2_MAX_VP_OUTPUT_WIDTH    (3840 / 2) /* for 4K test */

And yes, this has been tested at 4K over HDMI on the RK3588 EVB1 :)

Changes in v2:
- Link to v1: https://lore.kernel.org/all/20261022071737.508-1-kernel@airkyi.com/
- Missing removal of the replaced line(Heiko).
- vop2_win_get_pstate(): use the left window's state only in splice mode(Sashiko).
- Reject splice windows already in use by another CRTC(Sashiko).
- Check the splice partner via drm_atomic_get_crtc_state() instead of the runtime flag and unlocked read(Sashiko).
- Set splice_mode_right/left_vp before the error paths of vop2_crtc_atomic_enable()(Sashiko).
- Validate each split half against the min width 4 and max input width; align NV20/NV30 like NV15(Sashiko).
- Latch overlay registers at the left VP's vsync; don't wait for the partner's own cfg-done(Sashiko).
- Program the color key on the window actually being updated(Sashiko).

Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>

---

Chaoyi Chen (3):
  drm/rockchip: vop2: Use drm_format_info_min_pitch() for plane offsets
  drm/rockchip: vop2: Skip UV plane setup for packed YUV formats
  drm/rockchip: vop2: Support 8K output by splicing two video ports

 drivers/gpu/drm/rockchip/rockchip_drm_drv.h  |   5 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 535 +++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  66 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 204 +++++--
 4 files changed, 721 insertions(+), 89 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
