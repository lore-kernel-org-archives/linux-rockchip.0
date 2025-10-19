Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD2BCCD184
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Oct 2025 14:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tqAZQGcQggjjzlvfEjGGYnUx4O5XqLxSFuHyeALBUOw=; b=nJ+WrsruK1//0x
	UfLx6D3E3vXVgjCqEKeYNjDukEJroiRwqgb6fVCeXr54CX3VkGCvuqVVtCk0GS9/re66GSTaI5v7/
	kAc+kGFJHMOEmjlMc/EIFyiAX+WkK2oRyEnoWXSe6COcx3N9rL9ztQB2/ZxgvinW+VZBbzGGti+vs
	7fdKK7LyQaXeedHQuYKEt5ORITurkCqPM1uwAybYhPBFl7OMTBhaaa2s5jtfKOTyHM2gAKXYrj4fR
	Uvh4vOg+a4T3v/x0RpDkFVFCpjGgOC2S0FL0QuG5t9M9HB8D5ywuxGgl8Cn6iFLaVpVnbnW5c6PLH
	tYRw75wmw3ClW0f/MrzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAUHQ-0000000B4lQ-0Kob;
	Sun, 19 Oct 2025 14:21:04 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAUHN-0000000B4gd-1yen
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Oct 2025 14:21:02 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-471131d6121so28073415e9.1
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Oct 2025 07:20:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760883657; x=1761488457; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pNwfswXuk6b86cUinRg+xMrD56clpn37pgGLAjruqJQ=;
        b=BApcxN5HHbFwCosuYAbTRiWV24QwWA8r7xGpWzRIB2doum4+FUpIy7i5NmX66JOmrl
         ltNdX4sDKHEZBdxCBQvOuXWl3g/qFq8SHvtWE4Mk6ixVNwA/ax23bl+y1X3OmbdHmJeN
         Spr6/pSTJKGFGSLjWn5Vr8NGdzSB6X1ECJgiOB5wvMV0CDWzUZd4ebin5bxOkQNjE2qT
         9u2mr0QIJjX+X7XcM8FE1sixy/gvuQxnZw8t7/MeGo1mgcJCVCVjjTfqjJ55LnVdssc6
         U6ICdlG8tcIdj+MeQ/SzO1ZrmD0ZqSM5wKvYhNGZMfOdhqPLRpwoeym8kQ4cs4EFIkia
         YDpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760883657; x=1761488457;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pNwfswXuk6b86cUinRg+xMrD56clpn37pgGLAjruqJQ=;
        b=ZGo+z+6EI2QhYtWN2fQF2DNBThyEky5OA3c33myUosTkjfXCPHe/nlunZHhJakeA3P
         yoXWVsme7Qxpc9yNb7cfrZyI/FW+rGje01hXxF4nrndlQwtiTWBLAzmTCsKKRG7vEitG
         uwFwN36vqnjcuJiZmkpBzFzwFYi81bTZZywzLvhgb2RmHWx8CvAYftXB/MrWGOft9haf
         Gn2p4cfJZ83DYrIVNhA9HtvMfNIJGZ486AyL5wbGXKwOHtZQvd3BDLVqZYFIHgFNjby4
         suq7aeXzD8T2i0FAiHDCzRyyiCGRdAFuu/ryzVvdGxcnor80w1gObIFNfbviFOYEmJvG
         oqYA==
X-Forwarded-Encrypted: i=1; AJvYcCUn+caau7qeCsbUJpFuYBZZWoXWNZP2lXBMZfc7QytLzHvKeal4uDA6Zkrs06GvrR/uJqKpkH1t1tSTmAkjpg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5gCj2YB0hlC66dINiEqnoQQsA62H1DAC4GehEG2p2+jhRvzCP
	GQnjIOv+3TvPbNZ2UmfPpjBB9vkTXluw5S3ogfHCoGmH6M4HQUvTBYNY
X-Gm-Gg: ASbGnctsFVeDH6Dk/jpOJbLTQ/BB6pdSWLpGzwH+R6G+CKeFOcGpAS8uVHqGFGYH3Z6
	3eydRVVIXG68SjGSUypMypGvI610eVS26t4VV7vVU6xkdGh1PTsF+Ymh+WdO4h7icR7f2sYY2dr
	5tHbQI4boqj63WsdGz0Uk6uG7Y3Dgu+IxA70S55pJtEt587+kNH8Ak/1a15SoHVRALgRiLZVtR6
	0fyDJpWcrX61+k7Tc9llZk9DRtY0rANf8dGf3FqMrBt8CWJ5wOkEu2bTRgToB9V6sqx1oymeyxF
	+dwYdiaCEJ1Hyk+PMRyX2XmDJRO2ssFEi0wxb6osKHJ5Dphv20763r+BrYNLPmYj1CGjybkJ8vL
	U4ll67JZUz8pDKxqxKXMd0WjYTjD2FWS1pfn4F6nq78ICCYAqAPWktEsfJ6l4P7jEMVW6
X-Google-Smtp-Source: AGHT+IHnyvRQso2sIdKSn44sYHdiDNSMWI71jiqm7/h6dk5+/XYFEPh2AXjuBP/zzSUTKQwjNh/YYg==
X-Received: by 2002:a05:600c:19d4:b0:46e:5100:326e with SMTP id 5b1f17b1804b1-47117901801mr68374015e9.23.1760883656886;
        Sun, 19 Oct 2025 07:20:56 -0700 (PDT)
Received: from debian.. ([95.88.133.69])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471144b5c91sm182002285e9.11.2025.10.19.07.20.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 07:20:56 -0700 (PDT)
From: David Petry <petry103@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	David Petry <petry103@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable second HDMI output on CM3588
Date: Sun, 19 Oct 2025 16:20:53 +0200
Message-ID: <20251019142053.11047-1-petry103@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_072101_524886_5929BD31 
X-CRM114-Status: GOOD (  10.24  )
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

Enable the second HDMI output port found on FriendlyElec CM3588 and CM3588

Signed-off-by: David Petry <petry103@gmail.com>
---
 .../rk3588-friendlyelec-cm3588-nas.dts        | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
index 5fbbeb6f5a935..10a7d3691a26f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
@@ -101,6 +101,17 @@ hdmi0_con_in: endpoint {
 		};
 	};
 
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
@@ -335,6 +346,22 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi1 {
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
 &hdmi_receiver_cma {
 	status = "okay";
 };
@@ -350,6 +377,10 @@ &hdptxphy0 {
 	status = "okay";
 };
 
+&hdptxphy1 {
+	status = "okay";
+};
+
 /* Connected to MIPI-DSI0 */
 &i2c5 {
 	pinctrl-names = "default";
@@ -840,3 +871,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp1>;
+	};
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
