Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B53AC47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 21:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rXIavT08gaFeH2UIuyu4JHhP2fbFRMk80MJtPJ67Y38=; b=JJcpeoijFK0aqa
	947qGg2veSt3/jzO0p02GOot2GwLs0IeY+Gnzq3+ew7cCM/loyK3USB8l9L/8OM2Tsl6sSjPuRLaO
	BlnleT+xKEX9HpliCFRshcbpUv7TDumcDp52tCNii90nMFP3OFearjTUoM/T0zV/masKYTft1uZVn
	tNT4x1anFj3Of8bkxgggAk7wjmTg7SA0xr+HWlHnCtocIu62QdUUAwPRnzKc1jaHopt0S5n9K7B7I
	HFPyxtP+MNj+++ikNaZ/g/B8tTc2QZJcLfBt1ydLK9q8mSKnmNcH4ftME0bIICTf1jGPTYiEHggfq
	mVV4MGhpmJcLKdFWfLCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHum-00000005SC9-37EL;
	Wed, 31 Jan 2024 21:14:36 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHuj-00000005SBQ-2VLI;
	Wed, 31 Jan 2024 21:14:34 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-55f0b2c79cdso245380a12.3;
        Wed, 31 Jan 2024 13:14:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706735671; x=1707340471; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BzKBpTO+yAsO6AKq5s8rWuJxCgwGnyxQPNp5dZtPA/4=;
        b=lb7AVvDjoz9wUBaYnc0t7+mTvXeV3r9xIQ80PDgVM2+ludYDuvSI9EbWQi4MOIABKN
         Gcwvg+BUU6tx+COp6lbAy/00DbYLc8Waw/6tUmGBkmrzF9K6b6nKc3FuHCt/K/lXRqGn
         JOb0TS2EqqjeT2J4bHhqJlAo/y1qzASKQpD4cUPPNhnZQe8e4SDoMjby/Rv12I+ZXQrC
         BJc2JkEeGgVM3Hi0sQPoNjJilQeyxU8mhIq79twKRzWHIwekglUgW1GBhY90Z9j080uy
         Wi7c0kLwYzltbqNZPAd2UrCpVAHdfBjJX38p7re4q0dYXIQCEyPGHPJlihm8G7Ca6Qqu
         9g+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706735671; x=1707340471;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BzKBpTO+yAsO6AKq5s8rWuJxCgwGnyxQPNp5dZtPA/4=;
        b=qxd4z8J9TmGUSnBE30x/psJAsZ/1/gQ/Qzy0XmQzd1fJqqfVS3nU21gFnhZ04hcm9D
         em0rsK5DBk5+65LUN/a32Vx8NcLCdp/CL71+qYwfzd+wC33i7bdR0tSjAubcsRIueElF
         CcJPfF+ueOxi7A4ZyMQYsbeikkkx2Vv6Xo8N9/aUKoPnmAOYe69bL4IERt0IyhZc1kxr
         0uAYd04k/kmL+i7U5wIF6zisOPAG9r1ZUv9ahB6aiBHZZPZXaudHiSQ2vWEXho5BssOu
         YZB2C80tQeGw26/B9kJI7NiWcuw7oatW8Z+xJI4F9ICUJV7iXxC0S5EnVelz2lfFZUkA
         wgiw==
X-Gm-Message-State: AOJu0YydHMmgNEXWjl2O00YkgU0ZcyC8FPx49YmgfzP9GpYJfEAafIyN
	+ToAOVkMSBD8txqjaAgtXI9LburCKBdIoI7VTUgUUVlhycCXf517
