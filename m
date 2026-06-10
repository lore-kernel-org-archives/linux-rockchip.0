Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F407CD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 17:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=1uvo1xWNCF6dqZ
	8OhMgibnowNnWBL07kpK0Andtz8aYtgSPwztAn8cD4zX8JPcJg/Lhp+v0kHCZ3lQYFnFagWtKMIqQ
	kHeG/5hU2+9VFgufuoCfzbExdNvn7LteJKNKO4wPWHAHJngir4s/83N6WT5F4CwWY3vNdAZ62fUWN
	cS9aTmvYwQ8yRslqH7pODfnQUb++Ngt2St7zLvOITcyi9ABCImdETh+sMTifHCRHV46iGiM8XBadA
	VNC3wxUZztw6mi4N4ITNX11XO2PUc3sRm0XEeR415vD44b0OhdbAH44Zox3UR4655rPrLJNLwFnPq
	r76cfmHa06zU2uu2lMAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNBA-00000008DIH-3Wsm;
	Wed, 10 Jun 2026 17:57:28 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXNB8-00000008DHE-2HOW
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 17:57:27 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-43ccdc20e67so3302311fac.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 10:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781114245; x=1781719045; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=nBBoMKv0dU1t8niUIpoMR1qm9b6jbieiBYFYjtvZrHPTjfj8Ym5GCaLWD3cP/oMx7e
         p9M0KaTG4+IVAIaeSvQw2PUTOM//6vjhnzN11TalY+XOEqUTw73/ixQ98qM4/cFnJGJu
         Tial9vAeZXt+0Tp+QmqBVWiNxOhYk96x64fAncE6zbOKpjzPe3xX+Kxl4oeoi5UXLWP5
         HFg8HGR8xvgxrDh4lEx09dQkDyit8CEkeCw5Dpwc3mNVJM/xqoiWHU4vJPznGcKKIy+L
         9J2fej+TOXtfon+GAa3YLc/dxG8QO/rv8pW6sd6lkNunPf5TDT6HImv4kA0amaXkBwBO
         2Udg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781114245; x=1781719045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=VyaaACV+NVxaTZ3b3SxAKhk0xP69tqiGe5fSNSElVqfG72WAvO2H9Kq9WHddmlNTI2
         KiEwRbcSN8Wm0cl1HIuvT74m6VRqV3VyEGU9MUPJXthQLGImeUzy9OPuq0M74ohPEq/L
         Azo8JU7u4m7ovHcxu1+9IDdssr+ydjZotNUuiJY/Lug8rfIR52btx6lyH6M3f2ZN1liC
         9n6PDyVQ6KhbcWIooImRAfMgAZSf/ly0DWnuU6lLZnFsdGlVx3o2DrMl49BTIdOQFD6X
         lZrPCbH1frMzQRddWAFZLTcwQ0QrVW457f0LVGEdQpDSU5eVqpdD+9CnIq1pkq/d3UYH
         cR1Q==
X-Forwarded-Encrypted: i=1; AFNElJ9LKhDkxErFkmD2EOV9UsDcwd4GyiZEcUKtaJuOilzx7goNPuV/Q4/rH/hlf8lJTilmrDahWJvxcyEg58rAug==@lists.infradead.org
X-Gm-Message-State: AOJu0YzzurPs5Kfj42uDQdT9kHE4riVeZG9YH76vt4LAbRS9NIdVH6zA
	Vyhao78GKjPZNoTdcq1ak8Zvd3GnDSUyB7xF67c00h5aWVMqjlc/mWov
X-Gm-Gg: Acq92OHFQign9kotcMo7zBWZcu4jrVf4bEpkp567A0YpoNlfusod4ybtUF5lr1m5qlJ
	QWq7473kigm4B/yaXZCU//9/jnKLj4QqZYdgqkxNo6V1450IyfXjJG9a6JhoKhOf3mKb+clzQwY
	UtH+RnOh+ac+X6dxE86ebqAyx1bLHWPNlnGTOskkixNlvYok519m+tO0vU3TiMDkUqfwcL8loJl
	DR2yl6NAtwg9NEMPmpZgAsmBTHZKCoBCsyBBJyd+cXN0gNqAyjOYAdbUxZqb8gxSWqw/FRvnaQf
	/kj2nq7eEzxIV/ONizthGNfd+KvnQe6EWO/WkShnLv/IObUSa5rIvlRXcTc6G/OlHUra3hO7tJu
	q72sCYz/Xy/e3W9H0JRClIKAlSAc93Ai8avERBkEINQCLhs5zxaK3rYqBJHRhQYJi80zqPSCkM2
	ohJnOb7DkXsrqwJ0iUAhLxN7gxatDd9Xc3J+DK4UoivnHfDgnaw8aW5e7+IrAcd5Pg
X-Received: by 2002:a05:6870:ac27:b0:441:3803:7c99 with SMTP id 586e51a60fabf-4413d6439a2mr15545593fac.10.1781114245453;
        Wed, 10 Jun 2026 10:57:25 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:b86b:51ed:28ca:695f])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-440d7d4f449sm21180794fac.8.2026.06.10.10.57.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 10:57:25 -0700 (PDT)
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
Subject: [PATCH V11 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Wed, 10 Jun 2026 12:54:45 -0500
Message-ID: <20260610175455.19006-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610175455.19006-1-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_105726_583876_5F65457F 
X-CRM114-Status: UNSURE (   8.77  )
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
