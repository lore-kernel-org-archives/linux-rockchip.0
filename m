Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08B61ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 16:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRWWv5BFeXL3KFXSzRxboHpdgZf6jEZaVhujDD2auK8=; b=yNPOS/67/q3c8O
	F6lD8gPPHyO8CkOHQBSaXeY5POr0nL76H0mhP2+ujnQDUrp3eO4Crxmhqzm1m3EsHZlrR5g6GqeS+
	ywl2qXKe/wZ4rsI64m9jCX+Lyilf001B8MOSefHA/1tFto86ucq0tXJEWZVa35+bWQp1/XQzzXMXE
	uYjGBUpuJxZUX9awGxCzCHx3TGp+61BHcCxEcyhZZvXGhxpQE46W/Ixl+Fg8NZ9MeHOlYrmFkRrbo
	o/PMeReXu/F3GAw8SHwqDluNBKhPBGYpo9y8GbPG/1IgvG32m+zjtA0Nxbd+sPBELoiAV1T5Th24a
	Y32QmXE0lL6hen88nMzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYruN-00DbQ6-B9; Thu, 15 Sep 2022 16:40:11 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYruK-00DbOk-QF
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 16:40:10 +0000
Received: by mail-pj1-x1036.google.com with SMTP id p1-20020a17090a2d8100b0020040a3f75eso17965672pjd.4
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Sep 2022 09:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=VUS1GEjzoCd9kVvhob+PLFP+IJa0hgQdSUQAFkA6KaI=;
        b=XKxfRwUPhPLapBK4yPuuUoUobIDtLPZO3BDVexaaU9jPj4YWN7PBmwztet4vSbXACm
         2k/1tZdSmydmkcvLNGTJf55PMOrR3VJl/49Az9scItwG8spg9g3zq60W+IGUFfPFtxHx
         X/xz5QjOrCL80QWstHumTpV5OYd0D8K2Ykeq1/+CTHK2nednwnOD3jbmErUIOXdiQApP
         u0YPKX0v1XywzwkGevUb8B+0KJP5qUPhlc5XXkEzL2NM1fxXSEcVeFsD9uxE9rU/F5fW
         qwr90aFRyrpDR7Vmgn1uqvdxeFVvIphV8AxfndSHsDTwLSlJ75l+ybAW/K1gKQor+FGs
         JaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=VUS1GEjzoCd9kVvhob+PLFP+IJa0hgQdSUQAFkA6KaI=;
        b=VdIq1d18dz2mike/pDXHwC5jkZEFVms9uuK3ZnggR7cXZW7OAiuR+Gf7bKXPNlj3wT
         bpLZYWTrCRZXC3GbBJjygyu4frthPVUv6Gn/3jhDJvBR2HGEpekKMU5ikGGE3VxxW9/E
         KMgqU1W0YkcSDVDLoX0a77yoPBAMxgbr9twS8Tw/WPe04Z0tr4M/oDytr69/oPPx4nVw
         U3Y//no9K7+Ze1LLBs0FnMiIg27qll3lkoFrlGk3XBaxh5P+k47lLakt7bmS8LKUA+rc
         EssyXYj/lL2uUbIoyqC7uElFoR/fR/CLadSx9jfyNxsj9Gk5hWoAQBfZpvdPScj4evS+
         3lrQ==
X-Gm-Message-State: ACrzQf3hjm06Ij7YVXvF2JRUNNdIBIQjgtFA6d/BqA1mq2xxGnI5t7e1
	vrwO9yDxKqy8sJkKlez0d6ppCA==
X-Google-Smtp-Source: AMsMyM4kvJ3vL7FeOaqqnVAtuUYgFaL7tV9uQY25zs+tqTsTiQvJiPYmm59R3Kkz1lzBuUrWduI9wg==
X-Received: by 2002:a17:902:edc3:b0:172:8ae3:9778 with SMTP id q3-20020a170902edc300b001728ae39778mr434868plk.72.1663260006999;
        Thu, 15 Sep 2022 09:40:06 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:f820:a732:fc7f:74df])
        by smtp.gmail.com with ESMTPSA id x21-20020aa78f15000000b00540f3ac5fb8sm12841652pfr.69.2022.09.15.09.40.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 09:40:06 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-i2c@vger.kernel.org,
	Wolfram Sang <wsa@kernel.org>,
	David Wu <david.wu@rock-chips.com>
Subject: [PATCH v5 1/6] i2c: rk3x: Add rv1126 support
Date: Thu, 15 Sep 2022 22:09:42 +0530
Message-Id: <20220915163947.1922183-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220915163947.1922183-1-jagan@edgeble.ai>
References: <20220915163947.1922183-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_094008_871205_E912AA62 
X-CRM114-Status: GOOD (  11.68  )
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

Add i2c support for Rockchip RV1126 SoC.

Cc: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa@kernel.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v5:
- collect Rob r-b
- Cced Wolfram
Changes for v4:
- new patch

 drivers/i2c/busses/i2c-rk3x.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 2e98e7793bba..d1658ed76562 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1165,6 +1165,11 @@ static const struct rk3x_i2c_soc_data rv1108_soc_data = {
 	.calc_timings = rk3x_i2c_v1_calc_timings,
 };
 
+static const struct rk3x_i2c_soc_data rv1126_soc_data = {
+	.grf_offset = 0x118,
+	.calc_timings = rk3x_i2c_v1_calc_timings,
+};
+
 static const struct rk3x_i2c_soc_data rk3066_soc_data = {
 	.grf_offset = 0x154,
 	.calc_timings = rk3x_i2c_v0_calc_timings,
@@ -1195,6 +1200,10 @@ static const struct of_device_id rk3x_i2c_match[] = {
 		.compatible = "rockchip,rv1108-i2c",
 		.data = &rv1108_soc_data
 	},
+	{
+		.compatible = "rockchip,rv1126-i2c",
+		.data = &rv1126_soc_data
+	},
 	{
 		.compatible = "rockchip,rk3066-i2c",
 		.data = &rk3066_soc_data
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
