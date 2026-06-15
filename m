Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03BE3CD98C5
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 17:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=fZr74tP+u+nwOB
	Yh27cVFzCT3nyMxf8jH4w2+QpsG2FhrDG7KXPr720hCL0V2aQ1tmXL0KHiRFPyDxY/82nI749sKCy
	SvVs5g0QZzGulvYRXZllWcugSQlDVnB+ov6SoSHAFOusOLZwQ6El3QC31GMVVdUC5BrD3rgzDFZO2
	2T6FqVkvzhIomCAt76FnyAXilB2di9OokaGVHBuDQQbd04t2tmbGdpfKDWhXiI6hUYnCHh0xvRxsy
	tuOWl9vwR+5X7fkDq4Ahf0at3OnNbk4yQM1VPYIAC6hpHLNHbQfOYFKsn+S5hpnhh3kiZ0zgeLV7o
	NhjdAHft0gLm7qtLMtDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6b-0000000Eenr-3kH9;
	Mon, 15 Jun 2026 17:28:13 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6Y-0000000Eeld-0ikp
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 17:28:11 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7e6e9408e30so2334113a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 10:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781544489; x=1782149289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=YYiG6V3B8f/OpJwrup6umqzd2s76lCNqvSg6/SdkJZieZM+Fe1vjJfmeW/QQsuECvj
         7fEcOqdmi4OA2KlhG3bHq/vvteBp3Fg5BxvRD83eeZ2YWDiRE1/x08D5NTYo9ZcwUlBl
         t4t7RsxoGtbxBMDVv3Xx69au33VdPBXvkqUFCoHm+EVNLl/ET/pAcFcp12ufrZPOCmji
         nKTREAZKtdyE9Y3LbfHUNRJ8SeHgXIZOTgJiqav/JQi1/v/Ru2npqJ1acKTXO2C/ZP9c
         bLU8AwlBxlsIPNzodxDxQKDYOiaojrAuDLgYRkMkmrWsCwSnkbz0dgy1pxpc3nghNqzZ
         EhzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781544489; x=1782149289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=C4DV0qyO2JGvrlvqVtBqmTAeOntm3Rs9HvJwtmPp8CfFfJQNzFE7bwyK79zIFUAByN
         vbHmAOp45eiBIaeQCmB9On7KbOMACcWK6q20BZ9TOn1E/GrAqBMAnEWjCwQrb9tIr/d+
         awi/+B984zhF9Sq2Nm2zPVUWRhWnTputTUyGVcaPgzodV/SRtKuBdRBXkjU1PXLYXl3D
         gpspC6hZSnU2dyAYH4gbMqaSn5dt8g2V5MiKc3ruB2D+qMQSEDk/6jdOMVTbMXRMu0vM
         98DM4nZgCW8qXuJ2aGx78VkZcwm2THC94DMXGec14P26IyLStWRCM3fuk65lgP8CvuTR
         6WzA==
X-Forwarded-Encrypted: i=1; AFNElJ+9/mDbRAG2N8gLMVwAGkC8z8LZVsjs27cmMzksKyqt2C+0mkpHKJiuHoW91mtNItlXaPJA0VW0thqcjFpVvg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yys3NKm4aSxFH7GV/Pbt7hvuU0WQL0oBeVEgGiBUrBuDPqOD09H
	ce7dN7DE7IFD1GD80QRN/abyy7rvIauqhy4MIy+wDr7I3m/eqavJqeSi
X-Gm-Gg: Acq92OE2iGfJU/9zRpFlX792G/y4sf4QlqqYoQGNshG+HJVikfUhYk2/28AMjTC7u4J
	PNyYl/dPF28XpwlykatQR69sGpyv9QzuIKnSSmEYWjBHDzidopjxC9BpG2Mxs/c3g7Iuph7EouS
	RbzPSqUJ3yTrHofeHMUrgGr3VFFWEmI11IWUzXB6NzEBi0evcwXRrcS5Mp3RqSE9ya3htAbLO9W
	pUYj0c8nQU+z2CtqfcqgOP77pI6iBbjMyg7LCqB4HTBEeiCzGsyAKFrlzRa9U7QGG9za4sWy7q/
	WXNCCkLjEYHoVZ7JiXxPyEZiS1Nd4t/BCev+EgA7TKB7krmjluN5Pm9a/tjg7C0w9+7D9UsOveO
	A13/ZYcvBRV25CCihDjmMjoB7kW7uz/Mq0EgU0rBGAokiOvBnGqsyIZR7mzVtLtS6HekYkOst4d
	1hgpbwsHxE0O/6KexP1us/lw==
X-Received: by 2002:a05:6830:438c:b0:7e6:ece3:80ed with SMTP id 46e09a7af769-7e78e7f3cedmr8432644a34.21.1781544488940;
        Mon, 15 Jun 2026 10:28:08 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e79f451fe7sm4480033a34.0.2026.06.15.10.28.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 10:28:08 -0700 (PDT)
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
Subject: [PATCH V13 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix to icm42600
Date: Mon, 15 Jun 2026 12:25:44 -0500
Message-ID: <20260615172554.160910-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615172554.160910-1-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_102810_210951_71E14042 
X-CRM114-Status: UNSURE (   8.64  )
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
