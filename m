Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ECBBC8303C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jul 2025 17:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LilWUwhw7Fex9LJlvNb3GsuQG2/8HNqqvE2ZvqJ+8vs=; b=iq/gs4ctHmRUVR
	Scj67MtFn1MB4p1bBOlcskRHNXZHWIHEy7quPfBk5HUoMx1e85yCC9zYN+1Po+QPYXKMUfjpl7/UJ
	LlPOTX2fBMMyN00novgXxv+O3AeabRrTkanmz756sx0YGNUEeckPFlKQuE5ySyX1OKNI9dZuwAHBo
	b3j4Y5Ny6l/XWaG16U4Ve6uAISBLJM48cWGwUJ9Wjk4nUOy4/fRAuMOkkFkfoKhmx9jCrWfMZag3T
	VsvDa5kzu7UZoSwYBlXanccds+zY/5fhqgkJBaIz8sppc67PETb/hIYn65Rsf3j0XJDzjZvnBU1Vo
	LOZ7dJnTGt/Kk+PaA7uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYpkn-00000003BWj-37MC;
	Mon, 07 Jul 2025 17:35:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYp2N-000000033zd-0DaG;
	Mon, 07 Jul 2025 16:49:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=XGl5zk14qB97R16gX2YqfN4QJI0EsoeWTrAOR3f9nx8=; b=JXeYBzVRtzHOfv3Za9W1BbXT9N
	n8EHfVfCp2iCDTg9ePY441iB4FkQw9z6quvHYfqlBJmuIHeJDHhV4DHoPAjgNaxdX2gQn31bNaZIM
	epNw8JHNRfYeyBMs4Rzg5wt/vgG8hFxjVv5j3n3njMvjsrwbqs97HvbIc9PpgKAh6/nMqTgkumJ6V
	zXqkGiV/wjBOSlHPNk71dWtrIKzrDywTumnHg37n7zRBbnRM1ZpzdqZlH6bd7sNiJ5kVHpRkNjPF6
	rD3Zcie9lKpEEtkT75MeynJ5fHt4gvBMeHGTTS1haUBj/moLxOSJMXkGEhSgP/0xmhkkx7bbhFlaV
	MpTDbPeQ==;
Received: from i53875bf5.versanet.de ([83.135.91.245] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uYp1r-0004yl-0n; Mon, 07 Jul 2025 18:49:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 03/13] drm/panel: ilitek-ili9881c: convert (un-)prepare to mipi_dsi_multi_context
Date: Mon,  7 Jul 2025 18:48:56 +0200
Message-ID: <20250707164906.1445288-4-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250707164906.1445288-1-heiko@sntech.de>
References: <20250707164906.1445288-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_094951_107095_6FA74031 
X-CRM114-Status: GOOD (  16.70  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, andyshrk@163.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This saves some lines for error handling.

For the address mode change, that value is always an u8, so switching
to dcs_write_buffer function should be appropriate.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 66 ++++++-------------
 1 file changed, 21 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
index a20b52181ea0..154eea5f4d77 100644
--- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
+++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
@@ -1239,33 +1239,24 @@ static inline struct ili9881c *panel_to_ili9881c(struct drm_panel *panel)
  * So before any attempt at sending a command or data, we have to be
  * sure if we're in the right page or not.
  */
-static int ili9881c_switch_page(struct ili9881c *ctx, u8 page)
+static void ili9881c_switch_page(struct mipi_dsi_multi_context *mctx, u8 page)
 {
 	u8 buf[4] = { 0xff, 0x98, 0x81, page };
-	int ret;
-
-	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, buf, sizeof(buf));
-	if (ret < 0)
-		return ret;
 
-	return 0;
+	mipi_dsi_dcs_write_buffer_multi(mctx, buf, sizeof(buf));
 }
 
-static int ili9881c_send_cmd_data(struct ili9881c *ctx, u8 cmd, u8 data)
+static void ili9881c_send_cmd_data(struct mipi_dsi_multi_context *mctx, u8 cmd, u8 data)
 {
 	u8 buf[2] = { cmd, data };
-	int ret;
 
-	ret = mipi_dsi_dcs_write_buffer(ctx->dsi, buf, sizeof(buf));
-	if (ret < 0)
-		return ret;
-
-	return 0;
+	mipi_dsi_dcs_write_buffer_multi(mctx, buf, sizeof(buf));
 }
 
 static int ili9881c_prepare(struct drm_panel *panel)
 {
 	struct ili9881c *ctx = panel_to_ili9881c(panel);
+	struct mipi_dsi_multi_context mctx = { .dsi = ctx->dsi };
 	unsigned int i;
 	int ret;
 
@@ -1286,54 +1277,39 @@ static int ili9881c_prepare(struct drm_panel *panel)
 		const struct ili9881c_instr *instr = &ctx->desc->init[i];
 
 		if (instr->op == ILI9881C_SWITCH_PAGE)
-			ret = ili9881c_switch_page(ctx, instr->arg.page);
+			ili9881c_switch_page(&mctx, instr->arg.page);
 		else if (instr->op == ILI9881C_COMMAND)
-			ret = ili9881c_send_cmd_data(ctx, instr->arg.cmd.cmd,
-						      instr->arg.cmd.data);
-
-		if (ret)
-			goto disable_power;
-	}
-
-	ret = ili9881c_switch_page(ctx, 0);
-	if (ret)
-		return ret;
-
-	if (ctx->address_mode) {
-		ret = mipi_dsi_dcs_write(ctx->dsi, MIPI_DCS_SET_ADDRESS_MODE,
-					 &ctx->address_mode,
-					 sizeof(ctx->address_mode));
-		if (ret < 0)
-			goto disable_power;
+			ili9881c_send_cmd_data(&mctx, instr->arg.cmd.cmd,
+					       instr->arg.cmd.data);
 	}
 
-	ret = mipi_dsi_dcs_set_tear_on(ctx->dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
-	if (ret)
-		goto disable_power;
-
-	ret = mipi_dsi_dcs_exit_sleep_mode(ctx->dsi);
-	if (ret)
-		goto disable_power;
+	ili9881c_switch_page(&mctx, 0);
 
-	msleep(120);
+	if (ctx->address_mode)
+		ili9881c_send_cmd_data(&mctx, MIPI_DCS_SET_ADDRESS_MODE,
+				       ctx->address_mode);
 
-	ret = mipi_dsi_dcs_set_display_on(ctx->dsi);
-	if (ret)
+	mipi_dsi_dcs_set_tear_on_multi(&mctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
+	mipi_dsi_dcs_exit_sleep_mode_multi(&mctx);
+	mipi_dsi_msleep(&mctx, 120);
+	mipi_dsi_dcs_set_display_on_multi(&mctx);
+	if (mctx.accum_err)
 		goto disable_power;
 
 	return 0;
 
 disable_power:
 	regulator_disable(ctx->power);
-	return ret;
+	return mctx.accum_err;
 }
 
 static int ili9881c_unprepare(struct drm_panel *panel)
 {
 	struct ili9881c *ctx = panel_to_ili9881c(panel);
+	struct mipi_dsi_multi_context mctx = { .dsi = ctx->dsi };
 
-	mipi_dsi_dcs_set_display_off(ctx->dsi);
-	mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
+	mipi_dsi_dcs_set_display_off_multi(&mctx);
+	mipi_dsi_dcs_enter_sleep_mode_multi(&mctx);
 	regulator_disable(ctx->power);
 	gpiod_set_value_cansleep(ctx->reset, 1);
 
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
