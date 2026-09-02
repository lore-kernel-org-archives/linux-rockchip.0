Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D74BC624D6
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 13:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tfH5bzz7UBEPTIFbPsqeU3R0054vS6s2bNqXs/gCBA=; b=YvY5ge1e3w7ln5
	OpgwEjtsjoubeQzRH5fS30Cq2M9beaosNvm5LedKYFCFXQyDcrrLnWIHUzQtz6VmpanywpV3di2iT
	Qqap5MPVQjX4q4XWsdqK+elrYh3ypDSMaUDimYrWk55NeqdmP1mnjZsnpUdhDQnZ/ae8ijPCkkYk/
	R/Tf+N3CllQm3rpZLPL3d8EiYu6HKYQZd6ZQqdprXHgTYutOrQZFbNuZaf9b8VN5MaEWHw+WA5yBK
	uFf2duyW/TFskfRbwvX9HNB6f5ZGjulQHxXadC9pAUnOWFk5TEi6hguALZO7hwUUuDCuWRBN0CvOo
	NDam25OC4T9smzvTSJ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khM-0000000El8S-0Pto;
	Wed, 02 Sep 2026 13:08:16 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1khJ-0000000El64-3Op7
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 13:08:15 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-482fc3327fdso717570f8f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 06:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788354492; x=1788959292; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VstGMH+clvE6OSCjH9oL0GGKXD+unvqTKSVxvTB8uDc=;
        b=Ub6kOyRzuvvD23LM2h69/a3Ayhs7OK3FXsCNDXnBpPd84Ys5EzGtH0JEbX9kyEuu7A
         Ylq8OKcY17J44H1Pryd+U9bsLQ91RUu7/Pz0Ig+KXZUGd95+0hMTRo4zDj98u0u1pyc5
         nf6Y5plMHa+gGmXN7XZFWsqwIzLIAqILN3oLuIYsTUG2Zj8fO4YWxfJo5zQLz2RB2oZs
         lcWEC18DPe3eHshuIaTrav7zJGlIQZH2JoRLYCxsGKLicruo9sWH+HNvbuyDYH5PHB8j
         m24d1yw8mT34D5PhAma2yhdgJROexRrvVfaQhb/1AmzfibQUmlS9e8IfcStzjSGn6f3k
         O0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788354492; x=1788959292;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VstGMH+clvE6OSCjH9oL0GGKXD+unvqTKSVxvTB8uDc=;
        b=Qy6E0dUPEILJ/T/5oHP2rloBXWS+BZUyC7Cbp/QHVtVHae/h5jckDrD4nVO1CcJwcJ
         lEB2bba5S3aq1XmaAGGw0tvb8k9x544R27Lv7Utvkwg2U2VXe8ILOZkcBZwqKZ9+1BSR
         UmdVg7WQ9fC5SMWrYs6nuLBotKsX1Ml9kRPa5QiLT4RYPyZ9L7W7IJLoBjrc+aeL/o7K
         IyOIUkHDq8IvXSozedVMfZ93JJZlE6g9vKtXI92t6eoaRNEnZKQ7+wPfVElokDQPOvTI
         lcwOHLy/n1DmvGg89iFckQVD+ka9nAMnHwNtvyIUBszj+a4GRpNzq5vrXK9uxGnFvoEN
         UVsg==
X-Forwarded-Encrypted: i=1; AKwUvBw4Et+J9InHXu40Wr31H1HzOW2qAjUP+at5Enj2vw0Sk6/nJPX2DgNlbGU0nFIqBSCRBAzzDNizamY9O6MFVw==@lists.infradead.org
X-Gm-Message-State: AFuF++lwVvPu8EanVVW0Rz+qYo/qRr92gLk/si1+HHUupE3zNkx2C8GW
	InTIHKiLqcTH9HNKLgUU48wSB6qT/NGUEk4LsdQnzJz+uRGUwmClP89b3HiYxu8RkmI=
X-Gm-Gg: AYBFou3aZyU33ky4gKBplSEdV3ZoQImkALO2lmZ1CGk2KoKnOKBQASQrDzcjSyOYQwp
	rvJUbNCZ8gYzXHx/YcUy8SqBacwOnqtah0RvwcVzHr0NcOdrdPpTPVpei38DP4EExbjjHeRFdB7
	S4BvIrFpGIwUlaqATB1VWQfrI630sthD1QJ2AGnzabiS0S61WcUloc2L6Xf54+FBZoi+Ov9GXQt
	FCznuOJcVmc1LLgN0f3kf0vOkzR7aaKCDbVq21FADnoD0Q7hxO+j64l+eOs7fj8sth5G/4svAki
	WHvLlSNiMycWxtGom6wNAKqrHeB/HYOLhNMDtaRKJ831spLpvVYj1NoRfGYktwvHoMiRP6YvwGc
	2Z/iv7h6c2ezxBHsh6gkuDdKrvbu+6cmVY/eEu2xtf4BbTbbp6Se/TVdSFurYERuUyTmLYa6l3Z
	ebMhc8bG/rUitDS7zI2ShKeP5ZBbntiybLpjuBr10g8gKUdI9Yx6lQqUYbawTyRI4jd72kRtMsr
	9eMiwtJ54zLim7Ocyqzwj52JqGviHOXIObPLYxBug==
X-Received: by 2002:a05:6000:290f:b0:484:3310:9ab0 with SMTP id ffacd0b85a97d-484914d8435mr8297857f8f.25.1788354492009;
        Wed, 02 Sep 2026 06:08:12 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-2-51-220-108.alshamil.net.ae. [2.51.220.108])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48448e72b5bsm6385800f8f.4.2026.09.02.06.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2026 06:08:10 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 02 Sep 2026 17:07:53 +0400
Subject: [PATCH v2 2/4] dt-bindings: nvmem: layouts: Add Rockchip OTP CPUID
 layout
MIME-Version: 1.0
Message-Id: <20260902-rk3576-otp-cpuid-mac-v2-2-e4b7fe2ab13f@flipper.net>
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
In-Reply-To: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
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
 h=from:subject:message-id; bh=/RzWURUSlbLsxwiuIazTsYvvak9uXPkuT7+9wqJHcUM=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTNkN98wCL61IsMQ7/0dv97TsGZmfZJz1W42WaKZtU0M
 Rt5c6Z1TGRhEONisBRTZJn7bYntVCO+Wbs8PL7CzGFlAhkiLdLAAAQsDHy5iXmlRjpGeqbahnqG
 RjrGOkYMXJwCMNXpLYwMy83XL+BRTM0vC1bx833+6pLjDmXt45cSjoV1f2O+cuhrKiPDj1/BvPa
 JFlwa/7vjN7y+NLmKzZgx8uDyNzLpKcrtjNPYAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_060813_895784_CE30F54B 
X-CRM114-Status: GOOD (  18.08  )
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
index eb4e5a61056e..f3d07ce7b3c8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -23722,6 +23722,12 @@ F:	Documentation/userspace-api/media/v4l/metafmt-rkisp1.rst
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
