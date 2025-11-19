Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BF2DCF648B
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 22:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZN/Xor4tjshyww/UiRJTWNySi7r9X/fkHOtQGCqNSxo=; b=YB8N+uxH+kfHaf
	DrgxbDHqq1up1n8GyQLYfKuExE7knfjKjZCM6E7A7Njl/CpxbnvRB2+aGvrDqiY4oAf5AgMeDXHxF
	SkckLpelpMLHHrMhPNC8oN7UBCCwO0zzT3l06px6TrZKXns0Kq6aE87W4sNMYMQfQpx2WLA8BoB+j
	NBi+iE8tb4r2SIGvX9pICLlBEsELb3G47W123gMIEyxWGffFIhttyLZEb+2WCEKeB7PEG9JH675p+
	7oRGtbzUmyFuSNTURfdUC2jfVQ6ReaJKXdKpcApA0vYycSza7e28SdyVHhf3XtfCodCJy7u6QlwcB
	eNnOGq6DXgVnbg+/CUSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7i-00000005ozR-01Th;
	Wed, 19 Nov 2025 22:58:02 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7f-00000005oy4-0k7S
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 22:58:00 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-3e8317b1262so159663fac.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 14:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593078; x=1764197878; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=iIH3TzJJLy5ozDkoYOM/f9NhVlsTJAfdqqu17cSpMU5LST0W/Z7E2dpRyhdi394z7y
         g3szQ9DAzaiFo8hyaIIJlTXEYGYDTJfAjHkDi3ol/oWcBJ5OyZK1GzqACYPZIEHu37/P
         xwe3pOXRFiTLJs8ny6x8aC0cEsWlI/89krlSWQ+P33Dh1ky3oPjdrS+woST6puPLyim4
         cBRjWYO2c1WV7pWq9UH7LNPqcJ8LhbeFCKF2ZUzjZbTUfrUlPMz4/xnXY9YUiIWf4JTA
         KtYq7U0QZhVPMkHM1JVv8lmlnB2lO5F2o8CIJG5kTz/MqauTTY1OBrjKFfoXrSnE35iT
         zJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593078; x=1764197878;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=Sz4X8EmUy8nZVCVe9iFHjzvUmILh5NFHVhN1JLW+DD9wSonHL3sOq3E6YL8NEOUFWK
         VO2h5B91bPkpjfsNwgiXp16P+N8GboK2jAI45CGQ8AvM3gmriYx8QN0bKvDqSa3KNC9o
         YnAHDjl6CnTx5PS+jdhRR75yDkGexOxqm2GC3WSQZXF+WupOV4Xm81dd1QpDSuOQVDMA
         T5ung4Xleg+03kF3cYBWYuQRzYfyM265aGGvlI3RwZqZWnR+rANhijXMjsfsXcYANsR/
         vxivqWTf3TD7UPRkxxkVUUMi6l+/Slkjn50oloaJm441xu83k/MHJ3AzfFJ8m6lQKrB1
         KXag==
X-Gm-Message-State: AOJu0Yy7IDM8fPtwc/ZW0Bic2WW+NJaiWxUGBXaU01U333WgYO2MLe0g
	pyxP4xsrdDSU1QGZtqcDVCx9d8LHRI2gaY0EXK9iMLgf9Lkydn8JUG09xR8TkQ==
X-Gm-Gg: ASbGncudlkXy84lxikMw3kxuK4KKgGuZgDrdx0rIrMVo+TogQKAHD5NjS4eX8qUtikU
	lmE+DQ2SmKdaIxMQ2pEws2OBdsL1Cuq0h/NtYg/pEx+G+DlzQuSejuuPWHdqpjRjy7nMfzckvcg
	EaTYAmyv0rH0NWzcKlD0Aentnn4cu8hn2mSrNpkst2ytNV5EV1LIF1Ja7uzzIfEElwjTDLQmb0r
	Bk21dn/gRQSR1QxOH0vsjizgspj5q6zbp2Imz/KR2zPY8yHp9TXZHgCCAkEwP9DRPsYw7+ZiDXa
	REw3+nSdohlBNPL3TCUWCNzy+dTWMNJgRII0VRf+kCESovF4ucbdc6sq0CaxPCCWxpLnprIkSFy
	y+NwIItwyEY6QpN2zYB7QvWw6p7IVsBYRTRF1V6qw+UfExwOnp01DEQrIkGCfmjyYs5C2uFgB5K
	rS9Y7PfjO2GjEJh6n1oSE=
X-Google-Smtp-Source: AGHT+IEtt8X7i3eTJjeg5rMzfEF6Ri0+tEQiTgyoMB1/D5iNSgiCmp83clMkoOMZdVS/lRECHQLviA==
X-Received: by 2002:a05:6808:152a:b0:43f:5b3e:11f4 with SMTP id 5614622812f47-450ff34a912mr511966b6e.43.1763593077894;
        Wed, 19 Nov 2025 14:57:57 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:57 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH V3 3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
Date: Wed, 19 Nov 2025 16:55:26 -0600
Message-ID: <20251119225526.70588-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251119225526.70588-1-macroalpha82@gmail.com>
References: <20251119225526.70588-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_145759_241431_88C67458 
X-CRM114-Status: GOOD (  11.56  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, heiko@sntech.de, jonas@kwiboo.se, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, sebastian.reichel@collabora.com, mripard@kernel.org, andrzej.hajda@intel.com, jernej.skrabec@gmail.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the HDMI port for the Gameforce Ace. The HDMI port
has no HPD pin present (the manufacturer's devicetree states the pin
is reused for an additional face button) so add the attribute of
no-hpd to poll for connected devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index f5894672fcbd..b98e1a3369dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -300,6 +300,20 @@ amp_headphone: headphone-amplifier {
 		sound-name-prefix = "Headphones Amplifier";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		ddc-en-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&hdmi0_en>;
+		pinctrl-names = "default";
+		type = "d";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	pwm_fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
@@ -498,6 +512,34 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	no-hpd;
+	pinctrl-0 = <&hdmim0_tx0_cec>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdmi0_sound {
+	status = "okay";
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -746,6 +788,10 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &mipidcphy0 {
 	status = "okay";
 };
@@ -842,6 +888,13 @@ charger_int_h: charger-int-h {
 		};
 	};
 
+	hdmi {
+		hdmi0_en: hdmi0-en {
+			rockchip,pins =
+				<4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins =
@@ -1416,6 +1469,16 @@ &vop_mmu {
 	status = "okay";
 };
 
+&vp0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
+
 &vp3 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
