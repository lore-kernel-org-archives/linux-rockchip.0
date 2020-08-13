Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD87AC433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 18:02:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BA0F20774
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 18:02:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TpBWpKB7";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="scDYOzoz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8BA0F20774
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OfARjVcZ0xli1yjpOowPR8Glqlo+kDLDxRxQ/cUu8y4=; b=TpBWpKB78/8h2PGYHAchd/rUwt
	58I96xS9/o/0u2LlFM+27MiEq8mKOVzvQVnF5o8n84XmMbqUupyEjVnMLE/B8TlJhvunwt35mR5rK
	I30heRIHwD0TKqp5xRWsIT/Wldv86H3Q5Dh/Gbt02YGSaTqMYUEnj3km7HX0EJsvMh4op1INYqHUC
	2iKHqFOeN6WA1w0Bw4L5L8pg+IqcEcG+U+kTOIGWEAItOi40Ms/4CLNtDjqGY8fnl1ao1n80ZZjT6
	rCaR6hjPjf/4NQAAUKNu9sAN46KY+Lh00naJ3cN/aHNE2K5xp0uTFGU29Rp376slX/L2kJAs2xAae
	J++YpfwA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6HZ0-0008KY-0C; Thu, 13 Aug 2020 18:02:54 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6HYw-0008JZ-0W; Thu, 13 Aug 2020 18:02:50 +0000
Received: by mail-ej1-x641.google.com with SMTP id a26so7170471ejc.2;
 Thu, 13 Aug 2020 11:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=k+X7I3Dm91g0VsSZVIvYnQK6r71BRXtlbeCFbFsrk64=;
 b=scDYOzozLAVzFpo2tbfIot2rR9/9IltAD0tuAFuZ7Q71nxeQbbQNCj22+aLiCqCYPQ
 InGoDHYkp1iGqDUMlAuLtnqGrF2877ip1R9rbaQtVY7ZEHNotMQOeppIeqM/PtfskRMU
 KvVpOm/lImRYi24xXHTpTqfuFjxCnrXVmFy36Hxa5+6bg5DIFQn4EIKo2SFkDYS3cFR0
 IlgXGiudJyvnzZqs9lkCGMFd2GHvaVbMNAzKHXl7FxW5q1b5y5IH+w2iRy3ZVWO+xnx4
 nm6tNRw9wlSmmNKr1mgK7BhWW7ucPcSE5m2hYkdNbbQ+i6zy5zNkZ6zEhSyYA2YD0fhe
 BoHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=k+X7I3Dm91g0VsSZVIvYnQK6r71BRXtlbeCFbFsrk64=;
 b=V3YmsgB157SZglNXwBTkUecmPHpVZLx+rqof/QqcQsHQShjd8Rf+ocoVArh8rP6J7B
 m0iywBWYBGOJpu4IqK0JyebfwIi2uO1FpLsPHU9WcUFjUjKAMK5Dmv+Uo1mEtyheAHU4
 gm/0AAR+yfrJq/1gZD0Dv+MZpQDaYywRHDXXpqnFiXt/n5P0lMyIBzrNR+1ejpcnENWT
 hDsrs8wQEuxtnGa7xsboIDC3IgpEdILEwhEUAiSDC9PgcvRODpHHwrv9uFg3UQzuYdvP
 sI9MHAfgqI4w9HyOaCtQ0JEe0AgfS0210VtQFM7SOuQq5Q88ajIGBpbjkO4bXbBWtaIi
 Fl+w==
X-Gm-Message-State: AOAM532gLtbNuuk6ha3QCtq592E/uTkxJpBTu6JABJjeuOixfgMczh9v
 hLJr0TsdkYTpPpBq1JzrtDNw42QAqGU=
X-Google-Smtp-Source: ABdhPJxM58xedodB7DOsuuj57AwE9aKU+sUl+gC9XA4qMAErBNxt/zB0UcR4VAT9G/tRXl9btm+U4Q==
X-Received: by 2002:a17:906:7f0e:: with SMTP id
 d14mr5917864ejr.400.1597341768898; 
 Thu, 13 Aug 2020 11:02:48 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ci27sm5131051ejc.23.2020.08.13.11.02.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 11:02:48 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: update cpu supplies on rk3288
Date: Thu, 13 Aug 2020 20:02:41 +0200
Message-Id: <20200813180241.14660-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_140250_059639_B2C3F2B0 
X-CRM114-Status: GOOD (  11.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The use of cpu0-supply for cpu0 alone is deprecated,
so add cpu-supply to each cpu separately and
update all existing rk3288 boards that use this property.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288-miqi.dts     | 14 +++++++++++++-
 arch/arm/boot/dts/rk3288-popmetal.dts | 14 +++++++++++++-
 arch/arm/boot/dts/rk3288-r89.dts      | 14 +++++++++++++-
 arch/arm/boot/dts/rk3288-vyasa.dts    | 14 +++++++++++++-
 4 files changed, 52 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 213c9eb84..8a3992105 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -81,7 +81,19 @@
 };
 
 &cpu0 {
-	cpu0-supply = <&vdd_cpu>;
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
 };
 
 &emmc {
diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk3288-popmetal.dts
index 6a5194039..160ed8b93 100644
--- a/arch/arm/boot/dts/rk3288-popmetal.dts
+++ b/arch/arm/boot/dts/rk3288-popmetal.dts
@@ -103,7 +103,19 @@
 };
 
 &cpu0 {
-	cpu0-supply = <&vdd_cpu>;
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
 };
 
 &emmc {
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index a258c7ae5..e5ba901c7 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -91,7 +91,19 @@
 };
 
 &cpu0 {
-	cpu0-supply = <&vdd_cpu>;
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
 };
 
 &gmac {
diff --git a/arch/arm/boot/dts/rk3288-vyasa.dts b/arch/arm/boot/dts/rk3288-vyasa.dts
index 1a20854a1..aa50f8ed4 100644
--- a/arch/arm/boot/dts/rk3288-vyasa.dts
+++ b/arch/arm/boot/dts/rk3288-vyasa.dts
@@ -125,7 +125,19 @@
 };
 
 &cpu0 {
-	cpu0-supply = <&vdd_cpu>;
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
 };
 
 &emmc {
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
