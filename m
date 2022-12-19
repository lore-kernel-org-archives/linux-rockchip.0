Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E21DC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 18:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ue0amTWNxpmsF9hWRX98qdIXjCAA352kQFXRpKP/LQc=; b=J15nv1oIfrqICg
	XQR8iqHdIffrvLHEijDNWAj1E4KlvkPuNXuXGHwV1+OXfzbPc2HuUAR7YnI/Q2voGzbbv4uzYNffy
	0KwwaSsjGLvNpTq+WX79u/dCXJIF2VGPcJecKkwSRr0mKbrEGNYVXFtnb70VNK3v/kmVLyKjejEqN
	W8F3wdflrIx8DruRnYeyB0WYG6Q+mcQRrINlJHpOGKpJw3sCEsFisD51vxj2gjZKersTJpVS0Mlz0
	lc1EwcDmZRMY1k4kOKB3XxvFa90JAGZqcw9D3cL6xyAWVQFt9hJBuPd8qxPCtg2KVAlleA5fjZ5oU
	UuaHJGQjpfP5ZtxxVQew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7L73-00071i-EC; Mon, 19 Dec 2022 18:43:45 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7JRl-00GO9o-9b; Mon, 19 Dec 2022 16:57:04 +0000
Received: by mail-ej1-x636.google.com with SMTP id tz12so22988705ejc.9;
        Mon, 19 Dec 2022 08:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Gb1Ci/peDFXem9KQH4YU7Ajcj0W54+LbHk+JTs6pzhc=;
        b=UmDPOgnX9rup6tCIGhloyjt6lRLcVZejtv4yKWpWgWwcK/Hfacc0swYAY457jUkhri
         z5OzYxcIh/efEjrvv6MzGJIbeH6ygsTbO9N0FgEGjJHwnprbJvYQIpjfGO0bpwGPju8y
         MHnKEqKBLVADfiBhuGYf7+R6UCKEmTgbgSaAm3FoxplZlfxonWhg9FgInq5DJtE6awFS
         DIjXQZLg2sm8Tlchzw8JTDqWRQqk3PZ7P8TUoMYpxbHe/bV7M5vcvTYc8TB0E3zeclwp
         41/8670nFhZvHxF94m47MJ8pzhP79gbv5DUfGRKCPs3s9/ltjvaUU89jBNQANKbv3CHF
         eurA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gb1Ci/peDFXem9KQH4YU7Ajcj0W54+LbHk+JTs6pzhc=;
        b=LE4lG1KbCZOE6PJKOG2OGAqZLXyYZpwanRInuFnIA8H9LoAjldf/MYQTmf1Wczynwc
         oev6kqwXmrqCHju1ifUPi1wOVJ5AAG61tUO8vFfS2AnL2Tl/F9wdq1LmBoadJyEuy1kl
         nplOvKFbK8huaG1cYS14uc0zwa0y2GUmxPevihUbMQL5CRfIyJ3NwVTD5E+vp0IkGUiI
         pfEHVP1HN2RTUN8jRMYGmwNIA1ppP5pvljuqs5jSCage7PykY85iOOMnuNbF+inxnbyv
         XLG1xvBjhjQBIdadR+H9e/ciOH910ONyLVgBY2ubq0I11xPL8s2U6nB2omOtz8nAAxwa
         TxPg==
X-Gm-Message-State: ANoB5pk946uuaR+ByNwsLgqiIAQmOL+falmtfjJhBREa/Z6NNCsKAajZ
	1nseTtZ0MDrjAMgMdXlt5Dw=
X-Google-Smtp-Source: AA0mqf4bqKwTMm/poacEbbnbaz1b85s0kV6pg/w2GLVW64PdSvJIQpi543GO23QSmuWnnclDXJC8+w==
X-Received: by 2002:a17:906:18e2:b0:78d:f455:c381 with SMTP id e2-20020a17090618e200b0078df455c381mr37139173ejf.39.1671469016673;
        Mon, 19 Dec 2022 08:56:56 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id m18-20020a1709062ad200b0073dbaeb50f6sm4605585eje.169.2022.12.19.08.56.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 08:56:56 -0800 (PST)
Message-ID: <e54f7b52-3530-59c4-90c6-1fb5a17d6491@gmail.com>
Date: Mon, 19 Dec 2022 17:56:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v4 3/5] dt-bindings: phy: add port node to
 phy-rockchip-inno-usb2.yaml
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 vkoul@kernel.org, kishon@kernel.org, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f38e245-4fc0-1754-e75c-10c1e31bbd4d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_085702_965471_0281F821 
X-CRM114-Status: UNSURE (   9.50  )
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

On Rockchip rk3399 a port node with one endpoint can be connected
to a USB Type-C connector node.
Add a port node to the phy-rockchip-inno-usb2.yaml file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
index f71920082..ffc7e7560 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
@@ -115,6 +115,11 @@ properties:
     required:
       - "#phy-cells"

+  port:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      Port node with one endpoint connected to a USB Type-C connector node.
+
 required:
   - compatible
   - reg
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
