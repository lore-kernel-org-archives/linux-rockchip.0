Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670CBC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:33:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 319DF61166
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 21:33:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 319DF61166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlDMp7HZKUhCKHeOYCF2h9mc1CG2bZ0ovemRaELkxdo=; b=iGLrvl36zIhUMk
	FUB2BPgEt85RjRUwLZCHfJ5rpdKVFjprrbVXEfA1xfERRb7FlksbM8jeQDafZv0sqxcrK1cB4cptC
	3N6tilIW9HcvC8GV60Dhr44rNdv+H9C9DhajtPeT3gbEJuHoTLoh+pysrxdoY5quvO/qiV13ijV+W
	FU2/3ZcTRc9uJfsud58lueGJ8aAYmhv5OQYf9/yMoa54UP1Gl3uFCd1luGD/pYdAojOEpPZadPwir
	59WvXfALQKlrRQjX+N2D1DxeI2c9krHvgUxZEpV2zuA1VM5p66jVb4DOl1H0plEVAK98eiTvRJpGf
	1NiLZuOI0uc0zYoeBInA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsuDB-00GEif-Sw; Mon, 14 Jun 2021 21:33:37 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsuCs-00GEb0-PK; Mon, 14 Jun 2021 21:33:20 +0000
Received: by mail-wr1-x432.google.com with SMTP id r9so16001870wrz.10;
 Mon, 14 Jun 2021 14:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pl1qnOWWubTC26cB06B87T2plCazXd0mlQJnYZkPgAc=;
 b=mZQlY5Olju1HaCYf7aG1fVd7kg9HDxwc2X9TrRhOxrgu9HBHfnnvSPPcVQ0KTje1js
 hGI9V6Q+GiY3ob062t8nTE3TlN4rIgH+cAUDce+HZCNP4d+yeEie5PFM/oUEehHvOWkf
 55zzhd2z1LBM0lU1+t8fF0hu6vIZQBZmk0FO3xLsv3XIAsIY0TzCRc+t58FEMmYl7bAY
 Du0NoyfUETlMwv6FxqdHKuO3RptIM4TWbbxuXzCGJ4aA+knwCUwroP1xuqyw7dTSalC+
 G/s7HZli5sEjIHykvb69SFRsQg82zGTk3NXgxa7j9X2APZm0XsuY/GZfinPwIiCwaei5
 4Bjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pl1qnOWWubTC26cB06B87T2plCazXd0mlQJnYZkPgAc=;
 b=JIN8233T0+rYc2dqoWXhe+SCiEONi7NSafzggSHLBnXAD/GdCZtdEcsRYQih9Bi4NN
 IrNdDSX2nQjv/jLNVAXm8A3VBb7pQkGnez4utchJIGHEbnde0S1c5hTMSJ2Z1LFeCwad
 CrsyiYzSawZb2047Z1/XfnuNtrFN+/dustiBls/z5gPMuQhCdE7y8blNGaNtaOiBZARf
 Q9nQuNODMCXXw4FhMC1ySjlL4TMt1jn6V3xGxew7x/PYtmE+AGAGLFsnIYBFWB4aFevt
 FiGN6SMrDHzXkxiaMGcMbiedJLGZw3WTGmKaC1HAYHiRRoPCxaFxBjCpM1NpFDZ98oz8
 7vpg==
X-Gm-Message-State: AOAM532UzT01M9zWX2onX8OR56kTvcDXjM2iTflkrHa2+WAHI7XLhHlp
 DDkLpECfjbUTfIppiZsksA==
X-Google-Smtp-Source: ABdhPJwvrf/NrlKOGNaR1KB3YfTEDnQY2S/6zmyOXagOaz/D6YTHrokf2DjqhxjqIBgxnVUOxfFhWw==
X-Received: by 2002:a5d:65cf:: with SMTP id e15mr21659152wrw.310.1623706397004; 
 Mon, 14 Jun 2021 14:33:17 -0700 (PDT)
Received: from localhost.localdomain ([91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id g23sm989525wmk.3.2021.06.14.14.33.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 14:33:16 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/6] media: hantro: reorder variants
Date: Mon, 14 Jun 2021 23:32:12 +0200
Message-Id: <20210614213215.99389-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210614213215.99389-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210614213215.99389-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_143318_840148_3CD9DF8E 
X-CRM114-Status: GOOD (  14.13  )
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

Reorder variants in hantro driver alphanumeric.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
---

 Changes in v3:
 - collect Reviewed-Tag

 Changes in v2:
 - added patch

 drivers/staging/media/hantro/hantro_drv.c | 4 ++--
 drivers/staging/media/hantro/hantro_hw.h  | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index dbc69ee0b562..34e778e1cea1 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -582,9 +582,9 @@ static const struct v4l2_file_operations hantro_fops = {
 
 static const struct of_device_id of_hantro_match[] = {
 #ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
-	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
-	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
 	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
+	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
+	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
 #endif
 #ifdef CONFIG_VIDEO_HANTRO_IMX8M
 	{ .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 5737a7707944..7fa67d0c7e0f 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -203,12 +203,12 @@ enum hantro_enc_fmt {
 	RK3288_VPU_ENC_FMT_UYVY422 = 3,
 };
 
-extern const struct hantro_variant rk3399_vpu_variant;
-extern const struct hantro_variant rk3328_vpu_variant;
-extern const struct hantro_variant rk3288_vpu_variant;
+extern const struct hantro_variant imx8mq_vpu_g2_variant;
 extern const struct hantro_variant imx8mq_vpu_variant;
+extern const struct hantro_variant rk3288_vpu_variant;
+extern const struct hantro_variant rk3328_vpu_variant;
+extern const struct hantro_variant rk3399_vpu_variant;
 extern const struct hantro_variant sama5d4_vdec_variant;
-extern const struct hantro_variant imx8mq_vpu_g2_variant;
 
 extern const struct hantro_postproc_regs hantro_g1_postproc_regs;
 
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
