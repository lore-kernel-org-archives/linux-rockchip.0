Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D50BCD6E54
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 03:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=mCPsm7a3pKpTFH
	pFv++uBrgckYOsPfIG765NEZd2RwWzWHD6RYJjpg6b88/HV4gRmv53VTnFLUg7n6ydyvNyfsaWthi
	e1O7V0b4l6PunYe0bDmMfdt8eMiRG4clfezgLtKtcyoiS4Y53V0aZf/AcVJ9Ma1Dzw5/Xd4G2dWXD
	GBjtmNyRN+W/Blbvc2JKj0bQsQSKepc8SOQWvO/C5LdL/oEg6jyY6kEnhhKU2je2fliNOkveFpM7t
	QHcU/uWC+Mf4U2Nvp94S5o+lW6zyBM+2X0ZNGfW1hIsYhvOP26+x6PWeU5/vTepMsUeY56EE7qjSK
	WXKGwnQiW0+GKx+MfMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFJ-00000008PHB-1jdH;
	Sat, 30 May 2026 03:20:21 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFF-00000008PFQ-18Su
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 03:20:18 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-69d8091533bso3734969eaf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 20:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780111216; x=1780716016; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=Vw+wi1WTYVtjXYH0wFR3Nso6t/cHwH1NRH7EmsjqZBsOGhxvj8ty/FkcsZNoAhRqro
         4HVEeY28rtAwB2t/JyoFxg7nVvgWOnEe2AqwkGUbu/NmuYtP5Ob0xPNdkeR1QR0I5SXw
         TS0ZFNS5f8vIHVi09UNfj7ixrhNKQjNm5dpdRNk9oUN9fLVHEFR/RHP5baPTi4GYaOCv
         VAAzuo+PEEXzr0RXPgI/iEk0TMVNedCuwVgNRfl7vd7iA0awxdPvUeKZYBv0TDAizJd0
         du+Tj8+bVcoV260pYoqvlWu6nrBvqKF3OeQUH/RZoMHWkOqClupGH9+YU03t27zGVttz
         uOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780111216; x=1780716016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=k22akmsnzM6mAlz4wq16uYoZL05TIKkLtoqdyut2yX9HlAoEk/Jvkqtmn1uXVCRpRr
         SpTq+wGzpk31se9hA7tdDuIeBcfCj8G3mhc7VNEMAeXr/Ppx+1i95wuEutBVgkmD9BWd
         0TOg8JHkPaWF2fbOWTqbRmUjt3uw4lT9giNx5rxX3nyfbzCf+0OjeUGfpVfr5YfarZf7
         2sV19qXBunM5cfX+nrfmEaVydxMTgNOu7mGZ+iEqHu27UpunAZuZCXf/2Sy4SjH6mHtX
         DNQM7P0jzPUnOmiE6tl74riFnbz6H102ETzbv260ckCpldAK1IUdhM47xB0tKLndRJYQ
         MF3Q==
X-Forwarded-Encrypted: i=1; AFNElJ9FuZOJT+UeEel9BjNpCexvc6w9LgsrYtaXtIppU7OGxHCuW7QJwHX9jLVa0g/vT+XP2zta73dbMaxmt+/lkg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLoRwtlCtDA/K1rpquX4nGRvWFFdRN4d1OaKHw7ElsONtE5585
	Gu11D1rLaBZVdsIi1FN6cRAwvQydXVAx5IaFrq9igp443P+/hU0RsyAf
X-Gm-Gg: Acq92OF6Dro855MWgNMwbY9MZu70Je04RMDp5MuLOey/r1szV9WQyF13uWxecte2ndj
	Io90InMlFouFWODxTipUUbz1/FHOD+KU04xaFCLWesj731vO/OeNTeWRuBxAJBmQzgJzSqskmkb
	Pcv5qVSuFHEoD7Ry3YHsqy25+MUI0oW3s6DuLQkHPXwBrbPEgqf+KvH5ISif+oMGXfGHaygdy0s
	Bji51oq/KilTeyDDLk4bqeUiV2fyeZbwR+Q7GSfmSw/8Wr9QSX+rJwLEZ2ZScp46af04R9yIlVy
	L4b7jXkXuRqU4DZFSvDmpPe9oHH04X3NCIfp8smiLfSr3a6m2kYKZRGhkpZkDuepSZ2J+PvFA5e
	BEKHwQM6AQdZdkVXxFMsewP6sh1f67nMpW1Os47WwDb/Cm7rWc/aI0fQRaWzgHmYbI1Ifm8XPTa
	pR14k5L6IBfdRNGrZ+KQwdNCfUWf5PgCE=
X-Received: by 2002:a05:6820:1510:b0:69d:f3a6:1f59 with SMTP id 006d021491bc7-69e102fb42amr1171488eaf.27.1780111216200;
        Fri, 29 May 2026 20:20:16 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e067e911csm2130737eaf.5.2026.05.29.20.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 20:20:15 -0700 (PDT)
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
Subject: [PATCH V9 01/11] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Fri, 29 May 2026 22:17:28 -0500
Message-ID: <20260530031739.109063-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260530031739.109063-1-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_202017_310721_F01FA9C5 
X-CRM114-Status: UNSURE (   9.14  )
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
index 119e28a833fd..9b2af104f186 100644
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
