Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D079ECDDE69
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 10:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ItsUFpfIVW7VK5PuR3+hyxHccJZvcBiIjphiKb2zD8U=; b=dew4nqNhuz6lHP
	o3DUutnAuoo+6ijBqNgD7IcJkgFnN3zcFDIx8ag6bJLRtp5n3Hh2JDMxpMXcPpBjRx0I/qvKeSbau
	sIVUd9sx4hcg4zDGrXGN43gOit1SUKbTLLj/T2+0SWb9AaLqHRWLFZ+EYbpiviNb1obJHH5pxd/1F
	QM/RsAXipYOJ1bRnM8cmf19bfVg1SKmrH5a/KxIF8+2BV7gzBwiKEgh0Y6lCc6Q2dTdc/CA4VOU91
	tDnKEa4dJ0vcVt6qatK0FJCaHwn4Bvk3nLrhPSzpyDFfs6KE/aAkcX+orHJ7aHi13sIQjlC6OlJTV
	WPgmXRSvkFq7oNX3nD2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ufE-0000000HalE-49Ru;
	Thu, 24 Oct 2024 10:01:56 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3uWA-0000000HYbe-2JJ9;
	Thu, 24 Oct 2024 09:52:35 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4314a26002bso7537625e9.0;
        Thu, 24 Oct 2024 02:52:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1729763552; x=1730368352; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zbGlZH2YPT556Yg7F/kd5yHQZFw5b8+sD6ABVMiAEf0=;
        b=bBgcR0bftJUR5hMX4Q7UXMxYJ65GVT3tpvzxe9XxGwDsGPiwMfKu41JHrCPIuHr98L
         P9uau2THkT1PfPvPISacm0QYC+DMdLUl+D+S/w+o7AfW6/vMtFfDxFa/f8nz74gi642I
         z2hudQe40edn3AlFg11vl8j5ntGMesUHEVJyQ5nWzaEatnawCkjp8rFcd+g/NCZw8Tq4
         3wa4CgvY1UJ9fCZURoqz//vFzmFMR0tuet5Bw6QW1oT+9rpsoCxB8wJyt27LHmrcduHi
         yhPvB1H9vpzkAHfJ5/4iQhSeh+TMJu+Cf1d8DnOemIaarhy1QgLdbqJ9qWnQAlgNR0EV
         JZqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729763552; x=1730368352;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zbGlZH2YPT556Yg7F/kd5yHQZFw5b8+sD6ABVMiAEf0=;
        b=OhTXMYo/whDbdt34rHPqOrYBYaKEKLcs9m97gUV6BVGmECvX7OOJHVdUmhCM1i7ARH
         ubdcbWTOlTixXY7Y3BK3UMCc5IceUKL1x1rTGdn1uBHglCxWrWfwbmPcBmj+rljaCAAR
         psSMKp9ktOYSn7b29rxodVAfJOn0FU30dOW64vz8CLlgmC1eNd00mM+VaHcayVe/O0KE
         0sVy05Z5BMppRW+qY8YURnUqOUINlnXakvD9iTQOskcrmsDyaBzGgQl17a1dQYtzTYTk
         NrNT25I5VE/OHd9B40f7YTjyNQRmCk1nNYWiuICDP6dKhnpOguzZg36It6bw+E1FaBJi
         1dew==
X-Forwarded-Encrypted: i=1; AJvYcCV83BOzL7TxscYGJfyuatoJor8mxXDEp4DzJcTf6NwpY1QXsb4Xgs0jYTajloMC7guixdJQByx24RfsmNV6UJ8=@lists.infradead.org, AJvYcCWHq18RTmbbKzYzbSXqAEy4LmZVJ2d/jVaTfLRwF0k7Ny/fp4NqqXZ2ozLqrjqYr6bX/Sk+7fa8kV+qice6i73Q@lists.infradead.org
X-Gm-Message-State: AOJu0YxcWOvoiVLos8KBECg9xHngLrteqSZnwG5XzfXDYzdiFwBuxCYV
	EuE6xoh10WKkHBk3D8Znqbof7azxUe2GcGCvHK2VoRpliuFndAVp
X-Google-Smtp-Source: AGHT+IH6+FDqRxvf+ZtXVfydc1RVsL1eaYqfFGtXJ+QNYha+sQ1JmohsKezDc9XL54BBl2gx5N8lAw==
X-Received: by 2002:adf:fdd1:0:b0:37d:8084:160b with SMTP id ffacd0b85a97d-3804587eed6mr1086117f8f.23.1729763552405;
        Thu, 24 Oct 2024 02:52:32 -0700 (PDT)
Received: from localhost.localdomain ([2a02:908:1587:1e60:e265:6c8b:f62b:1474])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a37ac4sm10996286f8f.6.2024.10.24.02.52.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 02:52:32 -0700 (PDT)
From: Cenk Uluisik <cenk.uluisik@googlemail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/3] dt-bindings: arm: rockchip: Add Orange Pi 5b enum to Orange Pi 5 entry
Date: Thu, 24 Oct 2024 09:50:21 +0000
Message-ID: <20241024095038.42079-2-cenk.uluisik@googlemail.com>
X-Mailer: git-send-email 2.46.1
In-Reply-To: <20241024095038.42079-1-cenk.uluisik@googlemail.com>
References: <20241024095038.42079-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_025234_616252_2D40A146 
X-CRM114-Status: GOOD (  12.46  )
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

This extends the Xunlong Orange Pi 5 device tree binding
with an enum for the Orange Pi 5b, which is implemented
before the device tree.

How does this board differ from the original Orange Pi 5?
  - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
    slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
    for the WiFi.
  - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
    "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
    hooked to BT_WAKE_HOST.
  - builtin eMMC storage
  - no SPI NOR flash (u-boot, preboot etc. initiates
      from within the eMMC
      storage)
  - ap6275p Wifi module (like the Orange Pi 5 Plus)
  - builtin BlueTooth module

Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v7:
- No changes to this patch (same as v6)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b7c4de06b..2f9fcc634 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1079,7 +1079,9 @@ properties:
 
       - description: Xunlong Orange Pi 5
         items:
-          - const: xunlong,orangepi-5
+          - enum:
+              - xunlong,orangepi-5
+              - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
       - description: Zkmagic A95X Z2
-- 
2.46.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
