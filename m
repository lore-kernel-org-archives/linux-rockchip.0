Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1110ECD342F
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 May 2026 22:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEKknbPhG4dcQJjuyeoTrNNgBSI5B94c3NVRLfeW5B4=; b=zCP6qwtGT2EoZ5
	r60ZsoCLo+CFrcSod8l8+8Vr4tIA/3zDZXyVXmVgvg7zz6YZWQOL3lyRSU5vyFsdksGB6S9lYnSJG
	patOq0u9CMSGl9iMhAnf4MldQxZ930DiUuaAS0ZzbIs0jZn7P/YqO2TbYa6YMNA3L2SNKGUzOYzzs
	e87f3OMfI/Xnyg0VkBi2buo9svvAUVKXR2/1qKDXADjumn3FSBYq9IjqP1wvMtVVao9atZC/L/q+w
	Mw55uw9tip1DsqJb4OpBBRV/pL6SYRgayNZkz/V5S4iaJZ2QX7E1qwTyaltiYUlDH58tkErfOtOkm
	Sx4k6U64AaPRzJ0TBIpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7t-00000007kSn-3moS;
	Fri, 01 May 2026 22:14:25 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIw7r-00000007kRU-1jLT
	for linux-rockchip@lists.infradead.org;
	Fri, 01 May 2026 22:14:24 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-7de44ed7a11so2003794a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 01 May 2026 15:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777673662; x=1778278462; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rh2D404GmTWC6zLAhnnfq8RU6EGIGncop+92KcJ8XSY=;
        b=kmcQewKDNtsaH5Ws8ryKy+B4QzQcbKZozHLq/i6SM62RAbg0zH6SBWm6J66zKwq1WO
         zbAFoJCwg5YA+hopio9aU0KmU8O5RLwM27zQadxNhRNjHDdD5ORVHz+pT+U3gf6M8UZv
         yW91GKcGIRia9wCRbG+Cb53ZrJILozB3REdu57xQWTqbIocgc84kIgkYhifW6+cMfXDp
         NHKFWM8ZywEecp/U7EnkOUKKl11/rMIM9/K3AEmG9AxJPHRw/mG+G+QfzxedIL1S1XeI
         FGZ8AwRnA/BDgTsMQlvu9cu0iLaJY0xpEQa6H5q/xPz3h0H/EraaXzmSUY3ohuPcWkHT
         4rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777673662; x=1778278462;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rh2D404GmTWC6zLAhnnfq8RU6EGIGncop+92KcJ8XSY=;
        b=DfIJekvnqpbEiq2LmIB+qeDOHp7bgMRjrvBnvkmtu9j5ujFYVfCf69qAfePAtqGIfI
         OcPDvelrcmR9ceMGnwUb4a/HG1uTg0fzWBwkp8RwGQbUyFD5PbYvPzxJZVigTsBDOefM
         tHt+Jn8fBylUBxJrUI92N5RiCWI3EnJx6ee/uvyeK8/7XTVQESrMkkuaFlDAVeir48SX
         gW921/cm338v8By9xZavXT118DH4e33g6OnfTccIpF1zltjINqFvXZbS+Oqxc6loiiUL
         b1vkfR8xVUa0ZnFPxN9GfxGyUVxhIC93HP2ig4xoYb++9jYPOqkJJzr7PpNzh3CSgTqY
         dsHQ==
X-Forwarded-Encrypted: i=1; AFNElJ+BshhxA22+pw6n8oDty4FbfbksmypVp9xwwY3Dq2g9UZt0M7pClHfnscv+62/a1uS1XlGp5di+Oq42gfmKIg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5ln7O1QxsUUp/upDRlXbFbo5xaZ6hV8m8t5G+h0x/UjWOxQR9
	SRQ4knjo9xyN6Ng5xnUVYMys/JoPKyqmAzA5dZQkCdKnDBkL1Ga142i9
X-Gm-Gg: AeBDietEHHLSYozglulDmoSLI0qRO2WG2MrhZrIQqeztNt8lSBwjsk8dP5BJFPidm5z
	nVogNOvk4KIXKgbAI7EKVbLEocXKWQLQNcK65JsdAnwF47qk7ahPOFu2M+HOoHAZCLS3r8kICtV
	OZYPsA2xn5mXzytJdhOPL0Y6EJEdO+5Ar57wO22qZi4jTrdIwXRGeeH9T0gxoTJaNZPx7S+BXFz
	Pau1fSFMJNWkCGRhYsqT4EHzmvRyP+vbPXmYOolZVb4nhiVcXV2Gjl5Ded+T538iBGh4dupieOi
	DTlXm/lk5TdHcRnMUEHuvnypb/M3Q3SJJt6TFTiUjC3ORpayOsqJM/g9EkgO76QOturOuRUcol/
	3SwaiGjoCNuCg7EKUXvFW1OcPdEA2F1cSordbwj7B948tK00VHrTMR9tEuUWIQBn0owv6Bg8I6h
	pVCKWiqQAZU2TsCbRSCKLhwx/DPRx0FZhvPuxSHwtZ1Q==
X-Received: by 2002:a05:6830:6008:b0:7d7:ecfc:76d6 with SMTP id 46e09a7af769-7dee13974e3mr850626a34.17.1777673661845;
        Fri, 01 May 2026 15:14:21 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ded51a9612sm1827337a34.26.2026.05.01.15.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 May 2026 15:14:21 -0700 (PDT)
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
Subject: [PATCH V4 01/10] dt-bindings: iio: imu: icm42600: Add icm42607 binding
Date: Fri,  1 May 2026 17:11:40 -0500
Message-ID: <20260501221152.194251-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260501221152.194251-1-macroalpha82@gmail.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_151423_459039_760E1CF6 
X-CRM114-Status: UNSURE (   9.45  )
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

Add devicetree binding for the Invensense ICM42607 and Invensense
ICM42607P inertial measurement unit. This unit is a combined
accelerometer, gyroscope, and thermometer available via I2C or SPI.

This device is functionally very similar to the icm42600 series with a
very different register layout. Additionally, add mount-matrix
attribute to schema.

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
