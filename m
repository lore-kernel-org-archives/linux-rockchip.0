Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F4C2109190D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 18:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wipfjicuD5AiG1PFEJ/PumnBsuj5eriGSD1hj+rdj7Q=; b=2LPPv4S8w3uftQ
	pyc0OFj++E8fOdhYD4i2sZZwH4jY9yaSlqyz8SiqXeA6BUgtERD/RFw1DTRRp+L2+n/qny6+VdeNu
	rz9P4QYw3s7aF7X7SHTVtM12B2OC3BV3dwNcV0odu85Uwm+VA2Hya1GvyboBNC3FA2qWcbwrXoZlk
	dgIM7Au/V1Pv8PMwU+s0xrIkj75tOkdW593bbFNaM6VcBbu8PBmaJt4mvbpTsUFQmbVtRiTUq8OQk
	7pyaPCw/RJQInhRbS6j2RuWtPmK20PxWj2YdA5j1sv7higGlcsknDt12CiHvikTsKQ5oAV7fw+NHR
	YOE7C7kBsfvxkwSHfcKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAX-0000000BMCs-1M6l;
	Thu, 19 Mar 2026 18:32:29 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3IAU-0000000BMAz-0TjJ
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 18:32:27 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7d7e94e0db7so162906a34.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Mar 2026 11:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945145; x=1774549945; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XvvMyIz9m6P5qRNX/2YBjZmJuc1YLtVPBVOQ9GiKfTU=;
        b=JG7ZbOqbeK8rZTKiPGDfmzAW7Bo8Ws7hBY/ew4E6xOqm7kr0EE+BVZ/JHEacvYQIh2
         4Gtvyah2ZeapMov5eGFQ7RL2s8XkQDCEgBzh6LzX1K6fnOw8jTvzXBstVpzYWU3S6cFe
         PJ3Tntta96eZcxojaO6hoMkx0aAQNCofbEdZYQY9q3jdLwERRoXAPVRlFIbPucRpSqZj
         Gx2xkofiLa9MO5ceeiINndC4WhxeoxLc2SqV3jzBTyFzJ4em5ecMeFUOXWuqjzTyDmDB
         Cyz/Of3dbykfF631yxIS/fervhO3gheunjvbC2f2xrOlEV9/GpZtlDYKGnNTPUJSzHKc
         WWzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945145; x=1774549945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XvvMyIz9m6P5qRNX/2YBjZmJuc1YLtVPBVOQ9GiKfTU=;
        b=tVFzwWTZrRtaXQIwvYBppsj/Gd38laNRQu271nfZFksGYAIz4OqjLFWX6B644PjAZT
         aN227eYKfXNrBS1YJ1eN1FK1HpvEhqP/a1gKEy7tsu0Fjj5zGwWat8jX8Khz38UPhfsi
         /xpSw9ky4kVVmFQVfJIlAXh5i1DEvSIV7Oc7Ji3s0qftNYmmoCnHBH2XPqNfgAMDSz2Q
         QYXRcmfAjtDfvFutGza9fVCwxvCTOCcKQGxx3C6BLChfcMK643oEu0Z5+raz+1XTewys
         Xqn7L5ES1gr5dKONbbNoxLYMbjgSQV6Sy0kBUw04j6+QHa+ki7BI9pXSLF+zxksLD+m9
         2yHw==
X-Forwarded-Encrypted: i=1; AJvYcCU0SYgLofJC+c02RBMVASCrpki+RLqbXn6rM0iYWH0xGSYcaoOCQXbUnT4nNdt34wuuKz6JhrP9g4qhks6skQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYOf1k7BR/8QzQjslMEENghIZbXqmvPd1t+79NT9J6rIG/ibOQ
	Xhi0AICodJt2l+AaEsWAt7Pi2SsYRssai0B0gmhCbmHlFU7dZR0Tb3jW
X-Gm-Gg: ATEYQzzQMtu+0c4apZ4dkRlCUejAVeRO95Fziz3nlgZoS3TRUeV/Juzq5UWxlwtZfZI
	o0ZQllt+jMQEN7DRTNTVDa7vkL5XAeOCRQAtzzEoYPXLPq4P9HrCG+1k0guf1mZC7m3G/GCEFrk
	9WYJ0+cZr4TweML4Kg5+QcRU+R2cxiAI8PSruT0CVj9J24+K1al7zH7wccdYwggveYLNbyCOpqw
	M0Oe6YgO8f4cWcBDTkj8zdYaSVnG+s4TknoTYsSvyvtHjhEaiboyL5Ctbebvz8RROHnYVANgBRH
	l5zAyGBWq2yHi+v0tm+WUBVwHizllHHAQQA5DnSFJr/JmdUe0St5MyUu66P9Nzo5bDTD9TvS65U
	BdTv164ZWWyWk2arJ5Jkc5tSKfkqv4iZsOWwQcPExqRM7IqSQ6TxbpzOXZ2MF2xj7052wO9qy2i
	FpiDojaylAZ5XvNudzW/wY
X-Received: by 2002:a05:6830:82a5:b0:7d7:e3b9:58dd with SMTP id 46e09a7af769-7d7eae7a567mr191239a34.10.1773945144869;
        Thu, 19 Mar 2026 11:32:24 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d7eadcb11csm172193a34.13.2026.03.19.11.32.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:32:24 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/5] dt-bindings: iio: imu: add icm42607
Date: Thu, 19 Mar 2026 13:29:37 -0500
Message-ID: <20260319182956.146976-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260319182956.146976-1-macroalpha82@gmail.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_113226_151823_27480F7A 
X-CRM114-Status: UNSURE (   8.43  )
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

Add bindings for ICM-42607 and ICM-42607-P.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..b69c6bbb6f6b 100644
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
@@ -53,6 +55,8 @@ properties:
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
