Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 753FECA0EDC
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Aug 2025 15:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kY5xF4E+MXoe2WmOJPHMmbcEAq9y0as6y9bwec9y7A0=; b=qPLjp0qS8YoQ9X
	+VUUALkSamXdW0huAnu0nQaJF4HSY4dZij23nm5Wzvoa8eRVGkJ5MPZJ0QQYn0W4NJQRQjBdMGX41
	9oY2GmFL99SlhdY9LH/6qVWprTY34gimdF6k7qb7HEbHDR3QL3O/JIIFBvnwWA4bFzjyHYtn+6iOz
	mzMcNFKPv4Zt8VIeu9OSdGttJ+B8jr0PisYWrId+JWvqJaCGPHdctaF60gqh50NePjQbbP3wndlC3
	YnJgfpivVV6PKCqTZrmz0fSke/lYkU5XG7Z3zKAulg3mKWQLhwx07Nc/smPJjij8lvuHFPay7RuzD
	8FhMZ6MHkBlhZsE2Oo/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uolCT-0000000EK1P-0Qe0;
	Wed, 20 Aug 2025 15:58:09 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojdO-0000000DztH-1X35
	for linux-rockchip@lists.infradead.org;
	Wed, 20 Aug 2025 14:17:52 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-afdf4bb0e5cso11574166b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 20 Aug 2025 07:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755699469; x=1756304269; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DH177aI32fcw+0fi3Kr7cEylMFjtb1+kKdAUsXxCdWo=;
        b=HV44YOg2hD8WSDg6tsJBNjml9q8gD5TGG1vs6uELab5wPjg98RpMCsv8YXdcInuLhN
         HM0Ks7iW44p9uaKvVn5AB6KuEdbPtUt8MY+w23IVr4qDWp0ygVNZjYplVr/8yz2Z2BMD
         tuQVcLCZKimadJ0izVE20uizqs+f7JeCLfTjyfmUa2LI3cXxgou/qg2btdBREMG5WCuL
         EgR3ZScFjAe8U1u/3EoHmW4wThogFEIkbXKYPuxcmASorQmM6GZrDPwWEy+cxWlD0n9T
         xWn1DGGzCMeO9q8Ao9iWzGFCC1MLhltGS0LULQIvzKA8SBoM9XH9j6F028/l/Vn5f/4r
         3aig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755699469; x=1756304269;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DH177aI32fcw+0fi3Kr7cEylMFjtb1+kKdAUsXxCdWo=;
        b=igRELZCHbDScFIBWA0qbi+/mEsdeStIltgddM6YWu03IvOtA1eoOirT+H5+MAlyH6h
         1FkRxKT4XHVmZpufVRHwQV98hmL7/2V3HrGGnCAFAqIBG8ZbmeboL70fBH2DFeHhCnig
         o5nY+j81EpPQEs9dA1iOF7ZQJl2+hNUi8WaLHZYR0Lr5uYlCtABRPq6eZ5jK+7GhSYDP
         oUNJeGZTZFPB10snAr8cjToi71V+3L8leX2MZjCb4Yui+0gbug5ufTQynLpYjiD1WxIi
         zho3aL91wVImOhx6DdgLpMINKr+uTQE4GX1+MTP9EFf8yqqoz2GVf1zi7EU30Pz/Sd0v
         RqbQ==
X-Forwarded-Encrypted: i=1; AJvYcCVO2mou2cF2WMrsYuF1MNJ4GCVWpjkSNuyC7wnMDJT25BNeu9SNhEG9YWYb97fwquieLfP9gCwIMXPumIxK4w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxqSfzZez/wkN6KsmBeWuQUgijQIRD17T8MFPAIh2AQv8kcXYV
	FdF8EXp53YOgSDOPj/XP9QNXa9thLinpYU1494qUJkaL+Fsc8Xh9zL4ZwQKkdoQquFo=
X-Gm-Gg: ASbGnctb6q6wcUVPFleA0ZBaW4McHtudsm06MraOm5ytVtbNFmnjfkmNMV29dQsDa9P
	OjfRRkPsi20/9w81WsRVjnjPOtP6LrFvT2bf6F3TQ+2MCOGPw4pfqWSy+AvkJrdikOWmG0V+ulT
	xYkdkPZl/x/SO0sgZQrAiXnpU1nI6Je3YElnooaxvBowr43EDPEIt26GqOlqdzDDyAVCAb2Oyab
	xd/o79Lb/Wf2CTp+plkGD++IpEjCWZ/hxy8iItnt5e9UhHvnBw/VpN7y5b/QI6WpDxAaILMb9uH
	wzN2jouswC86X2Ovg1Ja/geTpYkgRdlgSsHLWaBt2O8VU+rVN0LyJkYRQKPH7Z53aMOwg3dfWby
	MmnqrHhJbBOCZorZBPNJnhgeJSoN0nVIHpdlTZwo=
