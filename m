Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BE9606A31B
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Oct 2026 14:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=dXmKRsa+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20251104 header.b=q0O4DPqN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=OoLJ7uLQw+Scdpntdokcng+peugA8FT2/ik/er5UyUY=; b=dXmKRsa+9wNkBkvg6N2iUWVo1z
	eMV4iDmEkecnY2ZYsw2ZmdEvIvkIKBeseEXizvW3Gjx6ZbJlbYTsv4L26zZQZ0Rg77QsJeplTz7gd
	D+PSNHYwBnvDjIvppym5BIG/yyz/1BU0mb8q8c1+DfVzSUpf2HIrCoaJcNYhp6a3uLaNO5yt0rykv
	zABKu9sn8CHV0kBF55gs8kDxD16dgoipmIaN+fTmMOD8Od6BRe9LGmoaI3Xw817vNvC4H8ZgzTaQJ
	PQD4e7z1zYa0hAWJ0feZj/OhoqVO2zt1gDKkYB5ODRXZlHP6zlkHaoxNCez5V8XtMC51eJfqGAV08
	pT6H3LJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKzBc-000000017SI-1Ak4;
	Sun, 25 Oct 2026 14:27:00 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKzBZ-000000017R5-1nJp
	for linux-rockchip@lists.infradead.org;
	Sun, 25 Oct 2026 14:26:59 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-3adf5f6833cso470697a91.0
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Oct 2026 07:26:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792938416; x=1793543216; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=JCokAAgAWjsPtUD0NKsGFk/Sx5sgBs2gnUzEQm6U42Q=;
        b=q0O4DPqN1y28S7tVGPAEnyb286eh8FSuFfmOfC/m5cwVycYbfWJiU31Embcq/1y8ta
         3sEch6+RBLEJgykrD2LkrBDFJhjsxO6ZgcV5GQnSU45LWG4M6JTRpljKGUChMLIAB43M
         yTnAZGYsfiCSswcYj0p79sS71ZUQOHsf4gCKHuIYLLSbPytuTa/WGXZI9CBSsiuRMNcN
         OKkb+5ZZQ4pVIFqj/9Ysz1aF96P3vIIz3eCR5n4Gu5IVtP93di2xaPewxDctUW1sTD0S
         p7AgoACkpK1I4SaJ7WKjxlzVn994XGBpxMi66CES02WPNThRMSMI449MtrzqOH9Y9fOk
         TcwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792938416; x=1793543216;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JCokAAgAWjsPtUD0NKsGFk/Sx5sgBs2gnUzEQm6U42Q=;
        b=a+uOEKNikYpZojAkZj3Z/zWT25SW+avHNdtsLCZ74BnNWUp5P3To6Ym8Jj9ZbK2938
         m09GSBqQpiz7L5m8N9BVP0ywy70Mrn8Yr+fZBJdnfSEqLSeOEsVw+kILnT+1Lh3alXyK
         XpF1ZHOJxRMRoPIzzePqil/mnLbKjDnKYLt+9YGEroeiDjRMfnR5hNRdaZ3gg+Xv9CNT
         D1KScPB3iRRJsDst2NdnupLCn1lMjOH6h1WB/ID+3hxLKeUd/pAVYHromMr+GXIX3H/r
         mUUKohZeDmnWw8EYxOi3U5UQGq+BNpIgbs+mZNHzS8LkNxWKqIKkKG/MpU+lX2P7el3c
         6qJg==
X-Forwarded-Encrypted: i=1; AKwUvByVYmhiqHGeuIEnwTzwYg2j3TI6QH2m5NXixVO59bd/VEaSw4IOm+D5UmataqArSdZjlRpPkV5Cl9N62FGCpA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKePFG4WKW0Fh/glR9eSZjQSSu32pow066gPW7HVXXkZ2QmqwYh
	rs+Yh4rm1dDpe3HzNmR3qLN3HL8fTR7IAH7UyO3PEiIX6yzrfSRzhqV8
