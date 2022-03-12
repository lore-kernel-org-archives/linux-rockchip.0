Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FD4AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Mar 2022 03:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJiAmZToMnP8WYV+dke+lydfgy7B8N3VEeBq/+lZTfc=; b=W0x5BFHKLK81tp
	NXTlerldvkoRyyB5T9O0vDI2X1xw8ppJn8us/lD+WK6123hGAeVNAScb/duB9Qqxghc+D1h2aTh0T
	iX+NzjODVJYlvFTywSD4w7s987snWZ17jOMiucDftHipTn6DFykcRgWA/1RUMcqoLq8DktDZ7DYnA
	n1gtNlB87ZTtxfWcZFtJ5LJGHVkgSSWj3LmvlWcCCQnK9k1PTZu/ckZvK/2F8cCGF7ky4xa1L08Xj
	ux0j2Zt+r6+W9qF0VHSeNw+J/1dqGxAxbqL1I2rZ6uN2QjGRRj2TC/T6XQ6mpeZBo9aFl9IK5dvdT
	WgXFmkPgHCnkUqorPEDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSshJ-000gvu-NL; Sat, 12 Mar 2022 03:45:41 +0000
Received: from mail-oi1-f177.google.com ([209.85.167.177])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSsh7-000gsz-C7; Sat, 12 Mar 2022 03:45:30 +0000
Received: by mail-oi1-f177.google.com with SMTP id w127so11510187oig.10;
 Fri, 11 Mar 2022 19:45:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BwjHEM1ve6vauVKyKa9ZUyCUyEFXM5iLr7KYRJbKfko=;
 b=GdQn5uNdj1CAweFpNJTMqQrwO7IGsO/NryXKklncuPzc2v+QXtIXMv5+eSCITA6whR
 RKxaluJ9DliUoqlCYJqvz5jD+Z1optCvvvlFxeeU/7rrGc3dq+153rMgWxuL7Wawe49V
 easkZ1SBP1k2bAIka2HZ1xxpGX97ivLchmH0Ggt97VgB4VQeOOF+1030ZiFBcuoSDpbg
 hjekbBdhNDjrsdDRuu40q+DjkomNHwWIZd3JzwZE81ap0Nun//jNmzzw77LRrhwPoCO2
 DcLLKH4o3YHTBSiwFPJH/CBiIcDnAi9HiwIa2bhPS+s370hV1VvneSfr2G+p/mDGF4Er
 M+XQ==
X-Gm-Message-State: AOAM530YQfSt8nghhg/ZZwK/vcf4jBBMtTh69gRMBezbGx6udgjdeVzq
 4z11sOZJqK2oLjAoCVUquQ==
X-Google-Smtp-Source: ABdhPJyN4Me6aXpEWsG65Sb5BfWNEBIhIM8S49iH8KYbautApP4UfXutmtJ97KxAWUQ7Amb9REJqQg==
X-Received: by 2002:aca:34c1:0:b0:2ec:8ee8:90c7 with SMTP id
 b184-20020aca34c1000000b002ec8ee890c7mr3951666oia.267.1647056727702; 
 Fri, 11 Mar 2022 19:45:27 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 67-20020aca0546000000b002d46e151b9bsm4645324oif.18.2022.03.11.19.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Mar 2022 19:45:26 -0800 (PST)
Received: (nullmailer pid 730303 invoked by uid 1000);
 Sat, 12 Mar 2022 03:45:25 -0000
Date: Fri, 11 Mar 2022 21:45:25 -0600
From: Rob Herring <robh@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-arm-kernel@lists.infradead.org, soc@kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Viresh Kumar <vireshk@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Frank Wunderlich <frank-w@public-files.de>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-ide@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Peter Geis <pgwipeout@gmail.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Rob Herring <robh+dt@kernel.org>, Russell King <linux@armlinux.org.uk>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v6 1/6] dt-bindings: ata: ahci-platform: Convert DT
 bindings to yaml
Message-ID: <YiwXVRPJITCOiCoj@robh.at.kernel.org>
References: <20220311210357.222830-1-linux@fw-web.de>
 <20220311210357.222830-2-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220311210357.222830-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_194529_464692_8C71C6F6 
X-CRM114-Status: GOOD (  20.65  )
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

On Fri, 11 Mar 2022 22:03:52 +0100, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Create a yaml file for dtbs_check from the old txt binding.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> 
> v6:
>   - fix indentation of examples
>   - add compatible marvell,berlin2-ahci
>   - change maximum of ports-implemented
>   - add select to exclude qcom compatibles
>   - drop marvell,armada-380-ahci
>     it is not handled in the ahci-platform.c but ahci_mvebu.c
>     and incompatible due to missing phys/target-supply
> 
> v5:
>   - change subject
>   - drop brcm,iproc-ahci from standalone enum
>   - fix reg address in example 2
>   - move clocknames next to clocks, regnames to reg
>   - drop interrupts description
>   - drop newline from dma-coherent
>   - drop max-items from ports-implemented
>   - min2max in child phys
>   - fix identation for compatible and sata-common
>   - add additionalProperties=false for subnodes
>   - pipe for paragraphs and newline after title
>   - add maximum for ports-implemented (found only 0x1 as its value)
>   - add phy-names to sata-ports
> 
> v4:
>   - fix min vs. max
>   - fix indention of examples
>   - move up sata-common.yaml
>   - reorder compatible
>   - add descriptions/maxitems
>   - fix compatible-structure
>   - fix typo in example achi vs. ahci
>   - add clock-names and reg-names
>   - fix ns2 errors in separate patch
> v3:
>   - add conversion to sata-series
>   - fix some errors in dt_binding_check and dtbs_check
>   - move to unevaluated properties = false
> 
> arch/arm/boot/dts/qcom-apq8064.dtsi had caused errors for clock-count
> ---
> 
> have not added reviewed-by from v5 because i have changed patch too much
> 
> ---
>  .../devicetree/bindings/ata/ahci-platform.txt |  79 --------
>  .../bindings/ata/ahci-platform.yaml           | 182 ++++++++++++++++++
>  2 files changed, 182 insertions(+), 79 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.txt
>  create mode 100644 Documentation/devicetree/bindings/ata/ahci-platform.yaml
> 

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
