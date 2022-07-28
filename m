Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5FE7C04A68
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Jul 2022 22:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFx4sfvzTuiTm2RK4/MDg2y6zSIS3+JI0p6JDAp5R+A=; b=gyL0nZwkMTYepB
	s+1lKHyUDeYl33WTq5IhxQREvp8uMbysyyxNu0970/7lB7bozrdu7PBh14uz5fKrWJ3Cd9Lc+3baP
	nCfFrjV+dauBBrpq5k9g4zf136M9Ek0M0gM8s3R8LFnxNwNRsc2lYpjpS7qYpKy5ySEV6tsgXUMcZ
	UuxJqsn+8zD9Pjig+d5K1lh1MEoATKkQ3lLOaQ/InoY0jBv2QiagIXTiE8QKYBj9MbUs2hSPgw8hs
	cfltW6AcaZcJqMFITFG3c1JW209j0xaMBSZ+WE5Fp8PxRUQMjH7H6XseYDQ43z4Qa7UD5jf+fOsZx
	QlOdCGQxiQ3czAVIdaxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHC9X-00FbYq-9S; Thu, 28 Jul 2022 22:38:47 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oHC8F-00Fb77-4f; Thu, 28 Jul 2022 22:37:28 +0000
Received: by mail-il1-f173.google.com with SMTP id z6so663383iln.13;
        Thu, 28 Jul 2022 15:37:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=I3vEeMiDJCjGWEDJLfzHyBotayrkz42xF0yEiFQyelw=;
        b=etIQokyv7Le42t9OdyEYVLPFfA6zFqs0pQJK75VEH1LRVY0RbvK4v9m3RhGtRc+g5b
         Vdx297qmWoWwZq1ChoB0DMh4L+4nXEAD+qfpyid+KHm+Dr7JFJodFDdoocDddxgrZs9q
         s0HFxtuzQWsimmHSr9ZgO4HaxcNLnn0y7fMHor4VuKbldDZirw0KvbWqb1TYrWUhkLMO
         kwgu/amoTYknV22tkDFioR4f8oSpUa1j3klM7oR7POo7XtjllZ3ZH5R1ixFwGPJElA9N
         hOfFGcxsXLz7yJQMvijUelELabBqXZYm2BqIOC9uDOESS3x91nEsTT1/4/5iRi0u+88m
         R02Q==
X-Gm-Message-State: AJIora95lHU70g+Vq+EKJDBH/fqqT3I/rN+C1e4OaOglsOJhttjhYlsv
	auFxDAvH1GYLSpVA5XWdLQ==
X-Google-Smtp-Source: AGRyM1tXEvNHVsuWYfcBbpLRfuPajccl51f0Q5BP6aS+ie1v/TyeduYIT450S4eOIgWM5efIgTSX+Q==
X-Received: by 2002:a05:6e02:1bad:b0:2dd:bc59:5078 with SMTP id n13-20020a056e021bad00b002ddbc595078mr294248ili.19.1659047844102;
        Thu, 28 Jul 2022 15:37:24 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id h16-20020a05660208d000b0067b4d6cecc8sm834748ioz.45.2022.07.28.15.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:37:23 -0700 (PDT)
Received: (nullmailer pid 1710890 invoked by uid 1000);
	Thu, 28 Jul 2022 22:37:18 -0000
From: Rob Herring <robh@kernel.org>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Serge Semin <fancer.lancer@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Li <Frank.Li@nxp.com>, Simon Xue <xxm@rock-chips.com>, Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>, Heiko Stuebner <heiko@sntech.de>, Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>, Bjorn Helgaas <bhelgaas@google.com>, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20220728143427.13617-12-Sergey.Semin@baikalelectronics.ru>
References: <20220728143427.13617-1-Sergey.Semin@baikalelectronics.ru> <20220728143427.13617-12-Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v4 11/17] dt-bindings: PCI: dwc: Apply common schema to Rockchip DW PCIe nodes
Date: Thu, 28 Jul 2022 16:37:18 -0600
Message-Id: <1659047838.065764.1710889.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220728_153727_232136_7BC404C7 
X-CRM114-Status: GOOD (  16.02  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 28 Jul 2022 17:34:21 +0300, Serge Semin wrote:
> As the DT-bindings description states the Rockchip PCIe controller is
> based on the DW PCIe RP IP-core thus its DT-nodes are supposed to be
> compatible with the common DW PCIe controller schema. Let's make sure they
> evaluated against it by referring to the snps,dw-pcie-common.yaml schema
> in the allOf sub-schemas composition.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> 
> ---
> 
> Changelog v3:
> - This is a new patch created on v3 lap of the series.
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
./Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/pci/snps,dw-pcie-common.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dtb: pcie@fe280000: False schema does not allow {'compatible': ['rockchip,rk3568-pcie'], 'reg': [[3, 3229614080, 0, 3735552], [0, 4264034304, 0, 65536], [3, 2147483648, 0, 1048576]], 'reg-names': ['dbi', 'apb', 'config'], 'bus-range': [[32, 47]], 'clocks': [[4294967295, 143], [4294967295, 144], [4294967295, 145], [4294967295, 146], [4294967295, 147]], 'clock-names': ['aclk_mst', 'aclk_slv', 'aclk_dbi', 'pclk', 'aux'], 'device_type': ['pci'], 'linux,pci-domain': [[2]], 'max-link-speed': [[2]], 'msi-map': [[8192, 4294967295, 8192, 4096]], 'num-lanes': [[2]], 'phys': [[4294967295]], 'phy-names': ['pcie-phy'], 'power-domains': [[4294967295, 15]], 'ranges': [[2164260864, 0, 2155872256, 3, 2155872256, 0, 1048576], [2197815296, 0, 2156920832, 3, 2156920832, 0, 1064304640]], 'resets': [[4294967295, 193]], 'reset-names': ['pipe'], '#address-cells': [[3]], '#size-cells': [[2]], '$nodename': ['pcie@fe280000']}
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

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
