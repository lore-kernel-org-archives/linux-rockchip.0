Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B2ADC624D6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVPK31V6s79J/75VUktDIWXbMd/s/GzbkPUm0RSF2jk=; b=cwFWsVq3NzqqYS
	R57L7Vn/Dy6yyAgkEzWUXl/rbkrCji9NpVL7tKBFQfXrkS6fNSpzjdJs1kmTPSTQTWJrU1QqdISKH
	Qa0GW57+1ZTED+2JxdS0honRsTAuYhTZOuNJrXhkgaLv2qNWROOX5pB7DFCw+i1q3XXiNTtHCGFGe
	i6QqOVIPMnU3tzYBoQlCkSawT0mISEdeH7nPaxsHaBUAJtDlBc3DBG4q3Oe5s+WvJj4mg/0JpFjMl
	kM5/KmKS2RplVAMvfGSGM+/0NVNmogPlKjdinCr4hEuCRnPEonSSdlcax1PPeGhaVoBnl1+9e6ep0
	0fLtxyTBwB/wVCjlBPuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUP-0000000CVl0-0nbp;
	Tue, 01 Sep 2026 15:33:33 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QUM-0000000CViQ-0DPx
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:33:32 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-49b392ccaacso69923855e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788276808; x=1788881608; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y99lfkM4lfRyGnQf4vtEAa4xKTLI+p2p582CZw7DOpg=;
        b=1M1PeKfRlBZ6nu4Q5pBExTQ3DRRb1zCkZjfnOn46PnwLCJqKRAD2IkFkZ2ntOWBM1R
         TM4cGiv7GV7EFnUNt2j+gJ+t7u6Y7WKjFzpzbhJYL5yfHu3WkFv54fZBMvFxCl13DIkY
         o3bMdb5Kf5U4eJ04m0WcUCL9woy3DtxGYTEkdHtse0eJXZeSxo0avQ0yYoST7H4oJjz+
         eGAPsWLrQKlujfcg+R4GbnILiOS9jmljYAGw82svbxGuSYF01i/nAGNHTdgEZ8I8BYST
         Uof/P6L9T8Zhwi8ENSKHtywFq/2lT2oqGs+7wVyFvKYXCaGb/Xg35aQkyIlbt9LgEiYE
         FhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788276808; x=1788881608;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y99lfkM4lfRyGnQf4vtEAa4xKTLI+p2p582CZw7DOpg=;
        b=cLXZgkvuKxuDf/MRyFYZ2/qAInExkviHa8HOm3fsHZOmjJHP1/v4kasaO9j9+wp6VZ
         eYQcgR/JiohQzUMq9cVCB3IM346e76kAPm28avI+LLcbh/INXrHABjbYUGeOmIzhI9TZ
         cISOcuflYqvjymkrxIAC/ukpLXsrsIvsqT5cgwhPP44CJmPPV+oxadlOMYWm0IoLvW31
         YfDqb6YucWiKxoiKXpmV03ZS63Ow1dWL4qeNmymxoBglRljCxxdfJSOtNsqxgqQdinbQ
         CBU/XGgCDsas2KiIQlb0ZJK9i64bNTapezmzRNXDZ7OPAjSPftJKZtEQFoSheEcfUT3D
         6qqw==
X-Forwarded-Encrypted: i=1; AHgh+RrV0OQYG01V66l25KIOnD+pd8kK8xxi8+qCD5uwVHJk7ZqPIVSq/u8dG0yTQmouk1ZAe4d9jIdYttpUvfxzAA==@lists.infradead.org
X-Gm-Message-State: AFuF++mueh7Jt7+nVFbaFqAE+KYDFVAEPFh8YLotsHJX9DhXTzAkElzu
	n2EgYsY02nPM8r974Ql/bClgqZ657xI3mELaOBl4CNddVH6KXNFqsDr7QZRAi9WAEK2jISxIWzM
	R3T2i
X-Gm-Gg: AR+sD13yf10mBJFNupRB5KCz4AYHbsYq0qoVE7iHOh8j3GgeJMp3dEwugSXOjalB4aE
	Y3YpHKydUt6SkVAPjx0x1OaDSPsLwjskDXhjGf1WJ4BYa/uEhoEpvR2IvJadJVdFHiLKxg7z/nM
	18eyAVbtRHwE39PHUtN0mOfM3KBVSAObpp9ecbNyJeC0ggeorTkhjfblZguQws4YDJvrBVLKxH1
	LX+RDpoZ2q3rpJRoSqEGlO+/6wN4uPsW2ublx2GWZwZjm7CBA8XSCQNLck88xGHRrHmGv0EnRuV
	x4vpFSqKVnRgkAhMv9MG7QMr5OxioZUM5DEOtbbcFyZK4wMtzOlCK0ASXK64O+cyRy9l5ps3YC+
	FhK9BsdzhGX882IUzyd7tTaFwIXkBu/YGiXWWnYXcbim9sYaBRdfmq/a9RLduzJOPWA1dm78Cx5
	6uk6lQisJA86yXHvfYdmXCNi7J7mEq8mhu48lrbbmwlVh4jXTqLQC22WPoz2pu9Of5jC9kiVv1U
	Mmxh7YHzlZm2Ua8+YCPTjtYCFvxzdJoNs+mRXXM
X-Received: by 2002:a05:600c:4514:b0:499:900c:9c68 with SMTP id 5b1f17b1804b1-49b91c1f2a2mr561066925e9.6.1788276808041;
        Tue, 01 Sep 2026 08:33:28 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b91c5790csm314541845e9.0.2026.09.01.08.33.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:33:27 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 01 Sep 2026 19:33:12 +0400
