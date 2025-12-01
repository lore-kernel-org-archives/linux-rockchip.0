Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2109ED116F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 12:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nlspTgXB+nYQci0ltJzBf+9kSDj6gln0/4q3zlGw+aI=; b=Ip8tSZGj0/TkyO
	EI1tpcbjNdgJ5a4uVN2Knze8pad7rosGnPoZ7GQWvbSX7uvq4yI6uqwdqxrNqcj9+RezOBMzciMTv
	HO2SlJNGqNZU+wuRaGY1090k5WQMOCn6SO9HR1d+OzqFzTq6MCqcXwxK7ZhF/Txhktnn6+ExYP4pT
	sBlGwWvmoXZj0o8YuDi5psu/+E92Kd1aMXD3SxMt/0vWxJVcpY26CPtmVgg8XnmfU7ygzGqOSJaEx
	HS4hbd+RsoiuDty1z9J1AZYxflNS3+Dgi47zYUniVaNQtT3gjXs1EelWRjT6NBf7GW1Z0+WRbnsK8
	04/uEw3sa/OJo1VhOiAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ3AG-00000003ZBT-1otN;
	Mon, 01 Dec 2025 12:38:00 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ3AD-00000003Z9s-1xnU
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Dec 2025 12:37:59 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-47775fb6cb4so29066545e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Dec 2025 04:37:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764592675; x=1765197475; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Th9QIGTGx5TubvrIKd4rYbZwHElm6Jjolg9pSmpCDxM=;
        b=NXKXUm4vG9zcp/h8sptRgvBQpmXkSInXWp50TVSxgsFDmY3UDqNgAK72e8xWyF0DWK
         w+5b35/+yH87qH2SASROF8YW7hpFu6Shj25kWhiRjZftk1OiY/vQeFczqzU7p3N+kGUB
         q1edVLmEn71BpMHMUwrmOhyMTrTIlhf/NI+SjIknyH76/sooczfs7GbCGoZTJ9r6XBVZ
         dvcINEzmbX2NFkYE5ErAanJ9XowK3wjps/SMBDjjROHefQXW8Gcut3+5BL05/8HB7a8D
         kxxI2QqWY7H5jiWCvlSnw/caViGIWMhwA6bV8ecKuT9FsDvCcTzvHJtC9XNZ9BBsz7pZ
         N7DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764592675; x=1765197475;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Th9QIGTGx5TubvrIKd4rYbZwHElm6Jjolg9pSmpCDxM=;
        b=n4r6Ku4FwF8a44mHPxkqsmXceolrvQ8bJz05mc0DWmi0Xwv/gGOVAFNqNMwCG+P10R
         Bb3WdKK6/eVvLSvelhjUPfbzaJkOI3Mwo2sIpnfe+c2GfEJfdjMaPrkYD9WZV0KvjO2G
         CDfeAxquym1ijoHxbalU2ZHM1LrMwm1IorfKRTWaWcrzSdJqMEJfVZEKfrphvxUv++72
         pBx298ilJ+rXQLFY9okIkJZVccg1TzG3rkB71zSv6OvwoTGv9tta80fP47Dwt+Bur+uY
         iKL1P1+zFEc1pK+LB7CgjlfM175ur8dRpH4TuBAaw7J72NxFgf1eiHp02eEY6ngErFd0
         egUw==
X-Forwarded-Encrypted: i=1; AJvYcCVvcUA8Fr/zZ2ZOHwQbTBpgDTyUZ4KSnwjL0hYAzYMeWrShDHqzCrvbRYNBs7CwLFUGBnpz3DIazB8TRsF+HA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxPu1c4qhNf0qR/VsevghXxhOgyO2IDHh1Jp+7HIod3rP/ywmZB
	HIoZcOU1i3qbRyuOKgYdxnlrbhoXiRQ8fDSWOK6iInjFaGZayGL9CCAa
X-Gm-Gg: ASbGncvQOIXSIcKpY95WM5LIVljMlv49RAbdyn6ec9Jh0cNiYrCXaC05cnAVqnQqLtF
	7XJN1okIZPh5PZ61uEIV8N5IZ2z2bRuPhQRiIxOFavfq4q3tNuwmVvmOejoPtVm5rpMJAEuv73t
	QHv5O0g92ymMzxu/i9zNK/wIvbiiibTa755eG34ydf8MZ5tHrIcvenzVYozEAi6rpaliJvSowlO
	k4m3dVmIxczIFRP0WUSeawmwsit3fHdfIN5P3bwnPDYW9iFTjvLp+MvFTxp0aqUWt8cEBtb+Gre
	IP0SHLhQuJXJu5o0/fqCAB/d9WJdkW7zfObU2jSZvjomszxxDNrgKoHbpnBNgTU5RSv+hfpY39B
	wsOOEMGhVqFFqkOnPPRa5ckGmFpnD7BwlcuMWYLuMB+hVMlN5Vnd3i/IdpII5X3dx7bNx9/DDzm
	2Dvlfw+/KPiIcuAiNnuJAiAvdXuvwAPeC3pG79o0fFNXGv1t9b6ZeZzDy37X7wmETNQipDqkmDJ
	A==