X-Gm-Gg: AYBFou1SF8iIzpBWQMZa3rGHxb0JkokhtUgTzcY/RjXFWSk9pNWPLjs9fhmfWWBv/ur
	1PpEWjfSVDaBGUMGTabxUzy4Jh87PssmTDAH7XJFZgmAI+U7B0DNtGcIYQzAQRg/feHY9MzdwdX
	Ss65WzFrmBIa/R77V1QOhIFXxn7gbnUC1YKfFkDxUkqqzoXtu2Iir8f7obVPfhqIRH2T++nX0Bd
	pMfiAgKxz8ps0DUd3KlgtUvpQBFkEYD3F4zkYajmEsg6DkIsgV4mBuxTTAIqC6Ri76YdfIYKl1O
	VHHnoojjRWCfIZ/JB4Jp59/LXYaXxQAziHmrw/MwMHq1J27vgtuhj1BIYPpS0PYibLJIGrThJ0e
	ZbWyWojspCTPioV+WL1Ue0oihEMIW/cdNku5Rxce5D8TwfEMifn2/Q2dn0g1VMoBAZ+OLSIWhBg
	krk37MV0vpJbEt3AYx8YsIjKYBYpZRXA8uYLLRGkPfjpX6ZzSMIjfKsy/+qIra4xGBpmUcSi69v
	m8NMjKrTEBaab9MfKihklg+mjYKDRwM/ljCHrXY293vvr7is2J4V1BKFn7r4/pHqZEVB3FAe2sF
	/AlWfXQxLGjV6uooLbIDbmnFIGuC2Pe82xjKheiEXAhGv0YO6zZZaqDkxH0Y9T7WAO2rEa0=
X-Received: by 2002:a17:90a:d2c7:b0:3ac:9706:7735 with SMTP id 98e67ed59e1d1-3ade9b2d476mr3991234a91.5.1792938415936;
        Sun, 25 Oct 2026 07:26:55 -0700 (PDT)
Received: from romain-ThinkPad-P14s-Gen-5-AMD.tail433d9c.ts.net ([2001:861:39c2:e340:4c3:3a00:d533:9d50])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3adebb0977asm5068848a91.13.2026.10.25.07.26.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2026 07:26:55 -0700 (PDT)
From: Romain TISSERAND <romain.tisserand@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Heiko Stuebner <heiko@sntech.de>,
	Liu Ying <victor.liu@nxp.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/bridge: dw-mipi-dsi: use the lane rate for lbcc when lanes run faster
