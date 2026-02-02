Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A49A2E7DEF4
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 15:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRDKKI+2jwqRXbD5HQdI9MeU4gYCjvwq8IMkfqApl2U=; b=VgS6CixsH40HwS
	AypRNFt/XdbouIH+70upBI3VebiWcjTszvfJykHeyWB4pTKvHh0fiUNpHeG5lJsKc97cZobugofx/
	0VmKaODNF212zu1lC4H1BL5CWMlQgdr5x0MGOlevY/qiHwiDYAsyNfE0ZvB+uARf5lbTY9vFLOoeL
	z6lXuN7FZVv6AiFA/qi+8N3S0kGx6GSDmiZgi4JGIUnwoW+7ld+dQAKq0bmMNLy/ZOIkPMtz1aouN
	0aAfHo9YDEbY+UTOtpYZm9hhPs1tXiNlsrs6g/fr4UXkhmmUisXOriduWg1SZl1np2lXZGN0JLnVI
	RPtp5xpYRi43RYqjJC9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvTz-000000059dQ-2pts;
	Mon, 02 Feb 2026 15:04:55 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmvTx-000000059bJ-1har
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 15:04:54 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-81df6a302b1so4249174b3a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 07:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770044693; x=1770649493; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7LWELuTIWWRa0xPEQkmivdJUD1uoiNrgwtqfeTq/8BA=;
        b=hUNAJoQPN2DloETGF9DAI+sMG0xVTIRTXnjmV2stOsBPDw6n8cGf3yYJKryH8vZnCS
         VMYazsOCF6G23Kv5GpkocT2fVSAmcEAsEIlzaTvX81ygx6yUho1TiylcUNdbugRGlbQS
         o3/J4uumyKdNcx5AxKeLczURumEEH3ON4sVhZMIvtDBPxnkl+Tc+Yw6OTok5B8HN1AWe
         IHtIJhmIDt4m6KOHE8L8NpwfNHMFHHUIMCfVlX9SKi1ybnl+MxOHJALFCxivkB+AckFT
         pv9fUFiGLFewtUZMRy9WxouT/nYZm7UGaVZ3XpoGre4mg+mTLaj9+/HCJ5XgtEwcZ+f2
         L9hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770044693; x=1770649493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7LWELuTIWWRa0xPEQkmivdJUD1uoiNrgwtqfeTq/8BA=;
        b=VglSGp0SLpDeFVpygF/RkMHIGPwB0QNzO0avgW1HImRN5Yv2GI/MMgVzktHRxFWog1
         QBf6mjV6jW2tPgT8ih5+0dpM/eUlRAFmneeXgvnYNm0us4QACn186Vk3sNn5rWYk5FWM
         TKWj3it+TMbV6eiW6FWRUSC6+AAkbOkbkBlcItp+fGdTDMG4smXTPKKFdn7q8//dBuqF
         sfvuGzmOa3/oHCck9vSiC7NC4iptK6adOj/A1GA/8uHrw5DcF4DpLoLvMeyA9nxsGJ7m
         A25T8JCRIaaBHhPI+etQOHRGhzdxRfG4577TVl/9rFgqvZhYvdvjDPGIleGzIflDtXj4
         GK3g==
X-Forwarded-Encrypted: i=1; AJvYcCU//J5mpVuBmSZvpnR0JtJBwljDAW7o/jVU8HB7X1SViiBb1YA2TKlnMvrvhkyufCQuHnVXMsfXEmeR+LcL7g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcKAitI0c5h5mI8HLpRHdrcBwOXy4Z4DP14yTFTa4zzbOIanKq
	vHQXfbd60DD1DAT/aoqbxaWyyK345P0USphtftwHoy2KuNZPC5k4VuW+
X-Gm-Gg: AZuq6aJfEYC4r2tEB+ezPR1pOfhIZdK4kuq7hwQDxy+p+yfn40VvzU/d7BACHrUTmRD
	ZZ51kJAf4wE97Ff8UjwrXD5P46dWaWzaF56g9w1tDLJhVw4TAR5sP4ZeMrr6IVIrFQ15ycnvamq
	pIedezsKBi2rFqashvWZ63JGscRUeZ+d0aaVaK6XbYDOlkzvEzPvvS4uaRsPhc27GqyVnDGFP42
	YDGQNXrRFRWUNAVGKXXo7IcJLS1vUKm9IzoxRb4rIQGqFXUNIm191/aDKCDCIOBR+EihSTBQT0l
	M8Nwzj63LTXKWtpL/xwtVvhrX89W5A0bMu5/PCyg1N8zz4bAVnNtbAGC8wJrb7aPeOfgmSw3SCO
	kRJj9E51kWtXjyDG/o4tpAByY36xl1mcYP6bBjSwoopsQfUGlvEk4NLThVteWyLMjIJq9xknFPC
	Gf50KIbExu
X-Received: by 2002:a05:6a00:1482:b0:823:1580:7914 with SMTP id d2e1a72fcca58-823ab72f0c3mr10277504b3a.50.1770044692582;
        Mon, 02 Feb 2026 07:04:52 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c21112sm15948480b3a.54.2026.02.02.07.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 07:04:52 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Mon,  2 Feb 2026 23:04:02 +0800
Message-ID: <20260202150437.270567-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260202150437.270567-1-jerrysteve1101@gmail.com>
References: <20260202150437.270567-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_070453_536040_02CC0B3E 
X-CRM114-Status: UNSURE (   7.88  )
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

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..5cbc3bd31676 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,12 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,oec-turbo
+          - const: onething,oec
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
