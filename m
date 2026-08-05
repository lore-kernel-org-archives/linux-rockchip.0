Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA298C2A09B
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 02:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lHLbBdE8rcC3JWqeWOV8b+mX65LW/KEGhZp+95vYMpc=; b=LL4CmPK5QIU6zl
	5XVDIEynuHTgwS3/7JzebCkP8kfjefIlD/HPvb8TeBqkR8kJf3pu5iL5sRnJ0x2uDsWzNjVnmJw52
	h9ZIGwLM/5K6vQUAdK6LUNQexwK8uKml/9yv3snUEosXLU2CPOJBaRUKlKpDDiWTeJjJG8z7gmPUU
	gxs2K1cWeU+siXZk2sSw3WyvKssx/wYXWOTR8v3nUetym1b60k+I4YXzpCIcnczEc9780BcPEKLFb
	3IODny0Ff0LwLNX6RLfx4DxolTQVPvsOz4756So2l5KPKsMsoCrErURAbPc5D+XqlzTdJ2JmBzo6W
	UZf6/GtPkbG6wmvb8ooA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRN5-000000037Yf-2jyA;
	Wed, 05 Aug 2026 02:28:43 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrRMw-000000037Mp-1oNG
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 02:28:37 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7ee4399c423so383915a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 19:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785896913; x=1786501713; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AGkeXkcQmVAMhKi4BRouTjNasW9FdK69cwCP5dyljV8=;
        b=ejbdrZKO5tmSO0J0NCTtEeNAiCemMiw5kx7J9IR8uMRI2qj3WYUuxyZSFhKRdMDqjg
         eZu0iJnHeTXR50SgsaHKuJLv14B87KeGMWczTWQ54Gv6JeCN+bPkNr4aQBefPj/TPiE7
         O7XVkJlO04xV+n+El9qieSYPx3aQetvFz16uGFiaDKbMJXnm4BiwcT9qP830Lecj5l/z
         zdhJP7KEbi1e+uGi1lNRGDjLUt5kkyUbfwZI/TpfsAIv5tfhQhoQNW0WEsrBYlFzeo/W
         yRuX4aEqFxCJttMF0jyCyb2BU73mqbfSzmTvGGRyK0Hq+HcC7sDTi7QvkRLAWG5xMuUp
         Da7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785896913; x=1786501713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AGkeXkcQmVAMhKi4BRouTjNasW9FdK69cwCP5dyljV8=;
        b=Ol8eLFcZWetGWxK15o1fWjf/YlbmU0mT4UM5X0FeabKj+VElRfElZn2HAUR1yTxjmt
         gQaXfb5zUOw8TQHr4N1mtYffAKyK4O4QHJ1F+y7irWj+1DWRS9EzjtKjBqnhU7cBaD13
         kBYVXuKLReXEr3ySDc8L/L0Fuiz+CIeMS4yCzg/FVZpbfmaFPBiyiBlrfEVDQH75/FaS
         SpGZqMyZvk8g0yA6V7XjYLsJZYcR3iIzxaSeIoJlXkONM/rgkKvmsmjBtKHuw6+QZWjh
         ty0l3Ygz4YPWOcD9vATI1/g0cwiwy0wEDM++52lS4Ue2t6TQMVcIKpBgCYdd2Z+XJ1Iq
         x7Gw==
X-Forwarded-Encrypted: i=1; AHgh+RqzvElR6Eq/NUpx3LsH3UtyocrdBT2NAy3M5g3CoAK7w9zWIlJJDy0Vx1hS/Jg2KSOWQCLBoT/JFVzQU/EOHA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yylv8576Z7FHlpZ6/wVpNFVwbTrPtsg4jIlYaC1eqX72DZE+DhH
	tyErFF07zCKryLIpc88KPc6nCuYFPd1TwbIXHPaTUSkv2NGHuXxFkzfL
