Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC41CC5AE5B
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 12:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Jy5AGToFeNVW2UIL0jqOuKDyvl5knCmPRAhpmMoTH4=; b=NJsOiM+q/MAr/N
	ebbQBKqAqJHMf4nf2T89IAi6IPjqi9o4dmBVSQSDBbLBJIruwcyeIhl9SYa3axVVVU0vSaW5YF3yR
	CoVt8lRycl5XzmvMEts9Sb2vmujk1xY6tSK5LjJHpSHtNpOsd1CJ8ix3ul84lQhxDfVAW/lBq65Uc
	smJ3dWrtefoP2W/neujf1k/wpwxLxS4LZoZaZr2lzgc3foNJWTHjOOZQDEWWySLFqyfq0tgrolYy0
	2ayNhmur1ZFFUo7qE5bA/z3fbLVDA7WbNLqBwUJ2jZl6ptF2dThm6isKKvg2X8KmkWILV36PWkI8F
	9eey6ONY0TmpPZK8zCuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggo-00A9Nb-2l;
	Sun, 19 Nov 2023 12:14:14 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4ggR-00A97H-1n;
	Sun, 19 Nov 2023 12:13:53 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9df8d0c2505so660414666b.0;
        Sun, 19 Nov 2023 04:13:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700396024; x=1701000824; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=no0ZEH8MGlw8tJ6htWoDUR170bNw3QI+/YlLRVV4UwA=;
        b=WJe/+inEQJtjUjgqwP7aLXEVXSos11yWtdzNN4RdZciI35NgdipWAZTs3b1zK3EUcA
         6vKNQH44V37HSrHJcLWX9A5j4GQllvkJ7l+bXTIaVLMNSjhXUetE/Oda856Gk1Lkv+ub
         mmFNiiwgw6192iRxWIb6DF7kGjjlRNCVk5rDxpghzY0/f2QJtiYb9C/K5swToKTQRCf2
         bMfA1dAxvDbBHYF2SMpf6opbyCxwUHHM2SBE/04EXsZVB/9rKtIpb3+lBR3ObCJoFkOz
         qQXcmpQCiA0+zHiKtd7PiI3Oe+Mx+bnt108UDFdPnRAKpQkiweDzrUmTdtPy/4n6aAKb
         6rRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700396024; x=1701000824;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=no0ZEH8MGlw8tJ6htWoDUR170bNw3QI+/YlLRVV4UwA=;
        b=jvjmpQczKOoAPEbqUTRM8GrMuz0aCAqHpiFFRYkOx20fzZOGiwPViImE2KEwhvVSVk
         e4YxT0Avum1aap0hwSHm6Y/u8mbjd9Vwxcu82AXeWOZVQnyTPKWKWDMY9zIeZL57Jc+P
         SlCZkNi63K5zSn2u26SYp29DaFQCNrwhXVgX7MY6QJp7AXtBmv0GV3ktsl0YQKY4bw8q
         gj+yroFK1YrvzpoBwjAvOY0yERnYqkw2Bufrz5c3tezjck44xAW63kkm8iphEwVzlIG6
         jEQLh1pJSC8zzhozLJBvUkjh9y1jOOkKxc3mjqKNLHq0pUtfBj8JlazAFySnP3B97BwA
         FgMg==
X-Gm-Message-State: AOJu0YwEz0zGfFxvnTHRvTE/30PgefC/bciX2PccwAu1jxuU8IZOxDIB
	+bSZ9yfOgV3tBY4dQf6GVg==
X-Google-Smtp-Source: AGHT+IE5Dvqdr2Ny9LGLGrJSKCUknctB4NV8cQ67rYxxrcFo45ijhkxFmGxHdUJx/gNi5Y0mq0frIg==
X-Received: by 2002:a17:906:f1c8:b0:9e2:b1a5:1d2 with SMTP id gx8-20020a170906f1c800b009e2b1a501d2mr9817275ejb.27.1700396024531;
        Sun, 19 Nov 2023 04:13:44 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id r5-20020a056402018500b0053dec545c8fsm2523634edv.3.2023.11.19.04.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 04:13:44 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 2/5] phy: phy-rockchip-inno-usb2: Add RK3128 support
Date: Sun, 19 Nov 2023 13:13:37 +0100
Message-ID: <20231119121340.109025-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119121340.109025-1-knaerzche@gmail.com>
References: <20231119121340.109025-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_041351_593109_78F11E9F 
X-CRM114-Status: GOOD (  13.99  )
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

