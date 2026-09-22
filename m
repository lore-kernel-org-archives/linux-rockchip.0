Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8DD1C98304
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X23w5rpAbUjaGp4USF2QORFb2E/PKuv+IGbCT5/Okis=; b=jAWzNnNaMyzc3G
	tNWAn5pz69q9rcrie2wkN5FawYrFo+FREUZ6GsBIPlHsCsOvRsSeTDipWTSYOpCzNrHcksFCeyNNP
	v39XYTUZjAg2I8J2ngPTYBYfH/6lho/66SPFWGaE0rUSz64GkT8tknm9ThEZ+Xcvc0qhuDrReXZgy
	D7sdCRoxOR4TIvV5kXo+El7kIzQnM0FGJkcPOeEh5/618ntUmQw276aytM6iC438AsFqKxhkdmGdw
	EH6epsLLSBJk2KYxmKu2TKwBdrxNJJejg4ZePowV7cSe9sBjz+z1QqpC3L3326OZ386UQXpnzpk8C
	+boEk5UCq7XVfdPXSAJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jV-00000006UXO-1kqm;
	Tue, 22 Sep 2026 20:04:53 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96jR-00000006USm-3Dkc
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:50 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d942de6574so990785ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 13:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107489; x=1790712289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=EpDN2c+je7eu3mz3KQZLevvbX0Dn2XWQg5LweOxpIB0l7TrPNbukU+kprRIPI3ug0o
         zeBBeSOFfe3DoAGGYUErYTuartDRjLcJXfTBLh4tQrfRVEkf9hlcOUqhWj9hW0ZvfWYn
         GdJeYDDh78wGr/iM2CEKohN3CyJ3QoRjdO0hcTpCNkdhzwH/Jg8anx7AGcW2rZktx1Sr
         hPYI8OhG2mjFs0EUBSi5XfMdxGXr9NRDFkBjMblv6RYXlRD0cgSmz+Gb/KDIljaScS0z
         8yndYZXLyQWhAtVcxDktV0TXqQq1HeIIcDdtVJlmz41EMH6NJSkijsP8zp0bmQYxfn3I
         06QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107489; x=1790712289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=MOEw+4IKOsVZ/pcXiMVsK2SxWl1vWpzU5xhRIuN9q1F+ki+O0S2bD2eQpz52MtZi6d
         izPziZFdsqj3HA8uJDAIKOBs8EaQmJBjZYFdz6SO6JTlRyoauCom10YrA7+ZgVwpGjbE
         xx7U3CG7LqstkAzWw40OymUtdWIol+vMUHjOxEXQeRK78iRyZ3I/N3yCetFOmN7oNcd4
         Zf8TnyOEun9dl0B/05xbRVpJhBl6PfUUmDh2HLaDZhhYlH3twmZuqFbMz4lZ8nMDzDzG
         pSoiEzuqnonS9AGQmaEKq19WGJEAAONaBwguJObyi56mXqHflQWNvdaK0TNNft+HObpx
         hoJw==
X-Forwarded-Encrypted: i=1; AKwUvBxD1eOK6jWFkZvMfrsoB6d4BpPMd5jznEWd5F3p7hufBjaytW2ORfht4uZaVL/FLVp3X8yRAOuiC/az10+4aw==@lists.infradead.org
X-Gm-Message-State: AFuF++lsvPA81uDRfpCDyLvBdJGqlODXkBfL0KYPjM7MrnlGLthDyWZk
	w+R1yycraM7L5CsIMryCSQQNXg6DNs4jwHl8FT6g7a+8eW6Jc0aWwlBM
X-Gm-Gg: AYBFou22nXcOwLWLvZnkdzTLKOwDsp1qzRIOKRqbeE4eyazVLPToTrI7bSkggysvWio
	Xnbs82hzDZA7ih4NbVwWFU5ly2fYRBPhCpNx/Y/7H6+2KOreHh4C6Yyn1SWM6gimMnPQ6zb0I0a
	bAoLQtOw0Ocjh0JQbpZr+jyra3B4Ay3uzVV8LM2XCt97YXdGerz61r9L3Lxs9GPQOtCl2Wys/WW
	aHNNVeWd6G5O27fMhy+Ql8pmydRweH/EYTObOljvKY222nCJPqdZfF8KF/LeK7qGMXlFXKpVglK
	B+p19IK6skNKXeJTVh5WPRVyMI+wxMD3Z676cdQPog9l6ojDxTdiKvW3O20CSsKzUdZpKKicsV1
	XEp02xc2+mu9jKyD5XYrC7qONPs0vwYm3oVwwHrbr85hpYVYhu7yWCPfd1H7O5zc2YlNZmaukiE
	M23Zo74F4uzuXx/rAfrzq2wtN6M4H369sOQKH2Ct0LXW6ZU7B0TVkpJiqmWFY57+4wvVWX
X-Received: by 2002:a17:903:1a86:b0:2d9:520c:38e7 with SMTP id d9443c01a7336-2df69d1b106mr4415425ad.1.1790107488984;
        Tue, 22 Sep 2026 13:04:48 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.04.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:48 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Wed, 23 Sep 2026 04:03:32 +0800
Message-ID: <20260922200336.2201212-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130449_850708_FA0A2381 
X-CRM114-Status: GOOD (  10.47  )
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
 .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..bb7540e838033 100644
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
 
@@ -159,6 +165,18 @@ allOf:
         clocks:
           minItems: 5
 
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
