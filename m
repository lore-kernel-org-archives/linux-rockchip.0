Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1557C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ee+5f/4VJJNLEj4DG47fix31IPv4pbXXKXxG96p3h6s=; b=Gk4Kvj+CUqd8Ft
	i0FFzr5zEMG+yvCMlVUXiru6dDgFWyTHbLa4DcY0Y+vXLbMilLZTRLazSjIBw1GMM8GLQMiMFMUoe
	id0HBOMqcRLL+9b2Qak18ou3xAN+w7igHbgawOFjJdKvzuKdpibZXQ4DRUE1gspDlaHEb2K3pwCPe
	MoXEq3h7sy5y+kJdZgWsL1aYTuyK/cuRnLqDdQv19KonWRz/Uj6+9zEexqz7NbHMaPEltRlhm84VE
	OXqOKOFeGO426RLo/vZL7xG6M4j2QJu7tPM8XVDTpn172OZJy+M9o0mCRxy8A09lxlpuT6KHMFP4m
	z6zPCDplvkCcQgixVj1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nelNB-002r7o-8J; Wed, 13 Apr 2022 22:22:01 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nelKo-002pw4-3L; Wed, 13 Apr 2022 22:19:39 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 5BB705C0323;
 Wed, 13 Apr 2022 18:19:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 13 Apr 2022 18:19:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1649888372; x=1649974772; bh=ng
 rt2MEr4z8GI4+zoah18/U0+SvzTpZZW+sSchHQgqw=; b=wawPN8qUvHr63z4xdi
 brOCkbGn2zalS6uDCaKgPSyte/dRJ5M30t8pB3soZGxm3Q1h6DflqbxxneDl+cCb
 MdM0gCdoqQpbpLJONcBljJpxDxh5LpR/B571L928u/BxOpXHenoWiiUkUhb3/A5m
 pXxoBndI3JhFE06UuaXws8gre97ife0VMXwvBdDI9QQwMg4UdqfD+4RGHUz5a0pl
 jAzukMjW8P5O15FjbGKZvDtkx5B2eUBulw9wyV17Jh9bM6e7mcQd20oBTTejBTot
 wlRCuyq80MbfCloxCIqQ97aRYL+a2fv8yVV5w0/dMT9bUIinnPwNEOeoKZenKTuu
 JQ3A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1649888372; x=1649974772; bh=ngrt2MEr4z8GI4+zoah18/U0+SvzTpZZW+s
 SchHQgqw=; b=BingKrHdYkk6l9I/ljL5wiPGYo5TN6UWOXSYOg66m6kAnXSSYg/
 8NhLba5YrkIbhocG+K7iwKgAuxJMdJU52X0sS74aokKeccgNCwRN+m26K4kVWk3i
 FRFtuNPClNOZCjC8J28EYWzwmKaj3PMD+1fruHcMDXFjKVvatAMG8yTDUfhmEP2E
 fYxx9sfimHFAlFLkUaM3/ZT5y1l7XzzQ4BNy9qU4lZp7+eimCTV4gJdwQJBRvw9I
 nkEPWhJhHoM5xwFUjc1NUvopJVPs5EooLKJgKj17kY4pyem3XuIng9VdN536NQGL
 ERxfB18fO9Cj9NxH6F/oc6k99JyuIroxA1w==
X-ME-Sender: <xms:dExXYt-fVURc0R0OztwEpjvN69zZBlltZ4ZV7NuocCq7M4CbFsVn-w>
 <xme:dExXYhuIoREkbmpfpwAvmr6ka0PbhA2x1qnu99QBvjDIp8DwalxpJJWF32YycB1oj
 50CyhY7MoICwyPNaA>
X-ME-Received: <xmr:dExXYrCNU3xM9Ag1dSseJi3rcwgk6dzKI3wKa_wFVqAzDXWCn5YP2MfOjR2YKazFM9kWHrgUbQ0MjC38kjY0PqC0-B8CqsB6ol1S-kj4tmcepIdZmJp3JOExe_VJela3AFeYAg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudelvddguddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:dExXYhfgAoSi1tCekh938pLBkbRAnV8Pj1gONvQkn6rzRdrR3Zj3JQ>
 <xmx:dExXYiPYBY5UWHS_322wzCTIboU_wDwwJqTrslRzM-ca2NuBoojpOQ>
 <xmx:dExXYjkV19MU7RtYGcEQCooDFuil3hVlefsoHz4MPsUP3ck1Om4YbQ>
 <xmx:dExXYpOhy9SgSbwLPhwQSTW7PMhmw4LCLpfUQMX8pd8CifEIMHTWVQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Apr 2022 18:19:31 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
 Alistair Francis <alistair@alistair23.me>,
 =?UTF-8?q?Ond=C5=99ej=20Jirman?= <x@xff.cz>,
 Andreas Kemnade <andreas@kemnade.info>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Holland <samuel@sholland.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 05/16] drm/rockchip: ebc: Add CRTC mode setting
