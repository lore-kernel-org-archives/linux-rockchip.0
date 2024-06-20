Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0790C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 06:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5DUSRom18fKorNfM7nhPIx2utYM+omn4Bh4sCKUMt94=; b=lu2NOmpQwbFNLk
	WQU49am7VD1KHLg5Ue5gvWui3Z25U3V8EebnD7lDo30ZMPPT3IMV8YmRC9z/+qes97kWiPOT3SVgl
	nhyZ11WTa6rx2zAO8+l3e2Mo7q0aKJeTcKFpbWnSZmy6WxCsOigAAd+Uv6uSGAusXyd+evaC1Yd65
	y2/OCf8kJwpXr5dhUugpiwJ08eo9d7HYbmXsrBg9ppDkcLoYbyepHOaHGnwhVBWmOiHJtEMA0D3kM
	y987iZM8y2FeuBMrVgFLPR1Og/PBK+k5U1UKyyHczXqhp15XBIKMGdw4/VGc1nWzcSgvcITjb6kEV
	V0BIdFmk/TdsQDer0MxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKBCP-00000003mNg-0zeN;
	Thu, 20 Jun 2024 06:23:09 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKBCJ-00000003mMa-2hUW;
	Thu, 20 Jun 2024 06:23:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1718864576; bh=DM47QfH0OnPYYsBaUwpgRf2+2jamsLzfAMfcSGpafHw=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=dE+amQ/jE6lb3989A+35c/U3LqF132QheJhXd10NoItHaxRBfUhoeGHT0lblb9E2T
	 pA5e9M1yj19xOBnJ3b0OjVfVBRqNsfy6BPeKzCB0jQ3gxHnWIqmBV/n4hCsrfuGVrv
	 miTwGm2CzbESi2Rbz/zySAaZbccXaiQedMnHUqf0=
Date: Thu, 20 Jun 2024 08:22:54 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: arend.vanspriel@broadcom.com, kvalo@kernel.org, duoming@zju.edu.cn, 
	bhelgaas@google.com, minipli@grsecurity.net, linux-wireless@vger.kernel.org, 
	brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, nick@khadas.com, 
	efectn@protonmail.com, jagan@edgeble.ai, dsimic@manjaro.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] net: wireless: brcmfmac: Add optional 32k clock
 enable support
Message-ID: <4ynke3hcrkzowv63u43b55zidr55gzlnca6vvwrndvvpb5r57y@iberusehts5q>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Jacobe Zang <jacobe.zang@wesion.com>, arend.vanspriel@broadcom.com, kvalo@kernel.org, 
	duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net, 
	linux-wireless@vger.kernel.org, brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	nick@khadas.com, efectn@protonmail.com, jagan@edgeble.ai, dsimic@manjaro.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20240620020015.4021696-1-jacobe.zang@wesion.com>
 <20240620020015.4021696-3-jacobe.zang@wesion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240620020015.4021696-3-jacobe.zang@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_232304_288929_04C52891 
X-CRM114-Status: GOOD (  15.28  )
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

Hi,

On Thu, Jun 20, 2024 at 10:00:14AM GMT, Jacobe Zang wrote:
> WiFi modules often require 32kHz clock to function. Add support to
> enable the clock to PCIe driver.

There's also this approach https://lore.kernel.org/lkml/20240117160748.37682-1-brgl@bgdev.pl/

> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>  .../net/wireless/broadcom/brcm80211/brcmfmac/pcie.c    | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> index 06698a714b523..f241e1757d7e3 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
> @@ -3,6 +3,7 @@
>   * Copyright (c) 2014 Broadcom Corporation
>   */
>  
> +#include <linux/clk.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/firmware.h>
> @@ -2411,6 +2412,7 @@ brcmf_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  	struct brcmf_pciedev *pcie_bus_dev;
>  	struct brcmf_core *core;
>  	struct brcmf_bus *bus;
> +	struct clk *clk;
>  
>  	if (!id) {
>  		id = pci_match_id(brcmf_pcie_devid_table, pdev);
> @@ -2422,6 +2424,14 @@ brcmf_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  
>  	brcmf_dbg(PCIE, "Enter %x:%x\n", pdev->vendor, pdev->device);
>  
> +	clk = devm_clk_get_optional_enabled(&pdev->dev, "32k");

If you do this, you need to update the DT bindings. Current ones don't have 32k
clock.

> +	if (IS_ERR(clk))
> +		return PTR_ERR(clk);
> +	if (clk) {
> +		dev_info(&pdev->dev, "enabling 32kHz clock\n");

The driver has its own debug logging infrastructure (brcmf_dbg).

Kind regards,
	o.

> +		clk_set_rate(clk, 32768);
> +	}
> +
>  	ret = -ENOMEM;
>  	devinfo = kzalloc(sizeof(*devinfo), GFP_KERNEL);
>  	if (devinfo == NULL)
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
