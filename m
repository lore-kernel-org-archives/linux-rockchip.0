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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C639C433E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 19:35:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C14F20791
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 19:35:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JZMC35iT";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jKwXyBMT"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C14F20791
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=41DeqY7GYWyDq5x01DbUHtrm/xB4v21CxR1+vrWcD5o=; b=JZMC35iTAIEAX0jXNRyjPH/jmA
	XNRI0VhBfEWFwbB4RfF28PpVb3iFLUBTk0wp0Z/4HBnTRB96EWg/X7gQ8MkZgqI48gbmgFAZo0BiV
	u11aGzGWDfJ50rSsqFGNNg6Jc+3YVCwq5cy0HuENh3BqlsHAmcozBjRlAQbbdCKL0Hl3UtGQw8gK5
	7mYTT/g4tIdpv7bm7z2p65CJWfMLk8nTquZAJW6wz19CTvUKWoQroIx43/0kaJ86Bd87vdRsL4GTV
	XHFIxQOzejdMrmdga/PjAUR37teqa0aat+nDwLwGZ5TPW5uJ4ivkPAWEB7yXfAG+DvOesv9qPMkwU
	23+2VvyQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6J0L-0006gw-6A; Thu, 13 Aug 2020 19:35:13 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6J0D-0006f6-4H; Thu, 13 Aug 2020 19:35:07 +0000
Received: by mail-ed1-x541.google.com with SMTP id cq28so5063833edb.10;
 Thu, 13 Aug 2020 12:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=WcafXLrIkW0gekBmKMIz/WZuLgKVGf9oTkGw44iFQAY=;
 b=jKwXyBMTVbZIwxzdDbn4XzuY5kWxoEjoYdq44qxpBinPI8Lu1BRbXnTJnVD8BChmT0
 /mYN/YwSOnd2eqZHkP7346RrvyWV3wxi4xUGFyRBdyQL6yn3yISjxVyrdTOmVv7JKhhL
 fZWnuRfbC9Hke/lnF5RnztabNgLVm58WA491/2fh3FGHhsspy/f2HaoZAIEqgkzg5Zqp
 p6EZk8zekcbsd7ftzRQO4HxyyEo9190CNX27eRNeUYZoij3Gw2fIcAytWP9asfAOFOhu
 4zu5kC7Psrt7JOIxeZbE4nbeXavSjoLmybZ71aKZVkQQE/E0kRV81HQSjQ+xj5dDLMAe
 yx5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=WcafXLrIkW0gekBmKMIz/WZuLgKVGf9oTkGw44iFQAY=;
 b=NbK2vikkm3GjMyGJSQEfeLWlb9UhP2iRsxGTDo0vDU788XSwZNrP3nnXxJPgN6I4pe
 ATY82dxGOK9qM+zUflBgA00bJkj8WMOJpyLEtqCjutpNSdNjaiAO8UJEVQXhxplgxXex
 vIWbZtTrjm/YmJ2fLhRsLFywHKxc88cXoDqy3hJN6tzk7abw2l9sOZ36ip1UryTnpI8V
 6EYkey8v/t5Y4oi4aASnAluaZPduQ6oi1hEFiZeu202RhjbfLnKgVl4bHNW1IXI5XQ9H
 msa4tPbkAOiERW6lB/QqB0usMICtsQ9r/0vlx1KrOhasoti9xmePMYFSXOVoHMY1mtyg
 30/Q==
X-Gm-Message-State: AOAM5321N8j7I4sWYLePB7cjhZrnu5/ZG0M58dWK+S/pHXjDMfjaJuw9
 oCMH/T7+zlrJu8mSGc5DtXA=
X-Google-Smtp-Source: ABdhPJwOrP1UE4L64efXQ7WL1gPe1+nNlyRA7pxgg+eGvVs0QbKOxTAEzQ6DYpByvhQ64IcvTIk/eg==
X-Received: by 2002:aa7:c74f:: with SMTP id c15mr1045294eds.331.1597347303796; 
 Thu, 13 Aug 2020 12:35:03 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id d9sm4120603edt.20.2020.08.13.12.35.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Aug 2020 12:35:03 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v1 2/2] arm64: dts: rockchip: rename and label gpio-led
 subnodes part 3
Date: Thu, 13 Aug 2020 21:34:55 +0200
Message-Id: <20200813193455.19772-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200813193455.19772-1-jbx6244@gmail.com>
References: <20200813193455.19772-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_153505_201303_9A18D253 
X-CRM114-Status: GOOD (  14.98  )
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

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/
leds-gpio.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 10 ++++------
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            |  6 +++---
 2 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index b058ce999..dd6be31f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -49,20 +49,18 @@
 
 	leds: gpio-leds {
 		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&red_led_pin>, <&blue_led_pin>;
 
 		red_led: led-0 {
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			label = "orion:red:led";
-			pinctrl-names = "default";
-			pinctrl-0 = <&led_ctl>;
 			default-state = "on";
 		};
 
 		blue_led: led-1 {
 			gpios = <&gpio0 RK_PB4 GPIO_ACTIVE_HIGH>;
 			label = "orion:blue:led";
-			pinctrl-names = "default";
-			pinctrl-0 = <&stby_pwren>;
 			default-state = "off";
 		};
 	};
@@ -256,11 +254,11 @@
 	};
 
 	leds {
-		stby_pwren: stby-pwren {
+		blue_led_pin: blue-led-pin {
 			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		led_ctl: led-ctl {
+		red_led_pin: red-led-pin {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 236ab0f1b..e29c8d172 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -42,12 +42,12 @@
 
 	leds: gpio-leds {
 		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&work_led_pin>;
 
 		work_led: led-0 {
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			label = "r88:green:led";
-			pinctrl-names = "default";
-			pinctrl-0 = <&led_ctl>;
 		};
 	};
 
@@ -275,7 +275,7 @@
 			rockchip,pins = <0 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		led_ctl: led-ctl {
+		work_led_pin: work-led-pin {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