Date: Wed, 13 Apr 2022 17:19:05 -0500
Message-Id: <20220413221916.50995-6-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413221916.50995-1-samuel@sholland.org>
References: <20220413221916.50995-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_151934_280917_820066AF 
X-CRM114-Status: GOOD (  17.22  )
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

EPDs require some additional timing data beyond what is normally
provided by drm_display_mode, as that struct is designed for CRTs/LCDs.
For example, EPDs care about the width and position of the gate driver
(vertical) clock pulse within a line.

EPDs also update some number of pixels in parallel, based on the
interface width, which of course varies by panel. Only two data bits are
used for each pixel, to choose between driving it positive, negative, or
neither direction. Color depth is thus not limited by interface width,
but by time (the number of phases in the active waveform).

This additional timing information is packed inside drm_display_mode as
hskew and DRM_MODE_FLAG_CLKDIV2. This allows getting the complete mode
from a DRM bridge.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---

 drivers/gpu/drm/rockchip/rockchip_ebc.c | 102 ++++++++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_ebc.c b/drivers/gpu/drm/rockchip/rockchip_ebc.c
index f75fd23adda2..5f9502313657 100644
--- a/drivers/gpu/drm/rockchip/rockchip_ebc.c
+++ b/drivers/gpu/drm/rockchip/rockchip_ebc.c
@@ -135,6 +135,7 @@ struct rockchip_ebc {
 	struct drm_plane		plane;
 	struct regmap			*regmap;
 	struct regulator_bulk_data	supplies[EBC_NUM_SUPPLIES];
+	u32				dsp_start;
 };
 
 DEFINE_DRM_GEM_FOPS(rockchip_ebc_fops);
