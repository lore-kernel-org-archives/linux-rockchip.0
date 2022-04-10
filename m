Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8183C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 16:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3U5xTyZIo5c99iVoM/dHjewFV1sUHEzsz9bke1NKpj0=; b=OEHLWP5K84NmZt
	kaczrjL54xASQ7mPGqtS6AtUpWuVfs6xVP3iXf5S1T6Rj9CWEaEcxzwNCK9qKhA6oOrcX2O6NlN27
	RfTr6fGFVv5cx9laXcd/LD/Dc8YsU3SMcMjEaxwwwhjjW+GpwDLC6NM4pyiRLatwFbdSO0uqXQ984
	yRxQLxtFQVN+oGTCYhVRLhX1WQ4NLejbZmrO9I4xFPnXP+nehU8E1diOPyA/NPVjQi1E2XePeqSWg
	uDZ9YJurARNdIh4Vc12Ci6yLeV69taMJNLQ1si/sk7GAsKSMI7bMaLmL+BrUxkmjDMu8RMA+w/Yt6
	cGzbd0kERLBueZX9dEyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndaMB-0056l7-7F; Sun, 10 Apr 2022 16:24:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndaM8-0056kY-9E
 for linux-rockchip@lists.infradead.org; Sun, 10 Apr 2022 16:24:05 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndaLz-0006WK-1f; Sun, 10 Apr 2022 18:23:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robert Hancock <robert.hancock@calian.com>,
 Sean Anderson <sean.anderson@seco.com>, Peter Geis <pgwipeout@gmail.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] usb: dwc3: fix backwards compat with rockchip devices
Date: Sun, 10 Apr 2022 18:23:54 +0200
Message-ID: <12992587.uLZWGnKmhe@phil>
In-Reply-To: <20220409152116.3834354-1-pgwipeout@gmail.com>
References: <20220409152116.3834354-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_092404_457321_47FB8706 
X-CRM114-Status: GOOD (  25.77  )
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

Am Samstag, 9. April 2022, 17:21:15 CEST schrieb Peter Geis:
> Commit 33fb697ec7e5 ("usb: dwc3: Get clocks individually") moved from
> the clk_bulk api to individual clocks, following the snps,dwc3.yaml
> dt-binding for clock names.
> Unfortunately the rk3328 (and upcoming rk356x support) use the
> rockchip,dwc3.yaml which has different clock names, which are common on
> devices using the glue layer.
> The rk3328 does not use a glue layer, but attaches directly to the dwc3
> core driver.
> The offending patch series failed to account for this, thus dwc3 was
> broken on rk3328.
> 
> To retain backwards compatibility with rk3328 device trees we must also
> check for the alternate clock names.
> 
> Fixes: 33fb697ec7e5 ("usb: dwc3: Get clocks individually")
> 
> Reported-by: Frank Wunderlich <frank-w@public-files.de>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> 
> This patch is standalone to fix the backwards compatibility, and is
> necessary no matter if we decide to retain the clock names in
> rockchip,dwc3.yaml as is or align with snps,dwc3.yaml.
> 
>  drivers/usb/dwc3/core.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index 1170b800acdc..5bfd3e88af35 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -1690,21 +1690,44 @@ static int dwc3_probe(struct platform_device *pdev)
>  		/*
>  		 * Clocks are optional, but new DT platforms should support all
>  		 * clocks as required by the DT-binding.
> +		 * Some devices have different clock names in legacy device trees,
> +		 * check for them to retain backwards compatibility.
>  		 */
>  		dwc->bus_clk = devm_clk_get_optional(dev, "bus_early");
>  		if (IS_ERR(dwc->bus_clk))
>  			return dev_err_probe(dev, PTR_ERR(dwc->bus_clk),
>  					     "could not get bus clock\n");
>  
> +		if (dwc->bus_clk == NULL) {
> +			dwc->bus_clk = devm_clk_get_optional(dev, "bus_clk");
> +			if (IS_ERR(dwc->bus_clk))
> +				return dev_err_probe(dev, PTR_ERR(dwc->bus_clk),
> +						     "could not get bus clock\n");
> +		}
> +
>  		dwc->ref_clk = devm_clk_get_optional(dev, "ref");
>  		if (IS_ERR(dwc->ref_clk))
>  			return dev_err_probe(dev, PTR_ERR(dwc->ref_clk),
>  					     "could not get ref clock\n");
>  
> +		if (dwc->ref_clk == NULL) {
> +			dwc->ref_clk = devm_clk_get_optional(dev, "ref_clk");
> +			if (IS_ERR(dwc->ref_clk))
> +				return dev_err_probe(dev, PTR_ERR(dwc->ref_clk),
> +						     "could not get ref clock\n");
> +		}
> +
>  		dwc->susp_clk = devm_clk_get_optional(dev, "suspend");
>  		if (IS_ERR(dwc->susp_clk))
>  			return dev_err_probe(dev, PTR_ERR(dwc->susp_clk),
>  					     "could not get suspend clock\n");
> +
> +		if (dwc->susp_clk == NULL) {
> +			dwc->susp_clk = devm_clk_get_optional(dev, "suspend_clk");
> +			if (IS_ERR(dwc->susp_clk))
> +				return dev_err_probe(dev, PTR_ERR(dwc->susp_clk),
> +						     "could not get suspend clock\n");
> +		}
>  	}
>  
>  	ret = reset_control_deassert(dwc->reset);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
