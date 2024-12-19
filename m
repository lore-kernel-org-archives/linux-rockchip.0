Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C684EE77184
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 14:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SX7wkf5rV3deNudOvE38H+7o3/AsAGVBpVPrD+t39xs=; b=z63cxBfP86CT/8
	aHrM2CzByyrBYTRPWqGgNRl9Vekt87VjTGLwjLvMxM1lhWlc8SHDrTrFgXVpAz7TVXNt8xKvFTaa9
	z46BQMtpb6kx0E6ZnJ4xvVHUvplzniwXDxTk7Lde+ZRWkU0cwsqmbb7yQcjuM3G+zV0C9uuwAdNHA
	Xw/XF0NxtHZP5n31doUddMmnWl92pd43yYq0srn3M2bAktjK3wymO4y2jzKgQVn+aP8vdxvZ73o2R
	0Y0vL6efGjSGTGThvoagx88QySJKBzdvJAuvd4NXMfJSdRwmcqp/QZv2A/0EQU6wtgn9Txb4NVomj
	V/NAWrW13/gnEC0GFC6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOHQv-000000022yg-2J8G;
	Thu, 19 Dec 2024 14:23:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOHPi-000000022pP-1G1N;
	Thu, 19 Dec 2024 14:22:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6F4715C5CD5;
	Thu, 19 Dec 2024 14:21:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB632C4CECE;
	Thu, 19 Dec 2024 14:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734618125;
	bh=EZZZYJUvUvtfyv5YN1EPSiV40YrW4jh3h61IvL87zD0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dpzxZ6GUMX3FCI9mPHzO2mV7npwK4bTOgJLGJsziBQ3MDWekZPMP29U9YdvPMHrfn
	 XPxRSDcPcB0yLim+uN8h5zOVUW/auCN9tetlK7+Swk0pFl6GKnW94oo72L5Iy2UD4e
	 NNIJDooaKXgyB649f2uxyHUPG2ndMwFXB+uHiiPAwR5Y7jW2cltGFA9jkVuPTUZ5BI
	 1kIih1kf+o8u33LkgLeDQ0OBQ2hkmYH4Ajyw1CLGExJO59sbTEGkUXmJYMMd76an+W
	 lRGLo9LAGjyVMHsShe1jPEeTnVksLjgu5rIJmMCl6RUOJHIkQw5J1Nl6By/aoDGGYT
	 VCmgFrAocZj0w==
Date: Thu, 19 Dec 2024 15:22:00 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enumerate endpoints based on
 dll_link_up irq in the combined sys irq
Message-ID: <Z2QsCI60fK038OEv@ryzen>
References: <20241127145041.3531400-2-cassel@kernel.org>
 <20241211053104.7sgo5bmmjnolwvhh@thinkpad>
 <Z1qY_K57lamVxqRm@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z1qY_K57lamVxqRm@ryzen>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_062206_375291_F9744C65 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
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

On Thu, Dec 12, 2024 at 09:04:12AM +0100, Niklas Cassel wrote:
> > 
> > Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> Thanks for the review!
> 
> Could this patch please be picked up?

Another week has past, hence another ping :)


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
