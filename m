Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62B1ACCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 08:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KMlKdmho/F71vrti8lbTIwt0FzseKh/gQjQfFJArWI=; b=3rlBGmH4lIuosK
	74laMuyvs1RFgtTj+/PiNte3TgBS0s47RCz7oEKMqpLjoyAR2Bx09UuViIAi6EL3dS6GHoRLHTK5F
	X+KlsnuIetwo7RzFtpR+GQ3T/MIGnq7qqqZeum9JLcKM57bBpzOWsQk5WdvNIx1as3rCNxYCgX99G
	HkB0auabmqoD/rO9ik0t3acl+GSQEeH21DFaWnUNdWnA6H0WKdSi5c7aojxLTHSCsfCPGDpyBYFVn
	UESkMmrLmvBgt/vIIa8RqlThR/SAevghuIuxjwmgkd9e+IzPFVzeTo2ErnZzMoyHvq4I/MBSzOPPV
	QRFUbshMq3xTfib3pXSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeeh-0000000FUw7-1BEZ;
	Tue, 28 Oct 2025 08:02:11 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDeed-0000000FUtg-1rNk;
	Tue, 28 Oct 2025 08:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761638524;
	bh=+JaO/wn2a0pnTQvwJNdanN5Q+8X01ku/lGh6qKEDcJ8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=e9Hz6KMZa11eaxEdEPfxtLPu9zRlks3hP2x/VScVLONAgu8FzfZDzAn7VdHE2xdgx
	 WIIFJ7kgmIOR1zaD9BkEv20aPKIHzGCLFNQYwFTzz6dWl24Izm50NjUjLIHEhHk64e
	 RifcOpsBwSohlRH9gG2Gv9Zu6NIxxytsW3FcrR3O5J1/tyM5sxlXYSqJRqTk32roPU
	 c5QinLdG7mTFEMTawySGHn+jl0YRx38GZ4qsIngaOtE6nY/1JETBr/t1AQRsBR5gRE
	 Q+ImwqkR/FeKA44kVqHkus+wrAJ8dMSB3NN5QMRB8XI1SnQYqYbx48eY8sph/xJ+Nr
	 3GkCD9XrM9poA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id A3CA917E12BA;
	Tue, 28 Oct 2025 09:02:04 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 28 Oct 2025 10:00:54 +0200
Subject: [PATCH RESEND 1/3] phy: rockchip: samsung-hdptx: Fix reported
 clock rate in high bpc mode
MIME-Version: 1.0
Message-Id: <20251028-phy-hdptx-fixes-v1-1-ecc642a59d94@collabora.com>
References: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
In-Reply-To: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>, 
 Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_010207_629934_E8E4645F 
X-CRM114-Status: GOOD (  11.65  )
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

When making use of the clock provider functionality, the output clock
does normally match the TMDS character rate, which is what the PHY PLL
gets configured to.

However, this is only applicable for default color depth of 8 bpc.  For
higher depths, the output clock is further divided by the hardware
according to the formula:

  output_clock_rate = tmds_char_rate * 8 / bpc

Since the existence of the clock divider wasn't taken into account when
support for high bpc has been introduced, make the necessary adjustments
to report the correct clock rate.

Fixes: 9d0ec51d7c22 ("phy: rockchip: samsung-hdptx: Add high color depth management")
Reported-by: Andy Yan <andy.yan@rock-chips.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 01bbf668e05e..aee03e8655f6 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1037,7 +1037,8 @@ static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx)
 
 	ret = rk_hdptx_post_enable_pll(hdptx);
 	if (!ret)
-		hdptx->hw_rate = hdptx->hdmi_cfg.tmds_char_rate;
+		hdptx->hw_rate = DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8,
+						       hdptx->hdmi_cfg.bpc);
 
 	return ret;
 }
@@ -1895,19 +1896,20 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return hdptx->hdmi_cfg.tmds_char_rate;
+	return DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8, hdptx->hdmi_cfg.bpc);
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
 				     unsigned long parent_rate)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
+	unsigned long long tmds_rate = DIV_ROUND_CLOSEST_ULL(rate * hdptx->hdmi_cfg.bpc, 8);
 
 	/* Revert any unlikely TMDS char rate change since round_rate() */
-	if (hdptx->hdmi_cfg.tmds_char_rate != rate) {
-		dev_warn(hdptx->dev, "Reverting unexpected rate change from %lu to %llu\n",
-			 rate, hdptx->hdmi_cfg.tmds_char_rate);
-		hdptx->hdmi_cfg.tmds_char_rate = rate;
+	if (hdptx->hdmi_cfg.tmds_char_rate != tmds_rate) {
+		dev_warn(hdptx->dev, "Reverting unexpected rate change from %llu to %llu\n",
+			 tmds_rate, hdptx->hdmi_cfg.tmds_char_rate);
+		hdptx->hdmi_cfg.tmds_char_rate = tmds_rate;
 	}
 
 	/*

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
