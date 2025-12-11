Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49177D43360
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Dec 2025 23:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVOmV5GNE5VV+04aMvT9QgCi1Iup+R8QyUPBCYY2onk=; b=UacdfAfk8/eyxe
	Lts2pu7fzHuxawnedZ6zxAL47/8YgpXMgzdDxLqOtTirwWOK0pYZSq1NoANnExlb5gd4elh6Q910C
	t0sgyLUTgl3BTKlupSx+ewDhIHiOZ87jVqM/TKuwGpsgqRrLOuQIrNPmADozJR4nmUdvCm8UujCEf
	69iXcpo6+tN3/bjR0DcuXbiMStOQ4tIWpjwxNxZ2e5tFHudiHkDHBasMDCoBd4QGu6ddR7srV7Afi
	cUSqUiDIw0Gi9MwviOM2S935IJhpe+tEbrRXxA4kO7j7uA0KCOLVHdDxivop+XvCn+PgAx7yqYL6N
	qS+2GkhoN+dbZIG36l6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpus-0000000HPOq-09Qk;
	Thu, 11 Dec 2025 23:17:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTpum-0000000HPGq-1Ft3
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Dec 2025 23:17:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765495059;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yGIhcNn4hSdtEtR/SXkjUWQp83NGU7A3xjzPvcHPB5M=;
	b=BYDHNO6cji9UF5K06vYu2iGM2W7Dwi7WJhKHV0EVlDpoOJ7NwLv9UhrP1QfaZRPllj8HhE
	msJWDH8KhSNUi5JMsJMd6uGv592I/sGCqpz447XtKbEXkx4P3iaOOpM3yDtYf+IUX71L+d
	CBke5HmQDH9dyXfKDAGVVtfmdojUD+U=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-82-N9NQ110cMj-LVZfbNke2wA-1; Thu, 11 Dec 2025 18:17:38 -0500
X-MC-Unique: N9NQ110cMj-LVZfbNke2wA-1
X-Mimecast-MFC-AGG-ID: N9NQ110cMj-LVZfbNke2wA_1765495058
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b2de6600c0so152009285a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Dec 2025 15:17:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765495058; x=1766099858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yGIhcNn4hSdtEtR/SXkjUWQp83NGU7A3xjzPvcHPB5M=;
        b=uSLP/hUyH0NZf1EGEkhuYCDe7E4otwb/vsSYjACQND2BukTxrChbynwr4MVQXnNMiu
         M8FDQwqn+obBoEwPsKOVkjgNPhcpHH3267e97cTJv9/7k9DYY2Ebz+FYfOeJbzG7r/TE
         hUG4xEFx46bJ/kG67oDuQN72UIxOObZZAiVNK1DKg/LLZbBU7rPJgj3zXFBXt1qvhDiT
         6s6As5IXNuEvE2Zg993Sh8Fadravgt9mez8lcOWwwMNaqgYNlUONrJ4BW4xO4BW+V9tR
         kNYHZb6Xtmr/FHblnsaM1zEuAqXVNmpcx//ZJLlM1Cm73F3oMaHCVis/VRhmdjdVW96S
         wMsQ==
X-Forwarded-Encrypted: i=1; AJvYcCUt7S4A/GHHe8S2ovL8JTLF8dwcmpJ3Tsxe5JwqZPPiHKNjGM5nz5v1F4JZ7UKf1z60F0DXlruVtkhEZhmgvA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5kUJT3Ou1Tuwo65nK2HjKqyr2hyrMvo9BhR5vcE+M0qP82YRh
	vtGlGulcqEkWUC0AgH9UGdQRbmBE2XhqBlYzuDEaw5zPCEqHw/X/YXrbdKorWc7gqXEl2xeso+P
	90hBikyYA3w9TnVWhL9htwVgE/7WtzdLnHQwlZvbO+hS4mjSbzhol1hvNFQpOOR98HxQywpuHnw
	==
