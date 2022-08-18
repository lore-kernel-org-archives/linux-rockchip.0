Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A6AC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJMueUEFt+LIy1jaz2sBq72/EGAks8biBxZlZHWWbrQ=; b=4jMlLp60B2Lyg2
	4VuX/C7NYcALXcuEb1hksOMk/VdcluaglI0k7FL0y/GerRVOmw22/VdlA+V01AT99gdYMISkninLF
	zoEQn5KYxACvDjnyuaON0sLv6/1wUmiAWf4yzG7KF8H0KVlSVHA16YhBorTkGe9AwVt/3I8pimsup
	tlhzAacXWvdrxK05R2mOHlPK4+Mb1hI/TXjtGk8JeRWjOWIsrbxGC/e6KgcB+K2N2C3sFN3B7T1G1
	0vRE3stau5Ta5ASXgn9qoKma5LYCGLAmTANnlIEGXjsutanj3RMxiIHY6pOf5oop/C8v5siZ4CmJW
	Ahk1JNFyTW5/F+rldCMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfCz-0052xc-RL; Thu, 18 Aug 2022 13:05:13 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqY-004jvZ-1o
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:03 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 24so1206719pgr.7
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=RXFOtvFRD5YKSZ6sC0Fzo+VdopmgN9mxLOnSnbFWSr0=;
        b=XZ+xD4aeH2mrBj33yopHvrVUX59L/4rqp+EbpnNyjBZY7I14wJtQITdLCazZG/iILQ
         aWi1nWO5OR7/ncOo4OjyhcYqBcpDtuP8rZrxBjIY3DKSP2AD2xqY7TMVGKSVpf/fqGO/
         h/uB+OwDPynoyz6sPjDRf1y6jSvOJuBmwBhBEa9zyXWFIx1CKMrEOifk5wQfOWH229Vt
         c3J/e9Zp6UuDLYBQFEv+35KIzpWGVqMp6aczjKBTgdn7vcpim1F3u7Q1aXpPG2iSGD/c
         8WYgThIMe4oJKMxvz5IxCna856riVd7FfpyXK6US6x3ANL6i6a2qTdyZWKDKIgCaAt0D
         tOSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=RXFOtvFRD5YKSZ6sC0Fzo+VdopmgN9mxLOnSnbFWSr0=;
        b=QQbobywafbV691qlIGSEOEjt+iO1CMdu67FDxDQ0suJmj5NksxtylJVZfjFjAc+00R
         lLAuUku5ppYED2SHfUF6iWEJfKMCSJywvg0XGEb7Mztd57hC2ryRtgs+XLzNLv232HSq
         AR603+2aEFjeGYyDPV0cqfXQzIxC2jvUDqINS9En/1N0GF4bdghdUP/do99lh/p3QieC
         /eC4oQUHBpXidKR23WcaGb9VIOz/jsuJnSyeIC7OcGyx0k0rqx1RyUxyBo2YZ6ms54gr
         MGAL+mnTo3CIktv/pcQmQp76r38/SKmG7VQQQmuslTBjQdd67JELcwlGSvPrPKZQhSnX
         Hnhg==
X-Gm-Message-State: ACgBeo1wHz8JtqXZLoJtevijZ9aY8dhgUdNrOciUFYNdDDd5gsJ9OXfa
	0YEB0TW5yvU5JXKHB7QFGJxCSA==
X-Google-Smtp-Source: AA6agR7oYDWk2fLCc0cQ5CUZeDzDpgm3+1qCFzYbsZRDPjvazXqSWrO0LhRVwDlIgPmqIM6F791iZg==
X-Received: by 2002:a63:5d4e:0:b0:41d:dcc3:aa85 with SMTP id o14-20020a635d4e000000b0041ddcc3aa85mr2316191pgm.324.1660826519031;
        Thu, 18 Aug 2022 05:41:59 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:58 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v3 05/19] soc: rockchip: io-domain: Add RV1126 IO domains
Date: Thu, 18 Aug 2022 18:11:18 +0530
Message-Id: <20220818124132.125304-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054202_111200_BF8ABA14 
X-CRM114-Status: GOOD (  11.40  )
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

From: Jianqun Xu <jay.xu@rock-chips.com>

Add IO domains support for RV1126 SoC.

Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3, v2:
- none

 drivers/soc/rockchip/io-domain.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 9df513d1219b..6619256c2d11 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -491,6 +491,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rv1108_pmu = {
 	},
 };
 
+static const struct rockchip_iodomain_soc_data soc_data_rv1126_pmu = {
+	.grf_offset = 0x140,
+	.supply_names = {
+		NULL,
+		"vccio1",
+		"vccio2",
+		"vccio3",
+		"vccio4",
+		"vccio5",
+		"vccio6",
+		"vccio7",
+		"pmuio0",
+		"pmuio1",
+	},
+};
+
 static const struct of_device_id rockchip_iodomain_match[] = {
 	{
 		.compatible = "rockchip,px30-io-voltage-domain",
@@ -544,6 +560,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 		.compatible = "rockchip,rv1108-pmu-io-voltage-domain",
 		.data = &soc_data_rv1108_pmu
 	},
+	{
+		.compatible = "rockchip,rv1126-pmu-io-voltage-domain",
+		.data = &soc_data_rv1126_pmu
+	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_iodomain_match);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
