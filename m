Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49CDC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:59:45 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0FA8A6141C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:59:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0FA8A6141C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Rh3/zUf1KRoa4PIoftXGZHzqQwOBGQsAQeuYxN/s0qs=; b=TsAPlIYQJnZKra8eYoY/M/exS
	/5/IM+KiK8B50Pc9NHKInIegkz8v3VssPTkJKBsbO9F55BJj+65cOp3UzL3YH+m8oGBoZMx4REI8o
	R/yUGm+jM7O3VUu3iJn/eNOt4BVsYPnCZLY2uMN0CTlYE6K74aFMjIinaAcaYLIRH8A6TZcMtmAtm
	UFFdxNgfIoCIhunlL1tpUUVylivXgTHaJ66zkkc4eB+g4G+nilBTizWpn89Pex5O+xY9ovlIwI1F+
	acdPMNVzgIcS3FGntrH+WIV0WEm3ZIWBqdgGR+K7jkFH7brjtd2gL+rFTJxPCFjKEi6RHCVJDq51G
	Mz5GrHKvw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZH8U-00EvjA-F3; Wed, 21 Apr 2021 17:59:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZH8Q-00Evhi-G4
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 17:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=GFCjFDnTKts+03sH7fTjJ2Hzlbk05WTqad5B7papnEE=; b=CnV3kWg2Vs1pF3VjRwqy+1YXcq
 kxc4UhnsNicdLuVNEjOQxe15kMpgkw1GU7aqFxOmkAqsPEOYot0FVbSTiR3VTXwTlnk6L4MGENsYC
 FaQV8gHgRdlN0+ftGrlvREQ1jLvv2ydrl42vW1JH4shsID3MWoR6t+78ntgkQvhInB9B1n0vBWl18
 UvNKALRSKUTGxGGIO9d21Ra2Fff1OxZ0OEn1BG2JSm43n4qOqwDW/PZW1TDltWrDxnPPOdjQ+kp05
 Xh67nlAnfGZSUmvh6t8efta6xhgfbjXjfSUlC8+nKVyID3mKx4VEnCRT8+2FnU18rkgqbr1XjnI5S
 Pja6gnkQ==;
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZH8N-00D5Lw-Q3
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 17:59:33 +0000
Received: by mail-oi1-x234.google.com with SMTP id k18so38304004oik.1
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 10:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GFCjFDnTKts+03sH7fTjJ2Hzlbk05WTqad5B7papnEE=;
 b=AEys/8bSEhTIx0oIJJSawACS89ej9X6f4uTuZD9dPR0dvpLadTnWJu39H5NIj68RCr
 6mgYTETBPxwaE0PLYu6d9qSS1NCxKRqu9jVepPwiLhrroDo8Tiv/u1JIIWU3VCjTXiEG
 T00POD+kqBGpehCle4nCvuoqmvnVF8QZqc8lJjt+oAWrDY8uFZsZzdUG/nEYUtrhQuFi
 ozkaLTxzsMC1tA0MToqWQGnwhQV1Y1K7f89ef712WOKnkZRFG5N39jgtPAsds8YTkSGC
 291ixJ6tMSZ10dvjlroxozebQOdflFHv9CaEF8FXzx6sd7+NDbWvrGlG0w5xJJKNTIRg
 nkkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GFCjFDnTKts+03sH7fTjJ2Hzlbk05WTqad5B7papnEE=;
 b=g+H8CWU5SHa+3kBYtaHNLwXR+DM6B8tb5UoKhlqk3jmOy6GCLwicSmOukRrFsg6PDF
 qZHfAiqCqnWCn1jmYGvFof3J3sY/hGZSD0Pz4FCtVwYTHnbtm1SvrUtzx0Rqd37/tnwg
 xzPfXUjk3PtuiAH+DS57S+dTYTogzZhZ5RTJmmaSKeB7vMiomfJulfGpM11j3NsddZU+
 JvseDedU81O9Ze1ZD3/uRoHgvhzMpbK9lD+K56MXzhGbAMkxQwg9DxnBgzhcAlay8JNW
 96bUt2CKwsuJdLlS0kEiF3z3N6AeTNjcfovjVHpnaVDRqgx8CqcUDa4QrZHtSpRkAHFz
 6hGg==
X-Gm-Message-State: AOAM530VmfTu5tJe1P5imnutiFTBb2LTv+XRGQ2g1fsLMaB2kK+1epAq
 wX02Q6RYEi6dqACYwnIjEqw=
X-Google-Smtp-Source: ABdhPJy35tGx7OnR7lXlEBK/EZatiYx9tb4/EQP6rMQD7CleDi/jo7CDKf6ooCozvtMeTF72U0JEhw==
X-Received: by 2002:aca:b387:: with SMTP id c129mr7311825oif.30.1619027968983; 
 Wed, 21 Apr 2021 10:59:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id l62sm13662oih.2.2021.04.21.10.59.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Apr 2021 10:59:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [v8 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date: Wed, 21 Apr 2021 12:59:06 -0500
Message-Id: <20210421175906.31977-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210421175906.31977-1-macroalpha82@gmail.com>
References: <20210421175906.31977-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_105931_870214_70B6C8EC 
X-CRM114-Status: GOOD (  14.63  )
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
---
Changes in v8:
 - Added additional documentation for missing properties of #sound-dai-cells,
   interrupt-parent, and wakeup-source for mfd documentation.
 - Corrected order of elements descriptions in device tree documentation.
 - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
 - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
 - Removed unused resets and reset-names from the i2s1_2ch node.
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in seperate series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

 .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 97fb93e1cc00..e3ecd34f3028 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -161,6 +161,31 @@ blue_led: led-0 {
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
@@ -265,11 +290,14 @@ rk817: pmic@20 {
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
@@ -428,6 +456,10 @@ regulator-state-mem {
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
