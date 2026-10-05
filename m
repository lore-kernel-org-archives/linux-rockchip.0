Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F2DCA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X23w5rpAbUjaGp4USF2QORFb2E/PKuv+IGbCT5/Okis=; b=dse/GDjmAKHwQQ
	mTLVzoDH2wsqPrZ+L/9mqRC7w9n3PWMFDt2VmhFYck3N78J3VkeOaM2QFjxSWuHa95/k8DkCBwQ39
	3B4bjkEJSgzPJskN0C+dbIEQpzsvGVcHTQhbDa5Hr4HMKy8+aX6RLrGKyt3qHF/HkTO42uEX36Uij
	squogJHUUabRVKxzLE4aCSyLqqz//H7iCYOhAiXzLwPieuRcDx1YQNvl1m6a15gjnPbncZrAP/nJh
	YZnG9TKZ64jbYGUDDScPomAzR0h3PJi9GA7mDAp1eKwjISqofYiSKZRPnZAtZOraZurWXhCt6PmwZ
	dWtxkCGeiI4i6VEi6MdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrDA-0000000HGKR-0pY4;
	Mon, 05 Oct 2026 22:31:08 +0000
Received: from mail-pj2-x08.google.com ([2607:f8b0:4864:39::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrD4-0000000HGEZ-1cIg
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:31:06 +0000
Received: by mail-pj2-x08.google.com with SMTP id 98e67ed59e1d1-398b9f722abso1216097a91.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791239462; x=1791844262; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=HCDTx8ecwUbc2ol8gBTjLRe4K8E4cB+JsjSJ3UtO9LsXI7wrz5qymz0mxiOEYP82RB
         ehJSh+X0QqylnwoAea3xeM4+h143sno7k0HcFWWsSyNKWN0GS6RUs+wTqwK3IRuLtJms
         mB2oPTouyuMxr/Afbydc1VJyrfpex3oLClgz5iP4EF6soiMMvGPoMKEusdAo0Af8eEE9
         xmwL9jY0ImNm4TVWzWrU2/PYRLBKQV2y6zStE6S/aKx3mGxBNEUXaHJWj+iqK+yP4lKr
         SBTFiyk974wYzd8AAGOIXOAhFbWEH2nZx6xwGZFFR4q5hf+1Hf4wRD2xFDbLf7MRfq9A
         22MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791239462; x=1791844262;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=UKrBe27s+BQywpZKB7lKTA5/Hh27y/jV7djjFR+HWMfgawAAl9saplNGWjN2PkQotp
         0bU0S4DobcZywrDkLLhTaATtTavnXhiGV7d8+tHMsXx6DstwklBl3IEmU+ehwoZsykyF
         MSgVedP151+x/un7VWURVXgbzNT6Kb+Qk/y3NRkDPV2K5znoeMC/luTyq6TaUM6rgSPA
         +mESgtS3r+DIEUdxCJjjz20NeDPtVzFRzkGIeUsX426IqDVz6Q7yoHFpVqtWL2GUh3DI
         vquS0g4BvZ7pNq4P9x2UTZUKzTWMOVQHkvPcrti26//2+uh9LXfvccFFWpNH06MooBgO
         1BIw==
X-Forwarded-Encrypted: i=1; AKwUvBw7fvBVmAZJ4aDoX8qT3LMt4bp4CqBTOzyJpobva/AFZIjS9hc5rkCor6V0h8oVJFOj5lMYRNUi0V06hR4Kpg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJEx9IgkYVCc/b1Hy17GJkY6Z5MSkWqTUrr5OoLR3+0Fn8XctXr
	hqzlKRwOq4b8RRpGnNBbrOC2WWq1Qz94EHcH46s9luOSSgerzm6Sv+TZ
X-Gm-Gg: AYBFou3jPSNiMiHSBP+COuSIoOaXd//fapH60vhk1QlaIPuBsCP+RAH2k7ZpjRQiSI5
	czBkx7R0v4cn8ZiVqlj0ZGcWp3TeqVhgrveJLhqtB407PHSnyV7UT+SxPQxKsA67YpEc0s8RwrZ
	W73EFpkhlDeo1w6mtJlcJMw7zllldsKFgCSF2RpocmDTyZC4KDY/eMKdsAfCmule+L+hsSDBdA6
	g+653+rnlBYPiZEjcI1A7GJz1O/NdhGiHkd7Sm7JKCQwkq+JDOKFQ6HY/XhVrJTF6bd1gXxL8Mf
	/QTmuDpmk00tTLYKNC3hKJbbC7AutG7nnswnyfbvUQEXP83ZLUyaZXyTxRigj6X0eOf3mud0iba
	2rdLyte/iZWHLx/wEt+MgTVTpQjjKaZN4ICV0kWMByjT52z5nwGQeu08aFVZihK34m8Pj3mFOTa
	y1eIRyK6qsk3CXGmfcMt0D7zKITBfL9PUw+ggiUyZY18B3uESmRrXxodlNoGCQnd+UCjpF
X-Received: by 2002:a17:90b:39b0:b0:3a4:c538:49c with SMTP id 98e67ed59e1d1-3a6ce846cb3mr9080240a91.50.1791239461527;
        Mon, 05 Oct 2026 15:31:01 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e5a5f05321sm13203705ad.78.2026.10.05.15.30.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:31:00 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH net-next v10 4/6] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Tue,  6 Oct 2026 06:30:06 +0800
Message-ID: <20261005223011.1124347-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005223011.1124347-1-coiaprant@gmail.com>
References: <20261005223011.1124347-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_153102_969669_EE13B6B2 
X-CRM114-Status: UNSURE (   9.92  )
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
