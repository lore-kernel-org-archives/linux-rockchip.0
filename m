Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95145CA6012
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 17:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WEoBujscJmLfqlHAC0uzBOW+EiLKtfRro9uUZS6X1o8=; b=Z+1c0U4RL42owc
	eoLQnJ+Jql3+z1jI4uosl6Gdwosgk2fJK6gKIz+QS8RHUeJTma45Pj75J5lh8KHHunclLptiWXh5h
	GamHu0/G3e2LcJemNuHdeu3kceZLErcgTd8oHEVQ+bhuY2HxDNcWB/DXgUgEXn4CoWXFj75eSyqrk
	0nm6cuwzGXZnhDzrmUmuyMn+JSPAiNw2RgocxPyI0WuDl9QxQonetfTSbyTjMf1i1FQ3VGvoNFLvL
	PWHK86ZExJ5yaZ49f83nvbZYw2t+k2p3lLzFDmEdCBqWeyJ8qnvLBwVSpvnr0lg3TFj55ZvlYWi2W
	ObvViQ51Bn/xHGqo9Quw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsIz-00000004ouZ-14pZ;
	Thu, 08 Oct 2026 17:53:21 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEsIv-00000004orS-490Q
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 17:53:19 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-398a384b5f7so892892a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 10:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791481997; x=1792086797; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+dgqDqFuW3rt6C/fWbsq1Mjghdys4ztuGpDNCDTihI8=;
        b=G6Ghgi3SXHmxgGrXo9DEgLnuj7YuRmQd2AOuOJOq9ozsOTFojljsTHi6qdq/buL85u
         9ffYs8sTuPEjn2ISWdjgHOekGV5Mk7cRlQxes6lHTbLk3k7lC3ZWzq+ewj+MLcT5V7jI
         KfWc3n40pay8RxHFsb+tJ7KO+EzrTEEAunlt4nr7FT3kvqmYqwaYSm7vrWcaOxWQ9xSQ
         5xlVvQARXbjbTFEqFFjgbOTO19YNQJq10V7OYrNNtwlw02cNzzdvp6/JcjVSAqjvVV5o
         PcmBRIAUljK1QKYYuTBdECkuAJZE/a/ZS6wF+Bs/Uw0gK1pj4j+cfeTos4sf08t6xnYi
         yR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791481997; x=1792086797;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+dgqDqFuW3rt6C/fWbsq1Mjghdys4ztuGpDNCDTihI8=;
        b=ZRuMGKeTPB/hwODtgw6elinHMZuS9xwuPelgivHn3HCsMF1wEVc/2l//ZFORN9iaAJ
         FqHr+mMrkS6gLTJZUOH4qrpFJnCaMmKwY7LcsZlKo5QXaXyYVx4odYoUw/U7nAdLYww4
         YGuNWWI9VoB8K4qQR6ILznMpTTOhhmbCrabwR3whR+l30zWTruz7HF4fLr8t646UVijR
         uP13xt45pkNkE83bBRq0ZzsktK2sb150x3Y49o0rXE5Grz8D4ZVpVkEdyn4LsR6Csnbv
         9rbDKK+5kATdc9OefBzAqjx//vAKP1Mj1K21ERn0HzjfTNnTsZDF7oF7uyrL336NtE4e
         imcA==
X-Forwarded-Encrypted: i=1; AKwUvByILVUBiZ/Y/as104UQbHGo/kdEDN8WfjHCM0+WmzLV4RNmaNvryVqvzDU00ZHpzRLX/2vXbEwkGcB5/1yoXg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIGvbONVm8lH+kUuV0E7Rict4sfYQ9/JOsXDuBXQnvIn2SaMVAe
	Tj+3RtGD+qvnl+53FklMt2hmRtLO1Fa9JJmCLDV07Gx6It7zP2713hCb
X-Gm-Gg: AYBFou11DPF2mL1Y21rZVa9FOtC0oFhRHOdPF/00Oj/0Ev9slohYylW/LgMDa9d7R1s
	7eI5EGuxN6t0ZQL3bXJ3ITZF2EZKEagR0V2m1YCV8B4Hdv3Fd9uwVSFopQh3yoOCKGaLh6lQWo3
	5g7BwLUL+4pbi3rCiU/KBrY/eu2KNf87Jv6Yyuhfdw4HMpZD9fh8ly3OnjxEhi+Nlyvibesrmy7
	U5GF/FQIS7mUZvjMER4shswBsFBDHiyw0Vk9N3pa0CVyObrWoiBiKNcuVmAAyPaHE1XTqrPiLcH
	DuFkTj2317YK/wYOiQHcDutNbn13ZXoMNQcZimPrqTrBUlAEVtAvPJjIuxt/6y3ZGx3oalWkpah
	+EDmrIJWkMJujXu8QS6bNQER/PXji+g46Za+1KUN+ffTMqDfxA01q4ceVMmDD9v8HO2e2XCcoMJ
	mLgY+rdNZ0jup4zWRqhhxB4kAxEalofEBoFoh5A/xqJXhVaIMid1gplizPIfo9sjQQkIO/
X-Received: by 2002:a17:90a:749:b0:3a8:cb54:e132 with SMTP id 98e67ed59e1d1-3a8cb54e659mr2236926a91.49.1791481997269;
        Thu, 08 Oct 2026 10:53:17 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab3277c459sm144332a91.16.2026.10.08.10.53.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 10:53:16 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>,
	netdev@vger.kernel.org
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v11 4/6] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Fri,  9 Oct 2026 01:51:58 +0800
Message-ID: <20261008175225.3375274-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261008175225.3375274-1-coiaprant@gmail.com>
References: <20261008175225.3375274-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_105318_033015_A840BA26 
X-CRM114-Status: GOOD (  10.35  )
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

The Rockchip GMAC binding needs to describe the PCS reference used by
the SGMII support added later in this series. The property will be
parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
only SoC in this binding that has SGMII support.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/rockchip-dwmac.yaml          | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..c434450fd07ff 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -120,6 +120,12 @@ properties:
     maximum: 0x7F
     default: 0x10
 
+  pcs-handle:
+    description:
+      Specifies a reference to a node representing the PCS device
+      connected to this GMAC. Required when phy-mode is "sgmii".
+    maxItems: 1
+
   phy-supply:
     description: PHY regulator
 
@@ -159,6 +165,27 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
+    then:
+      required:
+        - phy-mode
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
+        phy-mode:
+          contains:
+            const: sgmii
+    then:
+      required:
+        - pcs-handle
+
 unevaluatedProperties: false
 
 examples:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
