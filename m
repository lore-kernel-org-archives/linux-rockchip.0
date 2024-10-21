Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16F3ED0E6C2
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bxWBYoTFtH9arTcfH6pX0nn57IllsZJrglQLQiuqwVg=; b=SAb1uPkV0rKWYx
	RLZxkMLtd5mHxnOEs2GyHEaBy8LtudmanVXeoqKi2Ui4KGLfLvCUtizCexd4J1i0A0BJOFhUvByoV
	lmf4HtrKapF/dtt3DJChVcRqRGy4a80Bh22K21bzsY5Yn8m/lowYP+AZDe++PjCv22/2bIVLZBR1r
	lQbvX7MpaWd+xt98UtC62RbNSHROgQwM7H63AdCjpEiW5rgm4cDb8tTDr6E71vA8lv2CH0W2sVejJ
	m+DrVtokPlulyvakjcMHsUW8R8hqsqa3dSgUiKG7CeI1sSFMyngrgYzm2k1tTzzyqfQnbav3MY0k1
	maETaCrW4q0+wAMvFUbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mzP-00000006Oie-1Vlw;
	Mon, 21 Oct 2024 07:38:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mqT-00000006NUP-1IoK
	for linux-rockchip@bombadil.infradead.org;
	Mon, 21 Oct 2024 07:28:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=gmjLE7ZfiDPnsgkk+1WmAmqTeadGIqt3ARNYz5u8TEc=; b=RD3q1sqGsmuJZexFgmu/K5rbM8
	3/ZzTlUO3jGaCoeE4+NnBTM5vvmBe5AIs8rAqWaLEz2jksvFGjc+n9YaSGqp5GlN0Nu8U3t+H/oFB
	6eVZCirgh1DjlRnNA66u/djetrhAX9Ppj1v2Fv7dKG3c1eFY3baGKSRdxwrpzq1Nv3CJj5IgKMbDw
	7zB1gvABmYIzRA5iGI/t9xsDEfo3vLnQQRQHBo+0PdIfKa9P9W2H4ENQ6oBi02A2EF9Aw/WuqsM4x
	4l1dt/P52eiWJm/Wa2i8B+epbcpMub+AVqT7Yfy+5WiS66PbpF/dPClAN7au11Jsy9xqp2Kl+nsFQ
	aRN1MA6A==;
Received: from m16.mail.163.com ([117.135.210.4])
	by desiato.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mqP-00000007qoF-2C7M
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 07:28:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=gmjLE
	7ZfiDPnsgkk+1WmAmqTeadGIqt3ARNYz5u8TEc=; b=kzyYEsZjGd2zUP6ZkekdI
	5YjmdXs9gnZELqzMJnuULVMLxZ0BSiU9I53qPun9qOFIhD4Wd/p7j+25YKt3SxVU
	taHkCOQ7TADtC4SmKKFJGnCN517eojRufvOob+i2mvol6ytP6Dao7GEm22aETaBW
	6n3OJVE61CtD+huJXtK/fw=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzsmtp2 (Coremail) with SMTP id PSgvCgD396eTAhZnIAYQAA--.4735S2;
	Mon, 21 Oct 2024 15:28:23 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: mripard@kernel.org,
	enric.balletbo@collabora.com,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] drm/rockchip: vop: Fix a dereferenced before check warning
Date: Mon, 21 Oct 2024 15:28:06 +0800
Message-ID: <20241021072818.61621-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: PSgvCgD396eTAhZnIAYQAA--.4735S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7CFW8AF1fAw4UuFy5WrWktFb_yoW8GFWDpr
	WDAryjgr48Kayjqr9rJwnIvrs3GanFkayxKr97G3WSqFy7KanxCwn5urZ7urW7XrW7G347
	t3srJ3sxCF4jvw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07j-6p9UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMwh-XmcV-hZ9LQAAsQ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_082850_128710_2D7E2706 
X-CRM114-Status: UNSURE (   9.42  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The 'state' can't be NULL, we should check crtc_state.

Fix warning:
drivers/gpu/drm/rockchip/rockchip_drm_vop.c:1096
vop_plane_atomic_async_check() warn: variable dereferenced before check
'state' (see line 1077)

Fixes: 5ddb0bd4ddc3 ("drm/atomic: Pass the full state to planes async atomic check and update")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index a13473b2d54c..26aff9c5644e 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1093,10 +1093,10 @@ static int vop_plane_atomic_async_check(struct drm_plane *plane,
 	if (!plane->state->fb)
 		return -EINVAL;
 
-	if (state)
-		crtc_state = drm_atomic_get_existing_crtc_state(state,
-								new_plane_state->crtc);
-	else /* Special case for asynchronous cursor updates. */
+	crtc_state = drm_atomic_get_existing_crtc_state(state, new_plane_state->crtc);
+
+	/* Special case for asynchronous cursor updates. */
+	if (!crtc_state)
 		crtc_state = plane->crtc->state;
 
 	return drm_atomic_helper_check_plane_state(plane->state, crtc_state,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
