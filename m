Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A62BC3ABCA
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZQjzboyOoWe/3pDSGMkU0YGgls7e0PElm8b9DBYWU4I=; b=nnPMpkpgOPwwaF
	VH6olG2TujUCD5JU1QDr1xbs6zoOlho0EtkfwsK1xnxD62U3cW/+NTb6UF0sCoTovXTU09rXJ8FGs
	gNje7Tp9eJ0bmkdcvx1r6PZsddMpYPlQtyEwIOpud6ACUmFj6cu7nQyLBIHRyJMISP9nZq4aoAIck
	Os/O14EaXDnzQoI/Meb7KYkOrWC5XJtxuM9zqCWAdaHZQAmHUPXeXCW4iycHAJNASmy2NxNjco4lu
	qJHIpQ2wVehgrbBzYyx8kIAuSXSMu29B0fVUT+8SO+Mj2f42Btc5rdatW0x1GV8Ybk4jZ43dlB85E
	PUgISSNcFBJ1aM22o+WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD6ct-00000001cen-1skR;
	Thu, 08 May 2025 19:09:47 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD6Z0-00000001cJ2-1R5M;
	Thu, 08 May 2025 19:05:47 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 6a1803df08f44-6ecf99dd567so18149536d6.0;
        Thu, 08 May 2025 12:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746731145; x=1747335945; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LX2AgnXjLZsaf/23m6DzBSsHeoFXJnMo+ci0aY0CQT8=;
        b=N+z7RzRx1EKHMdvCOVvIjYaQ7MuEVmsqcmR22d83WY8XfF09kdIQpChYN3UlUUIBtZ
         GoMoSMYkTeL0k/PLYzkiEC9jGomlxwiPsMQ/1ftTerv/hmJp+WuNlRraTMZ62L36GVaI
         /zKwZGk3TmxoJwd2TfKInSN2MR1rm8TutZTBeAYA8t3/TR4U6Yu59Y3Gp1xZ5qLZsdjO
         TtKEgnOROhIjNsSkaO5TnbLR4Aa0rINJwV6+G9fl/ftM9y6HhSn6jLcrZCZkM0M01zKu
         QiZbltukt3G5OWM+jvdMIz4vUCkL1OlAfovPoTl+sRMT/MdhtkYhkSJc2UAIHoGps3ou
         /17g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746731145; x=1747335945;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LX2AgnXjLZsaf/23m6DzBSsHeoFXJnMo+ci0aY0CQT8=;
        b=iT2KG+u78kI2xiiTgspnJqmitJzQGiaKV9ptxs4Lte2Ksm8ivCSvfB4+qQWYVCm9NM
         meZY3/kAQUuVHx+gPa+vmpr3NoWKb8wuOCjdXrt7fIcS5NjXVRyeIwUcEeVR1SN9mPaN
         hs4+BWZToLRCfw8jEm6T2CDxmn58xv+YkYonojmtyQYyKyslvWFr95q3i3edMFowxid0
         ImeIwmbqicaKVnGrL5rHrNMgR1xLzEfUyR4L0sqVYUxKNx38tNfk+eSmGm+qqMVB9ZBv
         R5EOOSJ32Qbi0V7FDW2htW4SraZe1N5o+bLbPxJBqtJLMGI9MixniTw5ksVwfNw0XNKm
         eVtw==
X-Forwarded-Encrypted: i=1; AJvYcCV6C/ETAeVr9Bw1y/zfr33XU9BZJpCfYFOK3dBLS9UNSWgcfuBp89ysH0RVbr/ygDElcA9txd8CzYSlKrrz3zkW@lists.infradead.org, AJvYcCXWJo5MFmYPDX1iVvuKaFNrapnkGbHoPAh7rHaR7ZAloDz7j5+GRo+3BeDoIgXNRfkwKhYzOLJ6OcakSeg9ZXo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxqwuN5ZGvlZj9vfGzPOd33RdfCp6WgT6+QPUMl2eEpS1Qr9pwS
	udpZDX5ZJiwgZvk7+MmfQ5FnmSRQhAP6EmlO1KsYXnqjtDCsrUoh
X-Gm-Gg: ASbGnctZVzrJhXpd9cWFJWXqI7usw9Xaf7TbNWM9OlBKL5Bq7Cgua1NRJ6GrDVJGjJF
	DvFxcNhAnolDQYi1S/++k8wD7CHUj4fTYnLauPaxzkcx2eYNrhBzqkSNeIomVr/6X3tX96hmGPi
	Kd4C3KhqBqQdt/kaE8p+KUwtQuZV20caRBqHLcw/dIjYJ1ie+hBFDts6lVv+HeFdvSivWv9nYbS
	41Mi36g8cgIs5z9bQdMxpNU9QcPy2c59NsS7PQI71wjhTGS5vY71dHMr1Z4c461Xnz4LnC2lIyn
	whWk1OK27sq5Zy72V+gGdiYdL/uZHgGlHJ4hvVQtY/chEmpo6t0W
X-Google-Smtp-Source: AGHT+IGQJAy79kpZKW+oDhN27XY9umGN2UC95aQk3iRXkusoy3k3nhQQ47YqegggCVq7A5ReOBYavw==
X-Received: by 2002:a05:6214:ace:b0:6f5:3811:cc67 with SMTP id 6a1803df08f44-6f6e47e748bmr5964526d6.12.1746731145202;
        Thu, 08 May 2025 12:05:45 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f6e3a0bee8sm3148216d6.54.2025.05.08.12.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 May 2025 12:05:44 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Andrew Lunn <andrew@lunn.ch>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
Date: Thu,  8 May 2025 15:05:36 -0400
Message-Id: <20250508190538.22295-2-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250508190538.22295-1-inindev@gmail.com>
References: <20250508190538.22295-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_120546_378578_8056BADF 
X-CRM114-Status: UNSURE (   9.10  )
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

Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
produces development boards like the Luckfox Omni3576.

Signed-off-by: John Clark <inindev@gmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 86f6a19b28ae..9391e0c31bb8 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -892,6 +892,8 @@ patternProperties:
     description: Liebherr-Werk Nenzing GmbH
   "^lxa,.*":
     description: Linux Automation GmbH
+  "^luckfox,.*":
+    description: Shenzhen Luckfox Technology Co., Ltd.
   "^m5stack,.*":
     description: M5Stack
   "^macnica,.*":
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
