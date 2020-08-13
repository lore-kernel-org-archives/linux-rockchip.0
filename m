Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4624AC433E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 19:35:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1BCFF20791
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 19:35:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xTgyO0Cy";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="tBBT5t5o"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1BCFF20791
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WKj2GclqNjEpohoyv8+ooDjh0pBV67uEC+RBK+l2NwU=; b=xTgyO0CyZ9GE7xZl87q7tcKe/G
	TEbBJTcmPMpTxX+MQqiTyJB27JO8FwwcMJVTyFZNzEkUTD0qAKV0lkY/kbss6x3Zd+RLP6syA9PYB
	kVW4RMAEQeeH4fS0Eg4WkdS7CbtGJVXdfxijec23X0bOz/PJssvRlLynyVKLBiV8QU/5Yn6cTIt78
	tWIgrskSwVqakUbYFbzhwnxgJmUMVsNRa/P6GAQzYctZIsG75LlWo98robauhRmT01+sxdh49pmJB
	8Qw40b8h1sllb7cxXJFPQX7HB1fAUY+fpg1yH49z0q2xzVSEOvWWoN34Ha/G8e5vQTfNoYXltPFT1
	AYQQal4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6J0K-0006gn-Ph; Thu, 13 Aug 2020 19:35:12 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6J0D-0006f5-0y; Thu, 13 Aug 2020 19:35:07 +0000
Received: by mail-ej1-x642.google.com with SMTP id g19so7408038ejc.9;
 Thu, 13 Aug 2020 12:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=12087FTp/9siWmAQYdka9CL+BX7dl2z7W64nVKUq+mY=;
 b=tBBT5t5o2REJgDO4g+TrwhTLSetN55ivpIQFldh6ISQntwzdiBKYqnJxQH5O9o4+CR
 DHui/QjNFZbzkEZQMxIvtUp+mrz3nMQCrLHivjoFbxWpf6W+OqMwXS17teRDeRA6u5kT
 4e0RgfFQiCS1tuB7wXdr3iK9YKx7sT0jsODiIzf0GtKyemv+f7XpDkyxYQG9rN6/+7lS
 egVZtnjLpyT0lvDRpHQVB6ONg7Ydnybksd21728Cw+WlQDTUHIKi4kAZhFp6Tlf6AdKH
 E3cF0aDwhHoXp7FaDSnIf19s9m7aYOMnYJN6gBi+t4gjyfmvoIz6/6uT1azYh8XyQq0C
 W64Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=12087FTp/9siWmAQYdka9CL+BX7dl2z7W64nVKUq+mY=;
 b=i4QdWbfSsMxtru3Z5GKIp4kk78+V4F1W9eNdlyP+IjpHGPaXce6yiVsDlqidO6h8RC
 6zECunBwi8LRLpbq/VMYXqZG20ZT8cyEgtXQBQuj7ZTbVAHQWjUs87YBfzvGrWijk99X
 vLfBz4XCb09s4I2zT/qo+ICOs7nSOouPaQV8kNJzFLK33fSrRsB+Jly55pPbdAsez9aN
 YpgJCAjF4Dc457+297PaMpTHSUKIdtpRg1Tcgg06u23iG21xCkd039Lw5lJUHnnWW+FB
 ayjnwJREzfmz1lieTtYjTF1D4uIfF0i2b60NWFpgx54C+3YIOC8DkaqxuoNNs+dxa7AB
 yF/A==
X-Gm-Message-State: AOAM531Gfw50RnQ2IJJNzjglUfjgekDyLuRlP0Cj7fUrIJGXWW5SvqlY
 FOrbJlU7NWRQ7GqBUd0Jdkk=
X-Google-Smtp-Source: ABdhPJzxzJWAiaIXjEwIoz/ywgVFx1eH/wgrFrgxLMsQw0GYqiJify07ZgB3889gG5pzyXz6wyQ0/w==
X-Received: by 2002:a17:906:1a54:: with SMTP id
 j20mr6601465ejf.102.1597347302920; 
 Thu, 13 Aug 2020 12:35:02 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d9sm4120603edt.20.2020.08.13.12.35.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 12:35:02 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 1/2] ARM: dts: rockchip: rename and label gpio-led subnodes
 part 3
Date: Thu, 13 Aug 2020 21:34:54 +0200
Message-Id: <20200813193455.19772-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_153505_196221_C10543DF 
X-CRM114-Status: GOOD (  13.70  )
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

Current dts files with 'gpio-led' nodes were manually verified.
In order to automate this process leds-gpio.txt
has been converted to yaml. With this conversion a check
for pattern properties was added. In part 3 rename and label
gpio-led subnodes with pinctrl. To make things equal to other
dts files move pinctrl below the compatible property.

Fix with help of the following rules:

1: Add nodename in the preferred form.

2: Always add a label that ends with '_led' to prevent conflicts
   with other labels such as 'power' and 'mmc'

3: If leds need pinctrl add a label that ends with '_led_pin'
   also to prevent conflicts with other labels.

patternProperties:
  # The first form is preferred, but fall back to just 'led'
  # anywhere in the node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/
leds-gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036-kylin.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index 7154b827e..bf808cda6 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -15,12 +15,12 @@
 
 	leds: gpio-leds {
 		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&work_led_pin>;
 
 		work_led: led-0 {
 			gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
 			label = "kylin:red:led";
-			pinctrl-names = "default";
-			pinctrl-0 = <&led_ctl>;
 		};
 	};
 
@@ -367,7 +367,7 @@
 
 &pinctrl {
 	leds {
-		led_ctl: led-ctl {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
