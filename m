Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ABEEC05027
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 01:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zQ/RIdN+lVmjve6JkkC9Ez7azj6NcdnH0Y3NosAJP+8=; b=XyEe+7fXxxqKuo
	iWC8Oq7mmcjkYdNiWddAoPynO1IVX2K1vRt3TpLv4N4nEf542Dn/2CBjUiM6mpnymT+eom6offMcE
	epV1Oc15voTI42HszMXqlz/3r0F57QvjM43JGYrpZBVOIaniJA6VtjoMfFy8DzIZf4zH8Mu6FXMHY
	UWz7avFB7CpIzi7znELl6u0SXmwoBBZr5UgpBjGG6xoJulAd6RJZyAKNuI18jnSiJ0jGNMwreWQCY
	Rtd6ahqEVfJInKLEjVtclqwSZBcNLbghGAcCViRlP/ioZz/qVakLIjP2oxzBKDfnr9WuEPTWWgVkt
	tGgECLzMHcTEsD23+pLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6m8-004IPz-0c; Wed, 15 Feb 2023 01:40:00 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pS6ly-004INF-Jw
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 01:39:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1676425190; x=1707961190;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=oy+5bs8bztFCfWMEixVu7mADVC2yPYRnwRT4aa/6byw=;
  b=NaNt4TV6Mrs7WEIfN0TEGi5xTpVipwrtSB8+A+e9Xkk8beaC48FHH7dz
   oqJv/mlPPlVi8hTFVWU4EPOGVR5kjTrZyisWlqV8020xk4VOsTukMTDS5
   1Ti5faHBTrf/XmSSjTmCZ+rz2D4Vsc+2JeaH4f4VT4si2TJULR2dNksXl
   YVtJ+91sTUniy+YgVd0mfjRRs2YnLMNVsMe2ndghqJqqBr/8qRMRQoAog
   t+OYQvTjVmohfx896DQLLEyHDZB8owQgmQxa2F12I4ig6ce1rCDLHQGZH
   cC+9efeFQPqyasa4OVVCZ/RQbW4JtHBfm5CmNwekIRmp8dPxBQEgHmD4t
   g==;
X-IronPort-AV: E=Sophos;i="5.97,298,1669046400"; 
   d="scan'208";a="223117984"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 15 Feb 2023 09:39:46 +0800
IronPort-SDR: AmVJiK581BJ3UTQgtIidsCq05pEY1yqXQc6S0fyGNhPq4sbAh8i6ym2lv9nSTMI/cMUPUod9WM
 r5rW+mF/Waw+/KaTtnTyiVH1Vg17Y0a9NGPxYc9WM1fuWPfWzAq2hFx0gL8DQAjEJ+xNKUne1e
 WAjZHciNQMSoNSXm4nhoAdgKsdQql4lfVbWlkhxRQJylHEGMSzga+Ts2niFbWMZvBDzgsUIKFb
 tojxgClGdM//FeO/k4/RQgspGzQjjY5gHdfP81EgG+4apWcOEdIZA2/f5KJAhb4lZYDbBHxB7O
 6TI=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 16:51:08 -0800
