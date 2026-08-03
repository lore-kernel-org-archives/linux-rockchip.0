Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7EA3C55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA/AhyYivSeSNlt0s9QC2nEUqT5kH1PQEi8xQKlXJno=; b=n725VoRssoJ5fQ
	/SHHPcLJk8d9Hd+9GFYJ2lxxbVmyoJwFDgGH1Hu1F43N3F+qNicR5QpgITB9dYox0FeV2cyRUiVsa
	J7sxTIxSmFB3vhSmldDlMT2M9U8kwb2nDBmX6GrzfwNTOWJdRd4YWNHLi80B0LIxTZUWuNyN/GQYN
	hMrMdh3oWPukl1lDSQcAsNamfiUu6oGTvfkccpVuabX2xb90NoWVV9PqI0JZaJzv8abzs1zlseUFs
	0kHJHBtzghHTZmEs3Eaz9ckfcg00FN4hGqH9rSQaYwHLGSMti3udMFt3b6OJmcyqQFCtYyjK88vnk
	4a30psRTLg3rtYpW9XfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1u-0000000GLeO-1UHF;
	Mon, 03 Aug 2026 05:16:02 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1m-0000000GLKQ-1qf1
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:58 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7eb4d532e65so1138719a34.0
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734153; x=1786338953; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9OpRGWNf+wnvCcP1DS85gL+udlM+7o9ZcunosuNBCWA=;
        b=LTreJ4p/wG8aKpbkhz8vQa/hMNf39Z4iRlvhNYuPCcRX1JH8Rn3Co1PF3YEDqB938h
         SftkkTZNEwPOwAabAmx//pfwW2rq2rZzwWd9ZA1vvinOwQABFYfc0VdpK5VQGJbGFZN5
         13F0rPM2ebaAi4m2hz+gpNxdNWRf6g/ss70YzZN9FpvcRtk3gQWs82o1FcwT37Ih3+Bl
         7yYt1xs3dyWp+Q+K1ss+QZw1cYEG4onwHmzYJQ27iXhrx0zEZp2sWCjn6fx/8+QPddGI
         4qixNUFF1OqQroHjR2+TOnAY+mVlYV8lRt1jQpy8c5EvlfVd8w2LoBPWGXBPyrG8AXY7
         eE6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734153; x=1786338953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9OpRGWNf+wnvCcP1DS85gL+udlM+7o9ZcunosuNBCWA=;
        b=LjCWreE28CCKZUezRGBgB6CLHqhg5Y6ybrrvi+uMsEz021xclLPgVVAiaB0e629sf2
         U8hYNTyjzxD9lkOBhDTHQDUgLCuNs2UDdZlI5fcv6qpbsIT84MQwadQYXfstMVqWedQG
         84lVrLnDtiadbYWwp1F5MPOsMQ9MEQKeo5Yy1mA5/pxM9n0gEnhxImDl5sH83b0zwyC8
         9se7YCyu+Jdbw3PMvMBPWi3ChTTgIZY+5Ur54eXU9/F0RwMVKh1c4F2UHNTA7nq54YIf
         kaPpWS6c5wr0Wx/beISPU9LL6eoDv/BJPDOtSNNmXhXFQMjFNYrx2vIGdm9MkDoYb59N
         lLkg==
X-Forwarded-Encrypted: i=1; AHgh+Rqtzffq+Xhu3LwtP8uZ3/uu2dBSj59VhwwrEFXexT9uSC4w7nC76E8JJL8SP/H5Iq36fMxJb/SHsPbSaZFTBg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwdF88JN9XWiqi6/fFhMZDYbix0aVajOxDOboq0xHYm0H5X3NvC
	28RYkFCct8pobDnzzLsFZnh3z8a82thc7qSHtV1XlZYiDUL/+rM2eEsv
X-Gm-Gg: AR+sD11Bp+jEPI9E154DuHrtHnVcNeqV7TZ3GBuRxQ3ZhvVxqm0rO2ykVQ6xkF3XQEN
	Gk+U2rT0WTjTDLAsst9iuolkszcFBQIEibw2Y9K/Fp9+gEF5goKxhC71cR8qi9FOI2JWCCUy6Qk
	rGsngcK4XLk5qmtBSyv/wlWIPB31jcLEb0VdhihARWbqETcH/xCBLdsut1IJUjaXDfBcfPnql+9
	oNuVgbhxJe6IwXSO5j2iRQDGHToSIu5Lqk9gC9OPSQvDzA5RCGS9vBbDg9lU9TxG3rJDoilpF9+
	1hONa+RLiNBsAbqatprx9/Mo0qkNunorp6YOFUCsvtDXUGmsbbXzEKB2iGy+sf6QngqDHXQ/jnc
	d3hfAcnwmNAaiciQcxVFYEOgrvdcnpJgOfqs7d2fCbj4Zvv96H6LSaWS2iKPennT/8816cBt4BH
	A73McyPjCX+LWzCaCE3BQ8eaQmTp3pfLSJwiL2lhl71o4ZH3+E/K+tvgmUz5/U9pV9P9Os1fA4M
	OEq6G81vvCjJ6CJOOr5Zw4voc2vZw5iux7y6G3wZfsPCClz1CZhwdPGMvsvfoTwpivKY1/pjUWy
	jvSig1J4g+1eEDVdvxuv8CB0q84cXAiuodAdgpkgQutuZA6OzPF9cK6c5wE+n7uK20Uuya65+/L
	7rsMEHt5FeVs90I2E
X-Received: by 2002:a05:6830:3592:b0:7e9:e488:3bce with SMTP id 46e09a7af769-7f196bab78dmr14968611a34.6.1785734148846;
        Sun, 02 Aug 2026 22:15:48 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:48 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:27 -0600
Subject: [PATCH 17/21] arm64: dts: allwinner: h616: add ACx00 EPHY
 resources
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-17-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221554_518583_05A78DA7 
X-CRM114-Status: GOOD (  10.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Expose logical SID cells for the AC200/AC300 EPHY calibration, the combined
companion-variant and AC300-calibration-range configuration, and the AC200
bandgap fields.

Also describe the PA10/PA11 I2C3 pin group used by the AC200 control
interface.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
index 6879f27c2b2b..2cedda6e87a9 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi
@@ -252,6 +252,20 @@ ths_calibration: thermal-sensor-calibration@14 {
 			cpu_speed_grade: cpu-speed-grade@0 {
 				reg = <0x0 2>;
 			};
+
+			ephy_calibration: ethernet-phy-calibration@2c,0 {
+				reg = <0x2c 1>;
+				bits = <0 4>;
+			};
+
+			ephy_config: ethernet-phy-configuration@2c {
+				reg = <0x2c 2>;
+				bits = <8 2>;
+			};
+
+			ac200_bandgap: bandgap@30 {
+				reg = <0x30 2>;
+			};
 		};
 
 		timer0: timer@3009000 {
@@ -324,6 +338,13 @@ i2c0_pins: i2c0-pins {
 				function = "i2c0";
 			};
 
+			/omit-if-no-ref/
+			i2c3_pa_pins: i2c3-pa-pins {
+				pins = "PA10", "PA11";
+				function = "i2c3";
+				bias-pull-up;
+			};
+
 			i2c3_ph_pins: i2c3-ph-pins {
 				pins = "PH4", "PH5";
 				function = "i2c3";

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
