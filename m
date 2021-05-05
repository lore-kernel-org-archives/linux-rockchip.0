Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D22DC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:09:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9E5B61182
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:09:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9E5B61182
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Tuh5b3/8L8Sfr4VOvvqsFpQv1lCP88/Gu29/ru57XI=; b=SCYbPx6wrLojxrxccpRziynmL
	tKGXV4VyZpCi4D8LBgPhjk6W6UbPvujwYiBEy5SQqcJnWsIInSfLVgGy6Of88kP468JGveP30HQDp
	q2G58rrL0SdtPvVaU6r67nnfZQhZMbbrJTVeWNaehHcaZXa5e0TtfgrvXBdU8D6c27VJEi4HlOcsb
	Q2SAhA5iVXSBJn3n86uxzhfdV+tyaGzmA5KOghzABza93vvOQfCSXjMfFRaAMliLyncDQ+aIgG+Lx
	ZvQ/mG5vl4+i+LAYc80CVeqNEfty/eic7Gkzhi+ID/zC5cpL5iOi+7VwR2u+swLPi0r8PVfGcbErE
	sJSRqh6Mw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leIDY-001O8R-51; Wed, 05 May 2021 14:09:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leIDH-001O3q-JP
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 14:09:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=m5j/btsyLd9DUMe1LQtazP7T7DFpmpjQ+IT4zZRKp0k=; b=ZI4cjkfm+y2KxpoMtfViSCUChW
 FBPiMKmmsL0FwYiW01YiMrqO9imba70JDweouVJcpwBOH5Y5XPRTbwadL+NpmXVgaqWV0GEce7jw1
 YDUI3M9Yz/RsHrSbawdpxRVgCEuvrrpHZebqvL6Yp3/mp/vtpBkxhdfdpnoO4O1FgH52Gfqh6D2l8
 ViAbo28xYFbVNZIXvaMcQPFKvY+mT+LaaJfYi3Fpap05nUHzaHJi8wXkgrBR06aJU8ssoOXAq/wN2
 ezMKPqYHOlO930eaehxTDNTMLpldkAdRENOrvKLaYBTDs1UbdkLC4K3rBhFmnDDJDs0zIuXPopAW6
 3ZAsvzow==;
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leIDE-004oJA-Qd
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 14:09:18 +0000
Received: by mail-oo1-xc36.google.com with SMTP id
 h9-20020a4a94090000b02901f9d4f64172so502236ooi.5
 for <linux-rockchip@lists.infradead.org>; Wed, 05 May 2021 07:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m5j/btsyLd9DUMe1LQtazP7T7DFpmpjQ+IT4zZRKp0k=;
 b=tZdXJBvIv84bP0TNCkZbIoTuEQGmESa8+/CPkZHMwKApjTYShvzXDTgJr7dEaDgo3s
 uEVbbW+JJUxu6qdNDwYcbaSesnvGzQahOMB7djEdbTF9BnSRM41eddgW1gVnNBWURo0C
 H3fed/EJStEy0owahqZijFOXhuXa41gSOwXf7UPQUWEa8gSp0ueq82csHl2Ru8zojmSr
 A55dswEYmt0tdhg/wP9YRKJr5aDY081hhu3uWU+qe+NSvOZeV/AO73QUdNFmGKuJq90g
 kswxIZwWxQqd7CORuWAk9gDwMSQxnNn6VeTvzP9Eans/CCxRjGvtguAVOOEZk6aGpdyj
 agGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m5j/btsyLd9DUMe1LQtazP7T7DFpmpjQ+IT4zZRKp0k=;
 b=sf3AvQTP+hqf5stZe8DJAewm0pjoSv6qIUGvZIvMVIHO9zwXI5h3Y/UgWldOL0sMKx
 bJKb5hIBNxq1/OrcTPISN2vHImyAEh0WUPz1Q6Lv8wKVHCDhmG6GRi+qqQqVOpRnHp7J
 1hlXJau8K4tC8mj47gfFhdkWM7HALJCJNtNiDkSwHACyP8rDFFgWlTqQ/tWGDuWgSXjn
 kqbRyk4eUJrJjNikzW3bxk/K4A1FjAOBCj4JB/idHoNwXUygdlRspzQpVnhC6JlwXzCC
 3mek4wqWEOHIknGYPQfMAhiGFrCKatJRdPd1vlMbOG40UnE/HBmrBVw3is0mnVe9/Z8/
 2LNw==
X-Gm-Message-State: AOAM531Fo+Z1Y7XAFMrLOfOyeQT8vcu9+pQ/DIHl16/2CrBbNEnvI2T8
 +ZbeXHnjLHzc8yuH16P/utE=
X-Google-Smtp-Source: ABdhPJybwK7GrzJrvVw8R4pJ8a+m50GIQzMVAv2HCjmDEpdFDjkQnrcaVF7NXxYGC4524gJLmv5B2w==
X-Received: by 2002:a4a:e548:: with SMTP id s8mr24476709oot.63.1620223754796; 
 Wed, 05 May 2021 07:09:14 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id k20sm621707otb.15.2021.05.05.07.09.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 May 2021 07:09:14 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Date: Wed,  5 May 2021 09:08:54 -0500
Message-Id: <20210505140854.15929-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210505140854.15929-1-macroalpha82@gmail.com>
References: <20210505140854.15929-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_070916_889363_A65252E6 
X-CRM114-Status: GOOD (  15.56  )
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

Tested-by: Maciej Matuszczyk <maccraft123mc@gmail.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changes in v9:
 - Add cover letter.
 - Remove documentation for interrupt parent per Rob Herring's request.
 - Remove unused MODULE_DEVICE_TABLE to fix a bug identified by kernel test
   robot.
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