Subject: [PATCH 2/4] dt-bindings: nvmem: layouts: Add Rockchip OTP CPUID
 layout
MIME-Version: 1.0
Message-Id: <20260901-rk3576-otp-cpuid-mac-v1-2-ea9135270fc2@flipper.net>
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
In-Reply-To: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4722; i=alchark@flipper.net;
 h=from:subject:message-id; bh=gbqk612bcsgInYoFXSfKuUjKXJIWg/fCJSQ1WjRdZrs=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRN+2D3v1K22fvkdJVbDxKZnF9mnVq/kkvolMicZTaX7
 QIyz85f2TGRhUGMi8FSTJFl7rcltlON+Gbt8vD4CjOHlQlkiLRIAwMQsDDw5SbmlRrpGOmZahvq
 GRrpGOsYMXBxCsBU33nJ8D989rzHab8Fn9z54BMt9Uc94njWGqs9CbaFRes+XlHyaUtk+F+2+1e
 mt2/TpsJLnq5vdR7P/BB8z3CehuKO3MK4D/+aKhkA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_083330_160425_E3368742 
X-CRM114-Status: GOOD (  18.20  )
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

Rockchip SoCs ship with a unique CPU ID programmed into their internal OTP
memory, and Rockchip bootloaders derive Ethernet MAC addresses from it so
that boards with no dedicated storage for one still get a stable address.

Describe that derivation as an NVMEM layout, so that the resulting
addresses become available through the standard nvmem "mac-address" cell
whether or not the firmware got a chance to patch them into the device
tree. Keep the compatible SoC specific, as the location of the CPU ID
within the OTP memory differs between SoCs.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 .../bindings/nvmem/layouts/nvmem-layout.yaml       |  1 +
 .../nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml   | 73 ++++++++++++++++++++++
 MAINTAINERS                                        |  6 ++
 3 files changed, 80 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/layouts/nvmem-layout.yaml b/Documentation/devicetree/bindings/nvmem/layouts/nvmem-layout.yaml
index 382507060651..ab94dbb41aac 100644
--- a/Documentation/devicetree/bindings/nvmem/layouts/nvmem-layout.yaml
+++ b/Documentation/devicetree/bindings/nvmem/layouts/nvmem-layout.yaml
@@ -21,6 +21,7 @@ oneOf:
   - $ref: fixed-layout.yaml
   - $ref: kontron,sl28-vpd.yaml
   - $ref: onie,tlv-layout.yaml
+  - $ref: rockchip,rk3576-otp-cpuid.yaml
   - $ref: u-boot,env.yaml
 
 properties:
diff --git a/Documentation/devicetree/bindings/nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml b/Documentation/devicetree/bindings/nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml
new file mode 100644
index 000000000000..85153d480950
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml
@@ -0,0 +1,73 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVMEM layout of the CPU ID in Rockchip OTP memory
+
+maintainers:
+  - Alexey Charkov <alchark@flipper.net>
+
+description: |
+  Rockchip SoCs are shipped with a unique CPU ID programmed into their
+  internal OTP memory. Rockchip bootloaders derive Ethernet MAC addresses
+  from it, so that boards which have no dedicated storage for a MAC address
+  still get a stable one. The addresses are computed by hashing the lowercase
+  hexadecimal representation of the CPU ID with SHA-256 and taking the first
+  six octets of the digest, with the multicast bit cleared and the locally
+  administered bit set.
+
+  The location of the CPU ID within the OTP memory differs between SoCs,
+  hence the SoC specific compatible.
+
+select: false
+
+properties:
+  compatible:
+    const: rockchip,rk3576-otp-cpuid
+
+  mac-address:
+    type: object
+    description:
+      MAC address derived from the CPU ID. The first argument of the phandle
+      selects one of the two addresses that can be derived (can be 0 or 1).
+
+    properties:
+      "#nvmem-cell-cells":
+        const: 1
+
+    additionalProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3576-cru.h>
+    #include <dt-bindings/reset/rockchip,rk3576-cru.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        otp@2a580000 {
+            compatible = "rockchip,rk3576-otp";
+            reg = <0x0 0x2a580000 0x0 0x400>;
+            clocks = <&cru CLK_OTPC_NS>, <&cru PCLK_OTPC_NS>,
+                     <&cru CLK_OTP_PHY_G>;
+            clock-names = "otp", "apb_pclk", "phy";
+            resets = <&cru SRST_OTPC_NS>, <&cru SRST_P_OTPC_NS>;
+            reset-names = "otp", "apb";
+
+            nvmem-layout {
+                compatible = "rockchip,rk3576-otp-cpuid";
+
+                otp_mac_address: mac-address {
+                    #nvmem-cell-cells = <1>;
+                };
+            };
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index b91655b34f0e..b35b3677bf0b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23713,6 +23713,12 @@ F:	Documentation/userspace-api/media/v4l/metafmt-rkisp1.rst
 F:	drivers/media/platform/rockchip/rkisp1
 F:	include/uapi/linux/rkisp1-config.h
 
+ROCKCHIP OTP CPUID NVMEM LAYOUT DRIVER
+M:	Alexey Charkov <alchark@flipper.net>
+L:	linux-rockchip@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/nvmem/layouts/rockchip,rk3576-otp-cpuid.yaml
+
 ROCKCHIP RK3568 RANDOM NUMBER GENERATOR SUPPORT
 M:	Daniel Golle <daniel@makrotopia.org>
 M:	Aurelien Jarno <aurelien@aurel32.net>

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
