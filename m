Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F8EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 14:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRkPQF7v61GWxXL5/2dFiMZ6hWzTK+JZLAey/E+5aog=; b=lNcEKWs0ut1Hn/
	vhIjeIkBEiG8ijl8+gZcrYMBWmJyGwWpjOAMPTg9W8mfM1vWZzPwDFhKsLIuT+FgHeUlWOazM7Nby
	ZFd3eVYL330r2bwOdtJOClytM2AwDSlen7IWgjkjExsm9417VA4rgSiuEGlFFp6qbf3aJcWi5l07H
	lNW6boNvdzEkTtNW44MXNfHdUvuXwJWDA2fyOroscD0OEn7KtrVG3o+p/NIVpPatp0zWS79mcUHmV
	nPr9PpE3GOnxl3im8PRfqkqnPz3nTQ6ngC96ZOQUHwuyP1qMRHeFwTbuxefSHf3bGmOfq/IpH/kPv
	nEi7qixJ2noFCUAxov+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNc1H-005Uaa-7a; Fri, 25 Feb 2022 14:56:31 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbzT-005Thy-P2; Fri, 25 Feb 2022 14:54:43 +0000
Received: by mail-qv1-xf29.google.com with SMTP id w7so6867314qvr.3;
 Fri, 25 Feb 2022 06:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=XBeJBV/AW6aVcAIEUmMxOHtmJJN7cXdlOyt9jA1A+SxQhFAomT394g2penNl+l7GbZ
 PpPBvEeiwnLHMlif2iBNjv9DS5xXf89R++JUB9W/GWyFgQmJe9HHL5/5oXQ2ZEcNODeL
 zxvcRwUWGtQlhpu7nx+Gn62ZpV0GU+3XcJTPUYqsxdM1igSMmHWIS8ot0rD8QW0V0x8E
 TtYT0843fMm0a55pRiVBotTg2R+5GvDnRAjR+GB0OVP/5g2KUHuHibAcxH9mOw3XOyBg
 YQ3J4aeSNGohJwzflt6MidXQdlW3MZXTxUKgvefm6Oxead2rar6rAiGCDvdpDeXCoJqr
 +B6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=14QkQfjUHVUwpLo4N26eU4uutHFZmq4N7JmABi9Sh1x1QIpEef5lgDxSkMiel7pWSl
 VwQ9clIsfYNpCacq3w98UOkxarW4LJuFX6EsHahUj/pNy2Nkz763GmMkElnoSQWJwd7y
 DO6NMDFjJh6yDZbnABUyWeIyI0GLpB1SU7cHOBAYY58rI/WyjRg7gsiiOE/BVtjLA1Sd
 TNF/NRKhA89VnlyFdS3Sc1lAMQ6GwbSciDnNuhHfE2RUd03I6AblI8vbi8YBRpr16kQI
 HK+ScbA7K1xBfA99uRdx44NYilH+0VPnB/I4HXrvMlp0ak3BiQPcTs1TNHJ+TY3cxP0w
 Bqzw==
X-Gm-Message-State: AOAM530aFb7xpDN2ar18awx/B+8+/dg2XzCUegjroC/y8FiW8tL6uyPJ
 lMyW2YnuTgsESTIq2XtopKmKggGbCEE=
X-Google-Smtp-Source: ABdhPJzdjq6wQF+dln+duSIHpHfuXWwvm/2iQsbrmZi+C7AS5r4pVyrCpU26OtRm5/Tmk3Cdwx6ovA==
X-Received: by 2002:ad4:5cca:0:b0:42c:3a47:5bc with SMTP id
 iu10-20020ad45cca000000b0042c3a4705bcmr6205281qvb.69.1645800878646; 
 Fri, 25 Feb 2022 06:54:38 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d202-20020a3768d3000000b005f18706845dsm1318292qkc.73.2022.02.25.06.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 06:54:38 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/8] soc: rockchip: set dwc3 clock for rk3566
Date: Fri, 25 Feb 2022 09:54:26 -0500
Message-Id: <20220225145432.422130-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225145432.422130-1-pgwipeout@gmail.com>
References: <20220225145432.422130-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_065439_849459_7E48DEE6 
X-CRM114-Status: GOOD (  12.87  )
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

The rk3566 dwc3 otg port clock is unavailable at boot, as it defaults to
the combophy as the clock source. As combophy0 doesn't exist on rk3566,
we need to set the clock source to the usb2 phy instead.

Add handling to the grf driver to handle this on boot.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/soc/rockchip/grf.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 494cf2b5bf7b..384461b70684 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -108,6 +108,20 @@ static const struct rockchip_grf_info rk3399_grf __initconst = {
 	.num_values = ARRAY_SIZE(rk3399_defaults),
 };
 
+#define RK3566_GRF_USB3OTG0_CON1	0x0104
+
+static const struct rockchip_grf_value rk3566_defaults[] __initconst = {
+	{ "usb3otg port switch", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(0, 1, 12) },
+	{ "usb3otg clock switch", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(1, 1, 7) },
+	{ "usb3otg disable usb3", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(1, 1, 0) },
+};
+
+static const struct rockchip_grf_info rk3566_pipegrf __initconst = {
+	.values = rk3566_defaults,
+	.num_values = ARRAY_SIZE(rk3566_defaults),
+};
+
+
 static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	{
 		.compatible = "rockchip,rk3036-grf",
@@ -130,6 +144,9 @@ static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	}, {
 		.compatible = "rockchip,rk3399-grf",
 		.data = (void *)&rk3399_grf,
+	}, {
+		.compatible = "rockchip,rk3566-pipe-grf",
+		.data = (void *)&rk3566_pipegrf,
 	},
 	{ /* sentinel */ },
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
