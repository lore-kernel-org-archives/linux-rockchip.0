Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CE50D0C83B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSh4hvJOk1EB+P422bMqkiJwHY3uFM5n1JewJqtICBY=; b=cnbeRCtqO3zFW2
	N4mj31jkNVyMAKwffHIUEVPd8Obe9TTzKglBYphbyFqVP5MikHYz3rhevOBMGLEFOLUIf+rpD8023
	8aLxyF2p6jxPwuErRz9nD4pJWn7W2rPu1dqH/K+Dle22ED4IWBPWU2e4IiSdcW3W/SPxnCXDHhEV2
	bjC73ktXglQ49fxV9x73sBEj9v/JBX/G66CFrbN0xb6AhEC5ONzQRbBCkl5c07Up5+CRDNEcqnWTu
	RgbftBrOCQw0emLEQ+NC6O6UO55KdnJ2RhySpOKe0EITf7s9Bs9lo3fzl6u9lHUrdgWRC4kW4aOI+
	qjgU2fVPZhYxupYccaXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbcy-00000006uNg-3QNM;
	Tue, 13 Jan 2026 10:27:56 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfbcw-00000006uMi-0g7h;
	Tue, 13 Jan 2026 10:27:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 615B74075A;
	Tue, 13 Jan 2026 10:27:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71FB0C116C6;
	Tue, 13 Jan 2026 10:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768300073;
	bh=C8UgsS+YrsZDchnel7CNOtadN1mg/ONjw32g4J6+OCI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KHVExecNeP0XkZg6xghaAQoJqr/q0z3GdC0x9jlfMNdwId0ErGseOxuOiGwv29fD7
	 AvHvAxAYhEhEwlTtZ/HzVBPzak/DCiPS0cy2tK74aPn60U+CPG+/5TqEOYVmIpPOB+
	 t0lfLQrTlza7crImIQKqJobRsLqGMk0r+g0eXbY9SIXRxX+hMLbFEU7eN5Xkq1qwjt
	 tqZncLDnAqJDaSQnuMYsFLITR5wWfSPuJ4e3LtNOMwEMkXQnDUSM9mD8VFTfDQepbM
	 3idXM1YFBgiHX990n6orktQZK0baqsg7qxAQ9euVwMmyZF8sanjixl845BLKqFX5sj
	 jWW9lS8W7E+tQ==
Date: Tue, 13 Jan 2026 11:27:40 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Koichiro Den <den@valinux.co.jp>
Cc: jingoohan1@gmail.com, mani@kernel.org, lpieralisi@kernel.org,
	kwilczynski@kernel.org, robh@kernel.org, bhelgaas@google.com,
	vigneshr@ti.com, s-vadapalli@ti.com, hongxing.zhu@nxp.com,
	l.stach@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, minghuan.Lian@nxp.com,
	mingkai.hu@nxp.com, roy.zang@nxp.com, jesper.nilsson@axis.com,
	heiko@sntech.de, srikanth.thokala@intel.com,
	marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com,
	geert+renesas@glider.be, magnus.damm@gmail.com,
	christian.bruel@foss.st.com, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, thierry.reding@gmail.com,
	jonathanh@nvidia.com, hayashi.kunihiko@socionext.com,
	mhiramat@kernel.org, kishon@kernel.org, jirislaby@kernel.org,
	rongqianfeng@vivo.com, 18255117159@163.com,
	shawn.lin@rock-chips.com, nicolas.frattaroli@collabora.com,
	linux.amoon@gmail.com, vidyas@nvidia.com, Frank.Li@nxp.com,
	linux-omap@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH v6 4/5] PCI: dwc: ep: Support BAR subrange inbound
 mapping via Address Match Mode iATU
Message-ID: <aWYeHNoPEl9T-Qo-@ryzen>
References: <20260113023715.3463724-1-den@valinux.co.jp>
 <20260113023715.3463724-5-den@valinux.co.jp>
 <aWYbTt6UjlXb9Uk-@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aWYbTt6UjlXb9Uk-@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_022754_222621_5E10D816 
X-CRM114-Status: GOOD (  17.53  )
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

On Tue, Jan 13, 2026 at 11:15:42AM +0100, Niklas Cassel wrote:
> On Tue, Jan 13, 2026 at 11:37:14AM +0900, Koichiro Den wrote:
> > @@ -626,11 +831,22 @@ static const struct pci_epc_features*
> >  dw_pcie_ep_get_features(struct pci_epc *epc, u8 func_no, u8 vfunc_no)
> >  {
> >  	struct dw_pcie_ep *ep = epc_get_drvdata(epc);
> > +	struct pci_epc_features *features;
> >  
> >  	if (!ep->ops->get_features)
> >  		return NULL;
> >  
> > -	return ep->ops->get_features(ep);
> > +	features = ep->ops->get_features(ep);
> > +	if (!features)
> > +		return NULL;
> > +
> > +	/* All DWC-based glue drivers support dynamic inbound mapping */
> > +	features->dynamic_inbound_mapping = true;
> 
> I think you should create a separate patch, before this patch, that simply
> sets:
> features->dynamic_inbound_mapping = true;
> 
> Since that is technically a different feature, independent of this
> feature, so it deserves its own patch.

The commit message for that separate patch should mention that the reason
why there are no code changes when exposing/enabling support for the
dynamic_inbound_mapping feature, is because the actual code changes to the
the DWC driver already in commit 4284c88fff0e ("PCI: designware-ep: Allow
pci_epc_set_bar() update inbound map address").


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