IronPort-SDR: cyGUFwcuCZgF/kn88bi6QOfvTIaApfQfC/KezqpHRztLoW/CjtwgGEjJheiT6g8AGKaPChERJv
 N0UagV47KxhTzDZc1ANYh7jKXTcG/5P3QJ7VNhEZKJv6NC8jibL3jEIHfQiAjS7oUkEV047oRg
 fELjn+LuWMsIwVLDzDMSuF3QgxkC9OYpfq5iO2/RajSY/NNKNZCNclHemO8wTKDf2PVwuyGJXV
 XTck5gooXcn46suWuTShyh7N6YHUH/Yhm2MAOQj8+zbk0lUUKaFqBO4RWivFNttJYTMTpdl+qf
 qqw=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
  by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 14 Feb 2023 17:39:46 -0800
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4PGgjs3rgWz1Rwtm
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Feb 2023 17:39:45 -0800 (PST)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
	reason="pass (just generated, assumed good)"
	header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	opensource.wdc.com; h=content-transfer-encoding:content-type
	:in-reply-to:organization:from:references:to:content-language
	:subject:user-agent:mime-version:date:message-id; s=dkim; t=
	1676425184; x=1679017185; bh=oy+5bs8bztFCfWMEixVu7mADVC2yPYRnwRT
	4aa/6byw=; b=fOcVMEdSFlGAd1ybZTpNogWSvYjl6ZCDZG1CJdrrh3tdQynF8wa
	MiE+19cVjiqq46ifzKZt3mxvuVEwCLksA7+QuHAQFOrZXLb3FSsKJ9slXisXT5RL
	XtBXMPaA9sCvCGH4/YoQC/LBjVRj/wkb8gVLj5pjWMOFbRu7bhcOw2qStLyVJbNf
	An1Mz9pv71TC3lt6OYaeHptV0N2JoQwSvZc2ceRcyXlNadb74ugk8Bi6Da47/Iq1
	SX01+63gwt+kDdCYfffcA0zaZJo/RUHyNng7i880SK1HA1qWSrszc+APpciLlVrt
	aaI4vSIi1tGdYbKPTNcod6fNrykE32mZZPQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
	by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id dTX6zVCiBCmX for <linux-rockchip@lists.infradead.org>;
	Tue, 14 Feb 2023 17:39:44 -0800 (PST)
Received: from [10.225.163.116] (unknown [10.225.163.116])
	by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4PGgjn1BCDz1RvLy;
	Tue, 14 Feb 2023 17:39:40 -0800 (PST)
Message-ID: <ebbddcfa-99e5-efda-0eab-fbd61a33e2c3@opensource.wdc.com>
Date: Wed, 15 Feb 2023 10:39:39 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 9/9] PCI: rockchip: Add parameter check for RK3399 PCIe
 endpoint core set_msi()
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, rick.wertenbroek@heig-vd.ch,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-10-rick.wertenbroek@gmail.com>
From: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Organization: Western Digital Research
In-Reply-To: <20230214140858.1133292-10-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_173950_678232_BBEC5CD1 
X-CRM114-Status: GOOD (  25.29  )
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

On 2/14/23 23:08, Rick Wertenbroek wrote:
> The RK3399 PCIe endpoint core supports only a single PCIe physcial
> function (function number 0), therefore return -EINVAL if set_msi() is
> called with a function number greater than 0.
> The PCIe standard only allows the multi message capability (MMC) value
> to be up to 0x5 (32 messages), therefore return -EINVAL if set_msi() is
> called with a MMC value of over 0x5.
> 
> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index b7865a94e..80634b690 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -294,6 +294,16 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
>  	struct rockchip_pcie *rockchip = &ep->rockchip;
>  	u32 flags;
>  
> +	if (fn) {
> +		dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
> +		return -EINVAL;
> +	}

Checking this here is late... Given that at most only one physical
function is supported, the check should be in rockchip_pcie_parse_ep_dt().
Something like:

	err = of_property_read_u8(dev->of_node, "max-functions",
                                  &ep->epc->max_functions);

        if (err < 0 || ep->epc->max_functions > 1)

                ep->epc->max_functions = 1;

And all the macros with the (fn) argument could also be simplified
(argument fn removed) since fn will always be 0.

> +
> +	if (mmc > 0x5) {
> +		dev_err(&epc->dev, "Number of MSI IRQs cannot be more than 32\n");

Long line. Please split it after the comma.

> +		return -EINVAL;
> +	}
> +
>  	flags = rockchip_pcie_read(rockchip,
>  				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
>  				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);

Another nice cleanup: define ROCKCHIP_PCIE_EP_MSI_CTRL_REG to include the
ROCKCHIP_PCIE_EP_FUNC_BASE(fn) addition so that we do not have to do it
here all the time.

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
