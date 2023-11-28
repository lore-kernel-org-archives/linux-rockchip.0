Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91683C46CA7
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzmezFqSqixKjq1WK6hcKhFoM9gjZkfDuLeP9FiAKm0=; b=izZI2pHyqPpvU6
	oSohmIyLCf/L06rNa1y9kphO0Tp9caxpvKFwBrbrjShppBX2qXegmS1VLRztf5u5CwGTdi484fOiZ
	e6oRtD0thwgJpFMnImakourgiNeiKp1VIVPwUnQEb5TI3/njzyYqP4TeTGIEz7GL5ZQWuIwJvVKRP
	0/DFMNaGb3QSZ3Mwr8vAf7AKrO9sBJxG2+3Ud8oaXrle8KbZ+wmaZPukQ1rvAsjK2yaSAu0+65f1z
	H7OMJ+/I2el1uue78S3zM97IoA1fe2tELuLwhjDsC6PixGRzeWlWVgRZBsgssAsVsewp81uyN8ucU
	PycCv0yRhd3p3CW2gIyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIk-004tTX-01;
	Tue, 28 Nov 2023 10:26:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHx-004sbZ-2X;
	Tue, 28 Nov 2023 10:25:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=SHszXKo0mgBRQ0YVhtYuGbJKPPx55qKDGToiyBfx+wk=; b=nGLmGUIPq6ce8hWVYJra2norTn
	+cSE2sdBJXYx99JgdcWnwAkdIj9k6uHCgK9ROyd2HPXoDBAp4cZ2hxTx4IPuVWmUp38Wd4NHQrOB5
	9tgTtKCBUA5g6p9y/ps+8b6QwW4lIpyjy+a3TY0EyuxfJoHDo4thAebPFMEXyAb/5/uO/mRtMyUQK
	P9zsbCS/5JkqpgYc440vb6S/pnWEYRfl5kN8KOjTklR4wZKg8Gb6Z+QuEb4JakEFlRtm3V2HoaLhd
	imiWkvOaTL8G7HU6yFekhE4a7rKH5B6knUJ6wu0R0T/uy3w585fn1WIRlOlWzzTVxKkLRUipyRT3r
	33j//INg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHm-00GaKC-2t;
	Tue, 28 Nov 2023 10:25:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 69208616D2;
	Tue, 28 Nov 2023 10:25:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DEC4C433C9;
	Tue, 28 Nov 2023 10:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167142;
	bh=612NFeh5NOImp0JEmAQppe78uklCbIwDoN+fmJSIsz0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AXCbVrahNOyYPaCP7KvVfnt/lQ+45UqHlD/+LNjqAOQUSUfvLSuiw4TjyF07eU2Ed
	 4gyLkJVh2cLzA7nIJ13kPGaM6OZ/0EnpqPP3aSnYLIWd/0jkWfB58uDIuUfTaDzLzQ
	 G6MDk31XIs3t47aCNy7whCaeTvzSrASGVWqQcrNZlfnGnnu/6VWhWkZ3i1RqnlYdAh
	 S7ZtjNKRDhfdsMq+4tBnLj/7A+WdGa+Gi3YJC9GK4PWEK0vCkrMcjgj6R/64gLVGoZ
	 954YgYGJmwnpi9Jt10KQBUzBKD0UMNjFfJJdprzUNoOYCgHOudtlBv3DI8eIkcsh49
	 ViXHYRibXL0eQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:39 +0100
Subject: [PATCH v4 28/45] drm/rockchip: inno_hdmi: Remove unneeded has
 audio flag
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-28-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1051; i=mripard@kernel.org;
 h=from:subject:message-id; bh=612NFeh5NOImp0JEmAQppe78uklCbIwDoN+fmJSIsz0=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y/1HmmwYJ3OvvSsUKBFpVXstaQ1UnKLJQ0Oan49a
 f/psnBeRykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACaiMJeRoSX/ld6ND45pIcWn
 WyMO55yOX6BzI6Nhmfx57/U5UU1hKYwM3a+8NDkiLjh5zZFNy1u76tGdyvyZouy6IqdeOJfM3Gj
 ABwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102551_880292_D9C7CF02 
X-CRM114-Status: GOOD (  10.58  )
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

The sink_has_audio flag is not used anywhere in the driver so let's get
rid of it. It's redundant with drm_display_info.has_audio anyway.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 294f0d442c0c..3908dc09d85f 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -28,7 +28,6 @@
 #include "inno_hdmi.h"
 
 struct hdmi_data_info {
-	bool sink_has_audio;
 	unsigned int enc_in_format;
 	unsigned int enc_out_format;
 	unsigned int colorimetry;
@@ -554,7 +553,6 @@ static int inno_hdmi_connector_get_modes(struct drm_connector *connector)
 
 	edid = drm_get_edid(connector, hdmi->ddc);
 	if (edid) {
-		hdmi->hdmi_data.sink_has_audio = drm_detect_monitor_audio(edid);
 		drm_connector_update_edid_property(connector, edid);
 		ret = drm_add_edid_modes(connector, edid);
 		kfree(edid);

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
