Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E4CBC6FA83
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Sep 2022 19:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTnHBBZBCybBzK0kbUcasNEQmAvzR1p1l6e2LdKVUXs=; b=tm37JzCHRyhsOY
	PaBeq6qgU+WglSgjlAnCwkldMTjaQvaStbYS44Cgcqw/jgRHE1JZjnjdWoMNI9prG3CTBDrizU2bs
	mpJWQfnfsCpRGsKb9108FtMbzjXw4FZF9y1WFKDB6nhSBMsIOxTU9YCXwmSFHFJLjV+5nZi1Fty4S
	GBShhTwXN+Llf1S9KkjHeUfyhnppIneHYVBGzN1LyvJ2/076MnCdSQ3gquDzwOCRYC8WxqDhvzING
	fZOigcgpH2r9xMWksr9dCetbxAA2f0mAP0WIQoXurtfBsekvTprbkHJPFckNC1TuQ5/sty20PiREh
	1LBWKOG64tz56RreLLMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXSKp-0040be-02; Sun, 11 Sep 2022 19:09:39 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXSKd-0040XR-8C; Sun, 11 Sep 2022 19:09:28 +0000
Received: by mail-lj1-x230.google.com with SMTP id a14so6098847ljj.8;
        Sun, 11 Sep 2022 12:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=tCTaMrborU0W8DBPmUqi2wECvse4LZM0hNK6zHRPblk=;
        b=CQOG14kLShfz067g8CLXUqGTlYcBnrmTafneZhZRjF2M/dyQkoyardlfBdPjguD/2z
         NL+h0t1dDpd/yFZsT/Xq5JnnnnJdgBJ7I0+JvNtbJsOJbG/B55EM+FyfeRL7BZ5Lu3Yk
         E8PPiLDrfUZ0IvfUQRBdy1vhAMUTpTVVcRS/axT57tcF1SXjSSCqOs+4W86pZrqbDrGs
         e7BshBNz8kNV6FY0SivQ4al94xoofoQTguU8B1QsoWjOz1EddLS6zFMB1GXmJbTVL60l
         ZkZYCCahkdQO/FzXWpRZRtnboYAkCGwJOJgDEPUrI/rjliXrYmEo/khE5dld112B+QdF
         fiVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=tCTaMrborU0W8DBPmUqi2wECvse4LZM0hNK6zHRPblk=;
        b=E+Pd6Y5NNXiY71LZcF5Eik6D0SKjkeC85nqKpTY5OQHYZ3yvTtDQFWhfzdZlMhYW/v
         i5wpQaENXEZGESwTCUdgOIZCaRFFzsumhhObwgNfrUoy6YyJJoTpZVzrerh3+65S1T/5
         6RWozqZPZUIu0vniqCOj1JYmBTvit5UopV/li4ea/DAUifNlCURmG4WMOgdgR+pgb1Tf
         1c95S1rxZqpsg8ONQ/7e13JDQgmTZ0L/tPJCBX/MOkjhOSs8PpEB1fk2xvpoXyX0jmG2
         h4QPgChKRItXxS8vY2wtA1RM6SgfDwnxWjhz9H1tq5YUYjrJWWxf6Xy0RuthWGqrGFo/
         NrMA==
X-Gm-Message-State: ACgBeo3A/HpZGQc0iTaFEohyJZIvaR0aBplsgBnmD3HQuYmBv91Yb/hB
	oFu3h1iYTG52rG9sh8IaoI8=
X-Google-Smtp-Source: AA6agR6aFTDeIPxByx6Mn+MttrU/7Yrh3SmMHHG0l9rhKcA/COwzC2Q90BLB8vsDYVUwm2G+6umORA==
X-Received: by 2002:a2e:9c1a:0:b0:26b:2bf7:9154 with SMTP id s26-20020a2e9c1a000000b0026b2bf79154mr5398729lji.417.1662923361212;
        Sun, 11 Sep 2022 12:09:21 -0700 (PDT)
Received: from mobilestation ([95.79.140.178])
        by smtp.gmail.com with ESMTPSA id s9-20020a05651c048900b0026aca137046sm737794ljc.120.2022.09.11.12.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 12:09:20 -0700 (PDT)
Date: Sun, 11 Sep 2022 22:09:18 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>,
	Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
	Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Frank Li <Frank.Li@nxp.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 13/20] dt-bindings: PCI: dwc: Apply common schema to
 Rockchip DW PCIe nodes
Message-ID: <20220911190918.foo2ccfmo4fhyyac@mobilestation>
References: <20220822184701.25246-1-Sergey.Semin@baikalelectronics.ru>
 <20220822184701.25246-14-Sergey.Semin@baikalelectronics.ru>
 <20220831212631.GA277851-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220831212631.GA277851-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220911_120927_451101_D9942AD9 
X-CRM114-Status: GOOD (  18.78  )
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

On Wed, Aug 31, 2022 at 04:26:31PM -0500, Rob Herring wrote:
> On Mon, Aug 22, 2022 at 09:46:54PM +0300, Serge Semin wrote:
> > As the DT-bindings description states the Rockchip PCIe controller is
> > based on the DW PCIe RP IP-core thus its DT-nodes are supposed to be
> > compatible with the common DW PCIe controller schema. Let's make sure they
> > are evaluated against it by referring to the snps,dw-pcie.yaml schema in
> > the allOf sub-schemas composition.
> > 
> > Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> > 
> > ---
> > 
> > Changelog v3:
> > - This is a new patch created on v3 lap of the series.
> > 
> > Changelog v5:
> > - Apply snps,dw-pcie.yaml instead of the snps,dw-pcie-common.yaml schema.
> > ---
> >  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 

> Shouldn't this come before/after patch 7?

It must be applied after the patch
[PATCH v5 11/20] dt-bindings: PCI: dwc: Add clocks/resets common properties
and after the rest of the resource-related patches submitted before
that one.

-Sergey

> 
> Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