X-Google-Smtp-Source: AGHT+IE1NDxPIblZHLyHWsai/l+RkUVe1BeuAZ+Wx+dsahTLJmxSzRi7+QTtrjLlctknkk8S6nYJVA==
X-Received: by 2002:a17:907:3dac:b0:af9:a9ea:f42f with SMTP id a640c23a62f3a-afdf020be3bmr125823966b.9.1755699468735;
        Wed, 20 Aug 2025 07:17:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded4796f3sm186541066b.61.2025.08.20.07.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 07:17:48 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 20 Aug 2025 16:17:36 +0200
Subject: [PATCH v2 1/3] dt-bindings: display: ingenic,jz4780-hdmi: Add
 missing clock-names
MIME-Version: 1.0
Message-Id: <20250820-dt-bindings-display-v2-1-91e2ccba3d4e@linaro.org>
References: <20250820-dt-bindings-display-v2-0-91e2ccba3d4e@linaro.org>
In-Reply-To: <20250820-dt-bindings-display-v2-0-91e2ccba3d4e@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 "H. Nikolaus Schaller" <hns@goldelico.com>, Arnaud Vrac <avrac@freebox.fr>, 
 Pierre-Hugues Husson <phhusson@freebox.fr>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=999;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=Pxy1ceX/K708ATMRkgiCl/qGBMScopnigW8cLcERjdY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopdkGYy7rVicbfewwuVfkX00qnzDh4itZ/TN8Z
 KwT51inn6+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKXZBgAKCRDBN2bmhouD
 14mYD/9h0PiQE9dy5vwP7vBJ76dItA2byuWw27+5o/ZLt40o5X+7eBO/du6Z1luxBiHrjoaJJ6S
 7mJN66kdDvO8897oK9TTcu3tnulzNRtpPDWhgxc7Z5Tzh5Gmx6GejO4Kp8aZ5ytT6WXfliE0+UU
 CgRDbNXfZQT/zIfB6J6mOUN1RYjKa2OflnN+xrE3eTjZW2leo0IOKYKQRhLJ8OnXbIaoWY6q6Iu
 tUk0woil75PeoPrWdZSUHViAmDvB8BNDpo6ay7k/Ek3AqTerB/Y9hXiDjGACQMt8YhzCXKbWPyf
 GR9V53exquBI5VWe06gYpDvK8iPPUcuBzyxykT9iKC5h1ycyfD1AsZccdu8Mpe9J6sSG6fd/uSW
 +XoKrVNJynBpfz6eSvjzyW0zaMZlcYrUYc/b8WHOetPwkwxR62UHlf5gVVwzY8rQYm+I59tXkYZ
 ExzC6ZIo/BCMfd/tCel3Vpnj9zG/Uou/x7kOJVcQ2yxWHwwF/ZCufw4+bfF7WDwF9eSETLHwDtu
 Bz+aSxFJ9CXpRQE+NK1yzUsKZ/HemJ8xcjrT2HmXT5thnOxp1aVBHaXEHLsmdnBq8OapPAm5VF+
 bvyxXAJaOMyqKHirUtqCjvtneBDKwVP2elp9F2Ste5sVY3UewOrHlc1ygbZNOPcwtmfMma2KKsM
 PQjztLAysb275rw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_071750_401788_60DFA5F1 
X-CRM114-Status: UNSURE (   8.46  )
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

The binding references synopsys,dw-hdmi.yaml schema which defines both
'clocks' and 'clock-names' with variable length, therefore we need here
also same constraint for 'clock-names' as for 'clocks'.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml b/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml
index 0b27df429bdce0b7e080ab291ee0c4c6b51f8e1f..84df3cf239d5bedf8a5806bb48507fea207c7167 100644
--- a/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ingenic,jz4780-hdmi.yaml
@@ -26,6 +26,9 @@ properties:
   clocks:
     maxItems: 2
 
+  clock-names:
+    maxItems: 2
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
