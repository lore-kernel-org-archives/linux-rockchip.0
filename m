Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C7A1C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xS0fvRTJ6Ob4iVYoxGt6BPDqjVUYFQnGSayr4Cq2L0c=; b=2kCK0H84PjjWET
	0O0+sdqhy4QacDR6edlQpdy307EZM2j6LgaXai5CK5xl4YXbzxmJgAeP6NIKyrJQaGm4N0cqOZteP
	mHD3IHblYrlTrepvbH+c/Yo/sHh+AEbYcBArp8UPr4cTNtieRb4v0pgk6/2UeCejGfhH9ZpX6ayiz
	T7BBL1agUAFiW1x9nLt6jmQfz4zpGMmwrMoUA3zSzYi9gvrQ2n+ON1G7o1bmSBV/GOA7Kg6/07sB+
	5XEZ+zK0UDpZKmb5FK4ThZLeFagbENH9JnztuBLP6qtPhdlb8ilQhZ24CKCIWPmR1+MVst555wqbG
	Y/AqxSpyzFkaTCG0zdYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfTa-00000003TGV-344U;
	Sat, 13 Apr 2024 15:39:34 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfTV-00000003TCV-1qOR;
	Sat, 13 Apr 2024 15:39:31 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-a5200202c1bso214840166b.0;
        Sat, 13 Apr 2024 08:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713022766; x=1713627566; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HNEWJOBlR0y7Hhtt6axRN9X/exAZdSvN2lHOcVrlbOk=;
        b=kba1E4J5BJyGtmfhuIykAUBTl4w0qxr3X0PQi49BfExNNiWQsNCFlYh+nZiIOKGeqh
         sufSVBsfEcAdzPDycO6OtSL3X6Ram3J5YW3zHUGng5MBh21YpXXcM7kJ4ZoHM19RAcv2
         zwy6JB2YWw5WrHY3nIK2C39YIEVdZrGkDrQ4F+/vC30qElUTqrBz524qa11bgCVwhXUN
         ZxvhDHPVs79M/oua+UigGEbSj44qGmbfaKNAHFe08qj2azShVahHiwcyGoxZ/T2oa/9F
         6rStf9TtoqQwTyo3HUaNIaGDeje9MSkcDvfeQ8/J/m4C2qJ2hCUruBXEuA+OP4XLyhr8
         IPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713022766; x=1713627566;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HNEWJOBlR0y7Hhtt6axRN9X/exAZdSvN2lHOcVrlbOk=;
        b=kft6C/iOCjZtxYpnsc65w8ufgFTEbAORuoNBvaHCovQiTb9y2v0WapB+dCTIzlJQTP
         1gas7N4+Afj0lBjPY/9yVbOZFAl0V8SrWkpnKGkqq/VAkwGvephtcacdRsiXiaaCQBTm
         uDmL49DK1He+ue/ZMx9iiradAKJUwjpO85v0V9FsyaqsjGS65hOIOk3D+iHco2DnWm79
         z1eQ9uVabFxn/coP36HrXUrgCeGZ6ZDM8VGdrftHUW0FNvOtHO4mmXYDH8yjbO4GzDe5
         8Y3WI3Hook693ZEU+uxoJWbDu20TZRT738/SwXL1jT8ZIn20eKGdb2egDDFwCGllfcMp
         CQIg==
X-Forwarded-Encrypted: i=1; AJvYcCWk3lBYkZ4NJEWdnmeUtyEvAKKUC7x3683PDqFNsSDdH3XUDko5xbIOyOC61L8hvIefX7Vq7STMMgltd6NPukw095XFfgfKFZlGH08us0O+aWIIqGKicEUMfHOp571IjPd3PwcK4Bjos+UX5pVLy+KS7gAgNzm3ghA=
X-Gm-Message-State: AOJu0Yz+yXu3vRXBvxohZcQkqHdRBIf50FBZu0EaT2woyL43LS8SZsgJ
	0u0Jn/SrxsigAWJmQVfLNwfmESEGvW4NpHC3YS1BpR3y0bsGcdvL
X-Google-Smtp-Source: AGHT+IHqgFh+uk15K0EwlCSK5KyFNaBttoC/3mMIKlGeivBdJuPR/0PC//p06HrA73var6K2Mhrrtg==
X-Received: by 2002:a17:906:34d1:b0:a52:2e08:207e with SMTP id h17-20020a17090634d100b00a522e08207emr3722414ejb.77.1713022765539;
        Sat, 13 Apr 2024 08:39:25 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id cx10-20020a170906c80a00b00a51b5282837sm3131680ejb.15.2024.04.13.08.39.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 08:39:25 -0700 (PDT)
Message-ID: <521d4229-7490-4494-8191-cd5f3119249e@gmail.com>
Date: Sat, 13 Apr 2024 17:39:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 3/3] dt-bindings: display: add #sound-dai-cells property to
 rockchip inno hdmi
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com
Cc: airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, markyao0591@gmail.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
Content-Language: en-US
In-Reply-To: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_083929_581859_2517B943 
X-CRM114-Status: UNSURE (   8.06  )
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

The Rockchip inno HDMI controller can take one I2S input and transmit it
over the HDMI output. Add #sound-dai-cells (= 0) to the binding for it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/display/rockchip/rockchip,inno-hdmi.yaml        | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
index be78dcfa1c76..5b87b0f1963e 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -37,6 +37,9 @@ properties:
   power-domains:
     maxItems: 1

+  "#sound-dai-cells":
+    const: 0
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports

@@ -66,6 +69,7 @@ required:
   - ports

 allOf:
+  - $ref: /schemas/sound/dai-common.yaml#
   - if:
       properties:
         compatible:
@@ -106,6 +110,7 @@ examples:
       clock-names = "pclk";
       pinctrl-names = "default";
       pinctrl-0 = <&hdmi_ctl>;
+      #sound-dai-cells = <0>;

       ports {
         #address-cells = <1>;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
