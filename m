Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 281E8C87FCF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Aug 2025 23:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4x2OWb2KKVraiuG90ctNazy6OFGr1ftzT45dspncaw=; b=UclbvwnUVErtHM
	shDll8eKx1/hJ4istPAqxp3NCIY2AsAy2ksJmEQFzqFIWiybFuLY5La01/EokUHhlhzxE3vcg+5zR
	Z9MxZERuYd5KhQck6hBYnOwUTgcDXd2AVSA6E1PyNhSL22A063enH4KajUsYRT366fV5Zi76haoUS
	yH8yfcY/o9VLr8OWIR2HIAF5p64WX3fcDwmmbhCciNv2YSfbG8vcfkTay3ntIbkZdeCD2ph/LCecU
	D4JXVV/NfjLW7bKOKnubWOBgWaXZjOlWRqy5bGezy72nBluKoQy2yNm+xZgtsRxeaf9y/HmjUFAHt
	QykHMiY3oL/zPMO6Jhww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulFAb-00000006AXO-0ffN;
	Sun, 10 Aug 2025 23:09:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEor-000000068JI-05jh
	for linux-rockchip@bombadil.infradead.org;
	Sun, 10 Aug 2025 22:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:In-Reply-To:References:Message-Id:MIME-Version:Subject:Date:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=sMcTNy0e5RVfi5VVz1vP+dp2IXm5jO1AgXXTZDV98Gs=; b=J+ZlAcZ08yR535YrYDh2jetOPS
	0nhKXE/YFHXfgUS//OCyDsT7Q9k3HPpYH7SlQd2RQvzHoo6EGiDEPGHBc8mO7O4yDhG7woWWGb2wz
	hWYTd6ieuuvoLLFcZ80dT8kLurdJnDUXMlUjZKnvodu2a+7SDW22jsKV24WHtGmlrzwOqq4BAM4Kn
	u/wySAWuMysQjeIVnDoNwP8ayFXbm69Bfavy2k7IHFNOsfwdpPGOfECfnvqCpIuUwjRdEfQG5RPg+
	VrVjYgC+rlnBgSfRxnB4sSjTjv37/6cvtHh0H5VjhQyJsF2p/hKsL94y8BxyNiZizzC93jWJu7bT1
	tB2K4G8g==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulEoo-0000000FJmF-0ldI
	for linux-rockchip@lists.infradead.org;
	Sun, 10 Aug 2025 22:47:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sMcTNy0e5RVfi5VVz1vP+dp2IXm5jO1AgXXTZDV98Gs=;
	b=EhcIpGTljjgHb/xxiBi6ocFnMvaAg46U9SK7yEDf9/t66p44cRPAUKjieIarXlbe6BIRis
	3mZ2BWNI01wCFSbGiAlpsFBjQlDlAjemL5yigdXQCayXm30wJMJFXgHl80xOFDwzDxnxL1
	UYCjROETwWjuocWv71cUYIel/Lcc6/I=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1754866029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sMcTNy0e5RVfi5VVz1vP+dp2IXm5jO1AgXXTZDV98Gs=;
	b=EhcIpGTljjgHb/xxiBi6ocFnMvaAg46U9SK7yEDf9/t66p44cRPAUKjieIarXlbe6BIRis
	3mZ2BWNI01wCFSbGiAlpsFBjQlDlAjemL5yigdXQCayXm30wJMJFXgHl80xOFDwzDxnxL1
	UYCjROETwWjuocWv71cUYIel/Lcc6/I=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-587-ityokLFlPtiric2i8mO14w-1; Sun, 10 Aug 2025 18:47:08 -0400
X-MC-Unique: ityokLFlPtiric2i8mO14w-1
X-Mimecast-MFC-AGG-ID: ityokLFlPtiric2i8mO14w_1754866027
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4aedd0b5af9so79248371cf.0
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Aug 2025 15:47:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754866027; x=1755470827;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sMcTNy0e5RVfi5VVz1vP+dp2IXm5jO1AgXXTZDV98Gs=;
        b=iPdYSV+Wudaeqiaj29AnUCgV+NQr8hYfkG2CHRuZiSrNJQ4Ww13CyIA4gOWKNfCWoQ
         1OayBQ4IfcEerbgN4xa/ls93fq4QTXtTdG02s7lGZf2qb4d+wBtRoMjT/j4MxlnTEFPW
         2NiUNv6gpvQWllepE5OazMWDzG+Q4VPjdvPlBOTGyvK8jTk0W2g3eF+Iej1/XRYZq7ws
         AY5tUN0Pv30U9Lq9bh+/YdcmnVus6QueITei7/rMKWmcH7zmM/fawim7Fb+Zh+tsmLgA
         u8+f1mHlzg49S5Y9luT56T5xuNlKlpfxZueZXcri+WyoQWyZ+FdpC9U1ypLn5/njWWu+
         lOCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrmk+Beczyn/o+I8Fjr6LrIxTP9C/wmO2xfz3wLpMdQVPcLmjwbntjWip3T/+dz15r5J+fFGscPg7o5XVFGg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ7wVDSsO3gGaTun/kysfeGGlD9O+RVNG5EK2ETpcrv/jKto5e
	Te+Ws3E6UQ0JYCXormp3P/1UfqnnFW+3EpSepPnFK9RTimRSHjLwtt6nckvns8NqsC5zg0918Qx
	MWrtURDEel3VewwT1BBY7s3GhfC9l3Z9zqk3Gq9TIZiL9LhAZHSWWu07bWiYGF2CRS+QxkEcD0Q
	==
