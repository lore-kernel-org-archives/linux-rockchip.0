Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72940C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 May 2022 23:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VukBSrtJlFRkQ7EHiOKsvnvv9SgLFK8jHNcwIiIeq+I=; b=PcDQ8ef+TdkSMD
	b1/k0mzNUwtYG6zOSerlDByq0C/p5zuRwJ7tnF+heFa3m0WBb0nPC3rvVnU9/d4PcwATmNJD2F2cX
	uuHhpG/qFSTKF1RcJLFTCu/GBWUkLNIIpAMVq3/hs/swRVg6lo/nmNZMXuK2mzu2b2Fbpb+w6E7VJ
	EHpi+XAo4BBfBpYKRHZYZLbMdYQSbwNf2cQH8p3Y8a2iEWNOd+Rwey8TwFpMTfsbT5kYdaF5fGHvp
	bz5csytSGpltEBLQPXEHevTHEmIedZY9CHUe5yKqmApRqPZLclEBNGrv2B4KUVlOnv2XUt4UkeD58
	RHep/m0tmUNg+wN025BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nq0yG-002Xv6-8w; Sat, 14 May 2022 23:14:48 +0000
Received: from mail-ot1-f41.google.com ([209.85.210.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nq0yC-002Xud-LY; Sat, 14 May 2022 23:14:46 +0000
Received: by mail-ot1-f41.google.com with SMTP id
 m15-20020a9d608f000000b00606a788887aso7556164otj.0; 
 Sat, 14 May 2022 16:14:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=8fcWrSCf5x/oR5brHV5SFMq/ic1IdVWzznom0Nby5jg=;
 b=TluS2KhCLA9MaCRnYWyniZXDyA7NQbH9C1KEBTFQvcRHIdZzAoFmkPT9S//PFNuxFW
 8uw9CjVsP2PHL386A2hn2dTU7hjJRvRsGv1JaklufgcIVn+C82U5/QMySVZPY+To2Ck3
 e8sCGYUDxYeSlInZq56OvuRcafbd5w9hZwFdnYZMD0qQderPGFuS4U3vmtz+5kSXvQRM
 IOGwq+IVJc08bqXJr1Q+MK7xTtdenqeO2fH4AO2ZMJg7fMPxYBATcXmquZZuPWowPiK8
 E63FAOcAabNJCdmQLXZdSEdjnyu85oTA8Y6AF7L8TiTDn6fJ6FiTn1mxQ28wnX7JjRC1
 EIaw==
X-Gm-Message-State: AOAM5335V3EsScnb8+/jRjVmjuFMLK0cZ12FqIeQczuZYPj0yXvNe+AJ
 eqJZLBaYDLtXwF8dX9e7Wg==
X-Google-Smtp-Source: ABdhPJwl9oHK5hDNNxA5VHeDQnmNJ6i+NfFWt4ZnjKEwX0WwdMarfDgU2sJkk1jCO8U1nV6WMPCTsw==
X-Received: by 2002:a05:6830:d2:b0:605:ee58:2dc5 with SMTP id
 x18-20020a05683000d200b00605ee582dc5mr4057650oto.252.1652570082831; 
 Sat, 14 May 2022 16:14:42 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 k101-20020a9d19ee000000b006060322123fsm2633837otk.15.2022.05.14.16.14.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 May 2022 16:14:42 -0700 (PDT)
Received: (nullmailer pid 3276246 invoked by uid 1000);
 Sat, 14 May 2022 23:14:41 -0000
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 Vinod Koul <vkoul@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>, linux-phy@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org,
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
In-Reply-To: <20220514115946.8858-2-linux@fw-web.de>
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
Subject: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Date: Sat, 14 May 2022 18:14:40 -0500
Message-Id: <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220514_161444_747245_4C68F88F 
X-CRM114-Status: GOOD (  16.84  )
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

On Sat, 14 May 2022 13:59:42 +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a new binding file for Rockchip PCIe v3 phy driver.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> 
> ---
> v3:
> - drop quotes
> - drop rk3588
> - make clockcount fixed to 3
> - full path for binding header file
> - drop phy-mode and its header and add lane-map
> 
> v2:
> dt-bindings: rename yaml for PCIe v3
> rockchip-pcie3-phy.yaml => rockchip,pcie3-phy.yaml
> 
> changes in pcie3 phy yaml
> - change clock names to ordered const list
> - extend pcie30-phymode description
> - add phy-cells to required properties
> - drop unevaluatedProperties
> - example with 1 clock each line
> - use default property instead of text describing it
> - update license
> ---
>  .../bindings/phy/rockchip,pcie3-phy.yaml      | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml: properties:clock-names: 'oneOf' conditional failed, one must be fixed:
	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}] is too long
	[{'const': 'refclk_m'}, {'const': 'refclk_n'}, {'const': 'pclk'}] is too short
	False schema does not allow 3
	1 was expected
	3 is greater than the maximum of 2
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml: ignoring, error in schema: properties: clock-names
Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.example.dtb:0:0: /example-0/phy@fe8c0000: failed to match any schema with compatible: ['rockchip,rk3568-pcie3-phy']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

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
