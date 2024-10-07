Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91610CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 08:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PFVTKwACRwII6sJ2XK5X7N69+9JCrdpXYmb57vrZIY8=; b=ZpZbCVPRKqD4lG
	uJzRERR2cw4tBv/oxumDAUQyh7e7fOJX9m3m0zzte2imv/zND4LjzalNZIcGV7Xs3b21Kq6NEyOjf
	2po9dpWxIiJlgz0ZYFQz/5noSW/eR/qZ9y1tv8+DYNvr6zUKAyfkhXlSqSG5mHbgiypE7rJt90FaS
	ueI+DG4X5dYaWSgIwFRY+ljCrnCttxBLcec2IT2KoBu9bxLV2E3fwPxYmCSiHituyjSZ5v/os1Zwi
	lOD9iTAGBkehJ/uBC7CrPWaUn1yLSPw2JXz6wVm4eO62IANYQgNU/xVTTZ7YUtRRxk7ENyiB0YggV
	04nCIr05uzawmdSLP3fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxjLj-00000001okY-0u7U;
	Mon, 07 Oct 2024 08:44:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxjLg-00000001ojT-1rDK
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 08:44:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sxjLV-0000hz-NP; Mon, 07 Oct 2024 10:44:01 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sxjLT-0005S8-Hz; Mon, 07 Oct 2024 10:43:59 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sxjLT-000Bl4-1Z;
	Mon, 07 Oct 2024 10:43:59 +0200
Message-ID: <64c560c483f09d90c788eb949890d00f3b94cc87.camel@pengutronix.de>
Subject: Re: [PATCH v6 RESET 2/3] PCI: rockchip: Simplify reset control
 handling by using reset_control_bulk*() function
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anand Moon <linux.amoon@gmail.com>, Shawn Lin
 <shawn.lin@rock-chips.com>,  Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, Bjorn
 Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, "open
 list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, "open list:PCIE
 DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,  "moderated
 list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, open
 list <linux-kernel@vger.kernel.org>
Date: Mon, 07 Oct 2024 10:43:59 +0200
In-Reply-To: <20241006182445.3713-3-linux.amoon@gmail.com>
References: <20241006182445.3713-1-linux.amoon@gmail.com>
	 <20241006182445.3713-3-linux.amoon@gmail.com>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_014412_504602_F9B5FADD 
X-CRM114-Status: GOOD (  15.78  )
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

On So, 2024-10-06 at 23:54 +0530, Anand Moon wrote:
> Refactor the reset control handling in the Rockchip PCIe driver,
> introducing a more robust and efficient method for assert and
> deassert reset controller using reset_control_bulk*() API. Using the
> reset_control_bulk APIs, the reset handling for the core clocks reset
> unit becomes much simpler.
> 
> Spilt the reset controller in two groups as pre the RK3399 TRM.
> After power up, the software driver should de-assert the reset of PCIe PHY,
> then wait the PLL locked by polling the status, if PLL
> has locked, then can de-assert the rest reset simultaneously
> driver need to De-assert the reset pins simultionaly.
> 
>   PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> V6: Add reason for the split of the RESET pins.
> v5: Fix the De-assert reset core as per the TRM
>     De-assert the PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N
>     simultaneously.
> v4: use dev_err_probe in error path.
> v3: Fix typo in commit message, dropped reported by.
> v2: Fix compilation error reported by Intel test robot
>     fixed checkpatch warning
> ---
>  drivers/pci/controller/pcie-rockchip.c | 151 +++++--------------------
>  drivers/pci/controller/pcie-rockchip.h |  26 +++--
>  2 files changed, 49 insertions(+), 128 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 2777ef0cb599..87daa3288a01 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
[...]
> @@ -69,55 +69,23 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>  	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
>  		rockchip->link_gen = 2;
>  
> -	rockchip->core_rst = devm_reset_control_get_exclusive(dev, "core");
> -	rockchip->mgmt_rst = devm_reset_control_get_exclusive(dev, "mgmt");
> -	rockchip->mgmt_sticky_rst = devm_reset_control_get_exclusive(dev,
> -	rockchip->pipe_rst = devm_reset_control_get_exclusive(dev, "pipe");
> -	rockchip->pm_rst = devm_reset_control_get_exclusive(dev, "pm");
> +	err = devm_reset_control_bulk_get_optional_exclusive(dev,
[...]


Why are the reset controls optional now? The commit message doesn't
mention this change.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
