Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B813C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 21:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqrkhrQiT4PZnDGNnt5YfigvdWtYupdYj/IdUI85IEQ=; b=fTOvBtrD5/6fTm
	Jp2RXFkETz+Z2t7zM178+MNtCew+rF3buP+18sPYN0rM3kamdaFweeBHMtsr1rw++vlHuA77e0Wh5
	zwV5QP5Lk5PRY6u7NdTiJhUevDpJpsJMxBrMnEDy/pkBK6caLzg4rig7rsS3X4rE3OFLg4t4zk6Pr
	mNX+HkbfIQmE9y1KX+xc9CTTr3l00KGW0y9K2acEyZGJRvkKy80Ek8ntC2JQp3korK+buxbZXfWWe
	GVDQW65ugkBWLrpQHVl5uK8RbTmLsRutq4gta203zMOSxDyCS8Qc0JJbUkLJoKZD4Wkqo/HIzvrYQ
	jzVM4x29DQT8dJRkSWrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzly1-009w8S-QH; Fri, 10 Jun 2022 21:14:53 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzlx0-009vOL-2f; Fri, 10 Jun 2022 21:13:51 +0000
Received: by mail-lf1-x134.google.com with SMTP id t25so353489lfg.7;
        Fri, 10 Jun 2022 14:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=+WVVm9hcoQebKnMQEz2CUXNeS0i4uoyXlCrD4W7Sr0Y=;
        b=V+C4pC8SqzfTH6Iaawp235DJRVIZS2N+cxDdEhKxufC6aX/MVOofRtzAsGmEcQqWYt
         5ERGOdbaJp1itw1qIzfQUh+JLcAjur4jNg4sWYw5V/4qA09WNrkGIWGJPAm7UkbELFth
         O5Y+nvF+WVyVK0im9nRCrlbdkEMp9BZWj669wmcCdK2PJK8ECBNqVlldHpX4v+qjxoOp
         lYcoGNHCVpqfYHo3MCy2VyZRnJ7eQFqOf9jXQa3PNN5CFQV6PXJ1uIFlw0V9okWriudB
         TwB4Vw7UJihm1CwcZTxYI2x2F2nsF0BWBCKvlNV/j5sTQLnde27LbBiSN5SOv++SK/0p
         S8mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=+WVVm9hcoQebKnMQEz2CUXNeS0i4uoyXlCrD4W7Sr0Y=;
        b=WI5m3uyHUch7goP0PW/WOe6PGwCV9xNylT7F2Nb7DNYOl233SPBsNX37dfKh8F4Op0
         Co4vUT/7V+4rfvoDG4HqQe4BEGAbB0NRcMSHlr+qL0zPb1rxWynuholc20D2G5K0MmJ6
         3vhBJr7QkTs0CckC4kYEKyyAHfQ+XK1RoJMO8ex7IuHMrU4FG2XQNWrc17CIDxoxyB4B
         RNb3hvkH1/a9AYT7xLbaovrB3BUZ8/F6zPvX/nH9Fy47yIcP8tPRN3uTnsP81ySsdeER
         M1i0sDlf7JQKkaDfX2Os3Mc6PdNw/zsbIIsd3AAPNd07KWLj/JhloXv7OpIhbyMgZU9s
         dNWQ==
X-Gm-Message-State: AOAM532vck+cdxfRGYBFDW/jQ68dI9/ftnF1rbm+8BBxo/eK79tSIV8X
	LvARysmWbGHjGlZEX3ADPQA=
X-Google-Smtp-Source: ABdhPJyvXYy81hLj3UEhHeroA/LIfcCYk32cRQExNWN/ZtgSuCtg+aV3gMvcTrIshMT4Ye6IERCMhQ==
X-Received: by 2002:a05:6512:92c:b0:479:7a74:8427 with SMTP id f12-20020a056512092c00b004797a748427mr8940890lft.126.1654895627234;
        Fri, 10 Jun 2022 14:13:47 -0700 (PDT)
