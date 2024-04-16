Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F0A1C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 06:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52ZrRnUOq4pVjjKqHi4z+iS3AzsDH9xm9hYQqvhok4Y=; b=nhbcoT88BHSc96
	gSafsfwPX/KQd++6fdYKRo/rzGeOAbbKds/tXMplt0+RrxCZciDv+1zgQQQqmr9f0b0cWlY+bTneP
	zu15ds3vUId9z3gHPhq8MwVkynG78zw2mfkF62S4oHb6dMeZ5nAafp2U08+sxJQS5ZEyHDyZzh1j4
	gFnXojDXhJYepIA18r7QxQwQzU9Wx+KqBqSOSyOvzebHsYNL5ff4gGOEkMIU4lMGuRwNu18ntPZb3
	uaK73zFzyE8J3zTEniEI4iQQIIAA0gfevIWub7F1lZjVhZ1/1nGaBNysg13gS1AvvNsI5p59KslJt
	ZjAm9uozE9WfHcgRWQIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcdr-0000000B8ji-1ATI;
	Tue, 16 Apr 2024 06:50:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwcdn-0000000B8iF-0SeA;
	Tue, 16 Apr 2024 06:50:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 61ED4CE000E;
	Tue, 16 Apr 2024 06:50:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DD27C113CE;
	Tue, 16 Apr 2024 06:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713250199;
	bh=yfX5SuJiKsjZz5T4krQC0RPDEuHfvs/zvmFjAxx/zlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LzS40nkMJsIBoNMyiBYU1dZiU1GtglSAeoOK9Wcywa3dOY58e3mqlh5jo9Uo3Wg2F
	 bgDK0tl59DTrBOygg0MimxmV2SmnnMK3sWaXBhFO/CJhjGPCxtnk5Ia76in1UYvUBK
	 vckfRAEjG0RHpNWyty6mmMfUa+d70IPhKPL2FQaHhubHznn8lySE+KogwTaJ59l1It
	 NTQM+YyatNBircIy0BD3jOigDDKO2b0E8+exBqLDcMGDsa4gWo9HVGWxSrZL8T2Vfr
	 2sQ0oHzwEEpUKvd/TIIKAKi7z/0bxlEuMynqeleZ7TqaBos8awEksUEIqjQ87iO0QI
	 DAkcQpckpO54w==
Date: Tue, 16 Apr 2024 08:49:53 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	mhi@lists.linux.dev, stable@vger.kernel.org,
	Slark Xiao <slark_xiao@163.com>
Subject: Re: [PATCH] PCI: rockchip: Use GPIOD_OUT_LOW flag while requesting
 ep_gpio
Message-ID: <Zh4fkbQTh0Z1GNGK@ryzen>
References: <20240416-pci-rockchip-perst-fix-v1-1-4800b1d4d954@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240416-pci-rockchip-perst-fix-v1-1-4800b1d4d954@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_235003_541808_0466FBD8 
X-CRM114-Status: GOOD (  23.88  )
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

On Tue, Apr 16, 2024 at 11:12:35AM +0530, Manivannan Sadhasivam wrote:
> Rockchip platforms use 'GPIO_ACTIVE_HIGH' flag in the devicetree definition
> for ep_gpio. This means, whatever the logical value set by the driver for
> the ep_gpio, physical line will output the same logic level.
> 
> For instance,
> 
> 	gpiod_set_value_cansleep(rockchip->ep_gpio, 0); --> Level low
> 	gpiod_set_value_cansleep(rockchip->ep_gpio, 1); --> Level high
> 
> But while requesting the ep_gpio, GPIOD_OUT_HIGH flag is currently used.
> Now, this also causes the physical line to output 'high' creating trouble
> for endpoint devices during host reboot.
> 
> When host reboot happens, the ep_gpio will initially output 'low' due to
> the GPIO getting reset to its POR value. Then during host controller probe,
> it will output 'high' due to GPIOD_OUT_HIGH flag. Then during
> rockchip_pcie_host_init_port(), it will first output 'low' and then 'high'
> indicating the completion of controller initialization.
> 
> On the endpoint side, each output 'low' of ep_gpio is accounted for PERST#
> assert and 'high' for PERST# deassert. With the above mentioned flow during
> host reboot, endpoint will witness below state changes for PERST#:
> 
> 	(1) PERST# assert - GPIO POR state
> 	(2) PERST# deassert - GPIOD_OUT_HIGH while requesting GPIO
> 	(3) PERST# assert - rockchip_pcie_host_init_port()
> 	(4) PERST# deassert - rockchip_pcie_host_init_port()
> 
> Now the time interval between (2) and (3) is very short as both happen
> during the driver probe(), and this results in a race in the endpoint.
> Because, before completing the PERST# deassertion in (2), endpoint got
> another PERST# assert in (3).
> 
> A proper way to fix this issue is to change the GPIOD_OUT_HIGH flag in (2)
> to GPIOD_OUT_LOW. Because the usual convention is to request the GPIO with
> a state corresponding to its 'initial/default' value and let the driver
> change the state of the GPIO when required.
> 
> As per that, the ep_gpio should be requested with GPIOD_OUT_LOW as it
> corresponds to the POR value of '0' (PERST# assert in the endpoint). Then
> the driver can change the state of the ep_gpio later in
> rockchip_pcie_host_init_port() as per the initialization sequence.
> 
> This fixes the firmware crash issue in Qcom based modems connected to
> Rockpro64 based board.
> 
> Cc:  <stable@vger.kernel.org> # 4.9
> Reported-by: Slark Xiao <slark_xiao@163.com>
> Closes: https://lore.kernel.org/mhi/20240402045647.GG2933@thinkpad/
> Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Niklas Cassel <cassel@kernel.org>


I sent a similar fix for the DWC-based rockchip driver a few weeks ago:
https://lore.kernel.org/linux-pci/20240327152531.814392-1-cassel@kernel.org/

If your fix is picked up, it would be nice if mine got picked up as well,
such that both drivers get fixed.


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