X-Gm-Gg: ASbGnctK3pAr45k4zPYyTAQ/5hDDrOTnY61/N63mkkfx1dTJ1tJRbGfhlQ3MNjRz1BT
	AnxNKbe+hv2PEOJtiVPlG010nB0s4wYgVawEhDpkafN5aDdJlQGrkIncfwPq7RKKpP83V/AFSRW
	B8T6FVFCs+Cu93jLg4iwqddrU6JVBp+SDXWMDdbfuJG9JCuamnhAl95vkOOvU0VXz7CgiI04Qnp
	B4E25tVq5x8z1NgZzBAAL3sbRY2/n5kIK5bGEUDW6U2TgD6g49otQFsEQfqQOO9KtdUpXuiiIWm
	ZGET+6szM08HNFyA8LiqIeUFn4WOYKAC4XeOKQRPfkpwKcuSQnJBff4i+tC7Z7EDdkKeKZ6Offz
	Mv8/log==
X-Received: by 2002:ac8:5fc6:0:b0:4af:2139:7721 with SMTP id d75a77b69052e-4b0aed6a5f7mr163617661cf.51.1754866027094;
        Sun, 10 Aug 2025 15:47:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEHP5IJU8z9koSl05icwsQuLC7xmNyQP3PO70C+KlxY+wzOdhzlnvRlzStjW1m9tN2vsBSQZA==
X-Received: by 2002:ac8:5fc6:0:b0:4af:2139:7721 with SMTP id d75a77b69052e-4b0aed6a5f7mr163617431cf.51.1754866026637;
        Sun, 10 Aug 2025 15:47:06 -0700 (PDT)
Received: from [10.144.145.224] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b0ad996459sm42685171cf.46.2025.08.10.15.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Aug 2025 15:47:05 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Sun, 10 Aug 2025 18:45:36 -0400
Subject: [PATCH v2 8/9] phy: rockchip: phy-rockchip-samsung-hdptx: convert
 from round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250810-phy-clk-round-rate-v2-8-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
In-Reply-To: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1754865940; l=2424;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=ndDF7+BW9z3oZgdFS9E606ToKp/Oxm2MLZrOcNPZM6U=;
 b=pM8GpM7PgNX1YsF24F8XlkiAdBklsmNw8Y01AAorZPrlImrF+x3wsR7deHwg6cBB+ANx46J6N
 A3zeH3x5Hu0ChDcu4CSeqRjFPm8eSd0GERqlUeKO53YvLSfbTdxsOMF
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ZtA7aoGX5cPcXaImi8W1B-jUZAhLe8T2Vh5z9SP7QCw_1754866027
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234710_427202_000B5E00 
X-CRM114-Status: GOOD (  13.36  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 79db57ee90d1487b51f4ddadde870a275dd7b17b..0d4e578c8c6a08aad355aa8aa5a1cf75c7d354ed 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1869,8 +1869,8 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
 	return hdptx->hw_rate;
 }
 
-static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
-					unsigned long *parent_rate)
+static int rk_hdptx_phy_clk_determine_rate(struct clk_hw *hw,
+					   struct clk_rate_request *req)
 {
 	struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
 
@@ -1879,9 +1879,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
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
 
@@ -1896,7 +1896,9 @@ static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
 	 * hence ensure rk_hdptx_phy_clk_set_rate() won't be invoked with
 	 * a different rate argument.
 	 */
-	return hdptx->hdmi_cfg.tmds_char_rate;
+	req->rate = hdptx->hdmi_cfg.tmds_char_rate;
+
+	return 0;
 }
 
 static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
@@ -1925,7 +1927,7 @@ static const struct clk_ops hdptx_phy_clk_ops = {
 	.prepare = rk_hdptx_phy_clk_prepare,
 	.unprepare = rk_hdptx_phy_clk_unprepare,
 	.recalc_rate = rk_hdptx_phy_clk_recalc_rate,
-	.round_rate = rk_hdptx_phy_clk_round_rate,
+	.determine_rate = rk_hdptx_phy_clk_determine_rate,
 	.set_rate = rk_hdptx_phy_clk_set_rate,
 };
 

-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
