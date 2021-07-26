Return-Path: <SRS0=Sv+h=MS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04AC1C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 19:02:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C9CBC60F11
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 19:02:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C9CBC60F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbVTMhZtjhqXnJC5+btx/AHTUUl30bOv3yM7uOpX5d8=; b=4CdYJ+p2u/zpZ0
	T+KMW2wyhBdPusBECH/YwixYXdjLhffJaoaQY6xW6LirFgX4Yu4p1NqopgdLKvw2SUUW4m9EwX4So
	tW8QwuPYtx1/ZMculYmHzB7Na/hFkf9M7YBAyvZJpwr/S388XILUs7GejUF7YOMQS8EAnNc3WN5T5
	iY4Ypm4FSw1EOv/ztaiQlLPrKPcWU9gLQJWhheaB8jZ55rLZFIc4QU73nRWiMwNw3SRN3KFnV40QL
	6vI+C50VMcC1+tpSwtE0vwWjOJMkiy7oDGxIyP9MqwdXMeuatO+bCCh83SK8yfKHdrjJaoNrorop8
	WE+d3v82tQyeXbe4IM3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m85rw-00CJPq-Ev; Mon, 26 Jul 2021 19:02:28 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m85rI-00CJA5-EP; Mon, 26 Jul 2021 19:01:49 +0000
Received: by mail-ot1-x334.google.com with SMTP id
 f20-20020a9d6c140000b02904bb9756274cso10992635otq.6; 
 Mon, 26 Jul 2021 12:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vZfHRgT3Nz1lZYd7karZdl8CVKgaGTnZLjBxunPxNVw=;
 b=PNOfy3Hm9aXJEig+isQo3IM60LQrOlNBuPH4HHe+eTLZyHaDKOpmKItM3UUwwdXU8m
 PxJm3GU3oWHf2xM/DjGTjUEya1YOAXwdEjPhN9HvcV9eP7aJDCWmQYABzi8E/zaDcnfn
 Fv6ZGZiJNuRIW8g/7/KZdFTL/0VuZLZDhnWqXKgRjk3rsPG0ZD9sgNeXuSSaZLpf4z3u
 BrrefWncHg+temdILD1BkzmCOis1pBWbWiCSNdf0XSZQdsIkwlmJmS6cXXbSfdiGLtyr
 Jm+g7mCrzI1RrNw9y1E0B6LxCFpiWzhkyQN4mtzjIToJYG5rpbXNyl1biRIQItMtDFaR
 /29g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vZfHRgT3Nz1lZYd7karZdl8CVKgaGTnZLjBxunPxNVw=;
 b=aHNyVxdkPM0bmGYyGINP1LfXoNKpJmB+8S+8PhjJ0a/miwhJGSRAOcmsdL611Doqzx
 DuqX40OnyI8vWCoGNdK7+DvVI8nrWYL7t2elB+vGWIYfzcxbPj2SXmh2Ta/plkMhoFqw
 Eip+rL3g/OhaLHdOIyCi1W6bY6gW6/NaCqJVc6/mJhJXXRzP4zFycOR8v1kYhiXIy24K
 wFdGNYR79+sseWnVPv6XnXqQPw8SqXRV1qxpvM2VDtJchv0+sFq/R6hbKaEGTkavfOVk
 frdYQ+lYE6v0TkcVtrqIUveK7lezZyTj9W6bcYgrjz12TaQBdgm5oC9Zsf3edFGNI0hz
 2lIA==
X-Gm-Message-State: AOAM5318aqpVjJ67VLlc7Nqig7uL3XVqN4h6qt83+xRz/5FO99jxhQsZ
 vmofkem+7+9KagYBMwCwakFvCSGgInQ=
X-Google-Smtp-Source: ABdhPJxXNYp3ueyrRFGE3rLDg2ezTp+nMBK/elezfPDGJqQc4RY2bdb4DQU7t87TXRF3yoyeLwgyQg==
X-Received: by 2002:a9d:550c:: with SMTP id l12mr1495048oth.169.1627326107547; 
 Mon, 26 Jul 2021 12:01:47 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id v7sm106610ooj.46.2021.07.26.12.01.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 12:01:47 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC v2 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go
 Advance
Date: Mon, 26 Jul 2021 14:01:30 -0500
Message-Id: <20210726190130.1973-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210726190130.1973-1-macroalpha82@gmail.com>
References: <20210726190130.1973-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_120148_548691_8F1FE8AA 
X-CRM114-Status: GOOD (  11.86  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the new rk817 charger driver to the Odroid Go Advance. Create a
monitored battery node as well for the charger to use. All values
from monitored battery are gathered from the BSP kernel for the
Odroid Go Advance provided by HardKernel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 7fc674a99a6c..333bcf8da450 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -52,6 +52,25 @@ backlight: backlight {
 		pwms = <&pwm1 0 25000 0>;
 	};
 
+	battery_cell: battery-cell {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <3000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <180000>;
+		voltage-max-design-microvolt = <4100000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 =	<4106000 100>, <4071000 95>, <4018000 90>, <3975000 85>,
+					<3946000 80>, <3908000 75>, <3877000 70>, <3853000 65>,
+					<3834000 60>, <3816000 55>, <3802000 50>, <3788000 45>,
+					<3774000 40>, <3760000 35>, <3748000 30>, <3735000 25>,
+					<3718000 20>, <3697000 15>, <3685000 10>, <3625000 5>,
+					<3500000 0>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -462,6 +481,13 @@ regulator-state-mem {
 			};
 		};

+		rk817_battery: battery {
+			monitored-battery = <&battery_cell>;
+			rockchip,resistor-sense = <10000>;
+			rockchip,sleep-enter-current = <300000>;
+			rockchip,sleep-filter-current = <100000>;
+		};
+
 		rk817_codec: codec {
 			rockchip,mic-in-differential;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
