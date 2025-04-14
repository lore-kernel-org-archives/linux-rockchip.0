Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59752C369A2
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Apr 2025 14:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiphpDytWOuRbaooe1uTU97Tv8lIXpsk+EeLyylnfr4=; b=27tpgW/HO4JW9C
	aWJ1KV1IXkKVXgvxe8wskzxlZxRKxrgms5xANenn29vQbD6e2ZzViziodCUBWPyDpS0Xi7peGzQwh
	ZC30QterVpy/pR8ULnDW14hqbEJSrnjR6/HsM82pCHK06tS9vk92bcXusJv+p+U9peftV2OUYw6c9
	N8P7bW6ph5BFH9I5zy/7z8hCNzTUcf1l/M1LyylHpUevESV6vn7UTr6znRnVwirCGdb+eTGWDCHxB
	mEOSRtP7oThTgyRFmtWMzy/k2I+w85S7uXnX6NBuEVuRZgxc8g/8MTmCU2T5q5avVyz8n0Q6Ro5Sf
	qJxdwqjOSk6H55dE+qgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4L2c-00000002Rzx-1Yk6;
	Mon, 14 Apr 2025 14:44:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Kum-00000002PaG-1xwo
	for linux-rockchip@lists.infradead.org;
	Mon, 14 Apr 2025 14:36:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C68995C35B1;
	Mon, 14 Apr 2025 14:33:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25774C4CEE2;
	Mon, 14 Apr 2025 14:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744641359;
	bh=hgrZkekdcnGttIrLxkSswtRQ99stW8nqX8CPr1dL2/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d/2iJnt3iJ9RM6F5JKfSe3HNaHGt9qZT9ZQL5zVbC9MfyC5pva0CnRfHgc4cDX+b7
	 xVYpW72W87LodgiP/mflQ4hBFeqL3zhEyr6kmIUCU0LyYxpwKTbEkT4085zWK+Fhtp
	 d9BUPmxaM/FCaBX/YsseXm8HKehnASdYNFguOkRHQeppXlnV0xcTvhJW4kSl75xssK
	 ue9bChUZK+NlGhjkJP5qQR9WFuVXtfUna99kG/SHifCKWkEjpSzjtAFVseKj78V9ZD
	 yTgXtKexGFIsnvsLR+x71mbq9KEtVCj2Aiq4VL92FzRYpC74kAmCJCA9R6YP2lSXFM
	 vuRPtC65EdwSw==
Date: Mon, 14 Apr 2025 16:35:55 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 2/2] PCI: dw-rockchip: Move
 rockchip_pcie_ep_hide_broken_ats_cap_rk3588() to .init()
Message-ID: <Z_0dS_sTxQ7Y0d7G@ryzen>
References: <1744594051-209255-1-git-send-email-shawn.lin@rock-chips.com>
 <1744594109-209312-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1744594109-209312-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_073600_614941_92452F02 
X-CRM114-Status: GOOD (  19.84  )
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

On Mon, Apr 14, 2025 at 09:28:29AM +0800, Shawn Lin wrote:
> Iif there is a core reset, _init() is called again, but _pre_init() is
> not.

I think a better commit message would be:

There is no reason to call rockchip_pcie_ep_hide_broken_ats_cap_rk3588()
from the pre_init() callback, instead of the normal init() callback.

Thus, move the rockchip_pcie_ep_hide_broken_ats_cap_rk3588() call from
the pre_init() callback to the init() callback, as:
1) init() will still be called before link training is enabled, so the
   quirk will still be applied before the host has can see our device.
2) This allows us to remove the pre_init() callback, as it is now unused.
3) It is a more robust design, as the init() callback is called by
 dw_pcie_ep_init_registers(), which will always be called after a core
 reset. The pre_init() callback is only called once, at probe time.

No functional changes.



> 
> Suggested-by: Niklas Cassel <cassel@kernel.org>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Tested-by: Niklas Cassel <cassel@kernel.org>


> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 922aff0..b45af18 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -278,17 +278,13 @@ static void rockchip_pcie_ep_hide_broken_ats_cap_rk3588(struct dw_pcie_ep *ep)
>  		dev_err(dev, "failed to hide ATS capability\n");
>  }
>  
> -static void rockchip_pcie_ep_pre_init(struct dw_pcie_ep *ep)
> -{
> -	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
> -}
> -
>  static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
>  	enum pci_barno bar;
>  
>  	rockchip_pcie_enable_l0s(pci);
> +	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
>  
>  	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
>  		dw_pcie_ep_reset_bar(pci, bar);
> @@ -359,7 +355,6 @@ rockchip_pcie_get_features(struct dw_pcie_ep *ep)
>  
>  static const struct dw_pcie_ep_ops rockchip_pcie_ep_ops = {
>  	.init = rockchip_pcie_ep_init,
> -	.pre_init = rockchip_pcie_ep_pre_init,
>  	.raise_irq = rockchip_pcie_raise_irq,
>  	.get_features = rockchip_pcie_get_features,
>  };
> -- 
> 2.7.4
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
