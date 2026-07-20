Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B041C44529
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 20:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=a59FX5PWntVyEs
	c5u3gb5dellancEXMB7r/48Kt845GRnVQlz4JsAiT/Yiuwv4VIuJHcxtnG+n3fgw4Xfd/SVufpQ3X
	8ACa4DeQfxFyi+L5C5d94hcMeqvuD/dEnzaFO6fDrGFF95Ll6VqStpryX4U4H2C3ST3TlrReUd3/X
	+cW0Byp03oy4tSh9PtrcX2EKCbpajUoXaOz57MykiN8S3k/2X6rhffl81hjCwGk1/LDgWlxvraAMQ
	5cPIu2eSRO2kOkWfR/97aJOBXMK9Y0yhbEmdDtd9RHvSs5zske9V0tTNdQoGkkp9sSyxDhaW7JAgp
	8EE0frXdK7y2OEENfzdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluYz-00000007rZt-1Dfq;
	Mon, 20 Jul 2026 20:26:09 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluYv-00000007rYl-3yvE
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 20:26:07 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-4a466f81a24so5171938b6e.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 13:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784579164; x=1785183964; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=MrdQF/49e3D5af1zfO0ybnhnW2AQ06sqkiD5+ehV4r6aKEb3dGJ9EeshgybomDNNU7
         gItszLx/n/60wAaokRQ5RabnkJoiUj4gOF+o5YTx2mP/sZ9Z0XeDRIxekBSl2N9L+ND5
         qTsEfPpAnpwCTAgqnjVoxCiUzT8vwWnNG+LlMSgaRXTP1PnrwTpqKJkJUV8aC7EhpAWV
         uKYTTO0kHxRCILFZBVhmr1jraAhX7G7b7jxu6LhumUpe3ITDl7nef7RjUCEB7LnOL7qD
         DfkT1yADFT9keSPnjGWtLAgu+8WaPnMNfBguzreIkj9Iu6JxgXdXhSRkSUp+FJrB0dRF
         jsrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784579164; x=1785183964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=ZvZ8+JQUtN6n0fSWlIvVKwcJrpaKsTweX/X2JJk/EFxY8/y7qrHI+ygxSWbltUIR+K
         /jxR1FdM46f4UBhmn3NnbSd41EUXvlSEOqYGd9qm3dbt5lFiNBpxjsTtHAgp/41IxmCz
         2EEcFPUiZg6OxAW6bRWB9du2+GCRqHcQ9YYXmv6XFNp68m2VCwyXDj0x05dBEE+Wu+AW
         KGZGoFGNj0i902/5JoIfqyHJjhb3VJ3I1qlf+TQQENuq784dad+qjrx9D2vzNQoKmZKx
         T536n7e0F/HLd28keoRPDZCm+vt+cUwfOWr3fD6TaqBQTSpWhU2n67/SnN172CdEWjbW
         bIxg==
X-Forwarded-Encrypted: i=1; AHgh+RqWTiXkWYKogJIQMw1qTCs8tX/fY7Bmo8wq4HhXZjhVuwvr9K3YbnkSE93fbLdHzgl61UA8mMAH6ClPOWBplg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQzDO62IfKbEfWOxOhLGTj5aufIUDicLjhSR5aayCvLY9K/UC8
	ns4CuVelUdBZTnbIdrDzhXXZk6SbRshrO1bd/c3aEXsfBHUF0d528qw8xeKV6w==
X-Gm-Gg: AfdE7ckhA0t+RRy7m1MK7OURb5HcUsOZAK6uK1vCJnMqlzepjbAzp2NYQUmV5p/dbGe
	fJZgHfA0lnJXksr/oeUQDReX2J0SmzuwN2S7sL66G3KvKIpTIrjTPmDP89lDn+2BXBlMvAfITpt
	He5j0/bWu72Hj4PtOjaRB8ZXQq7FKRYf8fJY3KIC70sfq6ATiNdnoVxaIQ1F5bIPaHMGS3MSAoq
	4ZfL4J8TH7JmU6JC0TEbqQ7Syhbrf30uZMMLPYZfMPhvVKlxSTeCH8X4vqqjvBTPadJGPsNQhGm
	fVLHUufRC8kLqTKGe0UT73/TvAUG50NBh6cskpfD2P+Mn9jIUohEa2g6CdhHWMrBRsH+hGQGUGo
	6Kx+JbAAg3eyjE3sJQzZDJ07HnSflV/ccKNkeSqq+yth8MIDs6FRvz2h0RHCIlt7F/9LH7+t2mq
	dTsLaIL0OlKF97oUMH3jtkiA==
X-Received: by 2002:a05:6808:4fc8:b0:49b:40b1:2d7f with SMTP id 5614622812f47-4a4d0392e6bmr9614571b6e.34.1784579164367;
        Mon, 20 Jul 2026 13:26:04 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9988:5abf:3c51:d168])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a4d3e5a0cdsm8029550b6e.18.2026.07.20.13.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 13:26:03 -0700 (PDT)
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
Subject: [PATCH V18 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Mon, 20 Jul 2026 15:23:33 -0500
Message-ID: <20260720202343.70138-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260720202343.70138-1-macroalpha82@gmail.com>
References: <20260720202343.70138-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_132605_986137_A5FD423C 
X-CRM114-Status: UNSURE (   8.53  )
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
