Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11987C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 18:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Gl3VSvpHw4C5cvHcPKFHKsP2c6SBNW9R5H1XfuDAEA=; b=VrXOPU+0FZN+qS
	p21ZH5cd2ncA7OGKgc66uulUy5aMY/IU+KzbsCVaNq663C5AorazvyIt9F/tY7Olf+VlmPVh4NBCO
	jduv4lnnRA2JYy6joq2ys+qBrbiefzIAzGIXwm22/7yMBagV1AZ/a77gik330cdKtMOiSUx6G5ZDs
	m+cxn9HAL8WhCbycRbKqZmH/VDrb2cO1OabDYCJkjtnvW0+k4gtN48EF6kR372pvWuB7crO23F271
	eeQO6BECnSNWUb1W/mOqMoJldB2t58jWSpM0jLWpxBxwC8s6kjjkus4PhRCo+gdWoEDWgA+60iOJO
	rIX4Bl5ZNmiWFZHAjoiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxYnf-002DVE-SQ; Wed, 15 Dec 2021 18:14:47 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxYnF-002DIk-Rx; Wed, 15 Dec 2021 18:14:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=aE8thdFYQsldf57tWzPRdCwPLimKXIrrUxf4p6MIe5g=; b=ZB
 RlrjzHsTpoTx4JD4oO8rPvA0uffhOD7MwSaEFP1znA6wQgTdF8PAKY5mtK2IuiBiE721Lorl7R2+j
 XKm/nBeb8na6dI7i3a8ymrYZXWXEeB/dfUZR/1kVCbaBOh8EHsizzFE7fk8it3T2TciYSmdyyx+Fw
 /zBQOJ2ycoMYxbcECNdX+VgWMKtM3W7xLcbIbklJCyh06Ta/MaAoG8DosZRlK3e91joneq3gi9Uc9
 1/61hUgseBQsq24kHeDBJpuk6bZZE5a3ButRuAK8byookP5/DgIY828FBbLs63DptjBCsfCPAIl5W
 GHmbEOUj6gcl44VuxAHR3J19+JN0Cmnw==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mxYnB-0001lP-O5; Wed, 15 Dec 2021 18:14:17 +0000
From: John Keeping <john@metanate.com>
To: dri-devel@lists.freedesktop.org
Cc: John Keeping <john@metanate.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: vop: implement atomic_print_state
Date: Wed, 15 Dec 2021 18:14:12 +0000
Message-Id: <20211215181413.2950676-1-john@metanate.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_101421_931329_B8D69627 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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

Rockchip VOP subclasses drm_crtc_state so implementing the
atomic_print_state hook allows printing the additional Rockchip-specific
fields of the CRTC state.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 3e8d9e2d1b67..f3975905599b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1569,6 +1569,19 @@ static void vop_crtc_destroy_state(struct drm_crtc *crtc,
 	kfree(s);
 }
 
+static void vop_crtc_print_state(struct drm_printer *p,
+				 const struct drm_crtc_state *state)
+{
+	struct rockchip_crtc_state *s = to_rockchip_crtc_state(state);
+
+	drm_printf(p, "\toutput_type=%s\n",
+		   drm_get_connector_type_name(s->output_type));
+	drm_printf(p, "\toutput_mode=%d\n", s->output_mode);
+	drm_printf(p, "\toutput_bpc=%d\n", s->output_bpc);
+	drm_printf(p, "\toutput_flags=%x\n", s->output_flags);
+	drm_printf(p, "\tenable_afbc=%d\n", s->enable_afbc);
+}
+
 static void vop_crtc_reset(struct drm_crtc *crtc)
 {
 	struct rockchip_crtc_state *crtc_state =
@@ -1652,6 +1665,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
 	.reset = vop_crtc_reset,
 	.atomic_duplicate_state = vop_crtc_duplicate_state,
 	.atomic_destroy_state = vop_crtc_destroy_state,
+	.atomic_print_state = vop_crtc_print_state,
 	.enable_vblank = vop_crtc_enable_vblank,
 	.disable_vblank = vop_crtc_disable_vblank,
 	.set_crc_source = vop_crtc_set_crc_source,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
