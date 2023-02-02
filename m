Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D39FEC05027
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Feb 2023 15:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=blDDhaq8bvxv8UCe0N7eI8ddQjXhNWQQ4KwsyxJQTEU=; b=jBH6/BeBg59jrZ
	B7TXGlEliBybqyKT873kKQ3dO46n1RPNc62ptN4+P4ETI9D8CWpYXn/YQzDx/0zReOOphiigrnonb
	AsaBBBNOJ7qixH7hJ3lBKOnDbBMIWUxrPr6PJN3aaWbYDaKomKG1EfFEzGcqgez6sD71UXJxhcwGV
	ee02eOBCLq9VQ6CHh+ClQ5LVLXSI9kbGFfdB/01UWdmglAmG4m45k5jDEGt73QzfD/GsPQAQfnjae
	5DwrQpIHOvYaPcdn8qaYGCctMxngOxExUPx1PgCDIMUQ6z4xj/aupwAwDQx7pufzQtlG8nluTFyPK
	QPfEE2WdJOnKBw+RRegA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7s-00GEgJ-UA; Thu, 02 Feb 2023 15:03:48 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNb7h-00GEZD-HG; Thu, 02 Feb 2023 15:03:39 +0000
Received: by mail-ot1-f51.google.com with SMTP id n25-20020a9d7119000000b0068bd8c1e836so533096otj.3;
        Thu, 02 Feb 2023 07:03:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xhLIwzkmCznX0GHhQwC0/P1h3t8y8u+T1ODla0Zh5kk=;
        b=39WdLoUjp2C/vFwm85uTNhclq6doS2CgOQr0zXFnm7x3UVF1UNmSMRJCrZRAjFpKPP
         1YnARvyY/Lv0h1heXdnLMOpIy0EbJsg9VCEH3Cat9IQfs0jUNLueIPs6nwufP26oDXnm
         t0m+8zqchqpoQCqpGK+5dj/STKqzswZlhfwVtWlY66hJWD1mpDpkrnag8HWE0P+bdOgx
         8H/Ns/ZGYHM4NbjK6zTWJn5kWcUzDWOXC/CewCP/fjtRftI2lmT6sOfMDdnUEpsxHR8d
         kZI98VenLbdZUuSDEBz/3FkipI9hLUK7/5mp2dQBczFmApng9IAGKkR2dfm2ZgfP17o7
         H17w==
X-Gm-Message-State: AO0yUKUWFz78EYdfcGKWVx7sg+D4f1FY72nGoqekamKm+poKd0pUoX7h
	Hxnw/P9PKB1l4IaVSJTOEQ==
X-Google-Smtp-Source: AK7set9CBOiY1Y27c21v6wju0XHcELQW66Yw+qKAXhK9DVt099gofzi2TiGaQ0sIsd4bfdHS1s2fTQ==
X-Received: by 2002:a05:6830:18f6:b0:68b:c2d2:8967 with SMTP id d22-20020a05683018f600b0068bc2d28967mr3312164otf.26.1675350215344;
        Thu, 02 Feb 2023 07:03:35 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p5-20020a056830318500b0068bce0cd4e1sm5411539ots.9.2023.02.02.07.03.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 07:03:34 -0800 (PST)
Received: (nullmailer pid 1858084 invoked by uid 1000);
	Thu, 02 Feb 2023 15:03:31 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-usb@vger.kernel.org, robh+dt@kernel.org, heiko@sntech.de, linux-arm-kernel@lists.infradead.org, krzysztof.kozlowski+dt@linaro.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org
In-Reply-To: <f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com>
References: <f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com>
Message-Id: <167535004008.1854256.11552006567095484269.robh@kernel.org>
Subject: Re: [PATCH v1] dt-bindings: usb: rockchip,dwc3: update inno usb2
 phy binding name
Date: Thu, 02 Feb 2023 09:03:31 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_070337_589351_9D41A9A0 
X-CRM114-Status: GOOD (  13.19  )
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


On Thu, 02 Feb 2023 14:59:35 +0100, Johan Jonker wrote:
> The binding for the inno usb2 phy was given a name in more a common format,
> so update the reference in rockchip,dwc3.yaml as well.
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml: Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/f8747552-d23b-c4cd-cb17-5033fb7f8eb6@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
