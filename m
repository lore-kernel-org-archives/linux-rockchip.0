Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CA06C001DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYuPZBKb7Vnf3Z437ar72T223ZMmB5Oqb9XV7NWNuTU=; b=WFPpNIQd5Wq+sx
	YjUWTB7764fGwJykTaw7TuBSE7Ce1qGl7BRFVrq0tPU0Cqt1Z3laIHIHBvcQ0rskCZnzVQDnGmGHe
	T1fBY3QDygLGkAQaVTOp6ANNOCX8G8Sk6wZ8qNmFVtW5Mjpr0J5Uqs6VX+bDVU51UdbhqLvERCN0f
	jOt0o6+hsSEIIATqWQkWIEe9Fm2eInSNCGqwff+ATts1yK8pIIpU5i7kLzp734FUr+4ODnjLa/BWi
	vP3t+ibMwOED/CTs/nxjhlEbvxdjgs2MTV6bXC/4dC1BlUVgPKCfFGCWtuoJkVyUDfSb/jUJxDLi4
	nJabJtgIuYfGGC2a4ssg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdy-00FEQI-0S;
	Mon, 31 Jul 2023 11:00:54 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdo-00FEFy-2y
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:47 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1bbf0f36ce4so15742135ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801244; x=1691406044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f/44d4gE6s90tJ4HpPTJnrDZsNfnP3IoIMwE03rP6nw=;
        b=b3ZHVX6YzJck8pzSA3I7P/Qai2d3M5FOXfj79iwJ7tadVo4ydDSqTCo0K0gjSxzsUh
         uQGNtTUAJ6AE+WlA2eBXDeccaOqRfXp7lkEjcleh7VdGIbhLkRdf1z4JvPIfIVANPWej
         G5zlBrBcO5GEpvrforXkuyQTFSgTzdr+h5EI5ADaEf1vlTSVkL5XUkofBnwBghUeWRmb
         KAxR0lKu4XtLYOT8LFY7krOrgAZ2pBzRk1FRoovjmpKl0KVpwYjbCv7aEJ9dIqa9s0cZ
         vKHYriCg0yfM5ga2IuxAlMiX+b3B+oW7K9RdKQS3xhHDmTWzz3r/aRDXJkIxo2kgknNZ
         8Z6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801244; x=1691406044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/44d4gE6s90tJ4HpPTJnrDZsNfnP3IoIMwE03rP6nw=;
        b=W+Kx+jKoTYksZoDSZZxuHqx6kXr4GCZTr8UU9ASogLEYP5iDlN+NyIPaC6GWfvgkAR
         jwKnhSLSy+yR97+OqtSXQCyJY4uRKufzm5oldOZ8CqBS8EYtAx2Brg0Y42yEuXFWjTrz
         +q1FTlgWVKblwMQwG5dJGrybMjvHHLGzOfZY7+tCZtR5ze6iwy3O2lIUQVkpVeDKQ+BA
         HODrjfANt/w5BtDdh59oEy51CRBfgE3u3Nc19Rql9Ntexn+6zYQQK9IZqPBPusxzLlb8
         KT/cnP5TJNmq+03gPKtmM++ZUA3l6WlUVrrvMVIJJtJIYACUjjqXXnANI2O2+5iIfW8K
         WZLg==
X-Gm-Message-State: ABy/qLYAr9cVpcciRF69mS7mvuf5HCWda1oWB3V6O66rgRToIkbeedcq
	3/UZgW+bkJG0aiqdrs/whtWNIQ==
X-Google-Smtp-Source: APBJJlEBCCUKqrbud2fZPNHB09BhUDJFQrxUOBlXTBBSux2ugg2ShoIkCVkM4cgzVJSWlIogtNilTw==
X-Received: by 2002:a17:903:455:b0:1b5:5a5f:369b with SMTP id iw21-20020a170903045500b001b55a5f369bmr8118251plb.65.1690801244371;
        Mon, 31 Jul 2023 04:00:44 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:43 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	dri-devel@lists.freedesktop.org,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 06/14] drm/rockchip: vop: Add rv1126 vop_lite support
Date: Mon, 31 Jul 2023 16:30:04 +0530
Message-Id: <20230731110012.2913742-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040044_967073_2FEEFE76 
X-CRM114-Status: GOOD (  11.80  )
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