X-Google-Smtp-Source: AGHT+IHuS7ih0/r1wtiTtCRYhrtbZkOYclnmpf83ik6Tv1jMFCB/iqtIuG69FulsayoBVRSfhmATZA==
X-Received: by 2002:a05:600c:198e:b0:46e:33b2:c8da with SMTP id 5b1f17b1804b1-477c1133927mr378893455e9.32.1764592675414;
        Mon, 01 Dec 2025 04:37:55 -0800 (PST)
Received: from alchark-surface.localdomain (bba-92-99-175-128.alshamil.net.ae. [92.99.175.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1cac4fd7sm26232131f8f.42.2025.12.01.04.37.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 04:37:54 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 01 Dec 2025 16:37:54 +0400
Subject: [PATCH] arm64: dts: rockchip: Add overlay for the PCIe slot on
 RK3576 EVB1
MIME-Version: 1.0
Message-Id: <20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com>
X-B4-Tracking: v=1; b=H4sIACGMLWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDQyML3dSyJEPdguTMVEPdxJRUYwvLRJMUU0sDJaCGgqLUtMwKsGHRsbW
 1AFzmF8ZcAAAA
X-Change-ID: 20251128-evb1-pcie1-ade389a4d590
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2800; i=alchark@gmail.com;
 h=from:subject:message-id; bh=3Vvq8LPwxXKHOKoZ+a6kHlkt56selPRWjocT3g952Go=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTq9qjM+691ivHks9cl6irvd3S+X5b8yzb0c/Wbn8kXV
 J+fCNi0t6OUhUGMi0FWTJFl7rcltlON+Gbt8vD4CjOHlQlkCAMXpwBMZIEsw1+5Xs2myvIjZp5G
 Zg+Mzn3R+X2u4btNSYuWg5DLtMXMx2cxMjzIdo88aLhfr3Zr9D1l2f+H4948v7/RWLmP55WDrXb
 xOUYA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_043757_514529_F07562BC 
X-CRM114-Status: GOOD (  14.81  )
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

Rockchip RK3576 EVB1 has an onboard PCIe slot (PCIe 2.1, x4 mechanically,
x1 electrically), but it shares pins and PHY with the only USB3 Type-A
port.

There is a physical switch next to the slot to transfer respective pins
connection from the USB3 port to the PCIe slot, but apart from flipping
the switch one must also disable the USB3 host controller to prevent it
from claiming the PHY before the PCIe slot can become usable.

Add an overlay to disable the USB3 host port and instead enable the
PCIe slot, along with its pin configs. The physical switch must still be
flipped to the "ON - PCIe1" position for this to work.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  4 +++
 .../boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso   | 31 ++++++++++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ad684e3831bc..63198a618a2b 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -252,6 +252,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtb
 rk3576-armsom-sige5-v1.2-wifibt-dtbs := rk3576-armsom-sige5.dtb \
 	rk3576-armsom-sige5-v1.2-wifibt.dtbo
 
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10-pcie1.dtb
+rk3576-evb1-v10-pcie1-dtbs := rk3576-evb1-v10.dtb \
+	rk3576-evb1-v10-pcie1.dtbo
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
 rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb \
 	rk3588-edgeble-neu6a-wifi.dtbo
diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso
new file mode 100644
index 000000000000..dccf4a5debdb
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * DT-overlay to enable the onboard PCIe x1 slot, which shares pins and the PHY
+ * with the USB3 host port.
+ * To use the PCIe slot, apply this overlay and flip the Dial_Switch_1 right
+ * next to the PCIe slot to low state (labeled "ON - PCIe1"). USB3 host port
+ * will be unusable (not even in 2.0 mode)
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&pcie1 {
+	pinctrl-0 = <&pcie1m0_pins &pcie1_rst>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&pinctrl {
+	pcie1 {
+		pcie1_rst: pcie1-rst {
+			rockchip,pins = <4 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&usb_drd1_dwc3 {
+	status = "disabled";
+};

---
base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
change-id: 20251128-evb1-pcie1-ade389a4d590

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
