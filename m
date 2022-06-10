Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD94BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 13:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DC3ObNRyzjniAALhNOYmD4YPnFsNyx90yEaS/H7hfs0=; b=FIn6LNnqAQkzS1
	XfB+KgtVA4y1NGlHWZ2uLOnTTjxLg+dJpe9MdOh6qG5meNPUFOhXC+h9zi+GKNd360D1Q8fq+ZL6B
	x2Se8pK2XwirvzbnZbZyrmE+t+ejm3/eZ4OgrXsseU8fhN9Leu7X/TAQm4V6TJ23eKrY8oKhXb5tk
	J7W66gNEOYtvBnEneJyKPL+tkotRjZ1ML7HzBeC4C2PQDX7V5qnYYGba6RPOBFBDu5dcXFdfCFfbs
	dp3uQxYqown5aU/BZVSoLkDVED5cymn0n+cg5Uj+PkyfZ0tMlzbmrBotzYGkecivD4Vx3amt7l08p
	3tq2LTx7Av92m42wBI8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeRl-008JDc-0Q; Fri, 10 Jun 2022 13:13:05 +0000
Received: from mail-io1-f51.google.com ([209.85.166.51])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeRP-008J74-N2; Fri, 10 Jun 2022 13:12:47 +0000
Received: by mail-io1-f51.google.com with SMTP id r5so4192888iod.5;
        Fri, 10 Jun 2022 06:12:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=GUJQPqIBLKX/t4jWZnKHkjJZiTQ4T+t3dlD445+qEg8=;
        b=N+oz4bNxLELViQTnq/rOd4EVp7glJR7ISldu8Ti/DCypWRtM8SmcNlhZiBY0JndLeE
         P4uOMrjCKv2Dcx2Yto70Ezn7TifMf8EmhAwmyDcBE4+02BwaYvry1TN09lZdwS/bLgUJ
         UKkFc2WO722SHF1JvnLdK5MpIL1FHHO+EqVZKe4yEg4rKW5UgrrDXVT/XEz8xHlfThnf
         cOn7tS1ONJ+pMQaMx235FGA495OJZNg+tgYyx6RI40OveAeLxlSrK8twL1rPwylJIdR2
         c27MnjOr01nks36T6RWDXIcrVo4V2LsvqIspfG/qGbOYRZJqW5PtjaVdRTMGqA3R5TSy
         OHVA==
X-Gm-Message-State: AOAM5300BRvbcMl9QLsn068RocnZNdXd4u5qcFwgjzLL4X3mEjNLaS8L
	Hm4cN15OB9B87Z350lMjPg==
X-Google-Smtp-Source: ABdhPJzpXU+91NH1R+XxaxuT7R1s4GIE+oR2ZORwDbUcWvGs8HOPQcvwCCMc8f49vy0vBOWd3ZsDGw==
X-Received: by 2002:a05:6602:2b04:b0:669:5fa:12fa with SMTP id p4-20020a0566022b0400b0066905fa12famr21843526iov.178.1654866761402;
        Fri, 10 Jun 2022 06:12:41 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id m8-20020a0566380dc800b00331e38ccc4asm4368616jaj.51.2022.06.10.06.12.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 06:12:40 -0700 (PDT)
Received: (nullmailer pid 1529405 invoked by uid 1000);
	Fri, 10 Jun 2022 13:12:35 -0000
From: Rob Herring <robh@kernel.org>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: linux-kernel@vger.kernel.org, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, Serge Semin <fancer.lancer@gmail.com>, Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, Frank Li <Frank.Li@nxp.com>, Bjorn Helgaas <bhelgaas@google.com>, Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Jingoo Han <jingoohan1@gmail.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Simon Xue <xxm@rock-chips.com>, Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
In-Reply-To: <20220610085706.15741-12-Sergey.Semin@baikalelectronics.ru>
References: <20220610085706.15741-1-Sergey.Semin@baikalelectronics.ru> <20220610085706.15741-12-Sergey.Semin@baikalelectronics.ru>
Subject: Re: [PATCH v3 11/17] dt-bindings: PCI: dwc: Apply common schema to Rockchip DW PCIe nodes
Date: Fri, 10 Jun 2022 07:12:35 -0600
Message-Id: <1654866755.753412.1529404.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_061243_786047_DE32446D 
X-CRM114-Status: GOOD (  16.65  )
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

On Fri, 10 Jun 2022 11:56:59 +0300, Serge Semin wrote:
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
