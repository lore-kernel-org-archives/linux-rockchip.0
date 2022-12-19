Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F803C001B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Dec 2022 19:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wapuAXG6JAHZXZ7DoQMoAMnrIB+KsINnHksRdrWWwqg=; b=0azqbozUtYBY20
	Hiiu4Aail798xW43KSafMI3wq51z28ZiOYzxcDOmm/GhJ5yumqJ9NwiOHjtFM4p3CnIQCzB+BHFQb
	3ZxY0Sn5x9rulGdrXoq+3B4OJQ4PKt7/nN0H1fka8CK/wxS0UnDTdefV+PeOmy8zsF6kk2vFZ9b41
	hi6B/7BdmQGTMImVieFsZRn89jI381X3AYSh9c7TqphDjVNt0kjcUv1vpJlb9dTGnn/i7JwvSC8Ut
	eQruZpXja/ScP+Q2VE2HpEEvGJB/4X50DBFYkxUymQcrIAALfVTbRaNg1KXFRCSPnauCr+ybGvBEd
	agBNHXfiXGibWeKRNq+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7MDZ-001RSo-RK; Mon, 19 Dec 2022 19:54:33 +0000
Received: from mail-oa1-f54.google.com ([209.85.160.54])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7LXM-000dvc-Vd; Mon, 19 Dec 2022 19:10:58 +0000
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1441d7d40c6so12708411fac.8;
        Mon, 19 Dec 2022 11:10:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+5raIVmkATLs5kf4lFGVOCgkR/IHy+HENdY2c/Hj4Z4=;
        b=rGZEINuewQnaKqBobVyC90u0naUYvsAmpBICBRmsrlFd/BvpS1yv1N6SjE3KZDEZbF
         pqC5vjUhdJz9LESeUmYaM64q7TGrYVHvhm0D3cyM/Dnp2hQCMDo3HoppDiy53cOwPvtk
         uZ9tzv3aFn/dg83XIOzcBVbjB+UUd6wb60t+mAK+z2IzajTYTkPYWLczuYGo8v55Ha8D
         de7KmkpxzwUCpGJfOV9WQEqCv8Yn1pTIcQfJGAbDlmLzhlDu8PBWoE4vpEqf1zrDr7Jw
         XJX4/rlj/j41N5VZ79JMZQGN0PeiGeP3IcRhT9olHtjfWfvsWUZnjQmOiRe+iWna2iOx
         yvuA==
X-Gm-Message-State: ANoB5pmEPU8DKfoX4MLhHH/xHup7xSy17ZkY1+nBHO9TbTZIDjyxmlUc
	MkW4KFu4GidKm5CdOau7IW4vHL+ElA==
X-Google-Smtp-Source: AA0mqf5uy2z1Px+lvgd48zxf2Np4GkD7Kjg/b/oNMMimRBtrvEYAW8M9qB2UdQywDGK10wHcqUvDiw==
X-Received: by 2002:a05:6870:50c:b0:137:5344:70ab with SMTP id j12-20020a056870050c00b00137534470abmr21296969oao.15.1671477053900;
        Mon, 19 Dec 2022 11:10:53 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o15-20020a056870524f00b0010d7242b623sm5124258oai.21.2022.12.19.11.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Dec 2022 11:10:53 -0800 (PST)
Received: (nullmailer pid 1974177 invoked by uid 1000);
	Mon, 19 Dec 2022 19:10:52 -0000
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Felipe Balbi <balbi@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains property
Date: Mon, 19 Dec 2022 13:10:37 -0600
Message-Id: <20221219191038.1973807-1-robh@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_111057_048150_3AEB7F34 
X-CRM114-Status: GOOD (  10.17  )
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

The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
allowed by the schema:

usb@fe900000: Unevaluated properties are not allowed ('power-domains' was unexpected)

Allow DWC3 nodes to have a single power-domains entry. We could instead
move the power-domains property to the parent wrapper node, but the
could be an ABI break (Linux shouldn't care). Also, we don't want to
encourage the pattern of wrapper nodes just to define resources such as
clocks, resets, power-domains, etc. when not necessary.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
index 6d78048c4613..bcefd1c2410a 100644
--- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
@@ -91,6 +91,9 @@ properties:
         - usb2-phy
         - usb3-phy
 
+  power-domains:
+    maxItems: 1
+
   resets:
     minItems: 1
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
