Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 668FDC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 11:44:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rBySzrA41BoCX5Ro9Gp0L2JJ13OzrQcotVeKhDxRRus=; b=2kLphhcNZduf5i
	4ZLAYEr6J6WkdcURHsg5ChYYL6svzv8lord1yz7mFEZaqJl8IPFCqjOBGTV/xjE5GiDaWtBhRYrEX
	U5NJ1eHDqaXVtrbUL+bSMeyrMd/Q8EKFZDlUjywpgNTscWpl0I+16Ws8WKqvH6oLuxFBJZYwxNJTi
	+MHeXb1Hv0wLkZdSz1JGK1AH8QWTRGI92qvKMnWRc6hR4GMLFj1EvINH8/S50t6IaaeckNHDfxM5g
	xQlORr8jdEJkXb+PMmxFuTPphHTFIPIWiIOkgdkQIYJmJW8vuJPWex10Eym+YQfmH45zHw3VLRrDz
	A4vXE+qbF8EFsBQ3s0Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArIh-00FDXx-OY; Thu, 29 Dec 2022 11:42:19 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArFq-00FC3f-Jw; Thu, 29 Dec 2022 11:39:24 +0000
Received: by mail-ed1-x52a.google.com with SMTP id s5so26343299edc.12;
        Thu, 29 Dec 2022 03:39:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZL7W0UbK/uwHhrL/ebbYLl16dFNUQnqpqk5DlrkcofQ=;
        b=XZebkHQJ416b2bVgOIpHp7OjUe+l5KMCIwXfMscGFBwoNs4j4l32Jrbn64AgdoaKq3
         eFwp5ruKCymbMl4iHGbjt7ZXCZlJkRwMKoETrNz77eX670EGUDPV1qg8mOzLTl4W8KzN
         gRHxEacLvb0dGJZGd8nlhzlLvohACE2GeQj/CKmRFWDug9fkVV1GI6G4Dd6ZPJUTgwBX
         8kIyQS4FNd6Qail9uIbTpfhf0rBoaK1poKfC2To12ARZAvYLBDPdjfetv50kXBInudH4
         ZxQrQKLJioMFOTe4eWEyAj+mvbMunSRGNUyrZhApDj1E1omytLGjg+70ejvgUP1GoG1B
         b0iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ZL7W0UbK/uwHhrL/ebbYLl16dFNUQnqpqk5DlrkcofQ=;
        b=QLJLM2PxgnN0ZlIKbhpGeqHmb9X9CCJuH12S9OIlUGT6Ir/GFBVRgPle5y5OymXV7A
         pxnQ1HE0Jymq4AvxiKeJ1++kZVSOthY6l4VTf4jdxfowT3oj73iSRQUzjZzbzBmL2f8n
         lm83RcEFgBuIcRKJvVQPVTxOB+T4zGiAHH8D8RagzjE/E4Rg4yTyTZh/6DqQieUxrIc3
         6cVl8GlGACGTceqWeeNf/CQaNBSR8aHjUtuuCEJGCOLBxfkf4MXOV03igjwq/A4EzJX4
         UmMi1mAUSiowyZo5Kasy2l2h+pzT6n6qRWU1xPDdxBYtTlLIBTf92ZKs6MbzaMXgblc0
         cGJg==
X-Gm-Message-State: AFqh2kpvxSmtEmyuywtOLsstHzzhlbX8T5aIimqN8A7eqq9oSAzyIUTz
	Hx2EazXvAVKHb2zAi7T2szg=
X-Google-Smtp-Source: AMrXdXvpRLDZqD2mcnt2ORSXZKriqyX1MovkfFzEg33cDv6OGKF42t7q6lJRk0KCvZs3N4kx+yTweQ==
X-Received: by 2002:aa7:c516:0:b0:485:48ed:b1f3 with SMTP id o22-20020aa7c516000000b0048548edb1f3mr10954209edq.26.1672313959810;
        Thu, 29 Dec 2022 03:39:19 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r28-20020a056402035c00b0045b4b67156fsm8161374edw.45.2022.12.29.03.39.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 03:39:19 -0800 (PST)
Message-ID: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
Date: Thu, 29 Dec 2022 12:39:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_033922_737224_F63BB49A 
X-CRM114-Status: UNSURE (   8.80  )
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

Rename phy-rockchip-inno-usb2.yaml to a more common format of
rockchip,inno-usb2phy.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Apply after:
  dt-bindings: soc: rockchip: grf: add rockchip,rk3288-dp-phy.yaml
---
 .../{phy-rockchip-inno-usb2.yaml => rockchip,inno-usb2phy.yaml} | 2 +-
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/phy/{phy-rockchip-inno-usb2.yaml => rockchip,inno-usb2phy.yaml} (98%)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
similarity index 98%
rename from Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
rename to Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index f71920082..0d6b8c28b 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/phy/phy-rockchip-inno-usb2.yaml#
+$id: http://devicetree.org/schemas/phy/rockchip,inno-usb2phy.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#

 title: Rockchip USB2.0 phy with inno IP block
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 8dc141410..39d8c3b5d 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -192,7 +192,7 @@ allOf:
       patternProperties:
         "usb2phy@[0-9a-f]+$":
           type: object
-          $ref: /schemas/phy/phy-rockchip-inno-usb2.yaml#
+          $ref: /schemas/phy/rockchip,inno-usb2phy.yaml#
           unevaluatedProperties: false

   - if:
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