Date: Sun, 25 Oct 2026 15:26:39 +0100
Message-ID: <20261025142639.3454322-1-romain.tisserand@gmail.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261025_072657_473103_E52CFA24 
X-CRM114-Status: GOOD (  19.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Commit ac87d23694f4 ("drm/bridge: synopsys: dw-mipi-dsi: Use pixel clock
rate to calculate lbcc") counts HSA, HBP and HLINE from the pixel clock,
which is only right when the lanes run at the pixel bandwidth (pixel
clock * bpp / lanes). Commit 93e82bb4de01 ("drm/bridge: synopsys:
dw-mipi-dsi: Fix hcomponent lbcc for burst mode") went back to the lane
rate for burst mode, where the lanes are faster on purpose.

The Rockchip glue runs the lanes faster in every mode: it adds 25% to
the pixel bandwidth, or uses the rate the panel asks for. In non-burst
video mode the line programmed in lane byte clocks is then shorter than
the DPI line. On the GPD XD (RK3288, ILI9881C panel, 4 lanes at
752 Mbps, 59.5 MHz pixel clock, htotal 747) HLINE was 561 lane byte
clocks (6.0 us) for a 12.55 us line: the DPI payload FIFO overflows
(dpi_pld_wr_err in DSI_INT_ST1) and the panel shows garbage as soon as
a client page-flips.

Use the lane rate when it is clearly above the pixel bandwidth (more
than 1/8), and keep the pixel clock formula when both match, as on
i.MX93, Meson and STM in non-burst mode, where lane_mbps is the pixel
bandwidth rounded up to the next MHz. On the GPD XD this gives HLINE
1181, HSA 21 and HBP 7, and the picture is stable.

Fixes: ac87d23694f4 ("drm/bridge: synopsys: dw-mipi-dsi: Use pixel clock rate to calculate lbcc")
Signed-off-by: Romain TISSERAND <romain.tisserand@gmail.com>
---
Notes for reviewers (not for the changelog):
- The 1/8 threshold separates glues that report the pixel bandwidth
  rounded up to the next MHz (i.MX93, Meson; STM in non-burst mode) from
  Rockchip, which adds 25% in every mode. If a per-glue flag is
  preferred instead of a threshold, I can rework it that way.
- Testing: built with W=1 for arm (multi_v7) and arm64 (defconfig),
  DRM_DW_MIPI_DSI=y and =m, no warnings. Tested live on the GPD XD
  (RK3288, ILI9881C, non-burst with sync pulses), 6.18.54 with this
  exact change applied: HLINE 1181, HSA 21, HBP 7 read back from the
  DSI host, no dpi_pld_wr_err in DSI_INT_ST1 while the UI page-flips,
  and a clean picture in the UI and in games (before the change: garbage
  as soon as a client page-flips).
  Not tested on i.MX93, Meson or STM hardware; for them the computation
  is unchanged unless the lane rate is more than 1/8 above the pixel
  bandwidth.
- Tool disclosure: this patch was prepared with Claude Opus 5.5
  (Anthropic) as a coding assistant, in an interactive session where I
  asked it to bring up the GPD XD display and then to prepare the fix
  for upstream. It located the cause from the DSI host registers, went
  through the history of the lbcc computation (ac87d23694f4,
  93e82bb4de01) and the lane rates of the other dw-mipi-dsi glues, and
  drafted the code change and the changelog. I reviewed and understand
  both, and tested the patch on the GPD XD as described above.

 drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 23 +++++++++++++------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
index 22d1b8cbe1..b026b602ab 100644
--- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
+++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
@@ -781,19 +781,28 @@ static u32 dw_mipi_dsi_get_hcomponent_lbcc(struct dw_mipi_dsi *dsi,
 					   u32 hcomponent)
 {
 	u32 frac, lbcc, minimum_lbcc;
+	u64 pixel_kbps;
 	int bpp;
 
-	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
+	bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
+	if (bpp < 0) {
+		dev_err(dsi->dev, "failed to get bpp\n");
+		return 0;
+	}
+
+	/*
+	 * Use the lane rate when it is above the pixel bandwidth (burst, or
+	 * glues adding margin in all modes); the 1/8 slack ignores lane_mbps
+	 * being rounded up to the next MHz. Otherwise the pixel clock is more
+	 * precise.
+	 */
+	pixel_kbps = div_u64((u64)mode->clock * bpp, dsi->lanes);
+	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST ||
+	    (u64)dsi->lane_mbps * MSEC_PER_SEC > pixel_kbps + pixel_kbps / 8) {
 		/* lbcc based on lane_mbps */
 		lbcc = hcomponent * dsi->lane_mbps * MSEC_PER_SEC / 8;
 	} else {
 		/* lbcc based on pixel clock rate */
-		bpp = mipi_dsi_pixel_format_to_bpp(dsi->format);
-		if (bpp < 0) {
-			dev_err(dsi->dev, "failed to get bpp\n");
-			return 0;
-		}
-
 		lbcc = div_u64((u64)hcomponent * mode->clock * bpp, dsi->lanes * 8);
 	}
 

base-commit: cf61bef3801c3c9d0d8c39026b7b2fb242898a3a
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
