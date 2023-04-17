Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EFBCC77B72
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 23:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rltsa2HXIFONegJJFMLkgLed5QBZTDHOZOFYAn3GODk=; b=H7hTNe2inBtRgZ
	NDcXxkVmp00zP+IezwhISEGb+KTmdbPm+Y0XPfzhl9hD+7TaN8RB0Qj5PguLeR3XxOXybyyadgxLh
	lh6COaMAmS82sFsJwp4yRxpsHJUcAkL9+uZrlIF58DSsiOqukZEJpDDvk2h2dq96c26nFeLfIIV98
	VvEE8UEdAFfKFnltohk6yDX8mKR2r+5D2ZkvCXafWWpJxtDDMgIKFIqoFtXK2m/BR5lK7aaW5b35Z
	GWa4ELQQxCbymZqcaU2tSbsSEmpCDrqK1g//fjheOwP99u6I8Aojo631sVU0SlSThQ+eWM8EmXYLt
	SnERTYRw1xl9D6+zJ72A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poYdR-000R3m-2g;
	Mon, 17 Apr 2023 23:51:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poYdN-000R2V-2x;
	Mon, 17 Apr 2023 23:51:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 49A7561245;
	Mon, 17 Apr 2023 23:51:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68D67C433EF;
	Mon, 17 Apr 2023 23:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681775504;
	bh=DFQGJWdyBU1izSaYheQ9L9VdeF02eDdqUuoEMtq36cM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QatFTR85OhMc/JCVfgZaWt/qSvJU4UCQL0jSEL+JNYThCMNTza5rytAdJz8wW7skl
	 SuB5zpmqrHXzApwx1Q6INcm4PN8Ul8zEsds1s5vw7kybSglExYBQi7WDT0bi2tX5Z9
	 n6qnJMEDEOk6qEzN46YiAcTT8DTh0aJejXsC5xt+hDgv//oNwcE74oM1B8ybkbMYoh
	 vTSmFC7uFT5qUlgAiGniJVdLI8ZqlVYfJB8PCwymn3P4DtlipcG4KUS89bPRBWnZhl
	 SQ+1l0BNyZ1wZvRXyL0mkUrkHjt86MpiijuXMHi+xo+MO2IljgK25iUXL90lhQxq5R
	 jTE3CKTzTp6AQ==
Message-ID: <cf47e154-1a48-58a9-b139-95b51b87d356@kernel.org>
Date: Tue, 18 Apr 2023 08:51:40 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v4 11/11] PCI: rockchip: Set address alignment for
 endpoint mode
Content-Language: en-US
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>, alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com, Shawn Lin <shawn.lin@rock-chips.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>, Brian Norris
 <briannorris@chromium.org>, Corentin Labbe <clabbe@baylibre.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Hugh Cole-Baker <sigmaris@gmail.com>,
 Judy Hsiao <judyhsiao@chromium.org>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
 <20230417092631.347976-12-rick.wertenbroek@gmail.com>
From: Damien Le Moal <dlemoal@kernel.org>
Organization: Western Digital Research
In-Reply-To: <20230417092631.347976-12-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_165145_992893_4BA87080 
X-CRM114-Status: GOOD (  18.54  )
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

On 4/17/23 18:26, Rick Wertenbroek wrote:
> From: Damien Le Moal <dlemoal@kernel.org>
> 
> The address translation unit of the rockchip EP controller does not use
> the lower 8 bits of a PCIe-space address to map local memory. Thus we
> must set the align feature field to 256 to let the user know about this
> constraint.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>

I think this one also needs the tag:

Fixes: cf590b078391 ("...")
Cc: stable@vger.kernel.org

And you forgot to add you Signed-off-by tag (when sending someones else patch,
you must add your own SoB tag after the author's tag).

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index edfced311a9f..0af0e965fb57 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -442,6 +442,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
>  	.linkup_notifier = false,
>  	.msi_capable = true,
>  	.msix_capable = false,
> +	.align = 256,
>  };
>  
>  static const struct pci_epc_features*


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