RV1126 VOP_LITE supports the video output processing ofMIPI DSI,
RGB display interfaces with max output resolution of 1920x1080.

Add support for rv1126 vop.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>

 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 55 +++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 7b2805006776..d053ef027552 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -1120,6 +1120,59 @@ static const struct vop_data rk3328_vop = {
 	.max_output = { 4096, 2160 },
 };
 
+static const struct vop_common rv1126_common = {
+	.standby = VOP_REG_SYNC(PX30_SYS_CTRL2, 0x1, 1),
+	.out_mode = VOP_REG(PX30_DSP_CTRL2, 0xf, 16),
+	.dsp_blank = VOP_REG(PX30_DSP_CTRL2, 0x1, 14),
+	.dither_down_en = VOP_REG(PX30_DSP_CTRL2, 0x1, 8),
+	.dither_down_sel = VOP_REG(PX30_DSP_CTRL2, 0x1, 7),
+	.dither_down_mode = VOP_REG(PX30_DSP_CTRL2, 0x1, 6),
+	.cfg_done = VOP_REG_SYNC(PX30_REG_CFG_DONE, 0x1, 0),
+	.dither_up = VOP_REG(PX30_DSP_CTRL2, 0x1, 2),
+	.dsp_lut_en = VOP_REG(PX30_DSP_CTRL2, 0x1, 5),
+	.gate_en = VOP_REG(PX30_DSP_CTRL2, 0x1, 0),
+};
+
+static const struct vop_modeset rv1126_modeset = {
+	.htotal_pw = VOP_REG(PX30_DSP_HTOTAL_HS_END, 0x0fff0fff, 0),
+	.hact_st_end = VOP_REG(PX30_DSP_HACT_ST_END, 0x0fff0fff, 0),
+	.vtotal_pw = VOP_REG(PX30_DSP_VTOTAL_VS_END, 0x0fff0fff, 0),
+	.vact_st_end = VOP_REG(PX30_DSP_VACT_ST_END, 0x0fff0fff, 0),
+};
+
+static const struct vop_output rv1126_output = {
+	.rgb_dclk_pol = VOP_REG(PX30_DSP_CTRL0, 0x1, 1),
+	.rgb_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0x7, 2),
+	.rgb_en = VOP_REG(PX30_DSP_CTRL0, 0x1, 0),
+	.mipi_dclk_pol = VOP_REG(PX30_DSP_CTRL0, 0x1, 25),
+	.mipi_pin_pol = VOP_REG(PX30_DSP_CTRL0, 0x7, 26),
+	.mipi_en = VOP_REG(PX30_DSP_CTRL0, 0x1, 24),
+};
+
+static const struct vop_misc rv1126_misc = {
+	.global_regdone_en = VOP_REG(PX30_SYS_CTRL2, 0x1, 13),
+};
+
+static const struct vop_win_data rv1126_vop_win_data[] = {
+	{ .base = 0x00, .phy = &px30_win0_data,
+	  .type = DRM_PLANE_TYPE_OVERLAY },
+	{ .base = 0x00, .phy = &px30_win2_data,
+	  .type = DRM_PLANE_TYPE_PRIMARY },
+};
+
+static const struct vop_data rv1126_vop = {
+	.version = VOP_VERSION(2, 0xb),
+	.intr = &px30_intr,
+	.common = &rv1126_common,
+	.modeset = &rv1126_modeset,
+	.output = &rv1126_output,
+	.misc = &rv1126_misc,
+	.win = rv1126_vop_win_data,
+	.win_size = ARRAY_SIZE(rv1126_vop_win_data),
+	.max_output = { 1920, 1080 },
+	.lut_size = 1024,
+};
+
 static const struct of_device_id vop_driver_dt_match[] = {
 	{ .compatible = "rockchip,rk3036-vop",
 	  .data = &rk3036_vop },
@@ -1147,6 +1200,8 @@ static const struct of_device_id vop_driver_dt_match[] = {
 	  .data = &rk3228_vop },
 	{ .compatible = "rockchip,rk3328-vop",
 	  .data = &rk3328_vop },
+	{ .compatible = "rockchip,rv1126-vop",
+	  .data = &rv1126_vop },
 	{},
 };
 MODULE_DEVICE_TABLE(of, vop_driver_dt_match);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