X-Gm-Gg: AY/fxX6UDEa0S8WPeDtV5f+g/NMNVmO0KETzfKcTYgHGbe1CqlOpp1ZKvvTP7eTJbOE
	v4DN1rWCSU/f2nZZ0QxOdYUXio0XotsKF+vdn2jVIdrbnbaxdpiB30Rfb5YSit5NU4VJaswpu5n
	uooHJ1myF5rVjSzCTZWz4Sp9yNTA7AK0xdKWfOx86wPX2sKrpLZHbfExsjTKvGo/rJH10kQLo7v
	Gz6ZKdoZfOE7mUc59PzSmgD7hX7r/pq4AE5FyGIR7WIVEchTlf9W2NYAVgdLD60QeBPPfJrYp3k
	f7o8b2RborB4cqs7bKtv5nTA9NPhFc04hwKujtkYGSDqpKkvSFyShHPwJqDfgC205oog4eRBrxF
	n7PqWOY0auZx/k86CE6C9QoFZx4uAZK3CAkcFqp3cPlCePGziRONlaw==
X-Received: by 2002:a05:620a:4143:b0:828:aff4:3c03 with SMTP id af79cd13be357-8bb3b358530mr24779585a.61.1765495057886;
        Thu, 11 Dec 2025 15:17:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJ6MyvatEvjXLdrucEm3djvv+DCSWYW1g1m07kDWXIN1ABKw8EYPVfgJJ5sUpqpKlTIcYAIw==
X-Received: by 2002:a05:620a:4143:b0:828:aff4:3c03 with SMTP id af79cd13be357-8bb3b358530mr24775285a.61.1765495057473;
        Thu, 11 Dec 2025 15:17:37 -0800 (PST)
Received: from [192.168.101.129] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8bab5d4edbasm317873585a.51.2025.12.11.15.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 15:17:36 -0800 (PST)
From: Brian Masney <bmasney@redhat.com>
Date: Fri, 12 Dec 2025 08:16:26 +0900
Subject: [PATCH v3 8/9] phy: rockchip: phy-rockchip-samsung-hdptx: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20251212-phy-clk-round-rate-v3-8-beae3962f767@redhat.com>
References: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
In-Reply-To: <20251212-phy-clk-round-rate-v3-0-beae3962f767@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2646; i=bmasney@redhat.com;
 s=20250903; h=from:subject:message-id;
 bh=1Db9NFuUnQhQu9U41X5Z8TkxHRghSnvnQHsnP4RTW7s=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGDKtAy6tv/mBQ3J1ntD97t0PtZ/sXbDtX8XDgquXTd8ZR
 upqaUakdJSyMIhxMciKKbIsyTUqiEhdZXvvjiYLzBxWJpAhDFycAjCRI7UMfyW7Kk4WyCmZJybt
 XVSS8SzsoeutV4+lLCYXcK7IPTTpxzxGho2HvrnXvlrEFdS08UIvr5StzpeJsWwOEuUlB2Zv/XN
 BlQ8A
X-Developer-Key: i=bmasney@redhat.com; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: WIICr04Vsd3I2jnl2Sp_JcWIeNbr4ccKAvFMR2UF7og_1765495058
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_151741_549708_5381C418 
X-CRM114-Status: GOOD (  13.62  )
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
Cc: Brian Masney <bmasney@redhat.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 29de2f7bdae8a31958e31b0a64281532fd76e64d..315ac97f52d8af6d3010dc87788575039c7a6b40 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1870,8 +1870,8 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 	return hdptx->hw_rate;
 }
 
-static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *parent_rate)
+static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
@@ -1880,9 +1880,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * To be dropped as soon as the RK DW HDMI QP bridge driver
 	 * switches to make use of phy_configure().
 	 */
-	if (!hdptx->restrict_rate_change && rate != hdptx->hdmi_cfg.tmds_char_rate) {
+	if (!hdptx->restrict_rate_change && req->rate != hdptx->hdmi_cfg.tmds_char_rate) {
 		struct phy_configure_opts_hdmi hdmi = {
-			.tmds_char_rate = rate,
+			.tmds_char_rate = req->rate,
 		};
 		int ret = rk_hdptx_phy_verify_hdmi_config(hdptx, &hdmi);
 
@@ -1897,7 +1897,10 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8, hdptx->hdmi_cfg.bpc);
+	req->rate = DIV_ROUND_CLOSEST_ULL(hdptx->hdmi_cfg.tmds_char_rate * 8,
+					  hdptx->hdmi_cfg.bpc);
+
+	return 0;
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1927,7 +1930,7 @@ static const struct clk_ops hdptx_phy_clk_ops = {
 	.prepare = rk_hdptx_phy_clk_prepare,
 	.unprepare = rk_hdptx_phy_clk_unprepare,
 	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
-	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.determine_rate = rk_hdptx_phy_clk_determine_rate,
 	.set_rate = rk_hdptx_phy_clk_set_rate,
 };
 

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
