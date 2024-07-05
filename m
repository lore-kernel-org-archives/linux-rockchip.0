Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B2E9C3271F
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 09:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+wzvq8tDzOqUnfn6SSTAstla6uTWqkSoih1Vd3jeQg=; b=jMuoj/8CfE8A8q
	kMcSpr9TeKj7s/AJy3H9oxHpy4vj9pEL7Z8ToDTMBqDsM3GVHVoCt9B6BKl79oLWjBXN1TQ78hK8u
	VhqEyJVYtQZVd0vSPL43LmnS3b7DuOnGuYC2WV2LnB6I9p1po7lHenai/58Uup7tICcOnaZtj/BVW
	QFP8lb67c/6r7qgA9U32fCpuz6nK2noj09UnKiF/2bVcFZOYQezfUGgVKm2CZF9ZXTuTs/jnjnh1o
	Jeq9U0HjdT6qc83dSi0ZBYMi1Q5ZYFXX6MHXt4smpCVuRh1OPy7OKxcVUxNR5XPOuo/oI+JEtXCrG
	XWYD4bi50/c3IUPVO0rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfdt-0000000FXNd-0E25;
	Fri, 05 Jul 2024 09:54:13 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPfbr-0000000FW25-1kWd
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 09:52:09 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-52e99060b0dso1518844e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 02:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720173125; x=1720777925; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zmpbV0/ZWJ0x/mBhq1FFt4dl1nyPYdFZuwuFwMvEasg=;
        b=FIL+aMrUYgqVPpRD5DZg7xPM1YRIrX/NgGZqtooz46jRdUZswT+b3wupLBC8kMTlKY
         QdoPMKryK/3tW3638W/5xrqH+znHZA3d6hYsZQgo1VYfL/S1JPVDfJvRhYxQzkz+2eNO
         +RmHldXOKWXMWniYo/tztSkfisZMCw7/AvcZSgq8Su6VdDZjrDjfIn2OhEeh25UhKxt8
         6Ry6Dab58gbf+vl+jvJyhy6wNizpBmTdKpOkG4edRJgXgnjGHIMdWc1g0VkI2PAckr5c
         iM7v/xSjmWnFGaLVrPWdYiXmqD6H0BsFtUgOMUZoSCe+72InIJGxrD/RTGbPdOFgOC4V
         2FQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720173125; x=1720777925;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zmpbV0/ZWJ0x/mBhq1FFt4dl1nyPYdFZuwuFwMvEasg=;
        b=qI+7wgOWTcgEil/joIzwtfJwzYNgCjwntttp0dXFYUoR673Vw/Ra0kn8poD/xkz/th
         znKdxGZsBcKV8e4J1WXx6O5GAc+meo7SU6Y06zr2esTxmF1wrrXhlw/j0SUyjkGVI1fk
         cKjG+0E3+IE4uH/D6uws7E9oA9Ib1NqvIms6n0PiskPY77KoVcbcDttSNTpEdng7WB76
         D1yF6c0y0DXVoekXJWZEJbxh1Sa1cmou7OU5kIjz7ImXY2YcCpH7d8g9UxQn4p4EqgF6
         rHb0huvSYyXFkUR0WeXZdawD3IKHKLYNoPI3jLzW7lphO/0OtDcXy6AWswlISiVRqwO9
         SSmw==
X-Forwarded-Encrypted: i=1; AJvYcCUPgXDbKMoRHmJ1L6JAUova4zmbeL3ZEy2GY/cdc+MPY8uKPelmcuu848sLGklBVWQwNtuYukZVNcPUBSsB5ai1uhN+AIz7cCqK+8sCpbpgqEJ+
X-Gm-Message-State: AOJu0YxybhHhnxM2itJWCLnZ+NGA3gUWco/xD8+/B/ZYX00xDZu7y1It
	cN1PB5IaLRoQk32SJePgaHAvhB4Gb6fa1V7zeL67frj6/BTYb1rFd3uNCYsPVvs=
X-Google-Smtp-Source: AGHT+IEpqP44PEtuiMOJUICfTSDO5lXW2ZxFDUW8E+Je8DvVTL2T8cLWYD7JILaux30NxHiYb+oJdQ==
X-Received: by 2002:a2e:98c6:0:b0:2ec:5518:9550 with SMTP id 38308e7fff4ca-2ee8ed22bf7mr30865751fa.10.1720173125430;
        Fri, 05 Jul 2024 02:52:05 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4264a1d1650sm55528995e9.2.2024.07.05.02.52.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 02:52:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 05 Jul 2024 11:51:25 +0200
Subject: [PATCH RESEND 06/22] dt-bindings: thermal: imx8mm: reference
 thermal-sensor schema
MIME-Version: 1.0
Message-Id: <20240705-dt-bindings-thermal-allof-v1-6-554061b52fbc@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1163;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=1bbcFoZawiRI3PTpjc/TywnxafuLlCzcm0nRv9laj54=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmh8Io5kvm9KrEwxcJ9HK5qRnuUiNymhkzm9fx3
 WgLUnw9XniJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZofCKAAKCRDBN2bmhouD
 1yz4D/4tI/vqIR29JXqECCf/ScDfrDbFYvT4/1nVCINT7RnMUeFyspoZvY9DCANaxBZYS8fRUC2
 pzdHZzhRspgzh+Mj8pjZr5c9G+6Pk6XOhutyKQob4OlSXhs7VLx5QRpWHfDJwjemu0r1hvKr9bo
 QCYRcjDFVKbFEzV/mclKMLIHVVmT+DlO0TpupsHg+ULMN2q/unoqNb6lBMRGk9gIOUujC807y/k
 /t3uiAVzovcsfbD0r7Ihfejd+XsN/Zceay9rINcK+1t58tBvlCP/287I+O96kOlu3Nrdd4zmzIN
 tHmyLEPkf0/6OgsxCSDx9rdLU/qAAqgWG1HoGxrqjqJDEJDL2yjNbcG+BIrfG17dQoxXg7PxYB5
 NO/oIrEPzFciYSixja/c1vPje77bCSneOK+KtC7q/Gc3ic72n4KgzFVgCEIhbEv8JjOJhYqsCfu
 wM6vVURJ0bknpx8T6pqafNucZndq/iADceye9FLZj1gjop67tOMGYLX5ecHHDnlcq8koeOabEhB
 0KqVMfX50wh2G2h3JB6RyzMJsRVzUG5O337HcFAR3RqJKEJnA0FIxYrNrHdy6ZzO+GeZphlEsji
 fvQ3K5/0MqNOFXYvoZ8xTa0cnCWkTGXCqRDfq+yf8DS00yG5md5c9OeufzaVo4LSdVmwNH5Enco
 sDH6CdVNBV0J96g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_025207_620800_B47967C0 
X-CRM114-Status: UNSURE (   9.11  )
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
 Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
index 42e2317a00f5..bef0e95e7416 100644
--- a/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/imx8mm-thermal.yaml
@@ -18,6 +18,8 @@ description: |
   for i.MX8MM which has ONLY 1 sensor, v2 is for i.MX8MP which has
   2 sensors.
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     oneOf:
@@ -53,9 +55,8 @@ required:
   - compatible
   - reg
   - clocks
-  - '#thermal-sensor-cells'
 
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
