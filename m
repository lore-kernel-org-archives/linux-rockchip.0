Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F67EC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9Uv1TZIcI42EdMQEIhBCHY2Ol23AYhXP6JFNMzA6Ic=; b=uGTQx2/nGgEsMd
	fTJMtorhsbQtvtJQl0wWRA/PIl/EQFKLEqL7SSUO3Zy4MseJylmXYTIBr6bCB+2DPRJI9pHEGwfD2
	ld88nDFl/0jm4h7J24neRFy0SvubeK5DL+wCq8w8c9XVwb6QIPjAyfK02p9Ysmwm/+dU3A00ES2uL
	mbo1f430Ate8u9xtcMCvrOWFE587HKC4c+WY5edWa08ljVgUfbRpezycU8298GZUUoUReSp176ZYo
	gLwETp2Dw7gCPbvmrRnltpSZA5iG73rJex+9P3tzpq35BRCoKEPTSNJALbJeaD+d2w0qQAHCJb4I7
	N43FWB/r+blkTQNOXTdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgZr-00Cjlq-C4; Mon, 28 Feb 2022 14:00:39 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWT-00CihW-T4; Mon, 28 Feb 2022 13:57:11 +0000
Received: by mail-qk1-x736.google.com with SMTP id q4so10278208qki.11;
 Mon, 28 Feb 2022 05:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RL6lgc9JQzCOWChXKBrpjhVjZkUp1FLcriOwSbYz2iE=;
 b=oc6VWBpEbroshkPMoR1Hgu8/7KKPhrHKZYPZUwUNPRegB1nJ1Sl2fNfLNrkdg+vzUa
 74zrA58Yzorzcv+Lvvb4o6KZgHnpwGPfoQvUBKdFkjU2SRcT9NnT7FO3LdcOWyYbjLYA
 aFAovpW0TdhyEEClis+xkr4RgOGH8NQlKaqbCKpvLSOZK8rB+n8zegvrD2e08kBqsvtm
 3DLSfuiho2nlJqQ/AjEqzJ0C55B85wvcAYJH5sFVOmVd7/sLnYUER01irJHWlzSjctE1
 hJh4m77EM/HRhCtIYLmjgqq3DdjvlQ2mJLitRref56joIDWu++Dawp6eBox1I74qGU67
 354g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RL6lgc9JQzCOWChXKBrpjhVjZkUp1FLcriOwSbYz2iE=;
 b=kwurxGnfiovKiNavgLRUKOtrRMcRLyIsszxk75HmqY36qPBcVwaJ4srTN2o4Um4w0l
 2PdkRaAPKL2DgfLq/INI9zxC+bsx9mUp0a6pbS1UHP5LJPYIIM9PDKftWGALT/579Ruj
 QJHM2iw8G/mXxOH6OxblxRmNWzl2r3bQ20BTQckbYcLD+ZNscNy+FXdtLoV+RFLjHdxT
 XFn2pFW7N7W+hUCXIgbeLpl15g5F0KH7zMG8uE2nz0oCoNVpkm6q7MSUcDr4GJgVd3MJ
 +XXdIWRyA8A0wlwTHJE4BVV2KTpC8Q9Eu9p7T5+lNl7rVYhzfbi5wJYhSCiYCzdOY6D5
 aejw==
X-Gm-Message-State: AOAM530wdIt4CavM/wHhMueH3z4FPIA7ExXEXcLSBBfH14jH6KYCxK1g
 zrjwRc5UPlXfGY0UFyUuRA8=
X-Google-Smtp-Source: ABdhPJwKA+QtxdCp2x6ZX6JxtBEUGs0o8ONRL499Hoz/Uzm3NlcJz6Z31+cZv+G5iNxRncj9x3pzKg==
X-Received: by 2002:a37:9e87:0:b0:4e1:1921:1f9f with SMTP id
 h129-20020a379e87000000b004e119211f9fmr10881086qke.480.1646056628485; 
 Mon, 28 Feb 2022 05:57:08 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:08 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/8] dt-bindings: soc: grf: fix rk3568 usb definitions
Date: Mon, 28 Feb 2022 08:56:52 -0500
Message-Id: <20220228135700.1089526-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055709_975531_5A526032 
X-CRM114-Status: GOOD (  10.70  )
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

The rockchip,rk3568-pipe-grf and rockchip,rk3568-pipe-phy-grf
compatibles were incorrectly assigned to the syscon, simple-mfd
enumeration, vice only the syscon enumeration.
This leads a dtbs_check failure.

Move these to the syscon enumeration.

Fixes: b3df807e1fb0 ("dt-bindings: soc: grf: add naneng combo phy register compatible")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 072318fcd57b..5079e9d24af6 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,8 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
@@ -39,8 +41,6 @@ properties:
               - rockchip,rk3399-grf
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
-              - rockchip,rk3568-pipe-grf
-              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
