Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B667C25B4F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HfAvgCb3fhk/wniq8UNsdVcoCiRdH4iYw5jmqiRzKM=; b=UeZf8bKEPsSvdt
	Qo6jomkjl5YizEjucR9I+NvXPpaVcLVa8WRckV+3xm65smkHCPA1loG3CmZIIfGAfYt02v61zhr4B
	8OYLv0dHYePC55lzq1xNXclNeV/XhmL7DFiozAPT2DGg2FR8fwlvEwB50s+rW7IQA2triP5x5D34V
	8WJw8Ags/HM0XftYAPYuTb9YWjOm4/dD6NIvNMLXNyCchIqb/TM0HV9xHkeZ2qmBenk3yEA4i3dIj
	Kp7/psl3ZhYk2MkzDs4FxqidOhOt/V1Mw+bc73/nWIf6lxqtk/1Sgct2+E0IaVyzAj7cyg+2Qxgkx
	ymlPle/UrEp5dygtWIuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52ZD-00000001MeW-0uwz;
	Thu, 09 May 2024 12:08:07 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yb-00000001M4G-2qpp;
	Thu, 09 May 2024 12:07:31 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-41e82b78387so5974605e9.0;
        Thu, 09 May 2024 05:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256442; x=1715861242; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TAif8iJN8V1k3wa8UJdZQ5GifnX9nyDTgUZq5/d7HCc=;
        b=XHJH5y/qsTYVZiESnyYYqy5I/Dnv3oEACP2lMk2mtAB35RywhnpPoeQFBDyrC+tQOW
         LPRXXd8+pgDPGHotxjTkDeUU7RUTa7YSrkBhyg2UfKs4VBlTb0LqA6QjPxMT7PinFrVt
         pDd/1Zxf79PoAsUAltUvSyFNakik2lmRw9MsxVxZzByCikUc6pykUTcolZlTLcH2Ztra
         hv/eOiz4BdPuoyHa8tFSDwRnuPNr8+gXKIGEHOEW5+oAR66Jt0/ECZ5C1gBjCP7404TE
         3hTiMD48opvV6xg3r0bw9c/jKIE97cNVgKm3zGzGD9j94buK0X4uZzH4iLzIaNRbt6Ta
         CM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256442; x=1715861242;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TAif8iJN8V1k3wa8UJdZQ5GifnX9nyDTgUZq5/d7HCc=;
        b=TDXrAVKv0H8wq/voa3wSHtlNc0Tlms7ziQFxSGoYJfY657e0UpD1EsHDOHQpoq3Gsy
         +DSQNwshBVG5gbJ7e8KdMtu57S6AGHeLw9Tr7gyAeSyXN0KmyfxBmOY2gyQ2aHmgPHnT
         bbFFnjbFXAqwricDgrjRosWbxllKaD6JesHV0dtoqtNi5bHsCxWlpO+b2+/2INEDNblA
         mfKdPe951qdPFS0LqfgOENbQSbj7WbvSw8Mq5N2ZGlcZ2crNUytUXKItqpfSvlRZ3XAb
         pdVk/OrF6jQX0Twm7/GrGcd9AswoI7tK7zp7rlfhIdF7RUoaE86PPOcUNhUkF5HIl+0R
         pNNA==
X-Forwarded-Encrypted: i=1; AJvYcCUoBzMNC1dPUX4te+iLaLzxqsvfcd6rITfw/O203v56hsuNU8ayN3HWgXV1hFjii55nBgGP25BWju7p+Oxqyn1byqK/919PGMnHgFXjREWrO1XQvgwmlvj8lIS7eds0dt7tP67Wi1KduGWe5gOD9kj4UP6Gpuq+QGA=
X-Gm-Message-State: AOJu0Yx4JSH8cpDvUOD2GOnB+m8zEUonP+oB+oVpnAaZZgHVXaF6wn5F
	jgiiJYFsxG3UIS5qJlTymsw3VJh/rgc6UokTi4xiJPi6+Ls9HPQ=
X-Google-Smtp-Source: AGHT+IHTG1IHRUpJsEvbfsclIDD11n/Cn0Dv06smo6eYHnW+6ah5dzq6AfYFQdIT1VKgAJhmoFvavg==
X-Received: by 2002:a05:600c:5128:b0:418:2b26:47a3 with SMTP id 5b1f17b1804b1-41f71ecb1fcmr44191365e9.32.1715256442507;
        Thu, 09 May 2024 05:07:22 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:22 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 1/7] dt-bindings: display: rockchip,dw-mipi-dsi: Document RK3128 DSI
Date: Thu,  9 May 2024 14:07:09 +0200
Message-ID: <20240509120715.86694-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050729_786899_E9F6720D 
X-CRM114-Status: GOOD (  10.40  )
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

Document the MIPI DSI controller for Rockchip RK3128. The integration is
very similar to PX30, but it has an additional AHB clock.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - added ahb clock
 
 .../rockchip/rockchip,dw-mipi-dsi.yaml        | 25 ++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index ccf79e738fa1..fdd1c8ad6045 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -15,6 +15,7 @@ properties:
     items:
       - enum:
           - rockchip,px30-mipi-dsi
+          - rockchip,rk3128-mipi-dsi
           - rockchip,rk3288-mipi-dsi
           - rockchip,rk3399-mipi-dsi
           - rockchip,rk3568-mipi-dsi
@@ -36,7 +37,10 @@ properties:
           - const: pclk
           - const: phy_cfg
           - const: grf
-      - const: pclk
+      - minItems: 1
+        items:
+          - const: pclk
+          - const: ahb
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
@@ -120,6 +124,25 @@ allOf:
         clock-names:
           minItems: 4
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3128-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+
+        clock-names:
+          minItems: 2
+
+      required:
+        - phys
+        - phy-names
+
 unevaluatedProperties: false
 
 examples:
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
