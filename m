Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B28C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opCUvdkMxM/D97KwZANpujph3TiHJTmsF7cSDHRCy70=; b=zVWMKeCzgLslNU
	obxxELBIFKeaV51hNFeuEQUou1YXAfXTSZ9/Sr8CrHf0WUkdBmkBXJ73rZCTLloQAkiZXruuHhORk
	cJLkyjwigMrFH6gc+QRB4P1kP32R1yLMly+LHRpGB4Qna5ZRfiF2c8bvQXadQZh/ZlPyq1R6riFlf
	7AIrAA2ZE6zzs5klgoKqCzCJt+MpNigwxNu/YYUEZvRpP+wPYAqS+NMon8jrv+uPBzU1h6CsxUarP
	9qya9U/+D/RmQ+9Wc66TP7ImMYj6xV8ANWCr07no+v6w8rGIjnh0nmhIDH0fmSvFN37dnB/UzbkSw
	6XpfV+/s5jjM15vhFcig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVg-007Ymu-KW; Wed, 07 Sep 2022 16:02:40 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVY-007Yiy-Dx
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:02:33 +0000
Received: by mail-pj1-x1030.google.com with SMTP id n65-20020a17090a5ac700b001fbb4fad865so15275282pji.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=afSHfpUxnx3q9ntKQjr5xt/kVuSAfsXr+C9GfFVRDd4=;
        b=sseBowAH5ISZmkxAYb24ceYU3uCJmbJT+Fk6bT8rILtssfyoK9sUWy46GJR0Scyl70
         ojH3VejTvM81sbYXTiXGfxT9Z6qbzK/Z41l9gnZuwm6RmWsnDg6tUIgLXHUc4CjY9Fov
         BGxojsGeaNTzBZYDBAfY4S4ElY2Eimf1YztfHgNEs1qdelfX0/JK1uq5kCXWSoBZYHYO
         ZcWvGq17DeS1nmU1SYd3U04WTIsHjYSj4tYMIruH7RdfG3dv/2xiBkZORgZ8mRvpmKTG
         p++sAb/6EYe78tMkhtlMJIh9MoBRGOwC/aeY4r3WJbOnsZICNMGm3rWY2nAL8mR5uE7g
         gmdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=afSHfpUxnx3q9ntKQjr5xt/kVuSAfsXr+C9GfFVRDd4=;
        b=YT78LvozlU5PIXpELy1eYGjBKJt+kQf1LCmc2wB0UhTG6xjxDPEH8TGIiWjuxWLlkK
         fQGLNjcveekC5qC8TuX4Lm8KUFDAdsjvsaUMLMNMcaCTmwmkmrupRiZfWhrsG//d6h6M
         BWCKnMNYaeyfW6ab6nxuUqLEIV1XYmFmoJs5dovcQfpgjKSOmxUPp7/ifVGSs30QbEry
         RZvbLPWKSItf9uJx+5kRSVgGfy9cv0VNWuGfyn1vMbbH2uai3QC/86qSigv0247ZIOlf
         z8SvLABwblc8E0x8AUcPw+XCsy8Em7tjrOiwyUg5IbnxixECZzSpiSn5DcUnaT/e7yQw
         jAEQ==
X-Gm-Message-State: ACgBeo0hsakXyBj8duJz05+7WZ73qRtaZZS7sa5gb36+cQltAeW5DGiF
	gg8/xRh4svKnLWB9b5Jd1CnMBA==
X-Google-Smtp-Source: AA6agR4EQG/wNWPdbtT/ZZVcElmxLEu6XFTylREBCm9ZmDxny83+bS3kcd0dOR35qD7faC4NwOGf9Q==
X-Received: by 2002:a17:903:2309:b0:176:de48:e940 with SMTP id d9-20020a170903230900b00176de48e940mr4528698plh.15.1662566548714;
        Wed, 07 Sep 2022 09:02:28 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:28 -0700 (PDT)
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
	David Wu <david.wu@rock-chips.com>
Subject: [PATCH v4 01/13] i2c: rk3x: Add rv1126 support
Date: Wed,  7 Sep 2022 21:31:55 +0530
Message-Id: <20220907160207.3845791-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090232_489718_AA8DF1A2 
X-CRM114-Status: GOOD (  11.58  )
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
Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
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
