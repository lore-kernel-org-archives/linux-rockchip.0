Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FD2ECFD376
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 09:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aqqYjI7e/kFfiHlsIUxki3gyzqe4vLnzMpNaJp5AQEQ=; b=OInOi2zeTeZdGp
	bm/Jde4rejvyZkb2+1WGndhzLce0UHSxdvyVK3eKszrZLmLM79Hn+R594oFUv1SR/V0F/MbElfbN9
	HTHjHwLOFAn91S02J+MxF7BWtRXGR4hgsSy1t8iDkwWHR9h9Db1nST/SgKs3NwqNO5qfPQHtgyvwg
	71eCghbqF2h6bu4DglDY5/zqK2bsT8Asl9hFgui0WZXbn1jdTb8I3VzJeaN+S6ylsAaMU2QfQUFGW
	UsbQSSgvefYxiEYZcJskJrG3Cqdi78hQ+P0MW82kmBBRXVEzrUC5kCpbXjyf27NO0Uf3d/SCWymp4
	hWwG8UMtLqDBVbyIwB+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQN5l-00000005CzO-0umx;
	Tue, 02 Dec 2025 09:54:41 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQN5i-00000005Cyd-3Agj
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 09:54:40 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b762de65c07so196342966b.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Dec 2025 01:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764669277; x=1765274077; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fmcXNUEO80mXAVYkIIIRpgbvGeVPZ2JwOkqQjxC/qNM=;
        b=U5nrKEHQ3j6ZsCXzT7sVvq+3dh78duQPfZZExPPOAHrgxOTRgVq0ZOdvhGJQ7CA95u
         mhRIaM2LnPcKJwF1LNgdo5bgycfxJkNTQRSA4XUhs3tXnqaor28TJyAXsu35PrPi4uZf
         +E4Z4UFLSfJCHiXWN3yl1J228hcpKmv1ewBzAyq+29rg1Zbtf7c4uPWm+P+Ilwqp64/m
         XvTaFtfJ0cG0/f38l6nXCY4+AItIloD/MUaKWjWpSsL+xujhsA2PSlgAofF5rWot5kAW
         EnYCXIZR++63hVTjrP7gRAnUl2B1wBI1L7XdcCd2xzUt6XH10tdi5wAEXCK6Mt7dVd5g
         mCmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764669277; x=1765274077;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fmcXNUEO80mXAVYkIIIRpgbvGeVPZ2JwOkqQjxC/qNM=;
        b=L//GxW8NEt8JBcToHra8mNWpToeb1V9BvRx9UyFi8h9FLJSOdXIRbtLZGudMXwPPP9
         TCsfpuURrj4s3fdKyJUq2n4xQLyGay+vpcnmCJb5+VKJhY7V8sdBPdE55rrBeRqjs4P7
         eZqF69scBC+EwUsxpabbnWuPW1o4SB8X4qdJFpH7Tk5LX/NidUmcecfdsd/tMgqCgiCT
         6fNNkgMIohB+0HuNKGewIexv+ZAJMRGCyzhBZ2cmfJEtrPgT+l9i8I2HpJyw98l5I2hw
         Qnu01CPhFLep1gfdoiKGXjXhsW5imNQqXnpr3ggBSubRRqBWgk8v1nWN2dD1quBNzPqJ
         joag==
X-Forwarded-Encrypted: i=1; AJvYcCUV6K2sJWpqThXZlME59mCoLP9sS5Zaqgxelrij2YTiuvd5y08lkG30KKInKTR6+egkauGTUfwSs4iometToQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwiI9jx3SgVIViWXKENPiWoaamK2j1HvphMDmKqOCrisJoN5Ypn
	ks6ALsVU/WP+hirLtVKr7gZLlAFWHF/s8zQlx1UmiQXWDW6hqHm0j9tr
