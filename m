Return-Path: <SRS0=6tqp=BV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09E0AC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2020 12:32:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C39B620756
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2020 12:32:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="AHD3XeOs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C39B620756
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6v3v3q6BzdkNvwsWnwrn9VOkcqf1I9Qd4H0g2NqNhAc=; b=AHD3XeOsA8AIYzkjDVgRRez7+N
	16VqEEAme+D+gqA2nR7bGlqetyNHUzovsg5mNztwAHCiYe9oxXWtis6KjFMxBHvI/RoRYL70Tgdzw
	+rCVYmi0w2KwIsplkBNV0eokMuL1jAb+luSsIWu7Vwk6ymt/7EEW1reCCu8K2bG4Jv1dd/SPIChxO
	MsXr85HImQ8KZYOoGhYCE338MtMoJrjfiGxmt5LKX4E1s5ROOoBXmMqSZLbyv7onG3IpzqXkD2ckJ
	h8Twhdye9oevb43sTJkqWt3CnAXikwLiGcuJu3KaabdcrnNxVCC1qfs0vjqGp5DvbAaSNhzhTbZnN
	CzukctVg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5TRe-0003mU-RP; Tue, 11 Aug 2020 12:31:58 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5TRZ-0003ko-0f
 for linux-rockchip@lists.infradead.org; Tue, 11 Aug 2020 12:31:58 +0000
Received: from localhost (unknown [192.168.167.209])
 by lucky1.263xmail.com (Postfix) with ESMTP id 6A8D5EC6FA;
 Tue, 11 Aug 2020 20:31:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31766T140662640989952S1597149092697840_; 
 Tue, 11 Aug 2020 20:31:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ce0762416ef844ab3f3891c498f4d4c5>
X-RL-SENDER: finley.xiao@rock-chips.com
X-SENDER: xf@rock-chips.com
X-LOGIN-NAME: finley.xiao@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Finley Xiao <finley.xiao@rock-chips.com>
To: heiko@sntech.de, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org
Subject: [PATCH v1] thermal/of: Introduce k-po, k-pu and k-i for a thermal zone
Date: Tue, 11 Aug 2020 20:31:15 +0800
Message-ID: <20200811123115.8144-1-finley.xiao@rock-chips.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200811_083157_101849_9DA90FE1 
X-CRM114-Status: GOOD (  13.40  )
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
Cc: huangtao@rock-chips.com, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 Finley Xiao <finley.xiao@rock-chips.com>, cl@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
Message-ID: <20200811123115.wi0XSsAJEpm6e7490l8RH24vCeiPTOXfJk0CWYhFsno@z>

The default value for k_pu is:
    2 * sustainable_power / (desired_temperature - switch_on_temp)
The default value for k_po is:
    sustainable_power / (desired_temperature - switch_on_temp)
The default value for k_i is 10.

Even though these parameters of the PID controller can be changed
by the following sysfs files:
    /sys/class/thermal/thermal_zoneX/k_pu
    /sys/class/thermal/thermal_zoneX/k_po
    /sys/class/thermal/thermal_zoneX/k_i

But it's still more convenient to change the default values by devicetree,
so introduce these three optional properties. If provided these properties,
they will be parsed and associated with the thermal zone via the thermal
zone parameters.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
---
 Documentation/devicetree/bindings/thermal/thermal.txt | 14 ++++++++++++++
 drivers/thermal/thermal_of.c                          |  7 +++++++
 2 files changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/thermal/thermal.txt b/Documentation/devicetree/bindings/thermal/thermal.txt
index f78bec19ca35..ebe936b57ded 100644
--- a/Documentation/devicetree/bindings/thermal/thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/thermal.txt
@@ -165,6 +165,20 @@ Optional property:
 			2000mW, while on a 10'' tablet is around
 			4500mW.
 
+- k-po:			Proportional parameter of the PID controller when
+			current temperature is above the target.
+  Type: signed
+  Size: one cell
+
+- k-pu:			Proportional parameter of the PID controller when
+			current temperature is below the target.
+  Type: signed
+  Size: one cell
+
+- k-i:			Integral parameter of the PID controller.
+  Type: signed
+  Size: one cell
+
 Note: The delay properties are bound to the maximum dT/dt (temperature
 derivative over time) in two situations for a thermal zone:
 (i)  - when passive cooling is activated (polling-delay-passive); and
diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.c
index ddf88dbe7ba2..b2a9f92cd8d2 100644
--- a/drivers/thermal/thermal_of.c
+++ b/drivers/thermal/thermal_of.c
@@ -1089,6 +1089,7 @@ int __init of_parse_thermal_zones(void)
 		struct thermal_zone_params *tzp;
 		int i, mask = 0;
 		u32 prop;
+		s32 sval;
 
 		tz = thermal_of_build_thermal_zone(child);
 		if (IS_ERR(tz)) {
@@ -1113,6 +1114,12 @@ int __init of_parse_thermal_zones(void)
 
 		if (!of_property_read_u32(child, "sustainable-power", &prop))
 			tzp->sustainable_power = prop;
+		if (!of_property_read_s32(child, "k-po", &sval))
+			tzp->k_po = sval;
+		if (!of_property_read_s32(child, "k-pu", &sval))
+			tzp->k_pu = sval;
+		if (!of_property_read_s32(child, "k-i", &sval))
+			tzp->k_i = sval;
 
 		for (i = 0; i < tz->ntrips; i++)
 			mask |= 1 << i;
-- 
2.11.0




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
