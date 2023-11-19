Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 861AAC54E76
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 13:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2fZIhpuR6OIXHdkL51udWFjSJ9bh4Hjo6EaPJMxAiA=; b=sL0naxUMjAXJmI
	1KnRLXmcm4AM2J5eIqxiFRe2fh6V8Pk2viEH3Cd0Qyn6Lu/OThMlHk1DU3dERWyodCYJqteiK835F
	jDgYzj3/DVMnp79PDuGHEP/HQ3Fff7XDQ61kVWPGETPDQSYmKIztBG7LBnyYKzsOMkWcLymPWurm5
	sYyph6rJiJbROgtrZIu7CEUpaJ61nTg/243E3PRsSkYMOoK1tRltvdSIOIfd5i8kt685nCU/q1bYE
	GJ4RUNgKq9tLLyMcEnMBAy7UDD8bLWeumz33LXmmp2nbZz56r12W14tP+JsrF6gIHlTo+ZgrOXZSR
	k7zqpUHCPPpvPZOa5aVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hTb-00AC6L-2P;
	Sun, 19 Nov 2023 13:04:39 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hTY-00AC4U-0i;
	Sun, 19 Nov 2023 13:04:37 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-507973f3b65so4938468e87.3;
        Sun, 19 Nov 2023 05:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700399075; x=1701003875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NzT0lRkt7N8UBpPYeMIE5NMpA+DwB2IGbll8lyHIHPQ=;
        b=FqS0RWxWRx5bFVwvxqPt6f05Ig1gXFpNvXs6HXXhvMbLZsm7jjAFcEoExFeYNrX8bi
         GFMDeFeLuzz67iukNbjIb/Bw20QE5BhP2ykNaN4tOclbM2m8WjGRdQpCYEPYBrhDka/c
         qMdJsT7enBagWugBL9vQvxn9tH6NeDUYToN05GpyTk8pPmhVzew++OlisXi33Y5iST7+
         17/JETmN5xvukdpDtfRuQjB56XmGW9/08hfvB6e4YavLiVcyaSaWwA5AnidcYkSo7jkI
         3FfuulUDzlZ3K7o2AsYZzon4xtDL4Uuh/6b6Lbu3Q/uDkoxeS1+x8gUJCiUU+9jxPh87
         bbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700399075; x=1701003875;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NzT0lRkt7N8UBpPYeMIE5NMpA+DwB2IGbll8lyHIHPQ=;
        b=qgaHmNoaDKbpekKviP8R/sBB21d7NRY6u6FREJioWDvgW5Xd7d/U2+2fV+Uk/J+/NV
         UJA6/T0gITRhO+hHwvCuniRc3k9O+8F+F2NgygGR2t85RDiCfGaVtikrRUZQdH05jgkd
         7K3VaYE2q9w+pl6T2N6O0TZqnf+YK7DCITbVw68ld4UiwbVDJ1066tocuwSxgHLlUGCW
         4TjdnIFMY4lMLm6eT3hVppTMKcH1HWlTOpdH+SSbhO+7OezTrYciSWJjoRp+9DiTuXph
         1IBfExzbJjsttwHu7vKFw8hQymMATTFfb7ptaNXe6HRt2yMI5gngcaCD+dkV+4v+eUfM
         ah3w==
X-Gm-Message-State: AOJu0YwtIIIM79Uym21mZoRazsbh867cwfxeV2sJwNZDAbAym9h0TF/a
	ZNMkS4u+h/F9zSIoQGndWw==
X-Google-Smtp-Source: AGHT+IHKIxJAIXgZQLYbHr6rTD0G7bwgZjyxT5KiMK1hCbcOm03nmnlAG9qhMMglsw+0h+Kf8N32VQ==
X-Received: by 2002:a05:6512:41d:b0:503:1d46:6f29 with SMTP id u29-20020a056512041d00b005031d466f29mr3342940lfk.37.1700399074597;
        Sun, 19 Nov 2023 05:04:34 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id n8-20020a1709062bc800b009dd8473559dsm2827866ejg.110.2023.11.19.05.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:04:34 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Geniatech XPI-3128
Date: Sun, 19 Nov 2023 14:03:51 +0100
Message-ID: <20231119130351.112261-4-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119130351.112261-2-knaerzche@gmail.com>
References: <20231119130351.112261-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_050436_291446_11DFB338 
X-CRM114-Status: UNSURE (   9.64  )
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

Add Geniatech XPI-3128, a RK3128 based single board computer.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..d3c5b25fc2fd 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -237,6 +237,11 @@ properties:
           - const: geekbuying,geekbox
           - const: rockchip,rk3368
 
+      - description: Geniatech XPI-3128
+        items:
+          - const: geniatech,xpi-3128
+          - const: rockchip,rk3128
+
       - description: Google Bob (Asus Chromebook Flip C101PA)
         items:
           - const: google,bob-rev13
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
