Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11D7EC05027
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 20:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRqOIujSqwGJZ/rSE02RUp/HcIdGKv6bqNvtyWgJzAY=; b=0/srmk6AAdX7lh
	sSmrO7prqaEJ4SBJLqSUMs+oy/32/ZtLsovoLWw0hQL+zwlghU4MBY/oQ4TO9TgcvqfftRdCFdtDS
	ta71K/Gal0oVc5ZWDuBHB8i/nNyoHt9LA9Ew92TxJ325HpBs3vMQzPn9OeneQQpQqqdhvQ59TA+FU
	h1ffxtICLaPiKwhQHfmcejd94gXwehjQCA13tIgAg2YHOwlq1ce6cnhe41KmbWVM5Y6uW0lWWGv61
	L4OSUm+T0P3nfblVEzMuY5QxPl//DDLjHX192WTdYNUuHc5PRdW0jND8J3nk4/qVsJFAmHP78uY6s
	eS3iqTNvDEsqXKeXf43g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO2Vn-003Tbd-72; Fri, 03 Feb 2023 20:18:19 +0000
Received: from mail-oo1-f43.google.com ([209.85.161.43])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pO2Vj-003Ta2-41; Fri, 03 Feb 2023 20:18:17 +0000
Received: by mail-oo1-f43.google.com with SMTP id y17-20020a4ade11000000b0051762fdf955so610317oot.3;
        Fri, 03 Feb 2023 12:18:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oV7cKs+Szf31+vVz6WWua+p5h+0X4GhPfD48jKFPFWA=;
        b=AAtZNtada2BJro6BGKNFKX4fB20b/+rD0mrHu/1ItGZBoLxoSVPuQkYmIsYnqWLmj3
         AAkBR5ZWOcPhPkq1CxnLwu/jAiEwg0Zs1pVEdTX3tuYQfSDMxtGpLN/nJ1P7tnFoY+4K
         lfovlEv45LYxTTLyobkTS/GSI6FZCfIBXhokQ8J+SAAc9INZ9uquRHjOL+EdVh9zCsf5
         NfmZR1kuQyt9aQTTrhH/uR8prTQg5+J/joA/bCC24g2Kz0FtAVjWVSyIu5ef8D41i9h9
         othzKQ4aTQFnHb/P6PgEBzbprRjUBsJoFTArDCDk46iFxFnAejzbnHQhdbsBeDC/1TNQ
         25pw==
X-Gm-Message-State: AO0yUKUtANNgfZYvBCT9C1ctNGXSDYqglFgimzSSbw1RJiGD+5BCCpxy
	LgsGLk5x2YZ9j+t838PADQ==
X-Google-Smtp-Source: AK7set/S0Ap+7JFi+KM1s+lEfgy4prFJ9nFrDC3/Ra/Hwq/IY1xtmriuQVpTYL7NYOw7MMPFZBRU6g==
X-Received: by 2002:a4a:3915:0:b0:51a:2fe9:2a8f with SMTP id m21-20020a4a3915000000b0051a2fe92a8fmr3877690ooa.7.1675455490941;
        Fri, 03 Feb 2023 12:18:10 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w1-20020a4a2741000000b004f269f9b8f3sm810690oow.25.2023.02.03.12.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 12:18:10 -0800 (PST)
Received: (nullmailer pid 825646 invoked by uid 1000);
	Fri, 03 Feb 2023 20:18:09 -0000
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org, Kyungmin Park <kyungmin.park@samsung.com>, linux-pm@vger.kernel.org, kernel@pegutronix.de, devicetree@vger.kernel.org, Michael Riesch <michael.riesch@wolfvision.net>, Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>, Will Deacon <will@kernel.org>
In-Reply-To: <20230203125012.3804008-19-s.hauer@pengutronix.de>
References: <20230203125012.3804008-1-s.hauer@pengutronix.de>
 <20230203125012.3804008-19-s.hauer@pengutronix.de>
Message-Id: <167545520027.820286.11574503514985446223.robh@kernel.org>
Subject: Re: [PATCH 18/18] dt-bindings: devfreq: event: convert Rockchip
 DFI binding to yaml
Date: Fri, 03 Feb 2023 14:18:09 -0600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_121815_247365_6CF2A057 
X-CRM114-Status: GOOD (  13.59  )
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


On Fri, 03 Feb 2023 13:50:12 +0100, Sascha Hauer wrote:
> Convert the Rockchip DFI binding to yaml. While at it add the newly
> supported rk3568-dfi to the binding.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ---------
>  .../bindings/devfreq/event/rockchip-dfi.yaml  | 38 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.example.dtb: /example-0/dfi@fe230000: failed to match any schema with compatible: ['rockchip,rk3568-dfi']

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml: Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230203125012.3804008-19-s.hauer@pengutronix.de

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
