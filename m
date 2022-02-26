Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B7E9C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqA5DIOa8cP7KZnAMJqJG78/Ka2bhFFt65v5ovk/1kQ=; b=yiJqqQVo8BmYBS
	1YxD20NOiyfHh4Q0hHd+JislD/cp4lSQVanbBR23qCvf4+iPFCnsyDpYY+NjUKETzLBqTBYgpbwyX
	Nnu2P0angERHs9Eyy7MSvCSNy0CIKo/8AE0w8PJTfrk4qb5h/OKYBRKuw6jLL+kvxPCneTuXGirMy
	ZEtoFZuUQdjB/Ml9j5v2kfOapwfYydm56HgfqCPEO4ww8TZZslTv+ErwTwUUAC4l/Gw5UrdxXoxcW
	1MX9jLb93+xTOFsVLj1MuG0LWda05O8nQRvcNhmR1gz38hJMxjsy8uBAeDEW5Tee5cYbwRlBKRQry
	qtQ0GRyqi2pV3ZJ98HPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO21P-008NLO-29; Sat, 26 Feb 2022 18:42:23 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO210-008N8s-N6; Sat, 26 Feb 2022 18:42:00 +0000
Received: by mail-qk1-x730.google.com with SMTP id d84so7280877qke.8;
 Sat, 26 Feb 2022 10:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gOsPhZEWEQuuT2NShwv+/GSU4LHuvEm9yYvo2QoT/EQ=;
 b=R/KSu7/gavFinTUC20uEgLVG35ZIykqp3uptjNeINv1ka6InCTj1HVRehTJ8MWuNHY
 cBqTZOU3zOnyrjzc+rsL50Q0aCvVS5LG0+B1bjwzXpXL08iSpSvxBbDer6F0WTniHtSo
 MiXoxQawrpOodNXq9i85BHHG/FMTh7D0bHEXF/THfg6/LyAhnNG3PXzLm0dYDn8ldFKw
 +GvBK2hTSIric62sja6XothC9bBtmBWERqVaTTO45wSpSthE1OBUk5PAD5zGnxsyCxyz
 vUgtwKZSxqmxZC2cf8V1GRpxEmQ0NqOJ+3abZhxGiuFUO2SqzWQiLuWHaliaQAAeiGi3
 PzbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gOsPhZEWEQuuT2NShwv+/GSU4LHuvEm9yYvo2QoT/EQ=;
 b=DV0Lg13wJpywkHd6gqbkCbT2n+B7iT4kDv1JIexAxm/KIoWj++8ZepNaJ439m3b9iY
 hxHgv19rUdPOBwavXkCFxrdfJiPQVZAjvAryPqUwbbV66EVX7vbz62R57r/NddKZDSn6
 DD3EfJYQIqi90mD6X5DpH1a4IPqNCBBtU0sNyyVGgnxG6PQZXAkcvThfor+invjjGPJL
 J6vohQtkIqH/2V/yeH3jI1BzZHOA+BfUOABUgwrUMjgixmKDxIaSwWCbXgB+bvL3AmFE
 hFKitEvmZDSoHkjQCHjW7fIbA/ZxVncMABt2fxJp9ye6WQ6xzpi3NoMh/yYRfeGSpJv3
 dU8w==
X-Gm-Message-State: AOAM530UfAc/ljH3q2W5abP+Ie9Itm3s3aJmqjeR8ewASfb5OQji2S8Z
 4PGKqKV8R/XlbZjNgRzJ5kY=
X-Google-Smtp-Source: ABdhPJxCMJ/DgDWAppj+Kl9sdGzkRlm8iCGGKIndo6Lf3q5EL5QDB1gCMVii5QhrxfaQdKYl/m2dww==
X-Received: by 2002:a05:620a:1219:b0:60d:da3e:86d6 with SMTP id
 u25-20020a05620a121900b0060dda3e86d6mr7557051qkj.473.1645900917626; 
 Sat, 26 Feb 2022 10:41:57 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.41.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:41:57 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Peter Geis <pgwipeout@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/11] dt-bindings: usb: dwc3: add description for rk3568
Date: Sat, 26 Feb 2022 13:41:39 -0500
Message-Id: <20220226184147.769964-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104158_772324_06E2D51C 
X-CRM114-Status: GOOD (  10.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rk3568 dwc3 controllers are backwards compatible with the rk3399.
Add the device tree description for it.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index 04077f2d7faf..b3798d94d2fd 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -30,6 +30,7 @@ select:
         enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
+          - rockchip,rk3568-dwc3
   required:
     - compatible
 
@@ -39,6 +40,7 @@ properties:
       - enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3399-dwc3
+          - rockchip,rk3568-dwc3
       - const: snps,dwc3
 
   reg:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