Add registers to support the 2-port usb2 phy found in RK312x SoC familiy.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
Changes in v3:
 - added phy_tuning-callback for RK3128
 
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index b5a1d30df83a..4f71373ae6e1 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1487,6 +1487,14 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	return ret;
 }
 
+static int rk3128_usb2phy_tuning(struct rockchip_usb2phy *rphy)
+{
+	/* Turn off differential receiver in suspend mode */
+	return regmap_write_bits(rphy->grf, 0x298,
+				BIT(2) << BIT_WRITEABLE_SHIFT | BIT(2),
+				BIT(2) << BIT_WRITEABLE_SHIFT | 0);
+}
+
 static int rk3588_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 {
 	int ret;
@@ -1536,6 +1544,54 @@ static int rk3588_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 	return ret;
 }
 
+static const struct rockchip_usb2phy_cfg rk3128_phy_cfgs[] = {
+	{
+		.reg = 0x17c,
+		.num_ports	= 2,
+		.phy_tuning	= rk3128_usb2phy_tuning,
+		.clkout_ctl	= { 0x0190, 15, 15, 1, 0 },
+		.port_cfgs	= {
+			[USB2PHY_PORT_OTG] = {
+				.phy_sus	= { 0x017c, 8, 0, 0, 0x1d1 },
+				.bvalid_det_en	= { 0x017c, 14, 14, 0, 1 },
+				.bvalid_det_st	= { 0x017c, 15, 15, 0, 1 },
+				.bvalid_det_clr	= { 0x017c, 15, 15, 0, 1 },
+				.idfall_det_en  = { 0x01a0, 2, 2, 0, 1 },
+				.idfall_det_st  = { 0x01a0, 3, 3, 0, 1 },
+				.idfall_det_clr = { 0x01a0, 3, 3, 0, 1 },
+				.idrise_det_en  = { 0x01a0, 0, 0, 0, 1 },
+				.idrise_det_st  = { 0x01a0, 1, 1, 0, 1 },
+				.idrise_det_clr = { 0x01a0, 1, 1, 0, 1 },
+				.ls_det_en	= { 0x017c, 12, 12, 0, 1 },
+				.ls_det_st	= { 0x017c, 13, 13, 0, 1 },
+				.ls_det_clr	= { 0x017c, 13, 13, 0, 1 },
+				.utmi_bvalid	= { 0x014c, 5, 5, 0, 1 },
+				.utmi_id	= { 0x014c, 8, 8, 0, 1 },
+				.utmi_ls	= { 0x014c, 7, 6, 0, 1 },
+			},
+			[USB2PHY_PORT_HOST] = {
+				.phy_sus	= { 0x0194, 8, 0, 0, 0x1d1 },
+				.ls_det_en	= { 0x0194, 14, 14, 0, 1 },
+				.ls_det_st	= { 0x0194, 15, 15, 0, 1 },
+				.ls_det_clr	= { 0x0194, 15, 15, 0, 1 }
+			}
+		},
+		.chg_det = {
+			.opmode		= { 0x017c, 3, 0, 5, 1 },
+			.cp_det		= { 0x02c0, 6, 6, 0, 1 },
+			.dcp_det	= { 0x02c0, 5, 5, 0, 1 },
+			.dp_det		= { 0x02c0, 7, 7, 0, 1 },
+			.idm_sink_en	= { 0x0184, 8, 8, 0, 1 },
+			.idp_sink_en	= { 0x0184, 7, 7, 0, 1 },
+			.idp_src_en	= { 0x0184, 9, 9, 0, 1 },
+			.rdm_pdwn_en	= { 0x0184, 10, 10, 0, 1 },
+			.vdm_src_en	= { 0x0184, 12, 12, 0, 1 },
+			.vdp_src_en	= { 0x0184, 11, 11, 0, 1 },
+		},
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_usb2phy_cfg rk3228_phy_cfgs[] = {
 	{
 		.reg = 0x760,
@@ -2031,6 +2087,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
 
 static const struct of_device_id rockchip_usb2phy_dt_match[] = {
 	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
+	{ .compatible = "rockchip,rk3128-usb2phy", .data = &rk3128_phy_cfgs },
 	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
 	{ .compatible = "rockchip,rk3308-usb2phy", .data = &rk3308_phy_cfgs },
 	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
