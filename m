Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5785CC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Nov 2022 02:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zl5BRFsT0nlJZXy9cJET+Zw0EVVU9cv52RA1WGz2q+4=; b=ZFIwatS752c/0P
	Pp9aOWMiG6h+v75B2g+640d537cXmYYhcI62rfb1j+HdWKDfF/uwyyBcyf+6GTbYFvXhxtDiAaAUH
	6I55FPichTvnwYfgnmLtiW3d4bxB8W/Ao7mVfdu15HOMJpWAXpjOIS+EEcscssvy0ApUd7cxwgSvy
	rE+Rrp8FpfEe1pGkSLxAFTbkm0Wlpg1eK/e9WcFLm3VlAzcNoh/fqQ9KyuHPLDrbdoaYOKe9PiZbG
	07DUTOueWdl8FkpUGuXOl+MOIzLEgamUUgWefOqhuNC4acUy///g0R8hhlsJblYneH29OuaA8Ga7e
	Huw7QTIxbaKahlafVj7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otJrt-00C86l-O1; Fri, 11 Nov 2022 02:34:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otJrh-00C835-Rx; Fri, 11 Nov 2022 02:33:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A494A61E89;
	Fri, 11 Nov 2022 02:33:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2EABC433D6;
	Fri, 11 Nov 2022 02:33:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668134036;
	bh=COgMoRGC2qbClDmwoUTbT34A8Y2geTBApiLwhGghjDQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eoLLaHiTxEU1n5m7Ma4nfWStmnyO1VsQ4A/gNbVa9gFcPtfbtUTljcb2jXDjaRtNb
	 hPn5Ahr1Fu1n532v79Yu2UNNxxlMVJ6PgEQqj6z01ZlO8jg/mWPCBcQILSYs5GtDaN
	 AC8J9wY7LladMxx8+DWTWjndA9EgtR3YepMm1T9dAHPaHPM/6UB8nPS2zv6zRMqjka
	 kC6aBkyWcuV5tzo92gkOsn7zQao/DdkP7NaVrDiBoPtTtLLqJNPCGxzAAtQyJ5Uy96
	 asznr3A/yXFNzSPPQZxuV1ulPcy4IZMRqciNfjd6bVwlddnge7Qf8l61geRDjD55gb
	 CW13hdN1N0iqw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Michael Tretter <m.tretter@pengutronix.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	hjc@rock-chips.com,
	airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.0 07/30] drm/rockchip: vop2: fix null pointer in plane_atomic_disable
Date: Thu, 10 Nov 2022 21:33:15 -0500
Message-Id: <20221111023340.227279-7-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221111023340.227279-1-sashal@kernel.org>
References: <20221111023340.227279-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_183357_968198_37BFF7E5 
X-CRM114-Status: GOOD (  13.48  )
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

From: Michael Tretter <m.tretter@pengutronix.de>

[ Upstream commit 471bf2406c043491b1a8288e5f04bc278f7d7ca1 ]

If the vop2_plane_atomic_disable function is called with NULL as a
state, accessing the old_pstate runs into a null pointer exception.
However, the drm_atomic_helper_disable_planes_on_crtc function calls the
atomic_disable callback with state NULL.

Allow to disable a plane without passing a plane state by checking the
old_pstate only if a state is passed.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Link: https://patchwork.freedesktop.org/patch/msgid/20221028095206.2136601-2-m.tretter@pengutronix.de
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index f9aa8b96c695..bf9c3e92e1cd 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -997,13 +997,15 @@ static int vop2_plane_atomic_check(struct drm_plane *plane,
 static void vop2_plane_atomic_disable(struct drm_plane *plane,
 				      struct drm_atomic_state *state)
 {
-	struct drm_plane_state *old_pstate = drm_atomic_get_old_plane_state(state, plane);
+	struct drm_plane_state *old_pstate = NULL;
 	struct vop2_win *win = to_vop2_win(plane);
 	struct vop2 *vop2 = win->vop2;
 
 	drm_dbg(vop2->drm, "%s disable\n", win->data->name);
 
-	if (!old_pstate->crtc)
+	if (state)
+		old_pstate = drm_atomic_get_old_plane_state(state, plane);
+	if (old_pstate && !old_pstate->crtc)
 		return;
 
 	vop2_win_disable(win);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
