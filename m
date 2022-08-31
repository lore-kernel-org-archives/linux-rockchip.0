Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D067ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 21:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60Z94bvx0hd3WE319jQUeHV/rMFkklU2gyG07EZ/1WQ=; b=ioNnnTx0DKq2Ds
	egMdMCxc3tBms6LHxa2HVFzKy54nfwmzirGsJ6Pwl57lUsHW3nztYIE31FcpWIOqxt/3FnsPmqVZg
	IxlEHe/UdY+CSzGzRCT4kNmbesqNtPoVXFEnyW5FkGdjLeeR+ptjQNSyAEJkL7rFARu/VhDeaX4An
	G+mll5Qi7ga0HZaB/wksN81AqfZu4ekXEKPGFntcV+4O4Kuo1hSeTXn8/Lf0JI5siVxTmuv6RNLAG
	Dg7NdAz6TffzBZ9XhlFbrs9Y6CHOVdovOM9Jy3Z2rZIRWs0DuGVAP8McPY8ozpWu5l3g40elJ1Mf1
	j1MyuIkKmDNQRMBXUbYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVEf-008Jak-9d; Wed, 31 Aug 2022 21:26:57 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVEU-008JY0-5D; Wed, 31 Aug 2022 21:26:47 +0000
Received: by mail-ot1-f53.google.com with SMTP id 92-20020a9d0be5000000b0063946111607so11127609oth.10;
        Wed, 31 Aug 2022 14:26:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=rIyadyeq6YLRftLRyrN0QiirUdnHJN+op5RTIIc+np8=;
        b=6Wj26V783NXC8koFBUB/BxaRmnf6pPl2TAVuhyNgiTM/amjF356w0XuH4dvnB4yTGc
         5OBuJrC42+jZEV8myh0v9Vd3bkdgsyOowvWKOagDhals7ct+n7X9aiBR/HIsSDMTTTSS
         OKQigomNPZYk/7ghYK7qeHtZlvNXwuHgCd1i8/+WcNhZQf/ixi9WvsnZMd5QI3AxwmJb
         jpdSkN9TxjMGFU2QaoYr8s30RqA9d7wxZuV30QKtXIVoHwwGLf6HlDJhtH4M0h409QA2
         6Z7sIgC26a1jHVpx7aQ5kw0sGmCh1XLiAmQL4jtR484T9WqSDYGjhxP+D0IHwpSXoExr
         vktQ==
X-Gm-Message-State: ACgBeo0m2oT0bqWQjRARPKBxf5QlJF7iky+S4d55TAafmqp/QQz0MFZ/
	4Vp3BEwMYtQJaIKOJpEqbA==
X-Google-Smtp-Source: AA6agR7h7g/4sGiJzr8LtSk06Zhc0E+hGHG6a643D5LCN9/i1HNmUyxP4sw3/5p5W25yVMpjgOueGw==
X-Received: by 2002:a05:6830:929:b0:63b:25ba:dfe4 with SMTP id v41-20020a056830092900b0063b25badfe4mr8368108ott.311.1661981203420;
        Wed, 31 Aug 2022 14:26:43 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o139-20020a4a2c91000000b00435ae9a836asm8623117ooo.15.2022.08.31.14.26.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Aug 2022 14:26:43 -0700 (PDT)
Received: (nullmailer pid 279436 invoked by uid 1000);
	Wed, 31 Aug 2022 21:26:31 -0000
Date: Wed, 31 Aug 2022 16:26:31 -0500
From: Rob Herring <robh@kernel.org>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, Serge Semin <fancer.lancer@gmail.com>, Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>, Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Frank Li <Frank.Li@nxp.com>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 13/20] dt-bindings: PCI: dwc: Apply common schema to
 Rockchip DW PCIe nodes
Message-ID: <20220831212631.GA277851-robh@kernel.org>
References: <20220822184701.25246-1-Sergey.Semin@baikalelectronics.ru>
 <20220822184701.25246-14-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220822184701.25246-14-Sergey.Semin@baikalelectronics.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_142646_215165_D1C4E67B 
X-CRM114-Status: GOOD (  15.61  )
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

On Mon, Aug 22, 2022 at 09:46:54PM +0300, Serge Semin wrote:
> As the DT-bindings description states the Rockchip PCIe controller is
> based on the DW PCIe RP IP-core thus its DT-nodes are supposed to be
> compatible with the common DW PCIe controller schema. Let's make sure they
> are evaluated against it by referring to the snps,dw-pcie.yaml schema in
> the allOf sub-schemas composition.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> 
> ---
> 
> Changelog v3:
> - This is a new patch created on v3 lap of the series.
> 
> Changelog v5:
> - Apply snps,dw-pcie.yaml instead of the snps,dw-pcie-common.yaml schema.
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Shouldn't this come before/after patch 7?

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
