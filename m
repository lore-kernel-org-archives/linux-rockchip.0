Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E6E3C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7gPwuBng7nqQdpiX+qYPCdFvnQHielOHtbXd8jdlJYg=; b=Xzmgyu6tN98VSQ
	Bub7bmTLiaaw21ZibjcPAmDgiKZqnTxEKAczQj2To1XV0Tj9m4rpQOXClz3KXZCMgskGgRwckK9Oe
	D6LUSI/Hjaxk7W345CTe0qac/1w4YG0WKhnI5VYQHqx2d9Lpa8tNKTdlLtLXBclagN9BBZejopzLk
	TDYM7uGBZ1jaHxzPubzw8yIagPc9lNIIefFmZ5KDEHPyhwwZ6ri8zQkvBa/cixNooaSdFk4HrLQ/w
	niiTOx5BoCI317j7K25s7Csiiqe8TKEfJvTqcrE+AaGULJMSrqodymZFDjk3ce2gakfnKguogEjbx
	qSow1qd23BfkzoEcRakw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgeC-00ClMh-Pp; Mon, 28 Feb 2022 14:05:08 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWa-00CiiO-1r; Mon, 28 Feb 2022 13:57:19 +0000
Received: by mail-qv1-xf34.google.com with SMTP id w7so12560326qvr.3;
 Mon, 28 Feb 2022 05:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cQUDxIOQmLA9ZKQOZ3DN3t0eYopkqsvrJZ7NjA42XWM=;
 b=D6wZocUmb6FhBDKphSVz7f0+50OiiHnoN4aW4spyaT3McyYINKNrdPC3rrxPTZI/5I
 p7By6hXY+sQQqS2imvNWYN+Vw/mzJmBVtt/bnGGpdtkFnwtrNCypFPXSW+/pv18qekX6
 o+GVc8Eas7xOnZCfKgTJfufQQ3Rz+EA6ePOZXOSZK0oQ6nZRIIUo0nDgsjACfpnn0Th4
 x7+NGOhFfcGw0Vt9VAGqHC7dUrW+HHlI8uXrr+VXjHoBpOEk/PiB32oFHTvwpZsUBIWC
 BvqlzD7ItoFyqBCmRTzwjiBxY1z3g27a8wxpVJz2w3SJ2UO01ZGfuUBe2WN9OABJ7a5x
 ZwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cQUDxIOQmLA9ZKQOZ3DN3t0eYopkqsvrJZ7NjA42XWM=;
 b=Cney2XixdpRamC4m0y2rMVYVr/2WEiRg7c0Tfo3yG1481DjiSHMmD6MwwOHWYvzCW9
 YuR1O8/OGfYVEJvADWVUbiO+bDfldQ6ZZAv8YQJbil8pgpUJmRz8YczCjSloU94lt8rJ
 UyfNIGpeU767E2QUrSNFMrlBx6uD+UGZvpnVBt/SGzLRCOGQ0XGOYwoQy9vHsfaNLsoK
 CpY1P8ACU7CJGv5P365v2ScsaV9jux7EVxZSNIbPi3y7LDg+LhQjpPuE2ZuArveosdvn
 sSjPPXfy1+M8wRCLYaUCC1Mjlls9oQApnpzq3Nmmp1wNmmCmFDCjrZYWdFqtz3T4rYis
 5x1A==
X-Gm-Message-State: AOAM530Ezk/D6yOR0psQAuW/AQxVSZgYujpsWedMsDS04f6hcMsj4g9V
 HkA/xkSqVeMnmf+wFZbn2m8=
X-Google-Smtp-Source: ABdhPJzK8dI/AuVUIiY2N79dEgcXtr0u3v9g6tyJfKve6jayoJ2SoZtpH7AuPI9zJCIbLK8W9zAigQ==
X-Received: by 2002:ad4:5fcb:0:b0:432:d049:c6d with SMTP id
 jq11-20020ad45fcb000000b00432d0490c6dmr9850850qvb.39.1646056630371; 
 Mon, 28 Feb 2022 05:57:10 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:10 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/8] dt-bindings: usb: add rk3568 compatible to rockchip,
 dwc3
Date: Mon, 28 Feb 2022 08:56:54 -0500
Message-Id: <20220228135700.1089526-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055716_176346_95181802 
X-CRM114-Status: GOOD (  10.36  )
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

From: Michael Riesch <michael.riesch@wolfvision.net>

Add the compatible for the Rockchip RK3568 variant.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
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
