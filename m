Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 635BFD5B16E
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6Wq/x+CyH2YMvEHJ4VUyew+sIi6W6SKk352NSAesu4=; b=kxywCUvq52USCM
	BkKBg+3fq9L+r+DDHANK40LoAVv4YAE/cPWFWufcjTNmDyDNiiwJt3/3Vc5dFIOy6+pphgOcLiBby
	7qVdirJ8HSygbQrsy2AQ0tXMTiQ/0eyUElpzjt4ArPyYmB3qyCIq3/X0DG6+kp56XJfgOIQqWlipz
	2BD0oScjqGcKaD5bo1uPymEF0Sjczw8AngZOhzlEIFQMxXqjKU9NvixDYtifCKKBhggJ2y8k79kOG
	9D+XTs/Fu+wcnmGZihHqgTkcebYAKaxuRSkv9C26Aut9yNZ3bBBXqhWcw3g0BovIB6Xc7FGz1EcOo
	wRTySa4p5KPgbEydv2/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9IG-00000003kgM-3vU1;
	Mon, 15 Dec 2025 14:11:20 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV9IE-00000003kfH-2NmR;
	Mon, 15 Dec 2025 14:11:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1765807847; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UczrbwgmUdNO9UuEYS5N5C8J3Uco3gEo6nc1RMnMRq6aD2mKX8/gm1vFiB0oerIvw3XoYGKldrhi2ktz+0Mtq+o8PSoAOUJu3sTyUivpxY7w3PhR+HVxim6Z7zie9DkzUkE3ozjrGG9AycHz0beuogILP9Jq+cpjyAV36gi1MPo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1765807847; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uqZt7TdA/v61Mkt3xHXvqa8xhHfjq2/EVqevRSGE6OY=; 
	b=deqX/C+NZ8mIs1n5eDJQbM0qTJ7g3OVxBJoVmK1paQCws5lHhsGFnRx5AP2PPocLF6QyGVwDPGbIlAT1nBD8SHqXBW80iedqBFahe2P5H9i/eBQpXZyar61YySn7w3UCD0kWy+OHeHuLB6sOyDsrMWyfEMo+/X0wh9fQemVxlMA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1765807847;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=uqZt7TdA/v61Mkt3xHXvqa8xhHfjq2/EVqevRSGE6OY=;
	b=NTcacj749npKhwlgnsWrx8YBBvnh7FdjoIp8pVrEc0/9CD9OrvwUh7l46JC0CygW
	tEo/W/d9BkmRYZDGFvKSQLh0AowMSuOGx1LJ9UlD8sfnhA2/5rZ9r+BxApcSTQAzlX5
	NZnBz42OX+UoCx94F3+Rb0aOZpwohCU0VzO2++9I=
Received: by mx.zohomail.com with SMTPS id 1765807842799306.71265837415365;
	Mon, 15 Dec 2025 06:10:42 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 15 Dec 2025 15:09:19 +0100
Subject: [PATCH v5 3/8] drm/rockchip: vop2: Fix Esmart test condition
MIME-Version: 1.0
Message-Id: <20251215-vop2-atomic-fixups-v5-3-83463c075a8d@collabora.com>
References: <20251215-vop2-atomic-fixups-v5-0-83463c075a8d@collabora.com>
In-Reply-To: <20251215-vop2-atomic-fixups-v5-0-83463c075a8d@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: David Laight <david.laight.linux@gmail.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Daniel Stone <daniels@collabora.com>, kernel@collabora.com, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_061118_661378_D09DC718 
X-CRM114-Status: GOOD (  10.57  )
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

From: Daniel Stone <daniels@collabora.com>

If we want to find out if a window is Esmart or not, test for not being
a cluster window, rather than AFBDC presence.

No functional effect as only cluster windows support AFBC decode.

Signed-off-by: Daniel Stone <daniels@collabora.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 1cad5a8ece61..fbcc655cb583 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1229,12 +1229,10 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	 * This is workaround solution for IC design:
 	 * esmart can't support scale down when src_w % 16 == 1.
 	 */
-	if (!(win->data->feature & WIN_FEATURE_AFBDC)) {
-		if (src_w > dsp_w && (src_w & 0xf) == 1) {
-			drm_dbg_kms(vop2->drm, "vp%d %s act_w[%d] MODE 16 == 1\n",
-				    vp->id, win->data->name, src_w);
-			src_w -= 1;
-		}
+	if (!vop2_cluster_window(win) && src_w > dsp_w && (src_w & 1)) {
+		drm_dbg_kms(vop2->drm, "vp%d %s act_w[%d] MODE 16 == 1\n",
+			    vp->id, win->data->name, src_w);
+		src_w -= 1;
 	}
 
 	if (afbc_en && src_w % 4) {

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