@@ -178,11 +179,112 @@ static inline struct rockchip_ebc *crtc_to_ebc(struct drm_crtc *crtc)
 
 static void rockchip_ebc_crtc_mode_set_nofb(struct drm_crtc *crtc)
 {
+	struct rockchip_ebc *ebc = crtc_to_ebc(crtc);
+	struct drm_display_mode mode = crtc->state->adjusted_mode;
+	struct drm_display_mode sdck;
+	u16 hsync_width, vsync_width;
+	u16 hact_start, vact_start;
+	u16 pixels_per_sdck;
+	bool bus_16bit;
+
+	/*
+	 * Hardware needs horizontal timings in SDCK (source driver clock)
+	 * cycles, not pixels. Bus width is either 8 bits (normal) or 16 bits
+	 * (DRM_MODE_FLAG_CLKDIV2), and each pixel uses two data bits.
+	 */
+	bus_16bit = !!(mode.flags & DRM_MODE_FLAG_CLKDIV2);
+	pixels_per_sdck = bus_16bit ? 8 : 4;
+	sdck.hdisplay = mode.hdisplay / pixels_per_sdck;
+	sdck.hsync_start = mode.hsync_start / pixels_per_sdck;
+	sdck.hsync_end = mode.hsync_end / pixels_per_sdck;
+	sdck.htotal = mode.htotal / pixels_per_sdck;
+	sdck.hskew = mode.hskew / pixels_per_sdck;
+
+	/*
+	 * Linux timing order is display/fp/sync/bp. Hardware timing order is
+	 * sync/bp/display/fp, aka sync/start/display/end.
+	 */
+	hact_start = sdck.htotal - sdck.hsync_start;
+	vact_start = mode.vtotal - mode.vsync_start;
+
+	hsync_width = sdck.hsync_end - sdck.hsync_start;
+	vsync_width = mode.vsync_end - mode.vsync_start;
+
+	clk_set_rate(ebc->dclk, mode.clock * 1000);
+
+	ebc->dsp_start = EBC_DSP_START_DSP_SDCE_WIDTH(sdck.hdisplay) |
+			 EBC_DSP_START_SW_BURST_CTRL;
+	regmap_write(ebc->regmap, EBC_EPD_CTRL,
+		     EBC_EPD_CTRL_DSP_GD_END(sdck.htotal - sdck.hskew) |
+		     EBC_EPD_CTRL_DSP_GD_ST(hsync_width + sdck.hskew) |
+		     EBC_EPD_CTRL_DSP_SDDW_MODE * bus_16bit);
+	regmap_write(ebc->regmap, EBC_DSP_CTRL,
+		     /* no swap */
+		     EBC_DSP_CTRL_DSP_SWAP_MODE(bus_16bit ? 2 : 3) |
+		     EBC_DSP_CTRL_DSP_SDCLK_DIV(pixels_per_sdck - 1));
+	regmap_write(ebc->regmap, EBC_DSP_HTIMING0,
+		     EBC_DSP_HTIMING0_DSP_HTOTAL(sdck.htotal) |
+		     /* sync end == sync width */
+		     EBC_DSP_HTIMING0_DSP_HS_END(hsync_width));
+	regmap_write(ebc->regmap, EBC_DSP_HTIMING1,
+		     EBC_DSP_HTIMING1_DSP_HACT_END(hact_start + sdck.hdisplay) |
+		     /* minus 1 for fixed delay in timing sequence */
+		     EBC_DSP_HTIMING1_DSP_HACT_ST(hact_start - 1));
+	regmap_write(ebc->regmap, EBC_DSP_VTIMING0,
+		     EBC_DSP_VTIMING0_DSP_VTOTAL(mode.vtotal) |
+		     /* sync end == sync width */
+		     EBC_DSP_VTIMING0_DSP_VS_END(vsync_width));
+	regmap_write(ebc->regmap, EBC_DSP_VTIMING1,
+		     EBC_DSP_VTIMING1_DSP_VACT_END(vact_start + mode.vdisplay) |
+		     EBC_DSP_VTIMING1_DSP_VACT_ST(vact_start));
+	regmap_write(ebc->regmap, EBC_DSP_ACT_INFO,
+		     EBC_DSP_ACT_INFO_DSP_HEIGHT(mode.vdisplay) |
+		     EBC_DSP_ACT_INFO_DSP_WIDTH(mode.hdisplay));
+	regmap_write(ebc->regmap, EBC_WIN_CTRL,
+		     /* FIFO depth - 16 */
+		     EBC_WIN_CTRL_WIN2_FIFO_THRESHOLD(496) |
+		     EBC_WIN_CTRL_WIN_EN |
+		     /* INCR16 */
+		     EBC_WIN_CTRL_AHB_BURST_REG(7) |
+		     /* FIFO depth - 16 */
+		     EBC_WIN_CTRL_WIN_FIFO_THRESHOLD(240) |
+		     EBC_WIN_CTRL_WIN_FMT_Y4);
+
+	/* To keep things simple, always use a window size matching the CRTC. */
+	regmap_write(ebc->regmap, EBC_WIN_VIR,
+		     EBC_WIN_VIR_WIN_VIR_HEIGHT(mode.vdisplay) |
+		     EBC_WIN_VIR_WIN_VIR_WIDTH(mode.hdisplay));
+	regmap_write(ebc->regmap, EBC_WIN_ACT,
+		     EBC_WIN_ACT_WIN_ACT_HEIGHT(mode.vdisplay) |
+		     EBC_WIN_ACT_WIN_ACT_WIDTH(mode.hdisplay));
+	regmap_write(ebc->regmap, EBC_WIN_DSP,
+		     EBC_WIN_DSP_WIN_DSP_HEIGHT(mode.vdisplay) |
+		     EBC_WIN_DSP_WIN_DSP_WIDTH(mode.hdisplay));
+	regmap_write(ebc->regmap, EBC_WIN_DSP_ST,
+		     EBC_WIN_DSP_ST_WIN_DSP_YST(vact_start) |
+		     EBC_WIN_DSP_ST_WIN_DSP_XST(hact_start));
 }
 
 static int rockchip_ebc_crtc_atomic_check(struct drm_crtc *crtc,
 					  struct drm_atomic_state *state)
 {
+	struct rockchip_ebc *ebc = crtc_to_ebc(crtc);
+	struct drm_crtc_state *crtc_state;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, crtc);
+	if (!crtc_state->mode_changed)
+		return 0;
+
+	if (crtc_state->enable) {
+		struct drm_display_mode *mode = &crtc_state->adjusted_mode;
+		long rate = mode->clock * 1000;
+
+		rate = clk_round_rate(ebc->dclk, rate);
+		if (rate < 0)
+			return rate;
+		mode->clock = rate / 1000;
+	}
+
 	return 0;
 }
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
