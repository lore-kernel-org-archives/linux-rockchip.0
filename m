Return-Path: <SRS0=uf4h=KK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672F0C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 02:58:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3AD061177
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 May 2021 02:58:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3AD061177
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SEJXI0eY8xfHbfJjkiGwYZTwtvAUSvn9CsXT+Jg7zlI=; b=Ccy9GpR5iJzDD+lvaHI7GqhzG
	vkfYPwDjsHJuYyGfrRqVpI5MILZ0v+w/6BBoLqY2GEMWhdobLqWvd4tJRxVxxprJL4A8vdkesnpIJ
	yYqMnajf/y6nDvpFy9BXeDO4EmVjbDA3TVHeWFcsS65hVHAt6haVcpKM6cxUZ2pvI6JjRX8UMz9y2
	jO4uUw5OWa+y7AqN8hcQoJ93YnudBMBmyU9di/xvO2MhcWsCm14qBiwkbYDi4MeFquF6Z5FpgwG/j
	GwbLjzkbag+WOO+Z+MCrVCrS4L2iTdoc7C2nieG9n768MAH7sD5EXdljB1zOIxDm3/iaavKemkxKn
	NupBcSUzw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhkVO-009YaR-5O; Sat, 15 May 2021 02:58:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhkVB-009YY1-C6
 for linux-rockchip@desiato.infradead.org; Sat, 15 May 2021 02:58:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=; b=FRpL0lMy9YN5nsH+UUJ9ZUk6q2
 yfYmH1etPrm7cj+lAkHe5z60uV4dFuiQ5fmI9P/sfCaP9Kn23aAI9m6C03K+N3KW8yEbPgFeOECEq
 JUzyNpO36gVLdlV/gSVJhAFereBEjBdROifUeVkr9oTMmAP/pV/pp8SORvD9bqNYtzHkRTnjdbhUu
 62icTINEbEr1gokNA+l2WGZ8yz/ZpmMQYh7ShEFhrabnU9vVsMuhX084Ibtrta357X/Txez5V7vGt
 M5cid/KcvIaDPMWJdGZ8RAkTW+R8Sc5uHgwiQF10q4+oBpfa8idSGNlAKwNxE+MYuz1XSWNWH6wdG
 3be86g0g==;
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhkV8-00CMNQ-Pw
 for linux-rockchip@lists.infradead.org; Sat, 15 May 2021 02:58:04 +0000
Received: by mail-ot1-x334.google.com with SMTP id
 r26-20020a056830121ab02902a5ff1c9b81so931909otp.11
 for <linux-rockchip@lists.infradead.org>; Fri, 14 May 2021 19:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
 b=LMPCfR+8vlIYDHGPtCemLZfNaO75T6pi9kuBjKzYz9/Xy1EMjLGW+q7ONW7GLR5Dwt
 dTNHtAR+4zry/8hAZI1adYOGYeIMRoDTycarr3fsxilyOdFLwIwWE0sl8l20VjKQXoB9
 v1uwMwjJqATjOzJUIfEzf7uEcuULIOXrcRHnJFPl9IOZkuoFr/Va6SDjm6rkEE+Ynxme
 XCu1uUWAhcEyNtTMv5/zG8rLCQ0z9pg8oY/jli0q4wa/b3bEdd3+ycX0xuuzqOqNrnHj
 zx24uI9Jtc44xABdIlTmemZ64Zyj/6FvBLZUanYzp1yu4T5UDDskm84DXVG+Am5i/81q
 U45Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtIozg4TyPmaxagSKodE8olnLW3eEIEko3jxzjbTr90=;
 b=Te3mLcbTY1TF99hUVimH3eUR3QGAXCN1uZxBKVLKwcpAwF10KKx1DfXRkn+cNTcxyS
 RZltZhgkpmJLjliHW6/0InztMBBIC5hrvRFjVWrwJtUhu4smGx2hDgfkm6CE56rqUgj4
 Nc5nXQPmXGJUSxryca/owM/0bkCVqG1Vft2QU0vIi56YuwQllWWekBgdNBrTCxGsc8WM
 VwGN5gTc+7P116dUbTTgW6g3ZIKMIhwowCvs/lBDU59YtVm1iv6ZexVAyonwoc8xYI11
 F5IwpsecCmKsc7LbCsP9JeEwoVlpwrOLRtOh5OQJqysda8tmEE4Ok+GvAu/Ddv72MKzC
 tCyQ==
X-Gm-Message-State: AOAM533/UW62v4CjhnOPza+Axugq9tRhqzzFZbIYNOkiwRjupquk+idh
 uvGJ041xUuIBEKG4cPaOwi4=
X-Google-Smtp-Source: ABdhPJz4Q9lKotO5l15FOiBWW+C1bGEq8I+Y+fOKMyYpCmFGTP5rozeA4IuWpRbjUsZnBP+eenvFTw==
X-Received: by 2002:a9d:7a92:: with SMTP id l18mr30032392otn.355.1621047481943; 
 Fri, 14 May 2021 19:58:01 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id j16sm1689444otn.55.2021.05.14.19.58.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 May 2021 19:58:01 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v11 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date: Fri, 14 May 2021 21:57:49 -0500
Message-Id: <20210515025749.11291-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210515025749.11291-1-macroalpha82@gmail.com>
References: <20210515025749.11291-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_195802_849735_8AE22275 
X-CRM114-Status: GOOD (  10.06  )
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
