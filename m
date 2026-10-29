Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335BB606A31E
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 10:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AblzcLMR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=eMITbRTG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KHjFaJO2xTFPXUqq5y6Q7ofQK9LFkba85jPAUKB6jn0=; b=AblzcLMRmGNmUlnArjJZ/wcE8C
	QWZLwU3J4r2sxljFm3PRYxbZzURiZmCkPEhg6vwms8374Y21DKzkbJHI7e7h31OCtugjpLcL8k/Kh
	NvDoYuskHFqcyG25YhOgkHRU9URwlgdzZg6ktDKc3WcTRTzwxAcaJR1YldGJe2qY6YBzxDz+5ShZE
	PmZ/c9QnPT7s/RVaRVz+hQVyEW5c6MWM3TdBVf1bLYH1K2XeHvpYu1/uFZMkuBVEumyqgCIs964nx
	FLxXn8w23UCEcjJbG/3ZfqAEuQS/JuVpH1/AmC22C+0BuqqGea6+K8dLXX5TEfqMSSK48rGkLj/Nz
	EE2vza/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMN2G-00000008vNU-1TNS;
	Thu, 29 Oct 2026 10:07:04 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMN26-00000008vFe-0KM8
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 10:06:56 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4a210470b49so15545415e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 03:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793268412; x=1793873212; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0SbZPVThhtjU5v2CJr4ClagjjvnIt2bp8J9XxZctWA4=;
        b=eMITbRTG0WX/xdxkYfSsH8XiNXkvyDms2jI4WUWoCxEZxLIuTbWtX8g22oB9+fETuS
         9PE15TQvDCK3efIUTtyMf67KuB4UkkqpgZdypddNAEQ1aV1UJOASRALibWz31dpn3mK1
         1zXoSKrHyU/s52j8c0CJUr9bO3kpM/0bJ3g/w4kcrqhBnvz8/z6jksJ1oYpB4vx1AnUF
         1rXbkRyamjz4Tw+daILdCTJ+NdM9gyn0UR0FFoxU/74ysBqOnfipu3SoTRIgDR5Xh+1X
         QZzvYDAocUUq2fn18HQcVtvPIBWw2ZF3z2eeKQUdaEcllX5b4LZbksotiEGjc+0YPLTD
         pFSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793268412; x=1793873212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0SbZPVThhtjU5v2CJr4ClagjjvnIt2bp8J9XxZctWA4=;
        b=DANTkWtMNmiivLi7Pny/FF7WheboGt5QKzWbMIFpsPvo/IVHDIOjGoRHPEBt5Hb0Ne
         erU9Uked4aLKBmKuS31Eew81OpM7XFqjZJ1i3GUtbDEaLbRYIe+y6XnodMwYnDDIJK0H
         Sl421FZyu62Xl+yzX5Ijb5Y8knPe1d+vQYyr5fZaSamBLuD/tgRKbWoQ7LXPPHLrhTHG
         mxt/aMNjeHbHjfHcuh53vzsD8tcSPnzLnHUgdLp8+OH61wBbjJ9mcG1o4nzMQVE0Mfsa
         xU+n/qpSJjNnu093l2QjBN93bWPyywAkxYcM77+UtTadm0tE7Q+KNxwTqEchsb80nw96
         FiBg==
X-Forwarded-Encrypted: i=1; AKwUvByCTx+5VDcqhQx+kURYOOxkPTxVvWcN1GfAD7nASi+cYxOg48/7XaEi1rsR+U809huoKd64/BnBoLES2dB6qw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKq31EC+Y1INxAT9PUK1j7zLTzoyZGyZMpjaDgCzz+YVdjbS561
	0tBelp14zRaUxqKDXj7T6eZsL0cc2WzD7jBE2aLbfrzLJ1UX0wLxtXTE
