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
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4165C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:06:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74F4E60BD3
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Sep 2021 12:06:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 74F4E60BD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBB73+lbAHTlWuBi/E0dP/mnmyqfeTMh/fp4vcrh4ps=; b=q3K6jntXdmomMh
	KLFRGqnrMu0FWfw4evON4k69NkPlPaLU7CImNGDO7GoQm2v7FrV5FDdQIwpwGZ8Z75DmamaFvqhxS
	ooyMwcTKqzmweevxmjYHj7IhNvXvSHFLcrcuveQPsBCpnYp/jr5JpRi/tQ8jMxi33ScvnK9TsyKlX
	rFC7JV8JTeN0P3x8zohK9gh1nWbG1gJwB4bSP1ibq+RDW4U5ydcXg4jz8IB3zZnixJQqahcJUhK8a
	7bjMswopesfeezxLlcIIy3P/qCwYLaLO67SdF0OiKEwbIYPL5qivZZ+KT58UD8PU1kkAd4f6V6RFY
	2ZlRAMNs+NJMIlC0Ul2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNDOR-000iTL-3L; Mon, 06 Sep 2021 12:06:31 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNDNY-000hzs-Ia; Mon, 06 Sep 2021 12:05:39 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a25so13084321ejv.6;
 Mon, 06 Sep 2021 05:05:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dFqmTVUbeZj2dIyftamndsiUfBvI+zNuJcQH5/mATKY=;
 b=LBS0SXzwvpin1Biq/q0ftlmnWh0zGEE1fKFGvyQ5WAUvd0bQsduKCHapP6nJ0RdFkI
 tddeFbrK/BfJQRfzqfNtF3WmzZrYn+kUn/JnXmaSrFiaymoCqQ7K8SsENIbZlTOrGxed
 kaEcBvqVPkDeXXMFKc7tMTgp/wQeO/ld+7psLUNyz6Ie6mVs4W7RWv+egx02PNcNwFLH
 weICMOQ3O7vj7o0HaVl4DVZ17vI9Jm+oWPLisK5qo0WdFvo5Lpf4eXpim3EdDycCBK8m
 5otJweZJVd2cHqFvpOnGzZQ9CteLZu4NEjmyje/U9X+wiKtOeegScZvOHm/+1VTLsFx2
 2+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dFqmTVUbeZj2dIyftamndsiUfBvI+zNuJcQH5/mATKY=;
 b=qXFL5naoF8I3xZ6/6g5jhTJZh+9O1t6qvmqFpXJ80RQJoZlW2M0JbPotgEXVQ7XItP
 SzuMzTazdjhxW5NLsrq+NrTd/u+5K4oY79V9WHdhWkpKAodEw/IF+FjJXV8A5vyCN3c5
 UJbj/xLXiDrpV/ri7snKOYdYMlSNfhHNpVImviBTA9RQhyoyHXuml/KNLWdmCK9YkMxj
 OsC81xwBhBOwx7YkhCGW6SNSZW3L16wBKhN5PaiaDnac5VAF5hYZBaoRVHDgX6E1+61B
 2DZXSWs9/U1kcUPmPsPH+bSnslX1eZ6GDxC7cdZCBHgwbXaRDVdN5OAfgGyHOkV1zqzt
 Yo0A==
X-Gm-Message-State: AOAM53020D5aWd259dr6dfZZ/5OyaOhxl+yFFSO5MqFBotmbO6ykJegH
 P1x/GyZ7c5/MpO2MddoPOdE=
X-Google-Smtp-Source: ABdhPJzuZrT4cssp2j/I5kbPw5P3C98PF8K3pfsZ+kWdFZCSGpUz5JGgx2sJuCryTTDwMkNg8BCbnA==
X-Received: by 2002:a17:906:1913:: with SMTP id
 a19mr13120478eje.390.1630929933968; 
 Mon, 06 Sep 2021 05:05:33 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b8sm4536954edv.96.2021.09.06.05.05.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Sep 2021 05:05:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/4] dt-bindings: thermal: remove redundant comments from
 rockchip-thermal.yaml
Date: Mon,  6 Sep 2021 14:04:02 +0200
Message-Id: <20210906120404.10005-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210906120404.10005-1-jbx6244@gmail.com>
References: <20210906120404.10005-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210906_050536_663067_6C206C33 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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

Remove redundent comments from rockchip-thermal.yaml
Sort compatibles in alphabetical order.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/thermal/rockchip-thermal.yaml       | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index ee104e451..6ea6c9f7e 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -12,14 +12,14 @@ maintainers:
 properties:
   compatible:
     enum:
-      - rockchip,px30-tsadc # PX30 SoCs
-      - rockchip,rv1108-tsadc # RV1108 SoCs
-      - rockchip,rk3228-tsadc # RK3228 SoCs
-      - rockchip,rk3288-tsadc # RK3288 SoCs
-      - rockchip,rk3328-tsadc # RK3328 SoCs
-      - rockchip,rk3368-tsadc # RK3368 SoCs
-      - rockchip,rk3399-tsadc # RK3399 SoCs
-      - rockchip,rk3568-tsadc # RK3568 SoCs
+      - rockchip,px30-tsadc
+      - rockchip,rk3228-tsadc
+      - rockchip,rk3288-tsadc
+      - rockchip,rk3328-tsadc
+      - rockchip,rk3368-tsadc
+      - rockchip,rk3399-tsadc
+      - rockchip,rk3568-tsadc
+      - rockchip,rv1108-tsadc
 
   reg:
     maxItems: 1
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
