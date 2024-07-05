Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7716AC30658
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 09:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCape5LTcHG0FB5Dft81DhWbQRvP3mmvABb9Mb2Szxg=; b=2WR8umc1cnpqSl
	rpZJvwCJVYSlQy5PC6WXmdxMZZ/PObKVnpl6QPqVsI5yVhFvwk4k7ZBsmuCnCEDEZC6USo5XXFf1f
	3UmlQsGqo8ciMVWq+HmX0FL8i8tv/hX80ysPmamLnKV3RP76Jkn47ntNEr6DDhzSwA2lSoMV5NV7q
	iftNX/CipCVAJg9taTw2FtOK7JTfNK74EAxaXjM4ACGX0Nwl7YPGFwM91RfFUqOjzyGjAU6I5Mvfe
	VPfMFl2howkmwA3LipmprvV41w41QKhURlIMHNi8TSaS9BhElDmwwyBTVv2rEhGIkFo0qac9LNJA2
	B5/2plYh1s3l4rguFQRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfgu-0000000FZDc-3zTT;
	Fri, 05 Jul 2024 09:57:20 +0000
Received: from mail-wm1-f51.google.com ([209.85.128.51])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfcD-0000000FWO6-1NH1
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 09:52:35 +0000
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so12757275e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 02:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173147; x=1720777947; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AuHHBQ3x8j+r0vn0WL5Gv5Q+wv3ro9XtUSu/vLsatmI=;
        b=BcZUDp+ZzPS5PC6CACGcDGBITicXnmSUMwChgrWzzmqoXp9TtjOIqo8tIjW7wklx1C
         QCo0XgtfrrkfiFir8n30RKOS7NOiotdgYenEqMSHEUG4KVBdIpx1eVHVi7QliedkvnV2
         7a0UHN8a0jMuBQoIxaN3eoSObd0psU7DXiaK7pKqVWD+7+LL52NJdOdC0257HgsRy5kA
         CKX5YHIrqTQ59PWR7d5BJ/DAT82/v05xYIpW811CkWjtN7cYmtAsvCLLEYfPyfoSfwon
         xXGmgZeH0M3TA0fYHbqoCGpi97Aoq4zR7QlxOAsqkb1QciyCOq7MZrPP1y9NKZQPN7Lx
         Qtkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173147; x=1720777947;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AuHHBQ3x8j+r0vn0WL5Gv5Q+wv3ro9XtUSu/vLsatmI=;
        b=EbYNfUsGn3bE0UZuv/e+wX+baAJksOs/5nfiKF3IDvGs4LVvUh6wAFVzkXw8Vt8RIu
         6kAjwLj8ccSXMzcKdaKHeiDpDBZeyVHm0h/m6S1/XPwcEwgJyLaRGJyvseVvgpfl6FaG
         JKZImVZFsDCtqkzr96/J9NHUuAUwTl6YsM6NVcJz7GpcQl5TUOUIkUvD7Xin6Jjcsfmg
         2JKr8/D2+95oGvRKNLp+XF+fHn86GUQ/cKXKVfjwIIPZsRWl6KNX/h8eznTymWdY8Psr
         CgB9WYK7YX1MosZBzBENQuaAD4WeuIqiuxRaYejAyAANKx1/TeDuFmeL1MD9MHmYartb
         qeDA==
X-Forwarded-Encrypted: i=1; AJvYcCUQXVyFo+ok7oMAqOH3kunQ59c+Y/CGgCmfsXGi42xx+iu4dDjKOkBlihJ97+BQuoKIspQrb9/mGHKl3X72wc18fXmuBU4pmKbkGRFS/8lv27d8
X-Gm-Message-State: AOJu0Yw5MMBSRhZW9UnbV56J5eVD5bSun7EXKr1tfBim8YiT1ao0qpIp
	OeC4TfKqgSlCeC1BzRcrceiKLUXEZRF609a/rkhbNb+Ook6UVU+/zKcZ31zfwlk=
X-Google-Smtp-Source: AGHT+IGtiZW5kmWQCddksFiLkJ7NLWn4GnHc+gFB6U9WJuOeTpAWLYG47t+3PEzP4kFD/CgwHcu+8w==
X-Received: by 2002:a05:600c:b43:b0:424:a659:c169 with SMTP id 5b1f17b1804b1-4264a3dedd4mr36118215e9.24.1720173147084;
        Fri, 05 Jul 2024 02:52:27 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:37 +0200
Subject: [PATCH RESEND 18/22] dt-bindings: thermal: st,stm32: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240705-dt-bindings-thermal-allof-v1-18-554061b52fbc@linaro.org>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1279;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=75N+YagfjHTq72mKsUwSWer5IrId1tl7O0sy7rhdM/8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8Izbil3cUyAHoOJ1kZMbs3aE0dEw6Y2tk1gy
 NEb1tU462WJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCMwAKCRDBN2bmhouD
 1yD0EACVU5Ga0Qcjk2Fq3mjRRSojMjyY41V+YDOx3XK5fCBF0oNvA1rTr0v1CJoGvWERXxAK1h7
 WCGg8YdOhLZ9Y8E4RAII8mxttBUX5/vM0g8x3jMxcpSWcVg4ZzpxDSCjlmhOqF+UwJEvU7bakhl
 PU0VLj+oO5FdpQZY7aHKXdSvo5qSPHfK1lDe6Fb8APHkCTSwPyuN/9j5FKRNXVuRF4lPNFj2nr3
 c2vsX5GUfAb63ctTYD39a57yTpWr0niK+vi1O8h/FvlRrUm7zor1BvDQDKwiKMszV1+YSkENjDn
 BacnePry+tKPxV6aiIogHG1XJp4/u/Zum8aSwRfThEIGFqaPg1o/9WMNdj/GjxX+KHKITVHP4s7
 A/JSOsxdxkfsLAtUpma7Nc3xFnDuRSgjuVzes9KVBcnPptddMB+SXUCcAxIlCBY88FZvPrJEoQ+
 C861uT3h0T46CechOycWu7onZjHx4E7q5ZGL+mi6ZvNIVDX1kjOHoN12VjhWTVGnR58B5iiaHet
 Ry/HDQUbP9wAbIPi8MuBcvfWeeKxBlanFrWT5lT10E+b/0vZ+EYnPOzi7FL43Nv3jUsLZ9h9s2X
 wIbik/HSCMyp1mQ3AllokuQwhDFcyaYAFkoyyDkg664V+8lpx1vLSTfDUp0dRIJpZGv+2IJwFl0
 YGJHO4sx4OcOUsA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_025229_807144_520DBAB4 
X-CRM114-Status: UNSURE (   8.71  )
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

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml b/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
index ab043084f667..1c01a80a0cdd 100644
--- a/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
@@ -9,6 +9,8 @@ title: STMicroelectronics STM32 digital thermal sensor (DTS)
 maintainers:
   - Pascal Paillet <p.paillet@foss.st.com>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     const: st,stm32-thermal
@@ -30,14 +32,13 @@ properties:
     const: 0
 
 required:
-  - "#thermal-sensor-cells"
   - compatible
   - reg
   - interrupts
   - clocks
   - clock-names
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
