Return-Path: <SRS0=S7g1=N4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F0F0C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:06:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D586D60724
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:06:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D586D60724
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkOfQxFi0LwWyeILbQQa9NB6U6GeQcX5MYgUquUwPQ8=; b=E6IC6lSTtasQqj
	Lu90h1p09DO7xPX7tfUsMkukFvOA6mtkWhrXvipf34Q4GXoBJDgetGWEUIfEPXqxu564BvYlI+wt0
	IziT0L50csixJT5ViRAcnTLP+W2khfe94StJSKdcghcjqBeGExfBX4K4hWn1cYnmPACgYiMQYl6V8
	r8eey+A7tGOuUNha1OtyOZMAb6eRWl3YTUgQhq03yfAXm26YXVsyzgnh80Kmahk7wMpzMT6eYydFx
	x8oaDF39n3re1vJHtnAqYrILTR/CvDEWbjVH/UY6NRu7k7xXD1hgIuzka+v08wNvk9obnqFf9gjVh
	Myq7wKRVxmbMjork9AnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNDOQ-000iSQ-AC; Mon, 06 Sep 2021 12:06:30 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNDNY-000i03-Ge; Mon, 06 Sep 2021 12:05:39 +0000
Received: by mail-ej1-x62e.google.com with SMTP id jg16so13098507ejc.1;
 Mon, 06 Sep 2021 05:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1jSWxQD3ZakGUw6t3PqAHw4n2IXaSLh4ZsA1sASlt9o=;
 b=kIMOOeXQwVNBwDAWMehjWUBA1cnNcm/6CMVB3Y2jTJNPEMNK/XYcBwrw9aSidnM618
 bwC6jQp7CqXN/7J2CJtBh3byoNxv/o4m7kipxXXr3X/8O0QjIZwaI9gjDskvKOmJPSq7
 Un0Sx3lAYjfM88gkbhtVC4Au1c1rLuYIe1WMW5law0+SKko8xarqNsEIuCS5BbT64150
 jYzKIpmlkhsRwcd4wL1elJm9btpPX3NrfLE1OSCt5Ob2zT9Mp1PAmFRPAsDMGnZGlVOg
 UbTk1n2DMBOoRzKqVot5eggpLzg/dV7JTqjD3hodrGZDbmIm97dn/VNJLi1zahE9gV8l
 AUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1jSWxQD3ZakGUw6t3PqAHw4n2IXaSLh4ZsA1sASlt9o=;
 b=DDEVCmUgJmfjoyetEOdKnntR4PZishKpIEe3dOsXTwTwJb4nnnO3BTTVQiCu/Cy92n
 cvJWJ2OR/N77DRs9eCfxVpFMqzYaSZHq7OxUv6JEnYYBMtOo/zIP5LY28plj8XNb/HCl
 Ec039PK9qTgCtl7wkD6e/l9l1lXagUSSYNmQtj/PJNAdAed85Cfyfw6cN59R3WEBUADF
 Xd2n9/ti8ru3Pmb+91XFCClJytCxQZMlSQEJrDV8yv0qPflvVSrm0GfvLT4ZHucca8Yi
 SdJ3ZKqhsTCZzEem/wjTwhHko97wh/FNjkEqBtz7GjJxwX8xQeJulaaYbA9GSIblRxas
 PCrw==
X-Gm-Message-State: AOAM531JSlWkdTzDc2Fd7SQOKZCdIxOF/3QXvnhzN36d+/jvILSn7Lob
 AhsezGBd+Sc4EA2FGlrwXQA=
X-Google-Smtp-Source: ABdhPJy/cwcqasiNdqkpW55WGrmKCcwe3js4BRGA8fMxCasOSDxAnSs05DUepDolnR8WgP9eoctUOA==
X-Received: by 2002:a17:906:3497:: with SMTP id
 g23mr13250953ejb.85.1630929935384; 
 Mon, 06 Sep 2021 05:05:35 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b8sm4536954edv.96.2021.09.06.05.05.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 05:05:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 4/4] arm64: dts: fix resets in tsadc node for rk356x.dtsi
Date: Mon,  6 Sep 2021 14:04:04 +0200
Message-Id: <20210906120404.10005-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210906120404.10005-1-jbx6244@gmail.com>
References: <20210906120404.10005-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_050536_595100_F248356C 
X-CRM114-Status: GOOD (  11.36  )
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

In the rockchip_thermal.c driver we now get the resets with
a devm_reset_control_array_get() function, so remove
the reset-names property as it is no longer needed.
Although no longer required in rockchip-thermal.yaml
sort tsadc-apb as first item.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d89831bee..2dc997eff 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -837,9 +837,8 @@
 		assigned-clock-rates = <17000000>, <700000>;
 		clocks = <&cru CLK_TSADC>, <&cru PCLK_TSADC>;
 		clock-names = "tsadc", "apb_pclk";
-		resets = <&cru SRST_TSADC>, <&cru SRST_P_TSADC>,
+		resets = <&cru SRST_P_TSADC>, <&cru SRST_TSADC>,
 			 <&cru SRST_TSADCPHY>;
-		reset-names = "tsadc", "tsadc-apb", "tsadc-phy";
 		rockchip,grf = <&grf>;
 		rockchip,hw-tshut-temp = <95000>;
 		pinctrl-names = "init", "default", "sleep";
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
