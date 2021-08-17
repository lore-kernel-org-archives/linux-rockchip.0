Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8C2C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 15:24:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8B59960FD9
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 15:24:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8B59960FD9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=r4ZVPsMoQhjfE3WEppx7dK8j5QRc7O1/Ln69DAXczrg=; b=wYNLeNPS+EF8Ih
	a+dmKu4ZnBPS/CjZWQzQrLRywpHI0eAIGeEWOCcJDVQK2vEgEziNnCqANaUqVqEaDrRERLUtdgsFV
	INmtn4mfztxD2XVjDAiXxlQt9LoY3C8dwNPRx1asduq9XNJwnuGZjVBYSI0OL44eCpbLKWMDWMP5Q
	biPAIE3cpXJ+BieTa7UPbUx0AYWQQVCtSDNyw5ktmRf4hJKzXbNcMyB9UgYQJkIY0YA2YbsjMkfn3
	DdjN27+Y+ZBbb0cRWW2jm1VQ3hrOC10Q2aZI5M/r51zeUWiQs+PYuEzC/plxCW0khI+KRN6usDElF
	MfAtK29q0nOS+zoJeZHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mG0x1-002ntY-N6; Tue, 17 Aug 2021 15:24:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mG0wo-002nrk-FM; Tue, 17 Aug 2021 15:24:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4B26260E09;
 Tue, 17 Aug 2021 15:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629213853;
 bh=boESYlKP6Dzc4kd2waJ3e/ZWnK8Fx6T1LIWvj2HxkX0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=EpWj8XfYMjFSu2H8qmW6GSRSZCbozXwNvPJfpEG4eQ1z9d04wBrDrqXBF8I9GNF2k
 Ta4QvsAOu8r7nRtDyMyIf8L/NVqvWoZ1uVcVBFL0/S0ytfoMnJJ7F76yN7AgufdA0O
 H3RhqE1bxS1sJlexjF1FOD+jdXOGIcqaoo9YmX9hpbSmOws+jkn3KazRNZezn84yre
 t2ftnIQsY0LKW1OKCLR8Q235J6Gr9pLTM78wUHt7KqlktfW/17w/esI6Fbieqg27G7
 jQZseaAs1BJW5iGLCL/64Tmp2chXv2j+xWUIqg83n5wpnf6VIBcP12IEKGPxN5FAFr
 W3SycQVB2gYAw==
Date: Tue, 17 Aug 2021 10:24:12 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Rob Herring <robh+dt@kernel.org>, Tom Joseph <tjoseph@cadence.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Lokesh Vutla <lokeshvutla@ti.com>
Subject: Re: [PATCH v8 5/8] PCI: cadence: Simplify code to get register base
 address for configuring BAR
Message-ID: <20210817152412.GA3016169@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210811064656.15399-6-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_082414_588340_F3937254 
X-CRM114-Status: GOOD (  16.55  )
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

On Wed, Aug 11, 2021 at 12:16:53PM +0530, Kishon Vijay Abraham I wrote:
> No functional change. Simplify code to get register base address for
> configuring PCI BAR.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../pci/controller/cadence/pcie-cadence-ep.c   | 18 ++++--------------
>  drivers/pci/controller/cadence/pcie-cadence.h  |  2 ++
>  2 files changed, 6 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> index 912a15be8bfd..f337f0842400 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
> +++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
> @@ -97,13 +97,8 @@ static int cdns_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
>  	cdns_pcie_writel(pcie, CDNS_PCIE_AT_IB_EP_FUNC_BAR_ADDR1(fn, bar),
>  			 addr1);
>  
> -	if (bar < BAR_4) {
> -		reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG0(fn);
> -		b = bar;
> -	} else {
> -		reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn);
> -		b = bar - BAR_4;
> -	}
> +	reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn);
> +	b = (bar < BAR_4) ? bar : bar - BAR_4;
>  
>  	cfg = cdns_pcie_readl(pcie, reg);
>  	cfg &= ~(CDNS_PCIE_LM_EP_FUNC_BAR_CFG_BAR_APERTURE_MASK(b) |
> @@ -126,13 +121,8 @@ static void cdns_pcie_ep_clear_bar(struct pci_epc *epc, u8 fn, u8 vfn,
>  	enum pci_barno bar = epf_bar->barno;
>  	u32 reg, cfg, b, ctrl;
>  
> -	if (bar < BAR_4) {
> -		reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG0(fn);
> -		b = bar;
> -	} else {
> -		reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn);
> -		b = bar - BAR_4;
> -	}
> +	reg = CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn);
> +	b = (bar < BAR_4) ? bar : bar - BAR_4;
>  
>  	ctrl = CDNS_PCIE_LM_BAR_CFG_CTRL_DISABLED;
>  	cfg = cdns_pcie_readl(pcie, reg);
> diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
> index 30db2d68c17a..d5b1fcf2c39d 100644
> --- a/drivers/pci/controller/cadence/pcie-cadence.h
> +++ b/drivers/pci/controller/cadence/pcie-cadence.h
> @@ -46,6 +46,8 @@
>  #define  CDNS_PCIE_LM_EP_ID_BUS_SHIFT	8
>  
>  /* Endpoint Function f BAR b Configuration Registers */
> +#define CDNS_PCIE_LM_EP_FUNC_BAR_CFG(bar, fn) \
> +	(((bar) < 4) ? CDNS_PCIE_LM_EP_FUNC_BAR_CFG0(fn) : CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn))

Why do we use "BAR_4" above and "4" here?  Shouldn't they look the
same?

>  #define CDNS_PCIE_LM_EP_FUNC_BAR_CFG0(fn) \
>  	(CDNS_PCIE_LM_BASE + 0x0240 + (fn) * 0x0008)
>  #define CDNS_PCIE_LM_EP_FUNC_BAR_CFG1(fn) \
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
