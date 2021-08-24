Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56207C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:10:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E69A66125F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:10:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E69A66125F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WD9hXsNJXnuDWAOx3WarJ7sF5Dhjgs6F8+9JbDjYY7g=; b=D+nB701aj2+q4d
	afn3zjxyOVL9iRhCAvPkv3dOqR0rOR4W47JIXoxAT3o+owu3gptIc7NPN0TRPxfYarmShs9/Wn/FI
	LY49Kcug7+r+RnoVBsnT2tsAT7MRwmuJshpMfh25Gcb5LMVNmaH8hP9WF0q3J0MBwK8EIlScVolsz
	ReQsHD/JjAw1XaSu2T7T7W701FV8m+jkhF9BX5RiQtAOTU/ZRqvej8M0bYZBzDnX+cbYOs3jJObeY
	c/1s78ItybJuhCNIdUjauRSidvpoektFA2C/pgkjhfuvF/BxZBT7/zHw5TlAAr02f+tKDbdwOyoXR
	cYKKyZo0BoSGGCKJ5iQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mINlz-001Usn-HP; Tue, 24 Aug 2021 04:10:51 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mINlL-001Ucf-Nv; Tue, 24 Aug 2021 04:10:13 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 a20-20020a0568300b9400b0051b8ca82dfcso21501798otv.3; 
 Mon, 23 Aug 2021 21:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CTuSMH4A7Ffb6ZlHMh0V3hg0lEYSc6xST4UQtOrkdPg=;
 b=nsgbg02JwlShAq7cJxYmyQ7JCCMcGcs2PR8DjNTKpXe47zEnHcVc1RyfGYqVzTqDXi
 zIZexFaeFYSNO3E2CuhLjOVmBDCLAvwZRLP0A+qCL5ElIDk4kgx6YJrzjml50QNIURQ/
 +mXUInDNMNJZr/O3v8qn3ZlPdbZepdyA4kwxb9bHgirjV7074510jc25WH0/JOWvxk6E
 +Vg/pahCot7bpCPnxn3cR11gMDIYTTnNrJ9tm/iAW9ZlBoIYuWQCXCaRyzLtQXxWmFmq
 pIvyoBJbXFF56eNbEjMSTyO29Dk1O1BxLXJAschZsGB9pYT1oD2w9AqR5seQ74Io452B
 IDyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CTuSMH4A7Ffb6ZlHMh0V3hg0lEYSc6xST4UQtOrkdPg=;
 b=pWsOQVOBPs0bNi6b0oyvdrRisLXS/ksNC8nwAGYj4TcIjStai/xLAUFAWfFWAgXa29
 f4MakF2ihFazK7xaomc52tyDgxYhXtDSGfphgk0JvaFGBJMvrFHTxF7snTJjUPCTFYZf
 eWEOODlVw7wh5n4waG+LjCZH5hctZhu53YoGkYBfNV9HyUy6uvmCQZg+X2zON8CY36Xp
 Eyu7wVfMIKMTsH2VblWx9GB7XctfO9wZShe9sMfmHWOCbQNZSiHb2SKF8nRyQ/bhBazl
 0veq+ctUTWL0uPrRwbekQOe7xv4r1zDGEMk7D+nv2jfecpCHyrPWpHlQqo7WhSqL6CK5
 9HwA==
X-Gm-Message-State: AOAM533uxeWG/87Sic/5pAnnEQ/3T42G5ORwAbViGn2c3xAOLHAW6cG0
 9X+ggbhA0ONJkBB+aFoJXZ/45Fdbw0o=
X-Google-Smtp-Source: ABdhPJzqzGy4ZoICrUJBkf5gxu6S47uboiH2IPeK8+Or3r4y4ewf+rFxOxSEHvZY+AaKxiY7KtWy+A==
X-Received: by 2002:a05:6830:25ce:: with SMTP id
 d14mr30899783otu.87.1629778206646; 
 Mon, 23 Aug 2021 21:10:06 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id i19sm3922818ooe.44.2021.08.23.21.10.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 21:10:06 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go
 Advance
Date: Mon, 23 Aug 2021 23:09:55 -0500
Message-Id: <20210824040955.29112-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210824040955.29112-1-macroalpha82@gmail.com>
References: <20210824040955.29112-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_211011_867589_4F5B0B12 
X-CRM114-Status: GOOD (  11.68  )
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
index 7fc674a99a6c..aff8d0768c5a 100644
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
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
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
