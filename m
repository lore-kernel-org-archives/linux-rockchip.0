Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39D1C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 20:38:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CA5C611AE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 20:38:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5CA5C611AE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SEJXI0eY8xfHbfJjkiGwYZTwtvAUSvn9CsXT+Jg7zlI=; b=f1T0Bg7fdeWQBJHL8yrsPo5kY
	rTsuTAqkURSt/ptw2QxV/+q5Ifj9T/vv5X+PEgR9QgOlbaYiQXcfYQmbAJHDOqh/NAq0gH05RVfEE
	Lyrl3YXEyTIYFe7fkkgEp0fC+B3jB7aLg32+ONY+AitPpO18lwaAcqXMC1RtL631O6PU772XpqFq2
	n0HHOY+Tk01LiZn0f1Eina2ihNHe4TvcHS3qyI10JfwJdrrXid5JiJDg4FAAxghqOc4DlaKR+OSc5
	5G3/ICMYEysAtlOhbw2jY3dE6/ghCC6mOosFGLcsDCOncwG4425Vc/rLkj4yeRfjfnkBWz+vxj0FU
	o9RpTjIvQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljSxf-0053Qz-CK; Wed, 19 May 2021 20:38:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljSxH-0053Js-DE
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 20:38:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=; b=FQiR14JirTQt3o7W52GMfyC4Sw
 1qBU7RJKzg9bQIfurLjYLgTi4TMe8niy5bsbbbdDlrWEybyllEY3CUKBGN6jeImuPFPqaXcfNQ5Rn
 bylzcDFgY5W9JcvyuzyDJ/4I24IePKEJf3VaBe9cIlNwY2QX9XDpDjO1aRxwDNqX17Fgh/Bp853Oc
 fAwomsqVE0J5SRdoJTmhgN+46zv78BRARoHYeQBudiZuUVKTsLBbaNF9HGhgwPlvwDU+4c1VxXckV
 F/n6YH7lfY9IiWu3xVkceH47t3Pqq5REqsiLhKL9f4s76azq3qi/s37sUHR4bbcKpeza9Jrn5xLwg
 F39PWahQ==;
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljSxE-00FmGB-Qi
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 20:38:10 +0000
Received: by mail-ot1-x332.google.com with SMTP id
 n32-20020a9d1ea30000b02902a53d6ad4bdso12943261otn.3
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 13:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
 b=AmHfXcnp1nO4RnOBhOGb34amB7BP00FVaE/uDsHk47L24i3u2FAHIBLSX7vthr1R79
 /zAmGb90klzTJeZepfKBjI6nQFMRKMT5xeDZsfKOEKPOmIgBM4Uhnb/2VUyMnrvvNMsu
 vib5P/C8mAZF2JXd/IzRqep+kz7RFICkqMl8PpXmYBowCzaRvoCdGfEHjq5p61eXPPwN
 LwyirQZPt1DBfhCyvvK+FAw55EqIQOj5d/bLMmbasIdhnsUQ2agryjiIoZoDCemTOJiF
 Q/NjEEviStbjT7mI3UtdYHNfZDbFqQEm0Ocj9Vs2x3NTSg7Sn3IGAbLyEXTtSlAJYVsG
 WKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
 b=jcYQQY6jI7sjKErJcUbZrcQWNXYwEvP9j/drNJ0NjeWFrpHTxwFEElFcvT++qecU8i
 QAZTVryJn1FEYKowqzWI1R3RyP0OSPU+cLITmYIJlTJzz3nQCRaZzkjjHt9K99VIjO5o
 sYqamEOzGKdyUjCXuhAMR7ef5OvtBpc7CRfFLYVoT0qAmXO8G2L/ZYve3BQLsXJEpmR5
 O7CUmw6IcFvV3DUEWLqqd8sQARZlGZpseX8UEM86gSH8N5eQSpolGqnGzo+nssPvzMPS
 jnyO7QjgLRLgwfvx8n14QZApsN5p8FXjJftmudrGFWDKTu2Qox2BjxKsfqo+mRIVGAeP
 1STg==
X-Gm-Message-State: AOAM5308OS/v42bmS90MtSKNJDdenqH5jhjkQX2ixWXVqLuQmbkR+ygu
 r3KPqZHQgs+HcWd/vvuFa+k=
X-Google-Smtp-Source: ABdhPJyXXVFDbFRtx4H3uxFZNb1bgErAVsSW/mByBfulGM4AyoCMK2WWgSPI48yeZUGI2NU793iawg==
X-Received: by 2002:a9d:7049:: with SMTP id x9mr1152728otj.20.1621456687933;
 Wed, 19 May 2021 13:38:07 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id w6sm189223otj.5.2021.05.19.13.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 13:38:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v12 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date: Wed, 19 May 2021 15:37:54 -0500
Message-Id: <20210519203754.27184-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210519203754.27184-1-macroalpha82@gmail.com>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_133808_889841_DB2B7C22 
X-CRM114-Status: GOOD (  11.27  )
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

Add the new rk817 codec driver to the Odroid Go Advance.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
---
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 49c97f76df77..e8c2b5a817a7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -165,6 +165,31 @@ blue_led: led-0 {
 		};
 	};
 
+	rk817-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "Analog";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Mic Jack",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+		simple-audio-card,routing =
+			"MICL", "Mic Jack",
+			"Headphones", "HPOL",
+			"Headphones", "HPOR",
+			"Speaker", "SPKO";
+		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_2ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk817>;
+		};
+	};
+
 	vccsys: vccsys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v8_sys";
@@ -269,11 +294,14 @@ rk817: pmic@20 {
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
+		clock-output-names = "rk808-clkout1", "xin32k";
+		clock-names = "mclk";
+		clocks = <&cru SCLK_I2S1_OUT>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int>;
+		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
 		wakeup-source;
 		#clock-cells = <1>;
-		clock-output-names = "rk808-clkout1", "xin32k";
+		#sound-dai-cells = <0>;
 
 		vcc1-supply = <&vccsys>;
 		vcc2-supply = <&vccsys>;
@@ -432,6 +460,10 @@ regulator-state-mem {
 				};
 			};
 		};
+
+		rk817_codec: codec {
+			rockchip,mic-in-differential;
+		};
 	};
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
