Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F652CD6E6E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 20:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx+WKmWe/ZykVC88PLJEv0UgmDn/dwsFP3cphb+QqeM=; b=CNBvPRbVJb5K5v
	EodVdpzIOmImX+RS2jhKUz9v6qF9HJe4sE5x96xvP3gj40trjn0DESjgYAnxYRLyToTKu2m25RQzk
	BsJmS8NjE6dipGhCZ9JaZ9ygVqP6Hhodwo5xdum0+o4tEgBQQ4gP0GOOsaJb09qKbKibEUmaK81CM
	h22P3fZoLCsTHrW+dz5M6kg/7wZ6LF9ol3xwtNgJkjs6h56iKI73m4Ye+OEE0OKyW6sThImZHn4Rx
	263j77ntKytBIv2oqQtTvj0y2Rbnmn0b++bfkTqtNYhxnFdfc9E7EKLkk2rQjdwmBRd3Vvvq+RUYO
	YqXi5frLSOVJ/IlVeo4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEYi-0000000HFgS-20pC;
	Thu, 04 Jun 2026 20:20:56 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVEYg-0000000HFf5-0XmF
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 20:20:55 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7e709dd1ab2so140648a34.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 13:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780604453; x=1781209253; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zk/LpczpOIZ/m2gamu5MAo/As7/Zfj4HDcgLAztLbtw=;
        b=kNHZE9A5wp3b3stATRhhGQP4q37cyu/rabwkiGACML82wSF8pHKQcpYsq3HHKYiz5i
         /FDgoG62+tKHAlfNOZpDvNA22HYBzuk62Sl1fzzf22E9n4PVf0cJUtlU+VBB88EfBMZh
         85L7MLvk/LA9740Y3x9yzLztWWTDDoc9p50ebQkm8wSjborQ8LVQ+DlqgXLujUo1yyvK
         4mHotC4fvA0akNekTnfnc8VCZdW7BSNgQnXHpiBGgwJALU2X3S+R3S23zyigVSMSkiDK
         /1QYCRdbpHOExrrwGaLANm0ZVsWFDHjF+HHlX2df51cgQAs1yV6j1WRcPeOK/BAGQN2f
         4X1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780604453; x=1781209253;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zk/LpczpOIZ/m2gamu5MAo/As7/Zfj4HDcgLAztLbtw=;
        b=FaG17sLDDVFc7lSCTTZ0ctqxdiev4oZirSpV08mpjfDVbLa/W1IcvTwHs71BCcmYpp
         ha7F2XNxzYYdZlkic8hX2ANrB2p7YgPpSPf+WjtXnbdMw2IEKkPF0hkN50KDe72dHfSs
         FDqkce5CVcI+PAy74dEwszjF6RN3oOvzx2uf2/jZfnbpxryyLlzi2fFR/E/uxJxXksSK
         V0XuYaHTMoMnjZsCQvLEQgW7+KxKsvSgKMRxO/M2FWdmWRhIMAD6OfzHUqJu2vG6HZV6
         hlQL0yYqFh/UQiEXGSBprVXbeNXCyW750yjcx1Vm5/h/V3ajb1UW2OOAr0vITYeW8ro2
         4a3Q==
X-Forwarded-Encrypted: i=1; AFNElJ/3r1IrchWe9uABkPZ8oywqnBi3/3CQBMJ73KkjZrpHBbI6FI185c6bsTB3CBJ5T8B/ahlFaF2cbTY3tpXXSQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZhuJPFhlSaiZblFWv721N85+F86OJGBBEQnAl/Shz1eOOZcUs
	9zkKiLM2TouCEWIonZcaqwE8Wo0JMs6Gyw2MnfbqwASkitY6ni6dJJPE
X-Gm-Gg: Acq92OGLYteZuadGSDF51/6bWBQuDYFa4unrSpGzNFh09W4uaneEmWX4zAeIpW1Aorg
	7Wnu4JVIWLGRuk35Htl4Oaistqo5gHh8e44zUCUqVN8ZRQvmjRilTR8ABKkOduckrwrreRq/aSy
	/dLvElHSavlVvA4/I4qV50gH7h8p7DNP5+bQHV5VdRpHQ9P6WGQn+iv6pScO9wt/WgFVcBP+cb4
	/5mBYni1yDjKx/+nG8Q5GnOAvGZoro8hmtjbGVdLAuJkmyKb05b8YqpKGeVZGmuGCBZ+vnpqkLI
	rPbB/yQK6s8YGNlcaVC4XQwlmeM/6VqpdDL0+o3V1ZEmX1MY5f0nVAzCOXCKWaFFtGQYDgBI9o4
	HQbwc1YesiryX6BP1MsIj6eGvFD6rpkBH1AivMI436x312t15FZgSH1wWofmmQfYRcyf82S2Sf2
	rxU5BC+kxHSaMkaxHw5weGhjUXYPYdhbEfOqD5faOgJQ==
X-Received: by 2002:a05:6830:6d41:b0:7df:5fc:3fd8 with SMTP id 46e09a7af769-7e70c65b243mr147908a34.1.1780604453056;
        Thu, 04 Jun 2026 13:20:53 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e6e796c675sm4541800a34.24.2026.06.04.13.20.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 13:20:52 -0700 (PDT)
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
Subject: [PATCH V10 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Thu,  4 Jun 2026 15:18:23 -0500
Message-ID: <20260604201832.60656-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604201832.60656-1-macroalpha82@gmail.com>
References: <20260604201832.60656-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_132054_177269_B61E575C 
X-CRM114-Status: UNSURE (   8.75  )
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

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd3..9b2af104f186d 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