X-Gm-Gg: AR+sD11VawrdRMTWsEGauORalI0696gPl+xTBllU2GHewlXhhZhrqLzsoobflhg0b0j
	0Jjs3uY0npKNB2Y+lAuZpZ4GCuyy01+7N6+0YvYLHFiZVvsDuw2dNAR5lYyNY+QVCk0K+ZlL2j0
	B19lEeSsV9jRbFqTV2kb/MvNijlJCPLiEyfxarC0ZX6qf71Ac/LdWzyaVh05pp/Vv7lM8aPTMHE
	2e2Ut3GPNKBQqSGnpYVCsHjCFh33pI6Ypmxro40+sImWWj7i5GkuW5HavZbqp4zEilYZMPuCPOC
	S/9ytgeWqk77c7HGz4stszWOcs8GC+SPMVTAbon+BUPoKy3+fzGM452Y4MXxpljBTgHmEiIGOu3
	v2evR4/DgIO+7H5vl8Cra9/5F4GfP0wEwo8+wf+A7u1yAEj3aw6M3cNTWOtfX2+3veGeETV7+a2
	X0u4zSamb3rAyBrN/2KWtaxLKgY+C1F1iEI+rlEkET33Ks/BH0K/ckz6Lj9I+fl1Rlottc+6CKy
	BueOL/iJjDLiHy7AfqTxzHm3YuORxUYiTu/mSqDgiBVE4i7xu/pT8k02rnlfKxQ0+gaHbRDOKqF
	QWMMrGMIChopYCNSoW8c8B5ejHao0bzBx10pFLgbXeEPW3wi2RIEd+Y+LGn4qLhadnt/1YkTBxM
	lcvkbvCoaNSuHusD7
X-Received: by 2002:a05:6830:7010:b0:7e9:d634:77b8 with SMTP id 46e09a7af769-7f1e5c13e8cmr2629082a34.2.1785896913436;
        Tue, 04 Aug 2026 19:28:33 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f1df565d37sm2078153a34.16.2026.08.04.19.28.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Aug 2026 19:28:33 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 04 Aug 2026 20:27:03 -0600
Subject: [PATCH net-next v2 5/8] dt-bindings: net: x-powers: add AC300 EPHY
 control
MIME-Version: 1.0
Message-Id: <20260804-submit-acx00-of-dynamic-v1-v2-5-3eef49ff1d8c@gmail.com>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_192834_628601_0F588BF8 
X-CRM114-Status: GOOD (  12.41  )
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

The AC300 exposes its Fast Ethernet PHY control registers through a
separate non-PHY Clause 22 address. The manual defines that address as
the link PHY address plus 16, giving control addresses 16 through 23 and
link addresses 0 through 7.

Describe the control endpoint, its required VCC1 supply, its 24, 25 or
27 MHz input clock and its SoC SID calibration cell. The actual PHY
remains a separate ethernet-phy node and supplies the MAC-selected
interface mode at runtime.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/net/x-powers,ac300-ephy-ctl.yaml      | 70 ++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/x-powers,ac300-ephy-ctl.yaml b/Documentation/devicetree/bindings/net/x-powers,ac300-ephy-ctl.yaml
new file mode 100644
index 000000000000..8a616ff3e89f
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/x-powers,ac300-ephy-ctl.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/x-powers,ac300-ephy-ctl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: X-Powers AC300 Ethernet PHY control interface
+
+maintainers:
+  - James Hilliard <james.hilliard1@gmail.com>
+
+description:
+  The AC300 Fast Ethernet PHY has a separate control interface accessed as a
+  non-PHY Clause 22 device. Its address is 16 plus the address of the link PHY.
+
+properties:
+  compatible:
+    const: x-powers,ac300-ephy-ctl
+
+  reg:
+    minimum: 16
+    maximum: 23
+
+  clocks:
+    maxItems: 1
+    description:
+      AC300 input clock. Its configured rate must be 24, 25, or 27 MHz and
+      determines the corresponding EPHY_CLK_SEL value.
+
+  vcc1-supply:
+    description:
+      3.3 V supply for the AC300 I/O, bandgap, Ethernet PHY analog front end,
+      and internal digital LDO
+
+  nvmem-cells:
+    maxItems: 1
+    description:
+      SoC SID cell containing the Ethernet PHY calibration value written to
+      the AC300 BGS_EFFUSE field after adding 3 modulo 16, as prescribed by
+      the vendor initialization sequence.
+
+  nvmem-cell-names:
+    const: calibration
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - vcc1-supply
+  - nvmem-cells
+  - nvmem-cell-names
+
+additionalProperties: false
+
+examples:
+  - |
+    mdio {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        ethernet-phy-control@10 {
+            compatible = "x-powers,ac300-ephy-ctl";
+            reg = <0x10>;
+            clocks = <&pwm 5>;
+            vcc1-supply = <&reg_3v3>;
+            nvmem-cells = <&ephy_calibration>;
+            nvmem-cell-names = "calibration";
+        };
+    };
+...

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
