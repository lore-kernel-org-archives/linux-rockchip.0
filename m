Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B93C369C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 16:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ebDsY2pN4dGNxXTiE38TnlLIwy4hNNg0Xl0g+sbKQcM=; b=rxbrAlfCoOwK5l4oPeqQtI459X
	bUF2kZ1GYcFoPhHbbEy6+O/UM+x1vx7OX/Exsuk28ETFsYPpiyMhUray+mtRZsy4AEfDZS7Hs0mLK
	flVj9GFyMc+G0cNc91y6AjUphZlX9T6Hhl74RMhQZAMdlO16QAsBIq9ZgOnUp8eLsD7Yq8m40k9XS
	aHch0qbiT87dAdON7PpeQG1qlDFMlZUci0zMF9daooE49ziwE4rQFp0iTas69BAXAOKuLW0TeRLX2
	rvSiAXi+VPR5/lpyACDNQQEW3R0JNngQeyZGBAGqTBI9ebGPy5cNnNMnexH4q14074H69otBFLESF
	YPKvR9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5S6C-0000000DfbW-1oI7;
	Thu, 17 Apr 2025 16:28:24 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Rz5-0000000DePn-3Dfp;
	Thu, 17 Apr 2025 16:21:08 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1744906855;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Jy2VD4whmMy3I5b19h40sBNvZxMXt8NVw/R9fRE1Af8=;
	b=kucmAJQrSj8aUR00+fmsRWYFWXrdis+l+pkpy7eT+bl5PW6okRBsgCADav+upAPx4S45Y1
	tYW7KOY+/bYi5K/Zum3EHUBzuo+UUY5OfhFzZYHPWbreCDulpkssrW2F97Ntm4wEtZR5TF
	TXZkPLvb5jCQpShxvhmYug0jRjCBF9uMhzRBZnX46krzzo+tV1ICtyvpzF5oWG0Zjvoi40
	kb+a4AH2paAwi9GFeL9VhedE46AbQOYl8EJLXZL6LldB154YqoCZmbfQIEWn1ci6th90EU
	JxzIVwGlVolMa57URgVAmnnXd1OKhHPXI8NVuCkalXnOScMy1wr2FM3m5LTZKg==
Date: Thu, 17 Apr 2025 18:20:54 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy?=
 =?UTF-8?Q?=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, Shawn Lin
 <shawn.lin@rock-chips.com>, Niklas Cassel <cassel@kernel.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Fix function call sequence in
 rockchip_pcie_phy_deinit
In-Reply-To: <20250417142138.1377451-1-didi.debian@cknow.org>
References: <20250417142138.1377451-1-didi.debian@cknow.org>
Message-ID: <3e000468679b4371a7942a3e07d99894@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_092104_037559_CE3B483A 
X-CRM114-Status: GOOD (  19.71  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Diederik,

On 2025-04-17 16:21, Diederik de Haas wrote:
> The documentation for the phy_power_off() function explicitly says
> 
>   Must be called before phy_exit().
> 
> So let's follow that instruction.
> 
> Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host
> controller driver")
> Cc: stable@vger.kernel.org	# v5.15+
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index c624b7ebd118..4f92639650e3 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -410,8 +410,8 @@ static int rockchip_pcie_phy_init(struct
> rockchip_pcie *rockchip)
> 
>  static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
>  {
> -	phy_exit(rockchip->phy);
>  	phy_power_off(rockchip->phy);
> +	phy_exit(rockchip->phy);
>  }
> 
>  static const struct dw_pcie_ops dw_pcie_ops = {

Thanks for the patch, it's looking good to me.  The current state
of the rockchip_pcie_phy_deinit() function might actually not cause
issues because the rockchip_pcie_phy_deinit() function is used only
in the error-handling path in the rockchip_pcie_probe() function,
so having no runtime errors leads to no possible issues.

However, it doesn't mean it shouldn't be fixed, and it would actually
be good to dissolve the rockchip_pcie_phy_deinit() function into the
above-mentioned error-handling path.  It's a short, two-line function
local to the compile unit, used in a single place only, so dissolving
it is safe and would actually improve the readability of the code.

Thus, please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

and please consider dissolving the rockchip_pcie_phy_deinit() function
in the possible v2 of this patch, as suggested above.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
