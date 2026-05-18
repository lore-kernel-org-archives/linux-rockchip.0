Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEFAACD4F57
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 May 2026 20:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkyKVCOa+G5GL+zhbhPxJlGfDO/uj4HB0jCKSU7nJMc=; b=iFKA92GefRHOpG
	STAr4pk8w1hFGgMgGHKZFjQceHVrLuv2GKAXZtCZH8ubj8uEPOMmCjoIBvuQFGDGQ0Oypk2YtkbEa
	EwljetEoaCViIDCbBAM91BUAhF8QZ25+CSo2IdzDm2KQTdx+DQd6n/2Lvk+vkdNeMquOoqvS2uU2P
	0xQIGXMtyoHHIrI5pCM9TOJjH3YzvKzh+g7fe22pyf+4JoJQO+hQubFHD0uIi6QzbKR1+g72wHWgf
	5GHY1NO1p6RpM+5t0ljacJ8aX/n7F3K4rYSFCFKW0OIZrhvy45gPTU1L/lgqnDMZ0RfJ9/BsBTLJq
	QxplfrVzvMARPtGSfbDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fn-0000000GqFQ-3c9q;
	Mon, 18 May 2026 20:07:55 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP4Fl-0000000GqD0-0x9m
	for linux-rockchip@lists.infradead.org;
	Mon, 18 May 2026 20:07:54 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-69489b43d66so587344eaf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 18 May 2026 13:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779134872; x=1779739672; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+2ydEn6hztRE9Iv70/dCmwY4D4SjSGA68XyIdXdlEs=;
        b=E3jML1kLENE7wtYmDbeSSAqJ7E+xaEVtH+dPX1OgllfMd1Dargto+PqhQkrgdwrkvP
         0ajH11ix/H2FwIvujAaoFNEkRITS1UGcSfs9h0UrF3oY5ajRcyXAtXfOSgfumYU1PcB0
         uyCx2yS+3siyX/BgOJS1H2g+DaKQ7i9EQuSINlIk7atwCRLcrUdpczGcOgwhfeKSBRpq
         //fDAE2GBYrtpZbAx6yHVtXbk8N8j0ZJfjA2aPZcyIIy6obo4zKpNlkl0nqgSU26BI+c
         yhjThPljQQg2lf+5fbRqqWcTFgOorAB1wrFdb5qARdOKUg0c57za62Yt+j99BTFnqivO
         Bn/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779134872; x=1779739672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Q+2ydEn6hztRE9Iv70/dCmwY4D4SjSGA68XyIdXdlEs=;
        b=NpVQELnkd78TgQq+jS0jYf7xYxaEoHvzE7XQd2+vd8PCPiOU82ELBtkXPM9KcOQw1g
         Lvwx1Y2ZYKHqoQZDI73cC4Wzt57Zae6lS0Q2NbAgH1GjvHRippEXCyPyM2/xrAFtUcq/
         sqZINXIRjjbgy6WN2xt+EFkfhVhX2RHmfjCX48QfYNrkTPJvbhulmng+kmg4WkMVIbq1
         ZHoE0k9QnSV887fv6520OIuaO6TPLoAkZQMtvpBe8WeRd1SzNGo3/7GDu4P/6SCWxtGW
         Xjc9yuT+rfei/x/yXf8WxszFBjSCc+hUPhbtpZmoigv4LGYm02t4Br0VIyoLRomQ82Ou
         vZhA==
X-Forwarded-Encrypted: i=1; AFNElJ/fJRAE+fu9JjFavFFpXf3j20d3Ry6g5hqQ8bi79Uil0JmKc48h0L4/hp+WJlm/+Wr/eUx+5pr44w7Oe+4WMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/q5KUK5z8Ps1EIWs/Ad+hBGoVts7V0gg5JbN3dcdZSUz0eowa
	XphfqqeLvptHJHzwam5jtj/Dz1goLZ49wmUgp/Gru4aE9oRTupPHJ23C
X-Gm-Gg: Acq92OEn20QHZIuEvgOl8KYfUjbPOsD75tH15QoP86FviFc9jHNLD1TmTMLHrhSqtT1
	mzZXHe6o8a2/3V/FZjohR3y2JxKF6XvTAGh+Tko9Z9CeNVrPdodfRgPsyQUO7Q+Dgnotlw/oEyd
	dk8iOwY4JFGbnffdOVBrx+WHLiGLsH2VWpjx+s641sQ0kj+jh1klfEZiIp4Tbc3MMrq7P9MvIHy
	VhQfk9hdGrEPyUnQD7tueqBOuycwA/OXMVeJpXj2LRXw66zxspgA0psZvTCujPlKgMVL/WI+zN5
	nX9jiU+HXVT65ntCW0zA/WJPgF9JeGC6gRc/V9QyZ++6LRnuao4H4Cdq5XntWcCRq8kDofrJNck
	17IOA/FwnTDiLBd4hEXkEIj2BkHBJ80KYFNt3wXJA9jsfHK56xxfjJ4NRm18x3C4TQxgeGak8cU
	EM2Hmml9+pkuBzim24MJ5s
X-Received: by 2002:a05:6820:a04:b0:69b:5696:e63f with SMTP id 006d021491bc7-69c94303bccmr9698331eaf.24.1779134872076;
        Mon, 18 May 2026 13:07:52 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69d0462e85esm6113360eaf.6.2026.05.18.13.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 13:07:51 -0700 (PDT)
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
Subject: [PATCH V8 02/10] dt-bindings: iio: imu: icm42600: Add icm42607 binding
Date: Mon, 18 May 2026 15:05:17 -0500
Message-ID: <20260518200526.458421-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260518200526.458421-1-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_130753_261993_A56C1C47 
X-CRM114-Status: UNSURE (   9.41  )
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
very different register layout.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..b69c6bbb6f6b 100644
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
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
