Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52D12C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 02:29:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D470A64EE6
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 02:29:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D470A64EE6
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3PTKL08KVijp9BlK4/BZ8O6IuxjSTXH/5iURv0DH43g=; b=yg+bmxbbhsuyzyvR32M8JrNDz
	+St+27Zkucefwn+ebp43Tq3UI5hqtmDeLJyPJpP5l4PoK8Xs9FJMSvjZv7uQg7a1qlkIo+qhj9R44
	34+LRsh60p+obVnxFn3aMUG58SEy/g37HIogicNAtLQeDnUGUcA4NG99R1BiRe2sbemrrYDzrhRPh
	0w4GODwPyiobX55lVMz5yDih9FCfGtpc/YBxKNJjztXOIqF3DPute75sHr6p+NpatSOBGwi0JFbLO
	UFCzrvxqVIUmuqjMpB5f4f1hnRAWvwNGWlDAQnnDNbASFExWl2cwABxX0oo/V1LdTVS9LWM+mQsRh
	BKmM6jxyQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lE0y6-0000mX-Sb; Mon, 22 Feb 2021 02:29:02 +0000
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE0y3-0000mB-OQ
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 02:29:01 +0000
Received: by mail-wr1-f44.google.com with SMTP id l30so1757676wrb.12
 for <linux-rockchip@lists.infradead.org>; Sun, 21 Feb 2021 18:28:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YuSXhHVkvdpvKkmvEHEbBP8ABWSLjzYRJOtjdQKRU14=;
 b=hOPExIUXSvtMHWqxMAjOx7sGVz7kEcRk1B17qxsFnoKmPcaJefrIOLgyx7+YcYW7nn
 iHhjUWh8DHjIx46Hp+K3phNbj2DoNB3TlSmR3tZm4+ELiCxfSJPFVtPXix7RI92fFPMI
 iuC+NgHOfPvuwoSDn9c9R7vOKtfLj1a59azO9s0G4/wym1KufD4hNJfnX7T54DmL6QSt
 aeXhy3zBlsRi4IA7HTTuYZCYrf9N5InCeXilmohiHiFRHX4CwWuvmhCrFRiGp7nqRn7d
 3H/RlnNLJW2igw2YlIexhB9ycuhmOhfws4/rTqL3rlvQBRs2zRnTAGsZ+3swm22jHuNa
 y+oA==
X-Gm-Message-State: AOAM5304OtzAMlkBNIbBZ5T8WspJ6m/LFoYV/xuowAbBwX+9GhsXI4v1
 iZ8uMMCjMTKAZ+rGKzO9GgU=
X-Google-Smtp-Source: ABdhPJzjkMmOUD3BxfW4ijeEEW5ctadh2zzf9bje2PH+jq4NNLhgJ+ZUZ+b3mX/y8o+Xqi+FhyiN3Q==
X-Received: by 2002:adf:8bd2:: with SMTP id w18mr19479969wra.204.1613960938470; 
 Sun, 21 Feb 2021 18:28:58 -0800 (PST)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id o14sm25602426wri.48.2021.02.21.18.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 18:28:57 -0800 (PST)
Date: Mon, 22 Feb 2021 03:28:56 +0100
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH v4 2/2] PCI: rockchip: add DesignWare based PCIe controller
Message-ID: <YDMW6OmnnrIgt1RR@rocinante>
References: <20210127022406.820975-1-xxm@rock-chips.com>
 <20210127022519.821025-1-xxm@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127022519.821025-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210221_212900_452497_6BE19D4A 
X-CRM114-Status: GOOD (  22.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Helgaas <helgaas@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Simon,

The subject should start with a capital letter.

[...]
> pcie-dw-rockchip is based on DWC IP. But pcie-rockchip-host
> is Rockchip designed IP which is only used for RK3399. So all the following
> non-RK3399 SoCs should use this driver.

You might need to wrap the long line in the above.

The commit message above could use some polish in terms of wording and
adding more context - what are you adding, what is this driver going to
support.  For example, what are the "all the following" SoCs?  Should
there be a list?  Or did you mean "all the other (...)", etc.

[...]
> +config PCIE_ROCKCHIP_DW_HOST
> +	bool "Rockchip DesignWare PCIe controller"
> +	select PCIE_DW
> +	select PCIE_DW_HOST
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on OF
> +	help
> +	  Enables support for the DW PCIe controller in the Rockchip SoC.

Perhaps replacing "DW" with "DesignWare" would be better.  Also, do you
want to mention here - for the sake of the future user - that this not
intended to support RK3399 as per the commit message.

[...]
> +/*
> + * PCIe host controller driver for Rockchip SoCs

A nitpick.  Missing period at the end of the sentence.

[...]
> +static int rockchip_pcie_link_up(struct dw_pcie *pci)
> +{
> +	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
> +	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
> +
> +	if ((val & (PCIE_RDLH_LINKUP | PCIE_SMLH_LINKUP)) == 0x30000 &&
[...]

A suggestion.  Would it make sense to add a definition for this
open-coded value of 0x30000 above?

> +static void rockchip_pcie_fast_link_setup(struct rockchip_pcie *rockchip)
> +{
> +	u32 val;
> +
> +	/* LTSSM EN ctrl mode */
[...]

Does this comment above stands for "LTSSM enable control mode"?

> +static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
> +{
> +	int ret;
> +	struct device *dev = rockchip->pci.dev;

These two variables should swap place to keep order of use, and to match
how it has been done everywhere else in this drivers.

> +
> +	rockchip->phy = devm_phy_get(dev, "pcie-phy");
> +	if (IS_ERR(rockchip->phy))
> +		return dev_err_probe(dev, PTR_ERR(rockchip->phy),
> +				     "missing phy\n");

I would be "PHY" here.

> +	ret = phy_init(rockchip->phy);
> +	if (ret < 0)
> +		return ret;
> +
> +	phy_power_on(rockchip->phy);
[...]

We should probably check phy_power_on() for a possible failure.  Some
platforms also clean up on a failure from phy_init() and phy_power_on(),
but I am not sure if this particular platform would require anything.

[...]
> +	/* DON'T MOVE ME: must be enable before phy init */

It would be "PHY" here.

> +	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
> +	if (IS_ERR(rockchip->vpcie3v3))
> +		return dev_err_probe(dev, PTR_ERR(rockchip->rst),
> +				     "failed to get vpcie3v3 regulator\n");
> +
> +	if (rockchip->vpcie3v3) {
> +		ret = regulator_enable(rockchip->vpcie3v3);
> +		if (ret) {
> +			dev_err(dev, "fail to enable vpcie3v3 regulator\n");

It would be "failed" here.

[...]
> +static const struct of_device_id rockchip_pcie_of_match[] = {
> +	{ .compatible = "rockchip,rk3568-pcie", },
> +	{ /* sentinel */ },
> +};

We could probably drop the comment about the "sentinel" from the above.

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
