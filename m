Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D93E9C55162
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D69ZyZpB18+N7odLm0zF2nAAYzYjaCOBo27PEcYHm5g=; b=wrZve6WTB/1g05
	ZDnfo4vq0P4onfE+iBbXo6uvIelNHxPyZKqJYMqUU7JPiPhjJDEhuf8SC1zk0turUnM75RJkl748Q
	F078ujXoyEoEwN+5u59zRka6MaStVdJeeIKGQf6GOhyQwhyLeOQHoJoRWr6/6ZHRa3IyDRRSQ+xLH
	pl8p9FmBUK0Y7JKuWhZCchoaKayXJ0eMHnbT+qFxsPoDC09fPsW2OAF9w+66ytA5/oWPBPWq3NhXp
	SdTSRBDt2/wRjATnF4yjOniVhPMl67OTBTwY3LK3CAS3INKO8qG1xHs57tXYOYvPYXIz0QoCAfh9r
	vqvnvqaFzcMcYF+34DxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1L-0000000GKUE-2A18;
	Mon, 03 Aug 2026 05:15:27 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1H-0000000GKRD-0cN1
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:25 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-7ec49608332so1441039a34.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734122; x=1786338922; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LDt8py0RwqfKJ99qa00T7ayi3DardBnaCg62Nlf4UJY=;
        b=h6IkIdVcjZWcl1d5WrFHT6jwlyTBZ/WgE10zftJjF3lblbCSWR7jFQCM/23Bo39Uix
         XZ5Lr2S6zYt/Nivz4LOvcPJvTFllhZiiGZuY43Uvz4GAZJm7MK4F5bgL6avuoS+5JyeZ
         Q4Et3JUdlThCwtNySidjNLDv9QQkCMYGRpgvb1P/kD0dRQEYfwGsvY7cgS8CGrwP1DpB
         ndPa0HcBOPZj3TNm+SM8TnqohEGAdBFpnCQYMFYXNnXoY5xAPHwSbFym+sJ1NjCWVGWF
         XhuN7qT+3lzWEAAWzig/77MZ0TbcMTiqgzuG28Fi/JJIWrYUnuqxCTk1kUeAwHYdzI6X
         +8YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734122; x=1786338922;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=LDt8py0RwqfKJ99qa00T7ayi3DardBnaCg62Nlf4UJY=;
        b=QzovG+NqH1WIqyG6ocEA7BIIbj5LtbAPa/yK3ovgvbpcHR4wsaBj3ynDxIoPyP8FYA
         PxHAsyUwGTWZlldeZmyFoSCByRQ/9JGnBdXjY0L5UcaDa4AUEnRPeEvTBX7hA9OC0rMI
         4Yt6lESFKF1Ui7XDMZDxdTdhhj55cQC3bQ/Jcuhj8QhvOac6HnAC71shC+xrZQMFDvgM
         HAMsr76x/0E3P5+X6lF4P5ff7zQibHzGQs1SLiT8sjTvL96IlCKdxnWGJgMyxIuvOU6C
         +NUPXPFpYJq2CZeHYZrTT/KMWg6hCt9I4WUu5GoCuetylDiTtaNPMNj56QtanuShJmHJ
         LnhA==
X-Forwarded-Encrypted: i=1; AHgh+Rp2PO5PISEfGD6+dBUMmbyFt8XrMiz7z5SytgqoMHshMFVxN5UTBw/P+jiUyGQ/gZBNY9xTyQU7NLpAtijLgQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIm0Wo4oGEEfpJo+/ZF7///TiGRTxqUZCIvjRB4YbvWrLk61Dc
	CwtbN0cgU8OrMjFDUHKaQHOytrlmy4uRn9GygA7nXR4CayhLmLRh/NS7
