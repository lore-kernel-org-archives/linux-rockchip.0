Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83C55C43461
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 15:25:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3842613F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 15:25:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3842613F8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:References:In-Reply-To:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3aUxXk4AYEtMptu+sgaxU5SXSMwfvoXWjNWJTINQN38=; b=NPXKp5cq0YTdO5O327l/2xbqU3
	WwiLI69Frr08ynq8dt89Zob/WR7EFqfvdSoiIMSZjH8Cuf2+Jo7uXqsniOBj86cYIOoxakc513nuj
	gqs+u/4O900pnma9wQoNkREyMXRbCJrfcNFHLACL9/Ra+dI1EILsO3avIunHD5wFFSSWx7VYaof9k
	XFzHodLvtU/njAJpN04mvxPagODt1KmDfFlQVqhoOHsEgYm4IzpxBV0LJKPoZDpyt/eq5pJyoJD12
	loIQSNJBcDEgulLbrbkMtKalsTvkeKYdm96W9NGNI528Q14kkM9q9dkReOMTASl+uF/rDMqYT5fET
	c+75dkVg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc8Xm-005x6h-TE; Thu, 29 Apr 2021 15:25:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc8Xc-005x4V-8O; Thu, 29 Apr 2021 15:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:References:
 In-Reply-To:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=i0xoMhXwtne9LnlYePyFNsxRYqWjGV7vCqvSAINSLGU=; b=4nflTJl0/9KtuSsHsztkaVThTh
 /sdJRt4fGcXETSS/oKxNm+MVZWlmCtT7M+kNxrufsp7HiEJATT1bTVsWWiwDwGs6S0kUFwRJk87Dx
 wMGrxcKJG/WQQvTS+tqStB4xWoVe+w4Fx/iZD5uDkkPmZN1ryP3QF80nuNVA5ltwfPX0DE9MmlmtO
 ISpkELkOwSSh9OBlA2o8iHeIn4Ve1fqvcedOUmTQGyOxFPPV58aJPg4uMgxO61+pzQH/LoVXJDDux
 iDBRyko5/wXrB1aGk3tj2ntO0S0SFIlvyGZJUtMIwHUxaomLKCIwXoTPpBWHxr51JeHjvLWkucsQc
 qY9S1nLA==;
Received: from mail-ot1-f50.google.com ([209.85.210.50])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc8XZ-000itD-JZ; Thu, 29 Apr 2021 15:25:23 +0000
Received: by mail-ot1-f50.google.com with SMTP id
 35-20020a9d05260000b029029c82502d7bso30269479otw.2; 
 Thu, 29 Apr 2021 08:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=i0xoMhXwtne9LnlYePyFNsxRYqWjGV7vCqvSAINSLGU=;
 b=aTBVFPU5rFtmqQfjs16ZHadC/ZgO3faa7HpiuDHibKaIQa/2iO7abvSxLSneGiMacU
 JrdolWP087SGEOBLDIE1y4NaYNgnsYlwiAJic41S4DayY9f5sZZFiNunYRqX5yCh28LO
 bUZbO43xICOMUQH4GaNXqsRNHt4APwnLMixSbx8ChTNQXlvVhs/bOEiyp0GbzJvH+ZVG
 iDosOY80QAaLBJcWd4RFQ/6+MIIwltRtjZC6szELOHgxW66nCz6UHbLiQcNrBIeP0Q9Y
 UL004GB+D9NI0ppD3/QN1cjj1lluQQo8heBCE8SEOM2gh7hOdSLCac+rMaB576n9l5rN
 yxEg==
X-Gm-Message-State: AOAM532SBbopjQEXbeDT+WxTaUnvvjInV0ADVybuKyU/cARQLPKeJqqb
 S59vAqe+gSoVpJZRR/XONw==