X-Gm-Gg: AYBFou0jgpJU1/pLW4tnKU94gxtVadOEYNwDb00le02k5/wKiv5YMMlXMJUKOHUbpdi
	BCPUF6+ZRFdJGU2w7SVOmpFGmDoiC6/DpEMK1z1Poa3DE+7hGWbHHd5yh+pz3bspPr19MFtA28E
	aZ3vgny/Vxcvlu5gpWzTcCy15O7jQ34rZWdpOj/wYFG6eEzBc8YLQL/jmrw3p+ugEYi2TO6F0c7
	Hv+W79LbaiFMzka6GDolWSoRhRFTQEIXcdvytlckxpKX9ZlRQqS5qNaPM4dpjzEadsOzsGAKfQ4
	HFoY66YNFevEUb30/Ryasxzo/qLNFM+M9a5UAkDT1OWJT4LmOTwdrTF8bxg9LQapjaWGmm4Seo2
	Ap4tmGpi85x1hOIn4B/oq4l5iGkvX09ONYm4bwOK879criwQqMYHdwznAhT0Zc27XpE8NsLHoiT
	mLouFE33BTSl5cGujYwnK0H9SfT6lCDVLiKoJ0ilqS87tm3by65IUiHUVjui5zQU473ShmMsf82
	diDiCsxRFqK+3Cb+XFyE7uDJl/3XfhhOnsQ9DsJcFIQhgB67gNbOlIwyFxjWCbpElwTo/mgr8NH
	DWE2qhAt9CSnanXtOx6xjnorKXe2tj5zf2Dbp5Yz8M5Ql4sANKwrC4n8tqUajMCD1GphOQEzTnx
	Sc1pH9Z7i
X-Received: by 2002:a05:600c:4ec7:b0:4a2:a9:ed5a with SMTP id 5b1f17b1804b1-4a9660b5041mr117976975e9.8.1793268412452;
        Thu, 29 Oct 2026 03:06:52 -0700 (PDT)
Received: from [127.0.1.1] (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7fdb7691sm53082825e9.11.2026.10.29.03.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 03:06:51 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
Date: Thu, 29 Oct 2026 11:06:26 +0100
Subject: [PATCH 4/4] arm64: dts: rockchip: put the PMIC into sleep mode in
 suspend on RK3588 Tiger
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-4-cb12621c1fb4@cherry.de>
References: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de>
In-Reply-To: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Joseph Chen <chenjh@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, mfd@lists.linux.dev, 
 devicetree@vger.kernel.org, 
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793268406; l=1641;
 i=jakob.unterwurzacher@cherry.de; s=20261029; h=from:subject:message-id;
 bh=SDfGdhdTbDViPNWR7gWVkSFVjA2d78IFMYAVeDi6pgc=;
 b=+lV6mFqZezu/+F0xruZF+cG3BHg9hNr6TFfbzH6ls2C4+aEQv2qB9TmeiX4sbnF59e3EHmvUT
 spRbBmKPD3LBiX00XMbFZ9MHPNkvGrR2KGQSbwdMr2iUT+IH87yeXEr
X-Developer-Key: i=jakob.unterwurzacher@cherry.de; a=ed25519;
 pk=0v1L7pjG4d7PcaYPMOmzP4SjaRtnB+8bMzZLZCRzB8I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_030654_194367_9D34426A 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>

The RK806's PWRCTRL1 pin is connected to the SoC's pmic_sleep1 output,
which the firmware (TF-A) asserts when the SoC enters suspend-to-ram.
It is configured for no function, though, so the PMIC ignores it: all
regulators stay on in suspend and the regulator-state-mem settings have
no effect.

Configure the pin for the sleep function instead, like other RK806
boards do.

Measured on RK3588 Tiger on Haikou, suspend-to-ram with the logic
domain powered off by the firmware, module supply current (5 V):

  PMIC pin with no function: 0.218 A (1.09 W)
  PMIC pin with sleep function: 0.086 A (0.43 W)
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 161c89c62bcda..592a2d11b36b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -471,7 +471,7 @@ pmic@0 {
 		gpio-controller;
 		#gpio-cells = <2>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_null>,
+		pinctrl-0 = <&pmic_pins>, <&rk806_dvs1_slp>,
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		spi-max-frequency = <1000000>;
 		system-power-controller;
@@ -492,9 +492,9 @@ pmic@0 {
 		vcca-supply = <&vcc5v0_sys>;
 		rockchip,reset-mode = <RK806_RESTART>;
 
-		rk806_dvs1_null: dvs1-null-pins {
+		rk806_dvs1_slp: dvs1-slp-pins {
 			pins = "gpio_pwrctrl1";
-			function = "pin_fun0";
+			function = "pin_fun1";
 		};
 
 		rk806_dvs2_null: dvs2-null-pins {

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
