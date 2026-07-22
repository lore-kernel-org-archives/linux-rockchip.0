Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9322C4453C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 15:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ND77o7qXfBtAXnWTrh7vZRB34jPgq40lBbm4SOW7qA=; b=o1KGkMhuEtCXZq
	XXFn722khZ41IbGXboGJJvPQBT0DvEABcOHxliJ0U9zW4OxOpwdK1YakRBvcI8lJ3tWMh8DAnGR1f
	oZAWnfconO6pnYnFycwrEj3C68xJrSeqD/xai/pZ8EOh5Wz6MkE/r4w+zycEmcCy4ue3l4zbCTjb8
	aD6RegixSv7mmHSI0gtqSnFuFuU+KgA5PzuEBXm6ONkb4Po7+PkLBLSXmVU/vMX/So6G2Ny2S2i95
	dXUMp4A44PdNQyjENR56NSVa1tdMmer8sgGI9gF7NT+Qbrg3Jj6De0JX4IwA43t3GOiwcA0khJgqa
	RxZ+F5CqIYph2mToeK1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5R-0000000CDTn-2IAz;
	Wed, 22 Jul 2026 15:42:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5P-0000000CDQr-0paj
	for linux-rockchip@bombadil.infradead.org;
	Wed, 22 Jul 2026 15:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=; b=apV4W5ADgAHk/oJUpFBdbUbvdE
	kbc4559LQiocE/vcA+SIACh4Nt9bD/NI9S5b4Xfw65o8KS8prCOWRpRDiTVpvjoOFmxZZN5H1TeVb
	4iNLIVIGKg3gmcUatjAvw3Y2BGQbhO4RzdwoN0F08xLhjco6hQMzZHzIt5igltDD1fPd+4sD9YU0l
	U7E4OdOBEQsIovGnCpwMU68yYtC/Jxskmhhmz18Ddl+eqeMypDtD02GxTF+NqhlVEx4bGcGlqwPvD
	uexsAVuBPFhUu//OanSp9R3Vr+9HYLLofnOFfe8v3OILIRBh3X7+/b+8YIArHe7wncg4Wu9Dj4Ecu
	DsFWUJpQ==;
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wmZ5M-00000000xpr-0vUm
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 15:42:17 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-6a198cdc4e4so4797094eaf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 08:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784734933; x=1785339733; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=Bx/iPb40YAo95T/RC54z147hnyxYq8Zn1JCWqdCTE2b0nGR3GnbabN1/fJZcgE9LXa
         Tjgts+SR5p+gTHwADrDugwwExY560EhgkBCZzWkXoksyJXBmiSqj+W6KedCWJtlWYBzV
         Grw3fRR8z1ytCS7obqbD+x8EvdFUBdPf30JGHJXvue1Y98Y1NsVimTPL9QK/Rjts6tZX
         YmHM4VnEGdDnCyCVHD3y5c3NxUyuDSxBZ1zx9KrmPCHyFRXwOTsgJwPwRiUaEm6CpOlU
         KRD6HkgRXT/rhPz2gmqoJn0Ex5gc7tzcDtk1QZ+javCYllJ2Koz2iHrVBDFzGW/sfKLp
         1fiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784734933; x=1785339733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=e2stQG5jK20EAedwFO6H/dwW9m2dJFE6kX+iwIfJSdfKGJB82VRx7Gnnzmwejh0Moi
         iWBCqUyDnVjjkxldQYOwJ+wwnYr/A7q4AUWG0USJdJOpTqssDnyDXT3V0K4u3yk679di
         yYszNZYYfxDdvQxVA4yfSyZ6kVpCRE1du2TiSwxiHTI7IPVvD7mvtZtoDR4rgcCSGs7b
         UolNeJXYZgV26rO+H8oBCITchPeSoet/8AMBjsU4ZfFlXlkJHSvx7fcowPkEu45aEHTm
         cS0pHbdJw5d4N+tMYr0Qf9JthaGKP79LLim1dcXHdqzKLBPsUIfg/3jlANdKTnJqa2xO
         d3xA==
X-Forwarded-Encrypted: i=1; AHgh+RoRv/FQzAROMPf9Q68UKYWefv2OJ+O4fMBi4rVb6fzcqXaPNj99M0nqhXTlVXymo2fFD9zExe7NziaN87tgiw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxxC9f76CUQ8sF1JO29EFpANVfWEFgWr7rK7viIcVAxW5uD780X
	GjCa7eEFlRNdN5VtnQDgb4MIfxKYKhnnCmV5fEie7c63YU2JpDie8GcD
X-Gm-Gg: AR+sD13EpGIMTbOMJJCr/ktvITZ8nPFMXTvAV0W5FnsA7wNnsCT4MF/ZFi0tbJB/RRP
	aKNxLROxXD7UH9f6kdNCCSolsWmLrwspo3uLronVfpvuN8Mxbx/0atcIQxJeTvTcVs4RBrvsIsP
	x5OdnRnDL1FoOp7BR8Kbe17F2aVg4ZpAqofhZOTrngiUROoGwbkfaAyXWE3tVvbvuV3ItM7hJO/
	0z1AJzOx+dmaPGHantNcf4oNpXmn4Bg1KI/xC+F5VVJ99az2GJ+yK4MR/uQXyF5/GfSVKPM8Or4
	CFOyPVydNm87JuF/MsBb8bwq/lpOKONCkbw+H6pX+6IxKAmkzxL9s71JgGqik1AaYcPM1F5r3ff
	YzntvAH5FNdJ/gXNe5lV+2rsjFIHbstzGREtx4nbgFjYH6kzA+80lTZ2Zyh1d164YZJsUh8vSHa
	QZ
X-Received: by 2002:a05:6820:1844:b0:6a3:98e9:c979 with SMTP id 006d021491bc7-6a5366a2cb0mr12382376eaf.14.1784734931621;
        Wed, 22 Jul 2026 08:42:11 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aac3a494d4sm1300804eaf.3.2026.07.22.08.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 08:42:10 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V19 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Wed, 22 Jul 2026 10:39:33 -0500
Message-ID: <20260722153942.144387-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260722153942.144387-1-macroalpha82@gmail.com>
References: <20260722153942.144387-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_164216_387273_457C51E5 
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the ICM42607 and ICM42607P inertial measurement unit.

This device is functionally very similar to the icm42600 series with a
very different register layout. The icm42607 currently does not use an
interrupt because wake on movement and buffers are not supported, and
cannot be implemented on my test device which lacks an interrupt line.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..81b6e85decd5 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -30,6 +30,8 @@ properties:
       - invensense,icm42600
       - invensense,icm42602
       - invensense,icm42605
+      - invensense,icm42607
+      - invensense,icm42607p
       - invensense,icm42622
       - invensense,icm42631
       - invensense,icm42686
@@ -67,10 +69,24 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - invensense,icm42600
+              - invensense,icm42602
+              - invensense,icm42605
+              - invensense,icm42622
+              - invensense,icm42631
+              - invensense,icm42686
+              - invensense,icm42688
+    then:
+      required:
+        - interrupts
 
 unevaluatedProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
