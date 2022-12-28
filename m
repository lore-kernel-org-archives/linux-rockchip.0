Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6DFCC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Dec 2022 22:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g75ynC1NlqCq4j+ic1iQvU0Wezm0Na3PqBOCtZekptU=; b=kyHu/0buHkU3Yn
	9ajPJaqrCb8pIGG8UG1gSzn21MfUviZBRaRQDasDlW36uKA9ZLVCUUb50r8s1SmPaF2+GRn3G8ckk
	VxSNuQxfYY+g4UqpezEIWVOpZWX3iQ6x79XgpcnNDWlULiOA2G+sRszMSLSKBy4mmrTGYB5Sn5cuD
	zj3UN5oyj2sdSFNucViaCX7h+ZHDjUt1IXkeG5enjKZCvUtEEiwU6WTHFhnMhG+QFHD+449bvHu37
	y1g2c23hUATOSTF5vBp6eh3L6/QC1ir8sP1r1be6FpTfLOCxHvkSA8w+/CXHcUN7vAw7aOICVOPlX
	J7jlOW5lU6rdJU8oV8BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAeVq-008aXX-Bx; Wed, 28 Dec 2022 22:03:02 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAeVb-008aMP-Tr; Wed, 28 Dec 2022 22:02:49 +0000
Received: by mail-ej1-x634.google.com with SMTP id fc4so41067540ejc.12;
        Wed, 28 Dec 2022 14:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gQqaQ/wQbcI4YtddNbhttJQQrklrXjxNeRKfhUI3Hs8=;
        b=WEoYhhH4lBZb915wZqO2GOv4mkQ205jIX8gGYF+8Uwe9f5l4D/z7uIBf/Nd0mFn78s
         wzgClnhRyCHJvA/mrmbLRk/tPo1ausDMZBdvfWWyIgGduwc8TiPguV6qrPfyJkkb6hTK
         v1aoWzopfiEX/FYddIkftdy3wbQV4b2+1tvo5H3Ibp0oRFky8VZjRJtQo+gbDhSfWHmC
         ge8rvuubZKqgspwlx1deCF+Rp1TG8jFrvT1GowN8opm1bMpKbC3CqGDah8GXSuaDk+Tq
         o/X4bWyBPDbT9dISRfLZp9AE3GXS7rGl/MpbBzuRVB1S2A8FuUo5JSHVySTwH8IPk8yu
         2q3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gQqaQ/wQbcI4YtddNbhttJQQrklrXjxNeRKfhUI3Hs8=;
        b=35r59+3hyRq7i7ppKskFM/T6CMa+YkbzqAUSnXKmlzFFsdk8/TbBOyiARcO51cO7mw
         VvBatjCmWXZByewXby28dqSttlREN9bC6VphN6zp+K5T6SvrW7Ga98ciN4yHtimpEOiO
         yW/e6NZLanljGjenGfckgdc82JmbDjTzteRpDZA03kSIvuj+Qz5sFeyPB3jzvWAszuAS
         xYXEyzwh9nlTz7fVW59lfq2AYmO3hFvbiN99QQfd9fIMuo+0AWKz5hEptbd9AH812UEy
         fKFzcudG+1AF4aAcCbGq/wXq34dc0zmlOkc7iHsOLXgbqi3/BbAmPWSZO2KVK+oo63+u
         fpSg==
X-Gm-Message-State: AFqh2kqMq49U6Zhw+Ak1ztwe3L4O4GT72qlbgPhnLbYRRKv7yCnsmv5l
	ptRIQcMJePuKRnQogCZUcj0=
X-Google-Smtp-Source: AMrXdXv6lktDsWMmnORsKNQ5rX8w2xCV0GkzdA+11PmuhI3tQsXEIFCqkIqh4S9j1z9kn3D+jJsoFA==
X-Received: by 2002:a17:906:524b:b0:7c1:5098:907f with SMTP id y11-20020a170906524b00b007c15098907fmr21809702ejm.61.1672264964572;
        Wed, 28 Dec 2022 14:02:44 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id 2-20020a170906308200b007aec1b39478sm7846616ejv.188.2022.12.28.14.02.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 14:02:44 -0800 (PST)
Message-ID: <aa942b16-1135-c202-d44a-d25f1f82787f@gmail.com>
Date: Wed, 28 Dec 2022 23:02:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/2] dt-bindings: soc: rockchip: graf: add
 rockchip,dp-phy.yaml
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
References: <5fa3aaca-4e49-8baa-68c4-2b3981400d3b@gmail.com>
Content-Language: en-US
In-Reply-To: <5fa3aaca-4e49-8baa-68c4-2b3981400d3b@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_140248_014214_FC68487D 
X-CRM114-Status: UNSURE (   7.53  )
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

Add new converted rockchip,dp-phy.yaml to grf.yaml file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 7ac9aa5fa..36f6d85a9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -96,8 +96,11 @@ allOf:
     then:
       properties:
         edp-phy:
-          description:
-            Documentation/devicetree/bindings/phy/rockchip-dp-phy.txt
+          type: object
+
+          $ref: /schemas/phy/rockchip,dp-phy.yaml#
+
+          unevaluatedProperties: false

   - if:
       properties:
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
