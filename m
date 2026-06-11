Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58383CD8C9D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=lRAJ3uD4nLZpPo
	H6zfp9LABQFTExY0nTOLMvkZz7YHzrIbtgqhjURSVRiEbMtub4BgMozeOe8C2u9FqI5Qlr4F5EiCO
	F7x+lHKtqUXb6F70xFNaLIhIxVsLJ/jE+DII9Nu6Er8gegfxgWsNteuh96ob99qW01Oh4uczNOjcs
	AA0lZXj2N4cvqQKHb6FjE09alcJ/YS8GypjiV3Oze0jDiJo5ud0fYvFx6tZsKZI4v/NjvFOCkCGoq
	g32xpq9KqfZkxmCisDqs5RfaVPl2/1Z7ag4kgdbw+sIJeYdT/BDCR7dp7LhCDLDqiB0aksQK6O0/e
	MWpd/GzNIJu1BGbaaFMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm0z-0000000A2u3-3O9t;
	Thu, 11 Jun 2026 20:28:37 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm0y-0000000A2tR-00Fa
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:28:37 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-69e1eba21a6so214002eaf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781209715; x=1781814515; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=WAmm4pXSO5kuAM6+Xi7zRS9eN83dbyRfXtVmfRyxtLRO4v/XU+99QNNsGi7BVON2Fu
         WndBa71fPr/pRv5GLi3bOw+u82wOQRshwrpNx5AYLRdCA1zvfsgQFjLmZ40P/cIAjvQw
         yXnVGCEnNA/u0J5E2/yuo/E5rG3opQCht33/aLHHIQTwxeEq23oKwfTrUbPL0HMK3GME
         /11Bt0947vpqoO/YUCGWUsD4Pd4YDTUo42RfovTpDJ3wYPMN5mfIicas42mB1M/Nln6S
         QmawRm75mH8iMZ8ewTjZG2fa9yFUW86X990hDx9Cwp5RVL5RIEXvGGHE29vyRuIbPDXa
         uQJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209715; x=1781814515;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=HCqDUqf3DbDa3EAfnD1q2zk0sSYCigyWyCgpmRRZly5eBWZ4SJoHD/2CXj4VGKb/Am
         htrQPuv93HxJ4FMPoVCIEqBgNE2MFO3GVCgLVL4Tx3RMsGtZbu+G+iTB9eo/TKnmAwfP
         pmemz1Dq8xAKOquLD71G3Hv9i7IBFwlfwlXj+TNkclSgmKsy0r58SzEVtCDtBXEIXY5s
         0SZ3wD7fJJzHrZrPVBrAnAUsS9lngDdtZkLmnQl2ocatxMsle8P8WsOXMIBut24WeYsj
         1aqxotL/tvqdwnYER7ubOFLZt66sqzuPSB3egy23n2CkpgeS+SOd0wo8u6xT8V03sd3N
         uJ1A==
X-Forwarded-Encrypted: i=1; AFNElJ/2FLjuhRFUqJL8/JuyjKldzSO0Cl0+LqpiP5xcC2S7kYTjeVMbKOb9XDlaZuKj0xH+AXHGiO4R9l/QFh8/JQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxygDcu35Dp393sLCs+kZBTRX/tmkSeYxyU3ce/2VulSh3PewmT
	ZABpn020y+Ac0HK63nEoaL46ZRMdAFqoLdp3YltUFKkMcyH7P0oE8aBM
X-Gm-Gg: Acq92OHrIWKnoc5aGJPCCB3YSexYt79vyG8RSNoCMkqmljLHRilSE9Q51d7mor+A/8z
	hr39AZsjGBnPyJ6YaFuVU2QaMIcUHYIuSQ7IJ0BNWRmV9CFDriKvqvPtzbsf7YmPgAac/QQdMhN
	vq8QR3bhWHxvm9YPghf77QqnFo00e2uAi/InYmOdfwCyXZ2b4hElOCt37ggNo4iRuU8LRiQIe90
	4sXb2bXr83RkUd8JGGCH4aW3n6VPLUQLI14kGFtBySBEQNAnpxLTioL0RgKSAN0VK2qs6gUDtuB
	+npMpd2zzaijiwsBvyz0GYa4lHcd0VxbSvdBLHWvZ6PSlLuqY5XCLnWqkPhRXTGt+UntGQK0ruK
	DwflExu4yJymTNxYUtgKBOAKg6X7JELyu6kQmxrOtaUL4ycA45JjzcW20QKzQS17M40poD/U1JV
	3lzkEIlSvKwsiyyWuJYkhdfom1noO2eDSf
X-Received: by 2002:a05:6820:16a2:b0:69e:2cc3:16c4 with SMTP id 006d021491bc7-69ecadbf2ccmr3008961eaf.8.1781209715020;
        Thu, 11 Jun 2026 13:28:35 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44244cd05c9sm1796134fac.18.2026.06.11.13.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:28:34 -0700 (PDT)
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
Subject: [PATCH V12 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Thu, 11 Jun 2026 15:25:58 -0500
Message-ID: <20260611202607.85376-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260611202607.85376-1-macroalpha82@gmail.com>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_132836_033286_22E53902 
X-CRM114-Status: UNSURE (   8.41  )
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