X-Gm-Gg: ASbGncty/RXZ9Kobyi9ucrSpq6u+BfIJQ5arRi7NZXkfsUi53TO6ELvD6KlF5NCkBEZ
	dVOoaKavRDT3Lzf0N7dC9ZZ1qsbJlk+OScvcd0pd5exQinnVFs3ejr1JGOrBzMQFmARIUvw993n
	/OF8Ij+TT/bsFiIH9VcdIYkON/1vzeFTZsG4fXl4jcUs4mtt6wKVjylHE8XsU3206wBzKx5XVEI
	zcSw7YO2IrE2xH31URUni0XIqVHgz9UG34f0N/r/CLWUf/MuFNHjn4qwl/ueet5GqKc0ZehEcot
	bcuXAB0UmVAypoIQkkQ16RMTFomXg1j+ONe1dXlsk/m0oU/rSA6BSIPr9I6zXV7kCEPjpCOXOdm
	s/X7pUKuCfnLWq7lizzgUGMk8sqJ3jFrAuwuKfUZosUbWFD5UIVc4VEBmgNsjY/DSyvrSjT4eWO
	kx9yknj5ZE9cb4pc5QwFU4fKllz7J3
X-Google-Smtp-Source: AGHT+IFJ63lxp3eqfF6B3HqtZfdhy6bpjHT9zOV3GMz4SeDzpuMwc0q+BDsBTOMbJgg/CZ2xByTBig==
X-Received: by 2002:a17:906:c10e:b0:b73:2df0:9fa9 with SMTP id a640c23a62f3a-b76c566bccamr3151399066b.59.1764669276496;
        Tue, 02 Dec 2025 01:54:36 -0800 (PST)
Received: from alchark-surface.localdomain ([185.209.196.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f51a9819sm1494466566b.25.2025.12.02.01.54.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 01:54:36 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 02 Dec 2025 13:54:31 +0400
Subject: [PATCH v2] arm64: dts: rockchip: Add overlay for the PCIe slot on
 RK3576 EVB1
MIME-Version: 1.0
Message-Id: <20251202-evb1-pcie1-v2-1-810693b1b72f@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFa3LmkC/03Myw6CMBCF4Vchs7amUwWBle9hWPQywiRCSWsaD
 em7W3Hj8j/J+TaIFJgi9NUGgRJH9ksJdajATnoZSbArDUqqGlG1gpJBsVomFNrRqe302dWdhHJ
 YA935tWO3ofTE8enDe7cTftcfoyT+MwkFCtsoY3RtEZvLdZw1P47WzzDknD9VrquJpAAAAA==
X-Change-ID: 20251128-evb1-pcie1-ade389a4d590
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3470; i=alchark@gmail.com;
 h=from:subject:message-id; bh=EiXesyPMoSc0xu7TjPVo5wefAUNtnNky3tjqoIW+AFk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTqbY/lOdT+2f7X5obnj38bezgrMH3WFfszl68h9d+Jg
 3G+035N7ShlYRDjYpAVU2SZ+22J7VQjvlm7PDy+wsxhZQIZwsDFKQATkbvHyDD565v1+aeZN6gq
 BIqeDb5mNnP5NPFfR7OK0sJdar+Ze9xkZJi31pDL3qBQ8tc3n9Ptv75NXSP3KtTp24Moni6xqPL
 bM5gA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_015438_826496_7AD467A4 
X-CRM114-Status: GOOD (  15.20  )
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
Changes in v2:
- Added the standalone .dtbo Makefile target forgotten in v1
- Link to v1: https://lore.kernel.org/r/20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com
---
 arch/arm64/boot/dts/rockchip/Makefile              |  5 ++++
 .../boot/dts/rockchip/rk3576-evb1-v10-pcie1.dtso   | 31 ++++++++++++++++++++++
 2 files changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index ad684e3831bc..ecd2dd365e97 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -153,6 +153,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10-pcie1.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-luckfox-omni3576.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-nanopi-m5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-roc-pc.dtb
@@ -252,6 +253,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5-v1.2-wifibt.dtb
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
