Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B79C7115C
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 13:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XVjJKzr/QUgwNEdw0Xt4LuH79rh/yeXZ5sgBuw+6Vr4=; b=MrbEtivge/fwcw
	71vpyfhRNT5ius4g/4CeHw3BeSA7L2KcST0WDYmRrLn1vU7YO/MFWpzbFHHoKFa/URt1qtD49o4xm
	BKFzHQegFFlUiVP0YrHDZqqCgHnrQXFwkW/hwmOU49xWOtq5bmzEeQH1GTobXh/WG832bp+FNvWmu
	rwGRHaKLIh6+zxFr1SsIaalKoDlCxYHOQDXwKY2pYueb6l1p2G2hHpyJ/3RG8s/Fq6rC7R0JOVF4e
	RVGFzVXLWnyOMbgy+9/7oQZmaZjuUz+BH3w4b4KN9uE3phsYWwBoME6qGggI/t6+l6leNe6l4eA7+
	IgWme+Br6rHGoy1w4p3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSyf5-0000000HUEP-1O8g;
	Sat, 21 Jun 2025 13:53:39 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSyf3-0000000HUDw-2VLP;
	Sat, 21 Jun 2025 13:53:38 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-23496600df1so5603395ad.2;
        Sat, 21 Jun 2025 06:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750514016; x=1751118816; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bTflLiAJEMI7+0/3feKtggy4eDDBbx+qju7cZDBIaN0=;
        b=LdYx8QbSSXYJSgfh6dTCphLNA2MZUcGZtKLoBJ63e/LIACYLpszR3Qzw+3kZgoliA8
         aLvcpvjZXJ1CB6+3YC6Icvf4TMwxL0JNDxgBpxc7F9OfkxJQVHo/XkK7UPfhqZmAZOAi
         rvA4irjyzyJMa5AsBK7A+JK1OuLU0ZH/7085Hb/xFOvCaFXKgNxk9oTt6/Z5pc3Vw/rM
         D157yHJXcZhWSBqusAKffU/uCzJEplcpzZMeJ6o26RJabEBDLWWEZHvRxpgBMUStRa6x
         o6U0dLGd0D/BUh63XmlEyH5XxOdPojgPVtVSPkP1+EFIReF+Uv849Xc6kLX82gegCNsD
         cCMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750514016; x=1751118816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bTflLiAJEMI7+0/3feKtggy4eDDBbx+qju7cZDBIaN0=;
        b=ZtAJbHrbMbhBGYe1VCc59wkZZwl37xGFnyWfcrncFUpGekJ7wT6bPnk/2YZ5KQCq+L
         crK01BEIhwG1XbwamIZr14H+kdcfwproVJJ1zg8T/hSiDyyzAe3hDDV167Jk4Ebab0i5
         zTGhCCI230oZCcJhmpAw2hwCyx9MN4xZSxtIOEKEH4ScbpvmvxOOHp4/nenfVERj5i4I
         fFo3Nndn97outTcc052IETsDapk/+1Ld6+skYjxn5H2nrZls9VwV89WlxOegsaoSeYuv
         PSwO7Mjf/ecpMRPYMgAbV3/uNENkZ8KCiQnSoT2zw0ChgtzqWwcyxDhxvxLdL7Xq+eUd
         ByIg==
X-Forwarded-Encrypted: i=1; AJvYcCUmCys+nvdYnZFJsqUA+cBmkS2oJsUgZBC4r3c5yxMbUQx0WEddvK16t3gbvUvwiYpDxidfRLlpLZyinN78gWSS@lists.infradead.org
X-Gm-Message-State: AOJu0YykBVo6LHZmjcxMxanappQl8VQFneWwuHdYCsp8/Co426VQRGIO
	CrpZ2iKWmXeEZU3c3VyoJlEvsqFOFedlCiPjNhQGubRXX5kEvPgphf+EcOAd4wwPsEs=
X-Gm-Gg: ASbGnctk+558dOFbaVk2QHKS55ACM308km/MEw3emxJNpYlnxP7xHwOIseeyAwLvCic
	z4N3z6HpJHot/U6he2xVfwffd9wj7A9ZW+jQ+AG2goLRjryoiAjtCz5KSJMmu3ILS6TGmSbKjiW
	V4vGqBCIOHBgVM7WF8oDzkVd7NJZ4b676aBRZ4Bl3G/+H9QvPlWqQnx+IUQyAjwP3zIN6ECOQ9m
	bQO4nVOpGjbcYhtXNzYd6YMBY5yucfPgxSBj6O4f/mkVsj0YmmsEYAy5vSHzhsBKx51M4l0VUii
	GRuDzelyJ9Q2A/q59Y4c8vOfcEwDmCtDBO2YOL4+y9iXp1xxtElvMFwFu9lutN4=
X-Google-Smtp-Source: AGHT+IHNSz1H+Y6EvxrMfpwVtSmD5EjhjR2Uj7VVL9JBRhFfCwNGQaZuAsJ9UFVRyUwVzOhTpkaRDg==
X-Received: by 2002:a17:902:d4ce:b0:235:f1e4:3381 with SMTP id d9443c01a7336-237d9a2539fmr35469485ad.8.1750514016224;
        Sat, 21 Jun 2025 06:53:36 -0700 (PDT)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d86103c1sm40700275ad.105.2025.06.21.06.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Jun 2025 06:53:35 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add bluetooth support to ArmSoM Sige7
Date: Sat, 21 Jun 2025 21:53:14 +0800
Message-ID: <20250621135319.61766-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_065337_634907_B2A66A32 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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

ArmSoM Sige7 has onboard AP6275P Wi-Fi6 (PCIe) and BT5 (UART) module
which is similar with Khadas Edge2. This commit enables bluetooth
at uart6.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

 .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
index ae9274365be..39197ee1983 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
@@ -373,6 +373,20 @@ vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wireless-bluetooth {
+		bt_reset_pin: bt-reset-pin {
+			rockchip,pins = <3 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		bt_wake_pin: bt-wake-pin {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		bt_wake_host_irq: bt-wake-host-irq {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
 };
 
 &pwm1 {
@@ -767,6 +781,28 @@ &uart2 {
 	status = "okay";
 };
 
+&uart6 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
+	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		clocks = <&hym8563>;
+		clock-names = "lpo";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PC5 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wakeup";
+		device-wakeup-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+		shutdown-gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_wake_host_irq &bt_wake_pin &bt_reset_pin>;
+		vbat-supply = <&vcc_3v3_s3>;
+		vddio-supply = <&vcc_1v8_s3>;
+	};
+};
+
 &usbdp_phy1 {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
