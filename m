Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A15ABC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 15:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRkPQF7v61GWxXL5/2dFiMZ6hWzTK+JZLAey/E+5aog=; b=e2aTqVU9HTaXPj
	hMu3Ny5TMfZmN9dFoh13PmPc9aPVx9Mndt6nx0gZWSPQjrnoctqSUnwWANaRMcKQNk5oa+H1iIU0r
	bYuaOR5q+jmALSIVbfOAQJE98hnE2VqCXl1jATnGtVkk04V3y7R1RiAwdUc/sdMsOHeYNeOlIa+QX
	EBBINEIjRs2UBbj2WIMy3JmbiksvwbJbbehQXlhGKXq3t4LwyGH99+1OkV1tCVbwGLHtIWQD1+IzV
	QR+SQGOmdeWZOEznFisc4lnbro+csXG9HxiGYUDd4Y+PWrzBESGwqh3ZSg6jOvVVqLBnBIXe88jVj
	m+JIWiNrh31l8gNlIfTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncqIl-000C79-By; Fri, 08 Apr 2022 15:13:31 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncqI3-000BkQ-SY; Fri, 08 Apr 2022 15:12:49 +0000
Received: by mail-qk1-x733.google.com with SMTP id c199so3333732qkg.4;
 Fri, 08 Apr 2022 08:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=gUyAAC9v3ERVIgec02ALPphf34Xi2rpE30HcoIEAl12wO4+4DmF+INCjvNlfP6//bX
 LwNdSlQN0FMAj17eSK4o8Y4ekWNq0q3JwACdWjTpuD3oUxuhKo+Kd0S7QgbS/V5iNtdN
 EHH9p8BbZFmm8y8aHyfORhDOffQAIrbvlpYeueXZzHn40gmwlQ7V8qyv+6PgjsmKPr3R
 1bjdeg3X4XsKH+97mtRF5tllilSgjXurlrXajiLamwAmN+bqGr9E8VfF2lZlYvNjua75
 GPNcU0jkdtcKoBIgMDTYcgSjlkRrtGT/y6H15NVDAkfe/1i/s8WERY/cg4xcGay2LtUB
 E5Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZtUJySmbIWUCXkZt6OYhMWHmPcZgwTz+ISBAU3SmGDQ=;
 b=a+nn3a7VwsINyq6PKRzbTRwhtnzeiucCDFlKTttakiXTJRObN5W27HiWns1DlshkAN
 eOZTKJlQQByHsxbEAybu9Y5OyMUumBCICmqOE1hiFeSa/AJX/94SxXixpzJiVLQaMtrl
 1rHa+lugFGSTIBH72gIrCKvqmTe33TZ9kFlJ+O3TqQHzfEuWCCJ7Pf+QxGfJlUdb3VFd
 31gv36ceRZeUbtoLdkcBQ36vrPaRwc5LgZxzniTrmctq2QlrhJ9c1x9q0EGcbFwVfGdd
 mIwmHMRaPEW0XE2yiiE7IYWewef+pY9R+eY1p86d4qF39pIMy6u4GQnJ2u45HlECJEdk
 +yCA==
X-Gm-Message-State: AOAM531huAVdVCPKj8zEX2VhnzXB/tA6R+iIDaMng5AdqqFdc6Ga7EfQ
 NW42X8wyfv4O/dZy1P33ggU=
X-Google-Smtp-Source: ABdhPJzO2WStjiG85MQLNiiZOS4kkxy+rUxW75KBCuvwTjYqenTUZaIskskKwgBfYUIyVOsllhj0Ag==
X-Received: by 2002:a05:620a:228f:b0:67a:f432:af72 with SMTP id
 o15-20020a05620a228f00b0067af432af72mr13360897qkh.603.1649430763374; 
 Fri, 08 Apr 2022 08:12:43 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 191-20020a3707c8000000b0069a13545fcfsm2266052qkh.123.2022.04.08.08.12.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 08:12:43 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/5] soc: rockchip: set dwc3 clock for rk3566
Date: Fri,  8 Apr 2022 11:12:34 -0400
Message-Id: <20220408151237.3165046-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408151237.3165046-1-pgwipeout@gmail.com>
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_081247_999441_C8705247 
X-CRM114-Status: GOOD (  12.71  )
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
