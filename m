Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13F94C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3uFAATxfymM6Xogh/7vI2SejxuUtRzjqov7n+6npNk=; b=sAAld/hd6rbxyJ
	3TdyW4DJUhl4xcibOT6Hwr2xZnMeZJTh8OFOmbCNRLIzFLxc6JREwWPmHjpe/7e2hSAS588yxFA4j
	3lHko825ONS9/uns16TEqIXA0daDnQnGgjU37c1pnU8VmSxtQ5Nv1YRoBfccNK6sJA3F16sKTIB5C
	2N6G7FmdEqLcS0Tsiu9n2M9j3/fVUIYtu9ObM8fp4o4scliFkYOWYJyWwp0xSdN2H6ahEvnINjv1+
	2KsqSL95DnU8jrcx6HPKvw/WMFbQp1ctPSKpxpCIIDdM8ZsWq25Ru+B6VWHU833FeaW/LASYvuzo4
	HdNOdkYlMq81tv/vl0mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdZ-00FE20-0g;
	Mon, 31 Jul 2023 11:00:29 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdW-00FE0H-1g
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:27 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1bbc2e1c6b2so26890205ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801225; x=1691406025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFu/JPo/heUh8tZtPktgVoKIudqTiKgcM8V0fJH/i9Y=;
        b=1v2MnK+H1CiH/nknYPjsMWMv5uS25LE7m4TpV/2Ws5S7GEdQYHGIsEqWpPchb7KRvX
         10+4CDyk0wy/3YqCGKWbnd2Maf5RaO+3UP9FEpVl+R6zfu9dRAHKHo9yOtrijUsIgRYU
         9okmTNhyQY7bAb2zFXxStJFtbOjlKOmVqY2ocqYrIZ2XIyrqrVLbyFi/1HWM3PmOTgXp
         ASP7TB5msegRAcV01tSNbfm150m14zycgybAWnX+TRTYCJ3ihXjFiafdbISgtom4gn7Z
         e0bVXb6xOBTSNO3A5BF4oWq/h4eW0w4EfMwnPeeI8ZhXUBIjgbZpkw4mgReAMtu5r0/O
         eegw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801225; x=1691406025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aFu/JPo/heUh8tZtPktgVoKIudqTiKgcM8V0fJH/i9Y=;
        b=R9UuYBNRJPRWduLwMehfyp9y0Buy6xFTDQTgpPlJxViwVd0dnI1e8ofsayxlM+lVtH
         RoaGEX9Xt/9kHGBDcUdLJutgix7Ba/2dXTTIeUFj6U0Ih0SvBfzsqBb0qbV9hZnhaTtN
         Hr1sXZ4m7eU34yP1TjbzU2hq6F4iWTQBqpmpqJO9VnHtWE80eMFcHVle8H0/6ciy6lno
         e0myFWOimbr+J6EPlNOnJkoCtnQ7odpjsa4bK/aLjQ58sjYF5JIQTZEd6VUe+IzZC8m3
         acQSIpc+t1aH5Q7Zf/GmGaXlxcrk4rkVGWZxNHvBtmupkq3ZCj4Eb48/FtSbTOLTTV1E
         ++jA==
X-Gm-Message-State: ABy/qLZdV9H85SkDOmVS1JmXBZl56dyjA2DATWYUHoiNCMs684jM/94i
	9ZGNhZ9Kj9xF/d7HS4lyp/njJg==
X-Google-Smtp-Source: APBJJlENmczCMqYJUL3zBRJdO3rj0ca5qfst6RnY1rZPFxWTnpTOgab05okF6l0KlSJaqmu9Fuk+ew==
X-Received: by 2002:a17:902:d4cb:b0:1b3:f5c7:4e75 with SMTP id o11-20020a170902d4cb00b001b3f5c74e75mr10119622plg.58.1690801224688;
        Mon, 31 Jul 2023 04:00:24 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:24 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	linux-pm@vger.kernel.org,
	Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 01/14] genpd: rockchip: Add PD_VO entry for rv1126
Date: Mon, 31 Jul 2023 16:29:59 +0530
Message-Id: <20230731110012.2913742-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040026_568119_43454B9F 
X-CRM114-Status: GOOD (  10.64  )
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

PD_VO power-domain entry in RV1126 are connected to
- BIU_VO
- VOP
- RGA
- IEP
- DSIHOST

Add an entry for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: linux-pm@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>

 drivers/genpd/rockchip/pm-domains.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/genpd/rockchip/pm-domains.c b/drivers/genpd/rockchip/pm-domains.c
index e3de49e671dc..d5d3ecb38283 100644
--- a/drivers/genpd/rockchip/pm-domains.c
+++ b/drivers/genpd/rockchip/pm-domains.c
@@ -976,6 +976,7 @@ static const struct rockchip_domain_info px30_pm_domains[] = {
 static const struct rockchip_domain_info rv1126_pm_domains[] = {
 	[RV1126_PD_VEPU]	= DOMAIN_RV1126("vepu", BIT(2),  BIT(9),  BIT(9), false),
 	[RV1126_PD_VI]		= DOMAIN_RV1126("vi", BIT(4),  BIT(6),  BIT(6),  false),
+	[RV1126_PD_VO]		= DOMAIN_RV1126("vo", BIT(5),  BIT(7),  BIT(7),  false),
 	[RV1126_PD_ISPP]	= DOMAIN_RV1126("ispp", BIT(1), BIT(8), BIT(8),  false),
 	[RV1126_PD_VDPU]	= DOMAIN_RV1126("vdpu", BIT(3), BIT(10), BIT(10), false),
 	[RV1126_PD_NVM]		= DOMAIN_RV1126("nvm", BIT(7), BIT(11), BIT(11),  false),
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