X-Gm-Gg: AR+sD1070LyTHtbu7SRIApKSnoTeaOSILr83XI0Ma4LPEdDtcAvG6mJkv5hMYzcbRYF
	eM+5fAdjKurcw+9/WQTUAFb0ml8nRz8ToFP4IQEptbRHSS5y9+Pb6J6YNTD8PZu09xRPs2MHyFo
	wbi6yaPx0C+2fZE2iTMqp1aOc1kwVqUlFPiz3PgKvXiazTgcZas5R+Q/UBn+KIICXU1l+q84yzC
	RoZEpVKNbFJo6QfXgJqKsIslkSclP6Kkr0vzLE64f4ObTksEu3F/hvzxJx/b5txTo/fKCDmlDUK
	awLd5qD9zoOAR0RG5UJrBy8rlYaVxI/WSz2I0oYnRjhqtQgtxU66eV/g5j4yg+lwce+epDFNtWa
	HxB2f0kWyTvlU0r8YJIltS9mFHD7ojIbzI4/fIjMuqdcrKabWvZ/J67oTKl0fjGGH3XTVw4JfEZ
	w0dBY1NVn2DnsGrNtX0gBSrMOI0YPlF1P597PAKiyRHp6McJzrcFrR1dAlIC4UbipiKhELver2I
	oLzvXpyu8nHGUADgr6Q+IFwu1jaoHi638fc86iCACLzKo3Rojsw5QT27kuzfvGSMyivfNTMysgp
	HLqtIjnid3eVOD9Evf4Wt6nLLBM5PejtbpdJz0SLunMxyqDYDvRYuaM5ca52NR92HBC63yysHbq
	DZyVq8JxYxvSJcmybQfjCuyQ3R2nVTV6oMwIH
X-Received: by 2002:a05:6830:83b8:b0:7e9:d277:6e2e with SMTP id 46e09a7af769-7f196cae28amr13872954a34.7.1785734121347;
        Sun, 02 Aug 2026 22:15:21 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:20 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:11 -0600
Subject: [PATCH 01/21] dt-bindings: net: allwinner: add H616 EMAC1
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-1-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221523_555970_47EAADAB 
X-CRM114-Status: GOOD (  12.02  )
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

From: Richard Genoud <richard.genoud@bootlin.com>

The H616 secondary EMAC uses a separate system-control clock register
and supports only RMII at 10/100 Mbps. Add its distinct compatible
without an older fallback, since using the primary EMAC clock register
would not work.

Constrain the PHY interface mode to RMII, matching the hardware. The
EMAC1 clock register also retains the three-bit TX and five-bit RX delay
chains, so allow the existing Allwinner delay properties for this
compatible.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 .../bindings/net/allwinner,sun8i-a83t-emac.yaml        | 18 ++++++++++++++++--
 Documentation/devicetree/bindings/net/snps,dwmac.yaml  |  2 ++
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
index 323a669fa982..34def84e6c21 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
@@ -21,6 +21,7 @@ select:
           - allwinner,sun8i-r40-gmac
           - allwinner,sun8i-v3s-emac
           - allwinner,sun50i-a64-emac
+          - allwinner,sun50i-h616-emac1
           - allwinner,sun55i-a523-gmac200
   required:
     - compatible
@@ -33,6 +34,7 @@ properties:
       - const: allwinner,sun8i-r40-gmac
       - const: allwinner,sun8i-v3s-emac
       - const: allwinner,sun50i-a64-emac
+      - const: allwinner,sun50i-h616-emac1
       - items:
           - enum:
               - allwinner,sun20i-d1-emac
@@ -91,6 +93,17 @@ required:
 
 allOf:
   - $ref: snps,dwmac.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun50i-h616-emac1
+
+    then:
+      properties:
+        phy-mode:
+          const: rmii
+
   - if:
       properties:
         compatible:
@@ -100,6 +113,7 @@ allOf:
               - allwinner,sun8i-h3-emac
               - allwinner,sun8i-v3s-emac
               - allwinner,sun50i-a64-emac
+              - allwinner,sun50i-h616-emac1
 
     then:
       properties:
@@ -109,7 +123,7 @@ allOf:
           maximum: 700
           multipleOf: 100
           description:
-            External RGMII PHY TX clock delay chain value in ps.
+            PHY interface TX clock delay chain value in ps.
 
         allwinner,rx-delay-ps:
           default: 0
@@ -117,7 +131,7 @@ allOf:
           maximum: 3100
           multipleOf: 100
           description:
-            External RGMII PHY TX clock delay chain value in ps.
+            PHY interface RX clock delay chain value in ps.
 
   - if:
       properties:
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 2449311c6d28..102ec98ac2a0 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -57,6 +57,7 @@ properties:
         - allwinner,sun8i-r40-gmac
         - allwinner,sun8i-v3s-emac
         - allwinner,sun50i-a64-emac
+        - allwinner,sun50i-h616-emac1
         - amlogic,meson6-dwmac
         - amlogic,meson8b-dwmac
         - amlogic,meson8m2-dwmac
@@ -622,6 +623,7 @@ allOf:
                 - allwinner,sun8i-r40-gmac
                 - allwinner,sun8i-v3s-emac
                 - allwinner,sun50i-a64-emac
+                - allwinner,sun50i-h616-emac1
                 - loongson,ls2k-dwmac
                 - loongson,ls7a-dwmac
                 - ingenic,jz4775-mac

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