X-Google-Smtp-Source: AGHT+IGKSAQ0iom5aOWp/ud0qd1AnStLBR0ipcNAgWjoyolxlKbW/Qay9WlmcGjARF23PCDI5a71JQ==
X-Received: by 2002:a50:ed91:0:b0:55f:4ce3:5988 with SMTP id h17-20020a50ed91000000b0055f4ce35988mr1738459edr.8.1706735671176;
        Wed, 31 Jan 2024 13:14:31 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCULQ33QhABS4n6ZmrFSYOAyDgetml7TCChj/sOPv0oioq5VepLJymPA1kx2NkWnR/s/br7OHudwGBzZQ5lJljEVZ0T8ec2Qp1S80hCa2QJ/ToAZa1YotVwMLjl1ixwuX3c7Cu+05OhCGKZkQey/yuZ2Bw6v0NVp2+VtTGbXGVknaBG1caPpDodXH8w2Gv/zN7o5cVAOiQHi9MBkRsVot/HEcvmJEiKtCss4rKm7VvdBqeNBwZBwqxTaQPORu/gHnP6qcawXXJpcVGjzH6VAlZvH3ErYrVqCokAc/Rww/1Xp80adSwmW4MDgtNtHYQQyyLLEZIyow/Bpq6vIbRaYa5ynGN86YgBNPs9PsrXMZrXxxonkYDbgwwceyhD1DlNa1QtF0buPDCKbvEXuDI4YJZ5Hdx4UPHCsKxRufcd+/SKhB9BYYyvLq2uV94mWiDf7SiE8EzadWm2IkK3USljlB47pSTIfHntNiE46d3ZtXcpwD8jpvymiIPIFkfazQVGZ1ljIe8QguTVnuWOzaum/Qon6g7VEJ826bImqyFkegmo5KHphHZieTr3zht96D9DCWQSFQ43PUzoKevPHSvk=
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id h28-20020a50cddc000000b0055f384e7530sm2241381edj.32.2024.01.31.13.14.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 13:14:30 -0800 (PST)
Message-ID: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
Date: Wed, 31 Jan 2024 22:14:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 1/6] dt-bindings: display: rockchip: rockchip,dw-hdmi:
 remove port property
To: robh+dt@kernel.org
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
 mripard@kernel.org, markyao0591@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_131433_674225_72439720 
X-CRM114-Status: GOOD (  10.22  )
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

The hdmi-connector nodes are now functional and the new way to model
hdmi ports nodes with both in and output port subnodes. Unfortunately
with the conversion to YAML the old method with only an input port node
was used. Later the new method was also added to the binding.
A binding must be unambiguously, so remove the old port property
entirely and make port@0 and port@1 a requirement as all
upstream dts files are updated as well and because checking
deprecated stuff is a bit pointless.
Update the example to avoid use of the removed property.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  rename title from deprecate to remove
  reword
---
 .../display/rockchip/rockchip,dw-hdmi.yaml    | 24 +++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 7e59dee15a5f..391c2a7e79de 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -97,8 +97,8 @@ properties:
   ports:
     $ref: /schemas/graph.yaml#/properties/ports

-    patternProperties:
-      "^port(@0)?$":
+    properties:
+      port@0:
         $ref: /schemas/graph.yaml#/properties/port
         description: Input of the DWC HDMI TX
         properties:
@@ -108,11 +108,14 @@ properties:
             description: Connection to the VOPB
           endpoint@1:
             description: Connection to the VOPL
-    properties:
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
         description: Output of the DWC HDMI TX

+    required:
+      - port@0
+      - port@1
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
@@ -147,7 +150,11 @@ examples:
         clock-names = "iahb", "isfr";

         ports {
-            port {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            port@0 {
+                reg = <0>;
                 #address-cells = <1>;
                 #size-cells = <0>;

@@ -155,11 +162,20 @@ examples:
                     reg = <0>;
                     remote-endpoint = <&vopb_out_hdmi>;
                 };
+
                 hdmi_in_vopl: endpoint@1 {
                     reg = <1>;
                     remote-endpoint = <&vopl_out_hdmi>;
                 };
             };
+
+            port@1 {
+                reg = <1>;
+
+                hdmi_out_con: endpoint {
+                    remote-endpoint = <&hdmi_con_in>;
+                };
+            };
         };
     };

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
