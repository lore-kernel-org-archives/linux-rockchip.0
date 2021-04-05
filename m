Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFC85C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 09:36:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7635C61380
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 09:36:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7635C61380
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BZPecrkjcIO5H6lGGfjFXn8E26E2mfc7TutbRRbGDHI=; b=EpsO57T25450iwq99mBNBVJw0u
	f73BccYT/0Hc8+0gsIkEBYMKOCn+at66auQk9GBHNnc2vZdkYx/ZkUxBgtfL3D4PAO7AZEFYeEgyV
	714lFQiGUsB7JFwMdhhv2TfOlFeeXklXu3+hdlRoVkC//u9Sr4+a0DtRcQE1mpVPeSJojZvn/iEVp
	eTV9hwjQCzBZKMvmHMIknx4iUgdlcfVjk5jctZC6pgKrz/GcNa0aJoTm5R7DRqjDhAHeIRe9cgyfp
	P0kBPF7vsbiL8Ipq/R2MXxRzY12fSzYILohzc3Ybn3DN5OVTzkI0mwacs6ggavvZcqjw7Elh5YaI3
	NyRNEw3w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTLeL-00H3sy-Lt; Mon, 05 Apr 2021 09:36:01 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTLe9-00H3rx-7k; Mon, 05 Apr 2021 09:35:53 +0000
Received: by mail-io1-xd2d.google.com with SMTP id b10so11411284iot.4;
 Mon, 05 Apr 2021 02:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pI6wpbyKAKJr8u5bwRwqEtouNzQI7RRIJklwhnvlD+8=;
 b=qYhBPrIYDODOgyjH/fwTrHzmBbfhghAoDTSO07D8sO4DPgCJMqO+4FIQel/6Acj7ga
 w8rKjw0Weby3rw7lsReQ2ku34RCaNYQ0bjN9Q9fBQx8sh4vN+jB4sDDxDVaksh5lqtH5
 7yphh8s4GT1sj4mHh5LnectyNus/NLFjTpSZOVq+QxADbXuauGmGrocv0dQ55PVbQSQf
 8D7Sq8CBgx6mDDLuSc1kgM3mVT0HgFSVG1KfX20I7igiIjWtNC0R2b5txkO+Fo8lx726
 dpSk8RqCPcbgxyK198DqVjnEfbEmH8YKjkpSLwaPFA08iu77PAm19nepstrEM6RMMt0a
 MyxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pI6wpbyKAKJr8u5bwRwqEtouNzQI7RRIJklwhnvlD+8=;
 b=GBab12tQkuVsroXJymVvTVYNZUNy03P0UanXFEWKpa2H++uJ+nOg6SLv8dd/AojzEA
 FbyT0W2pyp44l9hYlVO/lbTyLw/dJX0I2IzYImCic6LRbVvflGIh9hPh7gqHzu8Sn2Wq
 9FyaCG6R8gRXd0jRBLMKasjR4Q3ZC4wXLYHj4Xxuaj+8S8LqrRP0RJBjFHpMTQ8HlnJA
 uU+Oo1nLUBVVXmENNof4I61gBiHcueVWqk4whi4C5spGS3Q7s18KNiW98HyzYyUudRDq
 o3plnslxAzTVPVlIbdda+Wv5UyVIvv0ltRSVbL+hV8W8eSkOb/gmkW9DVDUbOj3YpY0Z
 qBKQ==
X-Gm-Message-State: AOAM530vfUYfNo/eMyeEQsnKCebPA5tLE3KAm3JulgNEZtLlV8R6XkmL
 dWwUAf9jpvmpDxesge+BzxM=
X-Google-Smtp-Source: ABdhPJxlqGpociWipndS2n4+rqakUS/MfgEBzRaZq0pou1XROcu9/kdMZvTqLQMhr+w5l+bxqQ+Mgg==
X-Received: by 2002:a05:6602:17cd:: with SMTP id
 z13mr19537547iox.109.1617615347695; 
 Mon, 05 Apr 2021 02:35:47 -0700 (PDT)
Received: from localhost.localdomain
 (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
 by smtp.googlemail.com with ESMTPSA id b9sm12027614ioz.49.2021.04.05.02.35.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Apr 2021 02:35:47 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>,
 Robin Murphy <robin.murphy@arm.com>, Chen-Yu Tsai <wens@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tianling Shen <cnsztl@gmail.com>
Subject: [PATCH v2] rockchip: enabled LAN port on NanoPi R2S
Date: Mon,  5 Apr 2021 17:34:23 +0800
Message-Id: <20210405093423.16149-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_103549_363578_EBC36FC4 
X-CRM114-Status: GOOD (  11.39  )
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

From: David Bauer <mail@david-bauer.net>

Enable the USB3 port on the FriendlyARM NanoPi R2S.
This is required for the USB3 attached LAN port to work.

Signed-off-by: David Bauer <mail@david-bauer.net>
[added device node for USB Ethernet controller]
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index faf496d789cf..18936b393d9d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -13,6 +13,10 @@
 	model = "FriendlyElec NanoPi R2S";
 	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
 
+	aliases {
+		ethernet1 = &r8153;
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -37,6 +41,16 @@
 		};
 	};
 
+	vcc_rtl8153: vcc-rtl8153-regulator {
+		compatible = "regulator-fixed";
+		gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&rtl8153_en_drv>;
+		regulator-always-on;
+		regulator-name = "vcc_rtl8153";
+		enable-active-high;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-0 = <&lan_led_pin>,  <&sys_led_pin>, <&wan_led_pin>;
@@ -265,6 +279,12 @@
 			};
 		};
 	};
+
+	usb {
+		rtl8153_en_drv: rtl8153-en-drv {
+			rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &io_domains {
@@ -364,6 +384,18 @@
 	dr_mode = "host";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+
+	r8153: usb-eth@2 {
+		compatible = "realtek,rtl8153";
+		reg = <2>;
+
+		local-mac-address = [ 00 00 00 00 00 00 ]; /* Filled in by U-Boot */
+	};
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
