Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DF68C25B45
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Oct 2023 17:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C0sHOZCnKdflODljdnPyEdQf195azzKqxdTtAZpIL6Y=; b=cP43WmCtAAIL5W
	CqSxucaAnChiGzbQc0l+D0SYeLOi64Ug9lRdlydDGOoE5m2FZeaxAt/2e8jQQd3hJgMjqbcVLdsb4
	X6jnyU6HqScx2PTCf42k0TAdBRrdgJ6Dp2Hh/i8zw57cwGYHnVutmvxOj1xqPud58mmmiZifZkK/1
	xCL11q0hnlwsl3NwKof/2871LLTlhtj0MnZKMcgYO0gHbCfKzOFawjI59GjN6vf6ZlnVl74wiR+OQ
	NkyssMe/K5HdqqenQe0ZMB2c1YK5rxODj8tAbW5QGqQAmGeql3U3GioPPXEOFFSl1FnH6JVwnXp/W
	Way33DSWTqnjCv31jZlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1quyrz-007yQb-2i;
	Mon, 23 Oct 2023 17:37:39 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1quyrw-007yOn-0f;
	Mon, 23 Oct 2023 17:37:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1698082644;
 bh=bw+oJl8a4emYyVVF8XnSKkK9A1IjjDgr8zM8RdIaZMg=;
 b=wvBNlYUkQXynEqKU5g6Jc/q5X2oSro1O9TySGXpQjp6GmOF2sfngIetAFLFz5uNnY1CtoMxif
 98VHOTXX2I+HRx3U1BeOAgRY0iWsFR5BB7yBE+U//CXgm+JjB4LnEUucDz70kQ9NCFSxweB6qHz
 c2DkpNTvKu5HqA9W1MKcv5yOjTzlG63HXDHBfL6J9YGNZjKnKYL0nrW0hVHr9rmQ9v0KGB8F0U3
 CUbMdJwDttOWQ1obqT5mU2/bqBbhq4zy7xz1PKLFilINcJ2ECaMOzWyjasNkbI/xmPq5aH9esKt
 JtjrqRhpfHVVrHb0YX+iI53zqxtyzZgRhymKkxbB0w7w==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Christopher Obbard <chris.obbard@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH v5 0/2] drm/rockchip: vop: Add NV15, NV20 and NV30 support
Date: Mon, 23 Oct 2023 17:37:13 +0000
Message-ID: <20231023173718.188102-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6536af54288c5302e78a77d6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231023_103736_301288_381F3C48 
X-CRM114-Status: GOOD (  10.61  )
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

This series add support for displaying 10-bit 4:2:0 and 4:2:2 formats produced
by the Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.
Also include 10-bit 4:4:4 support since VOP can support that also.

First patch adds new fourcc 10-bit YUV formats with 4:2:2/4:4:4 sub-sampling.
Second patch adds support for displaying the new fourcc formats.

These patches have been in use by LibreELEC and other distros for the
past 3+ years, hoping they can be merged this time around.

A rough libdrm/modetest patch [2] have been used to validate use of
NV15, NV20 and NV30 formats on RK3288, RK3328 and RK3399 boards.

  modetest -s <connector_id>@<crtc_id>:<mode>-<vrefresh>@<format>

Tinker Board R2.0 (rk3288w):
  modetest -s 50:1920x1080-60@NV15

Rock Pi 4 (rk3399):
  modetest -s 52@44:1920x1080-60@NV15

Rock64 (rk3328):
  modetest -s 42:1920x1080-60@NV15

Changes in v5:
- Use drm_format_info_min_pitch() for correct bpp
- Add missing NV21, NV61 and NV42 formats

Changes in v4:
- Rework RK3328/RK3399 win0/1 data to not affect RK3368

Changes in v3:
- No changes, rebased on next-20230616
- R-B tags was collected

Changes in v2:
- Add NV30 format
- R-B tags was not collected due to NV30 changes

This series is also available at [1] and libdrm/modetest patch at [2].

[1] https://github.com/Kwiboo/linux-rockchip/commits/v6.6-rc7-vop-nv15
[2] https://github.com/Kwiboo/libdrm/commits/nv15

Jonas Karlman (2):
  drm/fourcc: Add NV20 and NV30 YUV formats
  drm/rockchip: vop: Add NV15, NV20 and NV30 support

 drivers/gpu/drm/drm_fourcc.c                |  8 +++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 36 ++++++++---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 66 +++++++++++++++++----
 include/uapi/drm/drm_fourcc.h               |  2 +
 5 files changed, 96 insertions(+), 17 deletions(-)

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
