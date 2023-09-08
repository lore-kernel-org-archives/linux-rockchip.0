Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6075FEE801F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Sep 2023 16:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvjoLLuKF4jYTAQdDSo9mlQCutYFr4R8sYTHh4dCHzM=; b=0qfn4/OnRcVGSk
	FkBaKW9KSWACfg5G5ziER6wfNrfvX/TFV+0pbqucvZQKKzpMhgvbPGVg/mWTQQt7mONKIzOqL/fOT
	1rko1MYnLErjY4qHSAm/1aOujb7CGtlxTxWmOFvekiLHyZ0XeusGRxg/t7rr7Qk+XPuj21fBc8JnP
	GGvMYkH//rcYthYrjky5Ev97J8M6RwHpxXo430SPGFtMWXiqJFKQ3rWhdHEuoGL+F6nCd3pXtmKpy
	UdILJSDBb/1ohbwfqVSyrT04DUjzfvHcIOv38Nx3JPb0Fb9hGqf7tFOO92t84gyE0MF3bsOxPhwzc
	hRL6pdEifJSqBN64y2TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYe-00E6Es-1I;
	Fri, 08 Sep 2023 16:42:12 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeeYa-00E6D1-2e
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Sep 2023 16:42:10 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6bee392fe9dso1520145a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Sep 2023 09:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191325; x=1694796125; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=IyndD18yQDbf+a8JquQ8Gi9kkoB+Vbwy9VY0BmoNZBVdDC213PfpNSzhnYMcThI+G5
         Bgx/EpS3Pbx8Kcz8sDBjVHV8DTpO+eIwVjJYvWVe4Tx+AplldWXyF0aJycL0cZXA/PaJ
         eVG58Xvvmdll+YfNTjzvW4qSe9Fz5JgTC+g2001/gaFxpjFlwgb1utQ8Uv0qBTj8eRvN
         csAh2+ussez/c/Qvf/709/KJIE7pRtU+J+ttwnO8Vot/WWEgS+BQLw7xTgZMf/bBBWXo
         zigll7Mwtev7wX+peCEwd0mMnsYMrgCwMq03PsgjNnFJmYx+1UIE/cN4qkNXHauPi540
         S1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191325; x=1694796125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fOcE1gEVv8k+1mKB0BOnHrQMjIkGHZfrQmU9eoEzouw=;
        b=JdGhf0GuCwJLpjZYa5y/hoUdmYsBjj7NH5WeHQBNTJN/HWZDuf/9uuq9LQqM+oa6RY
         IsF/shaZXs9b2ysoEK5Scqehx1P1AzobQEfPrEyUOd4qVqu4sVvc3eMoSQL8UsciuSIH
         bc9iq36T1cwB4f08F88wvhUyqMMebDbBrd4+OMvBTdORPEbKiUtHFtRYjjM+JGyXtZ58
         yWXRpQ90gY/oD8UMGdP/IKmV+cH6MqQ/4hS5wP7voT+OFEqRFnpFycWXaWck+XhkZ7Il
         LNMKNLLLhQ2vGoW5u0XhGBuGpNOgwhqK9vuNXQaWXEPNt/Ws5nrfQrbTQ57wEXlmD3Yo
         ZH6w==
X-Gm-Message-State: AOJu0Yx+xvjrGMRqXH3HHul+OCRO1Qq4G6YuBq7/sFqQ4cBguHbWmMr6
	e7VGyAFH/E9Y6kyIamTQvaY=
X-Google-Smtp-Source: AGHT+IET4mmN2Idlz+iOML30+xfvBysG5kiH18eLSaLbf6y/AmlHftf1oyazh8wyiG0o2Ucjv/Q8PQ==
X-Received: by 2002:a9d:4d84:0:b0:6b7:5086:2f59 with SMTP id u4-20020a9d4d84000000b006b750862f59mr2975951otk.23.1694191324773;
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d14-20020a05683018ee00b006b8c277be12sm839485otf.8.2023.09.08.09.42.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:42:04 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
Date: Fri,  8 Sep 2023 11:41:54 -0500
Message-Id: <20230908164156.2846-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908164156.2846-1-macroalpha82@gmail.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_094208_859606_F90AE54D 
X-CRM114-Status: GOOD (  10.79  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the necessary nodes to the Indiedroid Nova to activate the PCI
express port that is used by the RTL8111 ethernet controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index d1503a4b233a..646f49cc9e53 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -109,6 +109,10 @@ vcc5v0_usbdcin: vcc5v0-usbdcin-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -348,6 +352,12 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -366,6 +376,12 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
+	ethernet-pins {
+		rtl8111_perstb: rtl8111-perstb {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
