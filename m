Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD9AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRkPQF7v61GWxXL5/2dFiMZ6hWzTK+JZLAey/E+5aog=; b=P/gCnlzgh25KeN
	SuarEj4GvtDJOvTwoe4HFktKSgF7x209j9on3oA0U2coMp8v0NFGBHfyXexY0VP+n/Mdujx/VffwL
	5iJGG6Uk+XA1NMspRQTt4wygV6YCRiCaZLR7BMeAmNrvTC+51n5otBW58cwnMJKv9O8HxWy+BbSF3
	syfrUyKtTQfV7IAiB+HN8DXFToK+oHx2HN1E+M3dOgdKsyIOUYw/hek0USF8AKCHuWJoqlWUofqd/
	n6mMHTvGDYVoWS87tcJPZhhlUmv/iRv2CKnWfH1suDVca6SVBFyJmcZh5OkSk3dOBn+jBkyZAJhai
	swiCciPowkJG9ej9T+zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgeH-00ClPB-RH; Mon, 28 Feb 2022 14:05:13 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWa-00Ciis-81; Mon, 28 Feb 2022 13:57:19 +0000
Received: by mail-qv1-xf36.google.com with SMTP id d3so12551749qvb.5;
 Mon, 28 Feb 2022 05:57:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=f7mHaST5NAc+ZIDJY57ZHA0oq8TrhOyfZVssHBsJGecvBXPY/L1UQruS1pWOe1uZLR
 Wo9UrmY8B7uPAUk1siaDc8QWiwA0jZ4Lo4WXIICX+fW++jbriE10QO833oWDWj2VwLY4
 zoUZZ8mlJhqSuwf4E4q8+220BxsKfgZP2Z6fII+erqmLb6iYYwJ2AqmorFubvIP/ZOQ0
 7/Cz9afCjP5oCdXMd+DL1/YujlaMltAfzn2o2Rzg7U0KdAT3WtnK+OHopVVXhXGSZwVm
 euMv1yatBtzNxI9JDnjjtJw8Rzj1IJS9utJLiSCsmqH/D7WSq1W8xJcYqSQb3EZAg/xK
 ABCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=Eu+eeXDXyi5s3HFUsHnLyIMKWQ02GLXxaoJxkElFcn8tMHEeu6oWLO1RTcKYqZ05JP
 kEUKkcDtfrXtqrFTEZDX8hn0PL2nCsT8Gflf+yR6eBBQiipLHKfuiKPeOlQIYT4pfrd/
 +TQ0Omz6bpdo76MylW5JZFOeMk3XH61zAQezYSu+l2dF9G+YwG5nSMEcDvDMENW/zZnB
 1uGlHlurV9N0vOHMSGfeRQ0R5HpxYMrN7S3ehhs+Rq6mjG9pctSZU8V4mgI/AiC6zCU+
 JTwGBMdRfNgThPlFZ+emXRMWWDNZBqIXLkEGmDnSPO+4FYSZ+TYL9UTWv41yZh2wUCSc
 jKiw==
X-Gm-Message-State: AOAM533PBFvzRv7v5L3glwowOvEg//Vg5UebuYy1t3OLrKkc/00XEsQh
 1oIl6Ozn92x7pCH/WeQln2A=
X-Google-Smtp-Source: ABdhPJwPALj6XKu9+umS4mMfyI8C8p5m+jZ9VT//cuyLwFrVCc5AoMqTn2unAhe0zVjk9nrBQJb5kg==
X-Received: by 2002:a05:6214:212e:b0:42c:4226:282e with SMTP id
 r14-20020a056214212e00b0042c4226282emr14089597qvc.111.1646056631293; 
 Mon, 28 Feb 2022 05:57:11 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:11 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/8] soc: rockchip: set dwc3 clock for rk3566
Date: Mon, 28 Feb 2022 08:56:55 -0500
Message-Id: <20220228135700.1089526-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055716_346731_D59D1231 
X-CRM114-Status: GOOD (  12.37  )
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
