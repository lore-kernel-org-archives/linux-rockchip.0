Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9869C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Apr 2024 15:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gXgskAy+K60XgHyFTb0ARrL21e4EG0hw6XqI3JuYzlk=; b=sDGI1V9zCxcAIn
	WgoulW8zt2E8cJQYNBYzHZ70jq3X/qNQ0TkdQ72Webh7EH44Buw98THAb9lBRFsQlVJUYlZs/GhsZ
	qxIGAyc5kFE0Qp9cViMoJJDInQxDOp6JGWUtNopVWkJw30wEjCHHk0UvTUqm7MV41akpBUQBL3ZPP
	wc2XsmsmFbnXMGjcs1ldMePLDsZh1czZa0cxiKgJRH59XCRZIr7x2vH6rFMemHlBiVFSsMaEv0y1H
	p2U5VTnQxK/JiRXEe5FuHIWzjnHwZQQ+uF21+McIiCU6BX/VXeOjUqoR6yOJ31qIPDsG7V6hAfvRp
	zEKXPD59Xv07+w6SZEdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfSL-00000003Siq-1afi;
	Sat, 13 Apr 2024 15:38:17 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvfSG-00000003SdX-3vgl;
	Sat, 13 Apr 2024 15:38:14 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a523e1372b2so147545266b.1;
        Sat, 13 Apr 2024 08:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713022687; x=1713627487; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ExJoTB3hhXa5q9DtvmCjzuPMuLoa33GZY+I61ZoNag=;
        b=Mquxt2Yxlx9331wEXC94fLZDAP6l23ztwWIiIhIhM0FOvSa9x3AgiGvvZthK8vM2yU
         gqKp4Gt8NKnDcBY249ums1ijvgsbBRKCToKeaoK6dIKHX7es1im3IocTc3MDQet2faMc
         bOSR40XcDkk2cSqyGmx+/vG8wqC36uhYs0SZRuRNj9sIyWk24NGk+pZh8VU1LLbOqQdL
         7ziz19gAiY0B3OjdZOGaDfRmZ1Goz3CsFtnx7fKZv0QzQwTobne4cp6kKGo30DTTZm2V
         2b3vfqTwii8uPMCKMF619bjOFeGE8/y2bPVvCK6NMev39tB+5nY2i2C2N9Dhdq/f9vbO
         4bOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713022687; x=1713627487;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3ExJoTB3hhXa5q9DtvmCjzuPMuLoa33GZY+I61ZoNag=;
        b=NRVIDT2Mnd0fRKT18o6H3CU2lxgg05biaj1/tvNacb+SK0uBZ0ZT1YzgPh9jmS8swX
         nQVAMfHYV+l5iIbKGRXTkFXXcf41ia13KDa9fgyymQnfE5gea/7qBojvLhjEuL08MrBf
         Lo4scuW98MaTvzqwE9QdFw6PXMRDaGUq1PlKHhyU62u3tT17QCEW+QDtuzk1aiIlCOO8
         K8TaKtYSWxJioWM0lRIMOwZKWtg1htSa5BCXiGS2c8Ibcg84TCxYSst9453wY4hXJGpN
         HVZtzKmVm6M1vV1ZCJtws+B606tL4ThfMr9WnI7+UYIiivPtS0jHFF+2A6fWcvlcvi8+
         OgQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGiWYg5EAGHHNiGE+NeZ4d859ST9wK0IPhLV8j5TgvcZEV8WMklVg+sABn0uy5m0CDKNfFAgjCj7mloZUWS15az3QZfzGoAdRC9YW/rceF9xRFANau5asdZ4j41jNSvSd4nedaujCr1Er/qORf7z4DjdiNcGSDLkY=
X-Gm-Message-State: AOJu0YxoeEvSvnb2hKB6bVdP+J3OVMAwv3nd5nUSNd8lnUI5Hx8Am/eG
	fRI3DGCW+mvJBGx3ohn2kAz0EvBAdvIvSNZuW71DsvVjWGR3w0oP
X-Google-Smtp-Source: AGHT+IEEl2sbrq/BBwP47g9sQFrSN4a3dH6bzRegvZZXLOpd9zEimISYPga1ISSsuvLUCDhddb9hpg==
X-Received: by 2002:a17:906:dffa:b0:a52:52e5:bb19 with SMTP id lc26-20020a170906dffa00b00a5252e5bb19mr758772ejc.40.1713022687356;
        Sat, 13 Apr 2024 08:38:07 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id cx10-20020a170906c80a00b00a51b5282837sm3131680ejb.15.2024.04.13.08.38.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Apr 2024 08:38:07 -0700 (PDT)
Message-ID: <3a035c16-75b5-471d-aa9d-e91c2bb9f8d0@gmail.com>
Date: Sat, 13 Apr 2024 17:38:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/3] dt-bindings: display: add #sound-dai-cells property to
 rockchip dw hdmi
To: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com
Cc: airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, markyao0591@gmail.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240413_083813_088647_0168B802 
X-CRM114-Status: UNSURE (   7.56  )
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

The Rockchip DWC HDMI TX Encoder can take one I2S input and transmit it
over the HDMI output. Add #sound-dai-cells (= 0) to the binding for it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index af638b6c0d21..2aac62219ff6 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -15,6 +15,7 @@ description: |

 allOf:
   - $ref: ../bridge/synopsys,dw-hdmi.yaml#
+  - $ref: /schemas/sound/dai-common.yaml#

 properties:
   compatible:
@@ -124,6 +125,9 @@ properties:
     description:
       phandle to the GRF to mux vopl/vopb.

+  "#sound-dai-cells":
+    const: 0
+
 required:
   - compatible
   - reg
@@ -153,6 +157,7 @@ examples:
         ddc-i2c-bus = <&i2c5>;
         power-domains = <&power RK3288_PD_VIO>;
         rockchip,grf = <&grf>;
+        #sound-dai-cells = <0>;

         ports {
             #address-cells = <1>;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
