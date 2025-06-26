Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7ACEC7EE30
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jun 2025 14:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kace87mopuWTYpLGnjV9erQPOTuHsbBC0gteJFsggeo=; b=zuy8shbCLFhYk8
	3Qrbmv3IuM4nKowZd+B+CxKM9bNR6wptAkvlEk2JAmw/cO9nP0MlHiBdJKYJ6XK3loyd+hw82V7dW
	ZxXnxegnB5ZNSz3ymD84aODo/Lrf/afCSF7uqsrNljgLgYVs2Xdc0okyMyKAvgGi57Je/b7aneHXn
	sA/VqzhYZrInSGZ8hDdB7DY07fjiBIIz4Y76e3od5dlRyMQa/uuizst1gTOl/e93g/rd2e3adHGm7
	6+y6c4ivG/5EUPhwqgqSS4i3Y8WrL/+xelZcWhRgYMYg1KHemsOI1SlVZs1J9dz03kt0iIPTZkAIK
	sDzUOwx3jsnBWA+9LjVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnFy-0000000BrQj-23a8;
	Thu, 26 Jun 2025 14:07:14 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnDj-0000000Bqy5-25xX;
	Thu, 26 Jun 2025 14:04:56 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-ae0bc7aa21bso226353966b.2;
        Thu, 26 Jun 2025 07:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750946694; x=1751551494; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+obfMbUjPeqPgweHt8NQmSnWbRdROIck/DPZLknRG7g=;
        b=Blk00aRJltCu/uaYQnZn2WYJF7EM9aDoJBYd8KvzS00bKlfBeE+/bM81dJTuerBkjw
         wf5UhcxA4AbQB9yYihS+Hr5K4tQ/FGQwdZSgNkjhsq9HHFvDP0gURTgbDPj3aDs8BZtQ
         PGRhiNpd4sdypfcdXFmBS6KNKFO6q/2ataxv9n8P3H5aptahv29AhIrV2W9R+lGBxDhy
         5EBL/44Hb3gwSmxmq2dPJfZkD4A5LKPYOz+rsqCOytY3PZxsCLbvQkAq4C9MIJZd8Weq
         OiXcZ7ANoXSqMSTxOKiNiQHsZaagedqhcqigSQZOB8buU1FLhjLq5tZNvCccx0BcUQr6
         SLmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750946694; x=1751551494;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+obfMbUjPeqPgweHt8NQmSnWbRdROIck/DPZLknRG7g=;
        b=vLf3l1gBcvQjn2Rq8FVop8FKarXhUnXDSJ5y9fzsVmSW8b11iTxPFmHRgPvxiIeMum
         iJF90pzbpUkEKTjUo4kDOr8XK3Mxa+2d6U90jycd3v9N6HUf1KbMarFID887GgSZVt5V
         ZnKyXxIhH+46rUwu8KHmJZoOCZuyexzSzoXXFywbdvODYTEkrEWcUM2Vkfuuqsxth/+e
         BLBZWaCilcAxY3VbvTzn9mwRJ7g8uTfRZ7av4HbM7E6a1MxOPcjVHo72MqGfIaSnwdtV
         jiUe8WJcUhwsi7Lb2gs4O+/Dc5SSBIC5PJmi50ZXCcUBYJayDrWty6vYPuLE670MXBLZ
         ZFXw==
X-Forwarded-Encrypted: i=1; AJvYcCXa5ztiKartV2uhLvpB/CCqUp19LUq0uiWYzB434TUfb16BgHIvo4wwFOQWQsh/rih6P7xVAe0NuP9WiCkRtuRX@lists.infradead.org
X-Gm-Message-State: AOJu0Yzc6FP6RffYy+A5dC0fvUhKKbh1C7UIwNa2+V+p7jLQXkwXgAGz
	eAZQ2mtV0syjQ5t/tIkIPSCzqGztPkVvX4SbojKQJV9FNNXHjOdSbN9/mMP4qb8+qQS/5g==
X-Gm-Gg: ASbGncuz2RVJssODlTThEnG8Cz7PXwTWI9RSepuI+34doBie4HZmR4+2HpN/ZivzKSt
	N5UZB7oRp720XZl1FbUcqR1MHX/cpDwfSGghT2AOMzVjYbTIfJQ0HDJxV2x4bwdRqKIBtTo7peC
	SXCKO63+0VtMrhfXB312jKidLZ25kWctZ8VYcZhnHUWFiTCFEcpM5sfLUvWOu5+0a9DfcYgekZL
	g7nhxSg4vS5zZkhPq1meWXOzPapN43DooyhKKnX2pwQ4+efUcBDJpUErszhXOOXaHUrTGpoFijr
	pU3w4Pi2Cqrri8wtLTIgGuBZdnDi9mPelXY9AFb9YIa9X5dkV7HD4NCDXO9PPiA6iMt9gnTxdGC
	npFq/tf+GkFE=
X-Google-Smtp-Source: AGHT+IEMa7N6/JICwBktUg284CtZPfAM6zetq6FSZBNGjtmxX0wPaJpuk1XXGA4WwOHUjAZ88L3sfQ==
X-Received: by 2002:a17:906:d54c:b0:ae0:cc3d:7929 with SMTP id a640c23a62f3a-ae0cc3d9616mr532689466b.1.1750946693173;
        Thu, 26 Jun 2025 07:04:53 -0700 (PDT)
Received: from localhost.localdomain ([176.227.88.86])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae2143d928dsm3958266b.107.2025.06.26.07.04.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 07:04:52 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH 1/5] dt-bindings: mfd: khadas-mcu: add cooling-levels property
Date: Thu, 26 Jun 2025 17:04:28 +0300
Message-ID: <f4d27c690b562cc72997c9ae00c6145b3722561a.1746518265.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <cover.1746518265.git.efectn@protonmail.com>
References: <cover.1746518265.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_070455_547033_35D5B45E 
X-CRM114-Status: UNSURE (   8.99  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add fan controlling step property which is used by Khadas Edge 2.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 Documentation/devicetree/bindings/mfd/khadas,mcu.yaml | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
index 084960fd5..f69643aae 100644
--- a/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
+++ b/Documentation/devicetree/bindings/mfd/khadas,mcu.yaml
@@ -11,7 +11,7 @@ maintainers:
 
 description: |
   Khadas embeds a microcontroller on their VIM and Edge boards adding some
-  system feature as PWM Fan control (for VIM2 rev14 or VIM3), User memory
+  system feature as PWM Fan control (for VIM2 rev14, VIM3, Edge2), User memory
   storage, IR/Key resume control, system power LED control and more.
 
 properties:
@@ -22,6 +22,13 @@ properties:
   "#cooling-cells": # Only needed for boards having FAN control feature
     const: 2
 
+  cooling-levels:
+    description:
+      Max speed of PWM fan, from 0 to 100. This property is necessary for Khadas Edge 2.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    items:
+      maximum: 100
+
   reg:
     maxItems: 1
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
