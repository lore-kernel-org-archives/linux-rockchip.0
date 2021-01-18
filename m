Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C27C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 18:01:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A59122BEA
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 18:01:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A59122BEA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0rU+Uua4EZ/h3+xfgQ31Vqc+laE9Lp0O7K/OPqae558=; b=zNQGRpjJq5dR1Jg0BgLyhKWvJx
	fqB3UFTtP8k7nQdnR/KExI3SLlFLbb0vDXdPaBI4qai+FZjeP0B9Y9xeAmA/SoA7iltMbgHL9kkf0
	jAAUD5cH7QYSUXO7scTFFlltHY8o6A5ZWTD3O+2VNTLoCfq1sTyPk8BNpEr3eIpKKqetmn66Mv8D5
	MKWpfo8GKdZ2+WsZewd9GwK/uaANYCcJ7Sr3Fn51j0R77fzCQZYhqQTmlp2fB3WbGg6S10CAhtmtv
	P8yTbacAnd2wG6naVNvsOMO8BLMON8lfjtY3s+q6R1/qaXQKnijrponv8nxq8KFrI849Z/xM6QN5G
	2pyCPPbQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Ypu-000581-Uz; Mon, 18 Jan 2021 18:01:07 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Yps-00056z-Dv; Mon, 18 Jan 2021 18:01:05 +0000
Received: by mail-ed1-x52c.google.com with SMTP id p22so18553213edu.11;
 Mon, 18 Jan 2021 10:01:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=t9C6m1Bp+7ojBwZjrpoSk7AZP13lnZCWBFDi9dyawb8=;
 b=T7xA2Fg3WnborDBN+VfiJCWwtJa4Txobvi+h19s7rwTI+pMe/bLXTKA7WcQGuek0NE
 9+Zs5map31SnyxvvGzYCLuYSUejNcsqH0V9lrwTwnjPeooJmRmhZSUC8kS0tF6A0ZsNt
 k42Twv+5qGejIVQ81vsP34cyAkM2jCqSyvdWQ6uvjBu6vPJUbIBx1i8A48vgOO07Qqes
 c6kpRHIfkkbfCxtcG1vZ4JV511Qpj2vTt3Tej5G7OD6SrxD98wt3JTcFi3eA8EnzXZqN
 GJq3AssRXz5/suu+SiHslnNh3Ft5zZeiuQz+HbaOXKcj4RQIRtin76gfglix2V9Fq/EB
 q7Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=t9C6m1Bp+7ojBwZjrpoSk7AZP13lnZCWBFDi9dyawb8=;
 b=Gam4tpNE5CMGBAHKa7CL9WqISo9Wz6GzCTdykmo1Hhwyychgl9mKJ8wQd34xBeECZe
 CPUkGZ/E9nJvCW+QWZy2uSW/MwfKnNMXhbQE1DzetW0oXwfbD5nMv6n4zsSeuDxX/zFf
 Eo2sBSnft5mMUUQUyNlHknYyX5O1aezTpaW30oP99sOtBVyXkKbsXk5BQ9A3GnIur1bc
 bXgG1s1Ak1irQY4qfTbBYQJ35TeTeTbEeb37Wur6yvdILUddEpMeNA/TWM1XT1DSUttH
 Fi97y8ZWekM6B7zx3qk3H+Oa+NoV9WhcQG7SBhNrmzdaM5JvQ7HGnIM66mGe4FNCEhux
 go6w==
X-Gm-Message-State: AOAM532XXvo2/YhAlThnhFJWkrunQDKC6hrSiluJ7ujXVxtBg3sv3m5Z
 +VU7uUJKma43LBlqRWxKlO8=
X-Google-Smtp-Source: ABdhPJwaKfyxX61XGB9UTG9bK8k96xqpEtLIU7WIxVaNUGPzsrB8xueLvnSEP0lvu/gG7alLl2UGWA==
X-Received: by 2002:a05:6402:50ca:: with SMTP id
 h10mr481300edb.181.1610992863042; 
 Mon, 18 Jan 2021 10:01:03 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id gb14sm9447178ejc.61.2021.01.18.10.01.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 18 Jan 2021 10:01:02 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2] arm64: dts: rockchip: cleanup cpu_thermal node of
 rk3399-rock960.dts
Date: Mon, 18 Jan 2021 19:00:54 +0100
Message-Id: <20210118180054.9360-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_130104_474785_FDB0670A 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The cpu_thermal node in the rk3399-rock960.dts file does not
reference &cpu_thermal directly to add the board-specific parts,
but also repeats all the SoC default properties.
Clean the whole thing up and fix alignment.
Place new nodes in the correct alphabetical order.
Compered to rk3399.dtsi the temperature property in
cpu_alert0 changes from <70000> to <65000>.
A sustainable-power property was added.
The trip property in cooling map0 points to <&cpu_alert1>
instead of <&cpu_alert0>.

Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts | 53 +++++++------------------
 1 file changed, 14 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
index b20774081..1a23e8f3c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
@@ -63,6 +63,20 @@
 
 };
 
+&cpu_alert0 {
+	temperature = <65000>;
+};
+
+&cpu_thermal {
+	sustainable-power = <1550>;
+
+	cooling-maps {
+		map0 {
+			trip = <&cpu_alert1>;
+		};
+	};
+};
+
 &pcie0 {
 	ep-gpios = <&gpio2 RK_PA2 GPIO_ACTIVE_HIGH>;
 };
@@ -125,45 +139,6 @@
 	status = "okay";
 };
 
-&thermal_zones {
-	cpu_thermal: cpu-thermal {
-		polling-delay-passive = <100>;
-		polling-delay = <1000>;
-		thermal-sensors = <&tsadc 0>;
-		sustainable-power = <1550>;
-
-		trips {
-			cpu_alert0: cpu_alert0 {
-				    temperature = <65000>;
-				    hysteresis = <2000>;
-				    type = "passive";
-			};
-
-			cpu_alert1: cpu_alert1 {
-				    temperature = <75000>;
-				    hysteresis = <2000>;
-				    type = "passive";
-			};
-
-			cpu_crit: cpu_crit {
-				  temperature = <95000>;
-				  hysteresis = <2000>;
-				  type = "critical";
-			};
-		};
-
-		cooling-maps {
-			     map0 {
-
-			     trip = <&cpu_alert1>;
-			     cooling-device =
-					<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
-					<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
-			};
-		};
-	};
-};
-
 &usbdrd_dwc3_0 {
 	dr_mode = "otg";
 };
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
