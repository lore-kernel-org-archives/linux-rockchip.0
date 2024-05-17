Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBB88C04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 12:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NMPxAYPoUnixZFkVeyXbWRiXrUaRa39vRLSzdKdcOS0=; b=MuMQuslJM/8k4S
	DnTZflI7YMx4r/K3d4qDCmCs4uDc9zjznj8UsGOc3ZifC8drFHstRDDgcZcnOzCKJR4NMueLPrxId
	IN8SPIn1ceHDRxueZ0ZdWWCBQ6Lb6/nmsuUtNVPxAdTe0T2ePyAnJpegH3bJkiuwGe555xS2ncBeC
	MTcbA6v0oEfaF802eTQPGZefoZ33MOkk4mSMhi6lTdNVAn4dCR0bX2wIhe53FnLDJ/SVekIpYBlxJ
	i5QSjrSWVmKy5thJPENMdOoWOfbIRsIq7SZpNHeDInMX+pfgwdjJ2HwFyKK/C63W6DqoYpUdEHzvy
	Zh8xfOzkCr8HtOD3NoGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7wfE-00000007op2-2Hru;
	Fri, 17 May 2024 12:26:20 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7wfA-00000007okQ-3Mgj;
	Fri, 17 May 2024 12:26:18 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2e3e18c24c1so21001011fa.1;
        Fri, 17 May 2024 05:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715948763; x=1716553563; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BTfbpSzPiGIEgV303dsq51yFhN3J0xYTsTq4AVxFCHI=;
        b=Nh0cRZieZt5u5QbHyqzi9qr6HbYhE/EWxIqq5SzpZ72hoh76A0rR8rXARn/zjb8Ewz
         q2lNLxrWI7Z9fJGG8KAn0gM9HxjuTh1pRn+OZzixSNCfeiVOGhWQOcwpHtvWgAYh8tyF
         dhatcm/gZDfe4dUv2YWuWMIB1fGedk70Psd+KmXYZY10vVX076xxvY6hf7vGVZJyk+dv
         8/Dr2JLJKp515tCILdb6gQEbqkk7rk35pk1aagLy/9rYsQfG8Dd2E2ZlPnSnwUr7PAT6
         nw4yQ1XCDVkXE65lR5UIpniFpqBotguNxyErnWbm6NAMu9Vm/2adMgCeBUXHL4ezPHCW
         1MAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715948763; x=1716553563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BTfbpSzPiGIEgV303dsq51yFhN3J0xYTsTq4AVxFCHI=;
        b=CfuapNP1/0StilWgUajOAbs06FCphE4pavOdfnDIiUf880CM3vP27DqBb8L+aYgo1N
         mwdrDwb6Mugtzr0T8206M1wq9uWTU3MWafXGaxfAo68FqQnP1Dq0YCFIXDp90Cg3pXqR
         MXM98uvpMOuGXijug8/YdcVK5975j+TD2e5qh7xWmnm8UB5220/4E2z0hHeF4IdQqEoL
         NjF6Bu0HLW6tCM6AX8AasQ/gxpLW+RazMs0BOu1CiEsXglfHU4vi51A5YldiS9J/51nD
         TbI05MHHS/kv4IvNN1LDCFFAYhiFy+x1nDoHSTlLLoW8KU94m21O/JuN/6+nukARs6/B
         z8cg==
X-Forwarded-Encrypted: i=1; AJvYcCWOjn8dNim4u7tHhe3i7NVDW88axTSP2kQ4lWdcz72E9ewk8hBd+UScUrNqoYVGNc0MbP9pCq4vetPtRUEvFJXpaRzHzc2/5xBLe4oTK3qcSrF6WWlMXhOpmnUfdY7oLxg4d1a5mUwaMQMGvcAXSDZpsBPY6vP2KIg=
X-Gm-Message-State: AOJu0Yxutjl0+AdNtV2EPC4k3bLAkZND8TT+jj7QSh6AHeFvSihf4Lpx
	GK48NlI2VrcjaPeimJssUyfL9vOwvUWVZMaQo9yEU2/F9WmSkK+c9eEavH71cbM=
X-Google-Smtp-Source: AGHT+IESDynaSNz+w7Kg/DLSAjwanT7vil/v6O+GgjNjyOp7XS/RC3dSkeivfIryg2jvuKTuAI0Z9A==
X-Received: by 2002:a2e:7805:0:b0:2e1:bdfd:ce70 with SMTP id 38308e7fff4ca-2e51fd2dd0amr164028651fa.6.1715948762536;
        Fri, 17 May 2024 05:26:02 -0700 (PDT)
Received: from latitude-fedora.letovo.school ([194.247.191.114])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e4d15156d3sm26598971fa.99.2024.05.17.05.26.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 05:26:02 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add rfkill node for M.2 Key E Bluetooth on Rock 5B
Date: Fri, 17 May 2024 16:25:08 +0400
Message-ID: <20240517122509.4626-1-alchark@gmail.com>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_052616_863281_7C218BEA 
X-CRM114-Status: GOOD (  10.99  )
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

By default the BT WAKE signal inside the M.2 key E connector on Radxa
Rock 5B is driven low, which results in the Bluetooth function being
disabled even if the inserted M.2 card supports it. Expose this signal
as an RFKILL device so that it can be enabled by the userspace.

Tested with an Intel AX210 card, which connects a Bluetooth device over
the USB 2.0 bus.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index b70313643af8..27dd95f92f33 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -65,6 +65,13 @@ rfkill {
 		shutdown-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_HIGH>;
 	};
 
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-bt";
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+	};
+
 	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
