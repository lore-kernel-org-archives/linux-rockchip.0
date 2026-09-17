Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC45C982D2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 20:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X23w5rpAbUjaGp4USF2QORFb2E/PKuv+IGbCT5/Okis=; b=0co4Qrnkx5RFLL
	tftNGpTUpsMOtDFOhxG4N2v9ih32rnRUMH94cw3gbqkJpOeP99oC2qJKHtBQheKJF6mc/plkEn0tR
	5VI/yImogFOtwhJZMZ8mdpNPr14xgMCv2lwcA/6PySyKXrSIYsS6yGBZaJz8XEAkYoHC6lJzlagli
	8Xw1bgzmsQ2jVW9AsgCGSG+/tffrXoQsYBPIALUtLAnGiJ7lKAQteiwun1B4cy4PZpcupv2RvAyxa
	Kb4llKURup4AZdRHHPFsY1e/4IR8JMadY8Ic1J1RsTfwJS0JQFnVE6DaZ/a1B9NxsyUQPIUXd8Wox
	hJq+ktHS/UHMZK0K/kkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1n-0000000CTR4-3S8C;
	Thu, 17 Sep 2026 20:48:19 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7J1l-0000000CTNG-0IDb
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Sep 2026 20:48:18 +0000
Received: by mail-pj2-x00.google.com with SMTP id 98e67ed59e1d1-39e44984991so43060a91.1
        for <linux-rockchip@lists.infradead.org>; Thu, 17 Sep 2026 13:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789678096; x=1790282896; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=sTtk+t2CidXm6Xqh4tKpQv1YWm3cv4NuNJmY8DG9hT5osOyEdUJzgoUrihQEpda1Kx
         Ih8ZIOr6ZFhTMwvua3UNGGHw1T1Gz8IviidK2KfsRRu5j3elV/cgLak2korzdnazuaZt
         aQ89GuqBNLCwS+SJvjoNQ6xWuGdQXseHW1tkCTVP3ZvzSiYl3JqU8Uh+hUBUjC1zqGIL
         ZrCBlu/rnzNmcEtzuzOdsQvBmtBMoqvPkb0yvvwFy5RJctYlRWf9IpXEiqUC02tyah6l
         mJP8IU9gtZnd3Ng2fE8+0cErbP+q1Ae/BHMhkBqYmREpY/FQeK6hPmT20jcspaIa1824
         G2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789678096; x=1790282896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=J+DjsWKoib3PXl70vhZdEWNSiH2oPtjG+ppy0UwHNcFrjfw7s/lNsBnBW315+whBe5
         ziuxvjTuwTxmJbwHJATrF1sAHUofG6ijo40xDediEkKTT8O20utTMg7VtLCzR5bmz8ls
         1v+3iJVCs8Xn4QFv/827YuhIsOfHzs0e0bB1hj0qjy0aTdFayRbF0WL+pCCF+x/oZ9mf
         kWOIjQcM1Bdwtp9TF3ZOyO8+3Z/4A5Aac1xn4qkLTFOAcBG+cXlb2k9vQ4MEV11gc8ja
         4xhWqy2YXFrr5SY41IMjTj6ySOPMZthiCdbTVET0c+waeWAJ9rZ8/UErPAEW8hGWpQ/E
         QMXA==
X-Forwarded-Encrypted: i=1; AKwUvBxzZabGtm4Q70A449bh2jlqXOy/0pirJiHdgM7B66ZBQIAG8n39RDpyFO2EYvl6RsV3JPEi2Lz/o1+1JbGRZA==@lists.infradead.org
X-Gm-Message-State: AFuF++kW9UY4nZ00oDa1eLSPL3CRzFanzSAJfq6/TLhJeeL6qWr9qLoD
	oR9odySUt8uYgB+U8XxXMf3UZlgIUpZ4edYj0GX31K9QgysSZdFSNRkO
X-Gm-Gg: AYBFou21fKSTHzKxQUdDqAVb7mQqsz2Lh1I0zaunJ/H0V3LmrMWM/s9d+zedGRhCX6L
	tHfAfagSulPrZELll6Rut1l5k4+y/p/KaLreYKTD+Bch6Zch+2HXJ4WBM6/Iv1wvp9t6BrhxpCO
	AHVyvqipiDFfSuWNNg9gXyZRlay3nkCgAtPIKLWb2kfvcCURrpYSXqHLlaG2Tu2yWPjvhVTW7ku
	fajaCzI/LWTmgCZLh3eTdwfImUD+AZG+NoRegJ8pGVBV2BgKaknANHi711eg2fSGVIwfMe5PP24
	sYJMJXKvShatZv1Ia+4NKA8Cibga2oaFMIXpJtI6MPmjbNpjYPjzgGmbgvFIooiL6/0Zqj9hSsN
	USrtdoBKP/vbYzqHET/RzaJei4Pm2yp0kho8ol0ti/FhikSn1lcvt2TwsMr/3IQRaHSs7viMCHi
	SJKWiQVM/tZbmsOgrFIQgVu4cCdSctiYDy3u+v/CrlxMnqeX8MlF8Kn1ftna0TOyNcmj393PrJG
	9MRw8H5
X-Received: by 2002:a17:90b:5305:b0:381:6c5:3f63 with SMTP id 98e67ed59e1d1-39e54dcd917mr1044616a91.6.1789678096241;
        Thu, 17 Sep 2026 13:48:16 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39e50a4bc22sm1232196a91.17.2026.09.17.13.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 13:48:15 -0700 (PDT)
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v7 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Fri, 18 Sep 2026 04:46:19 +0800
Message-ID: <20260917204624.2427486-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260917204624.2427486-1-coiaprant@gmail.com>
References: <20260917204624.2427486-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_134817_173613_F454407F 
X-CRM114-Status: GOOD (  10.02  )
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