Received: from mobilestation ([95.79.189.214])
        by smtp.gmail.com with ESMTPSA id x15-20020a2e9dcf000000b0025572941cc0sm79014ljj.113.2022.06.10.14.13.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 14:13:46 -0700 (PDT)
Date: Sat, 11 Jun 2022 00:13:44 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Frank Li <Frank.Li@nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Simon Xue <xxm@rock-chips.com>,
	Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
Subject: Re: [PATCH v3 11/17] dt-bindings: PCI: dwc: Apply common schema to
 Rockchip DW PCIe nodes
Message-ID: <20220610211344.xpax4ao3m22dwsyo@mobilestation>
References: <20220610085706.15741-1-Sergey.Semin@baikalelectronics.ru>
 <20220610085706.15741-12-Sergey.Semin@baikalelectronics.ru>
 <1654866755.753412.1529404.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1654866755.753412.1529404.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_141350_182464_DFC51871 
X-CRM114-Status: GOOD (  21.38  )
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

On Fri, Jun 10, 2022 at 07:12:35AM -0600, Rob Herring wrote:
> On Fri, 10 Jun 2022 11:56:59 +0300, Serge Semin wrote:
> > As the DT-bindings description states the Rockchip PCIe controller is
> > based on the DW PCIe RP IP-core thus its DT-nodes are supposed to be
> > compatible with the common DW PCIe controller schema. Let's make sure they
> > evaluated against it by referring to the snps,dw-pcie-common.yaml schema
> > in the allOf sub-schemas composition.
> > 
> > Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> > 
> > ---
> > 
> > Changelog v3:
> > - This is a new patch created on v3 lap of the series.
> > ---
> >  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 

> dtschema/dtc warnings/errors:
> ./Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml: Unable to find schema file matching $id: http://devicetree.org/schemas/pci/snps,dw-pcie-common.yaml
> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dtb: pcie@fe280000: False schema does not allow {'compatible': ['rockchip,rk3568-pcie'], 'reg': [[3, 3229614080, 0, 3735552], [0, 4264034304, 0, 65536], [3, 2147483648, 0, 1048576]], 'reg-names': ['dbi', 'apb', 'config'], 'bus-range': [[32, 47]], 'clocks': [[4294967295, 143], [4294967295, 144], [4294967295, 145], [4294967295, 146], [4294967295, 147]], 'clock-names': ['aclk_mst', 'aclk_slv', 'aclk_dbi', 'pclk', 'aux'], 'device_type': ['pci'], 'linux,pci-domain': [[2]], 'max-link-speed': [[2]], 'msi-map': [[8192, 4294967295, 8192, 4096]], 'num-lanes': [[2]], 'phys': [[4294967295]], 'phy-names': ['pcie-phy'], 'power-domains': [[4294967295, 15]], 'ranges': [[2164260864, 0, 2155872256, 3, 2155872256, 0, 1048576], [2197815296, 0, 2156920832, 3, 2156920832, 0, 1064304640]], 'resets': [[4294967295, 193]], 'reset-names': ['pipe'], '#address-cells': [[3]], '#size-cells': [[2]], '$nodename': ['pcie@fe280000']}
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml

It's added in the framework of the patch:
[PATCH v3 1/17] dt-bindings: PCI: dwc: Detach common RP/EP DT bindings
of this series.

> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/patch/
> 
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
> 

> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade

Checked. No problem has been spotted:
[fancer@mobilestation] kernel $ pip3 show dtschema | grep Version
Version: 2022.5
[fancer@mobilestation] kernel $ yamllint -v
yamllint 1.25.0
[fancer@mobilestation] kernel $ make -j8 ARCH=mips CROSS_COMPILE=mipsel-baikal-linux- dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
  LINT    Documentation/devicetree/bindings
  DTEX    Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dts
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTC     Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dtb
  CHECK   Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dtb
[fancer@mobilestation] kernel $

-Sergey

> 
> Please check and re-submit.
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