X-Google-Smtp-Source: ABdhPJxEU28Uo1HsSxBn20WvETdomdWerhn4crR+liE7z6I2O6zQ+ZVGdv7UMW7On1mtAFTke7piXQ==
X-Received: by 2002:a05:6830:2456:: with SMTP id
 x22mr28339399otr.262.1619709920279; 
 Thu, 29 Apr 2021 08:25:20 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m5sm25975ots.13.2021.04.29.08.25.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 08:25:19 -0700 (PDT)
Received: (nullmailer pid 1303438 invoked by uid 1000);
 Thu, 29 Apr 2021 15:25:15 -0000
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: zhangqing@rock-chips.com, uwe@kleine-koenig.org, heiko@sntech.de,
 jensenhuang@friendlyarm.com, devicetree@vger.kernel.org, linux@roeck-us.net,
 michael@amarulasolutions.com, linux-watchdog@vger.kernel.org,
 jay.xu@rock-chips.com, mail@david-bauer.net,
 linux-rockchip@lists.infradead.org, wens@csie.org,
 linux-serial@vger.kernel.org, ulf.hansson@linaro.org, jamie@jamieiles.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, jbx6244@gmail.com, linux-i2c@vger.kernel.org,
 wim@linux-watchdog.org, shawn.lin@rock-chips.com, jagan@amarulasolutions.com,
 david.wu@rock-chips.com, cnsztl@gmail.com, gregkh@linuxfoundation.org,
 huangtao@rock-chips.com, maz@kernel.org, linux-mmc@vger.kernel.org
In-Reply-To: <20210429081321.17855-1-cl@rock-chips.com>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081321.17855-1-cl@rock-chips.com>
Subject: Re: [PATCH v4 07/10] dt-bindings: soc: rockchip: Convert grf.txt to
 YAML
Date: Thu, 29 Apr 2021 10:25:15 -0500
Message-Id: <1619709915.260424.1303436.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_082521_664192_3359008E 
X-CRM114-Status: GOOD (  12.16  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 29 Apr 2021 16:13:21 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> Current dts files with 'grf' nodes are manually verified. In order to
> automate this process grf.txt has to be converted to YAML.
> 
> Add new descriptions for:
> "rockchip,rk3568-grf", "syscon", "simple-mfd"
> "rockchip,rk3568-pmugrf", "syscon", "simple-mfd"
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  .../devicetree/bindings/soc/rockchip/grf.txt  | 61 -------------------
>  .../devicetree/bindings/soc/rockchip/grf.yaml | 60 ++++++++++++++++++
>  2 files changed, 60 insertions(+), 61 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.yaml: properties:compatible: [{'items': [{'enum': ['rockchip,px30-grf', 'rockchip,px30-pmugrf', 'rockchip,px30-usb2phy-grf', 'rockchip,rk3036-grf', 'rockchip,rk3066-grf', 'rockchip,rk3188-grf', 'rockchip,rk3228-grf', 'rockchip,rk3288-grf', 'rockchip,rk3288-sgrf', 'rockchip,rk3308-core-grf', 'rockchip,rk3308-detect-grf', 'rockchip,rk3308-grf', 'rockchip,rk3328-grf', 'rockchip,rk3328-usb2phy-grf', 'rockchip,rk3368-grf', 'rockchip,rk3368-pmugrf', 'rockchip,rk3399-grf', 'rockchip,rk3399-pmugrf', 'rockchip,rk3568-grf', 'rockchip,rk3568-pmugrf', 'rockchip,rv1108-grf', 'rockchip,rv1108-usbgrf']}, {'const': 'syscon'}, {'const': 'simple-mfd'}]}] is not of type 'object', 'boolean'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/rockchip/grf.yaml: ignoring, error in schema: properties: compatible
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/rockchip/grf.yaml
Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml:0:0: /example-0/syscon@ff320000: failed to match any schema with compatible: ['rockchip,rk3399-pmugrf', 'syscon', 'simple-mfd']
Documentation/devicetree/bindings/soc/rockchip/grf.example.dt.yaml:0:0: /example-0/syscon@ff770000: failed to match any schema with compatible: ['rockchip,rk3399-grf', 'syscon', 'simple-mfd']

See https://patchwork.ozlabs.org/patch/1471595

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
