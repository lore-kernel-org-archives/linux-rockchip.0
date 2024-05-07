Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDCA6C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vhvvGxBXtaUbjOOQBqzlW6Evl9wMeYhFCqXro5B0138=; b=FPX7QUHlIfDL5s
	GhxOuLzo0HZxYXuP0IVE/3xcfmJJE7xoeuOH7Yu1JsT+LaubSvNZsI/M4Rvy89J5Qkrv4UjAFCsC7
	W3/oFHQVZOimHhBzxqvRreIl7sBTD4Ek1dSAJKudGrWMrHcVG7u5xTg7MKWxG3LLCNz/188OEkdtY
	2Seuv2ACMqTOmTKikn3iiIUY6V9F5Q+8wu40nojr+9Q8Ld0ZNXgSJxeZbl+uCj/EwDR4Qip6dQXo8
	C2SN3HSuWCeClsrG9XwkZUrowpLtNJFTg89060UTu6hQIccao0tsaVpiozt65OnkAfaoDbTxwNZ2N
	XZqXh/tlNzp0LGtWPqFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4N3W-0000000Bntc-2wgU;
	Tue, 07 May 2024 15:48:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4N3T-0000000Bnrv-1uq2
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 15:48:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B413061629;
	Tue,  7 May 2024 15:48:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2EE12C2BBFC;
	Tue,  7 May 2024 15:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715096914;
	bh=gI67a6xryCcnkpSsoDWEUmaILOz0kViHVclTsm+/VAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h9J5t600DgWbX9Xkp9ZhW74uRsmKygOuMNhgNgFgGIs8UF8QeuVfvlbYczHQg6Rwo
	 pNCCsAqBQO7mHMA0biTYolBuYN7mguCEXiRrH543pNxfV6lbp5rbHNIl1kaRubV6kr
	 tFan6u8KZQ1QRfjyOO5t5VY0MQtZC5TXycdQhDIkHdfRhgYQPa5f9AgSuqeZJM0crX
	 ycuGZYPIzXA/oCgGS+/vvLsFEh3muKZLUOm7GVstIOOD2n0fBLau2PEemacHdAr2Ws
	 88GuxKmR8pIGHvYeYgj297Os+7+jYqGQ4Ltv8X0J6yLg71+nT4dJ8JP5sHxjCtAi/F
	 b3906vY54y88w==
Date: Tue, 7 May 2024 10:48:32 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Damien Le Moal <dlemoal@kernel.org>, Simon Xue <xxm@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jon Lin <jon.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-pci@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 04/14] dt-bindings: PCI: rockchip-dw-pcie: Prepare for
 Endpoint mode support
Message-ID: <171509686127.528404.2616172017611002206.robh@kernel.org>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-4-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-4-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_084835_570761_A4A626BB 
X-CRM114-Status: UNSURE (   8.75  )
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


On Tue, 30 Apr 2024 14:01:01 +0200, Niklas Cassel wrote:
> Refactor the rockchip-dw-pcie binding to move generic properties to a new
> rockchip-dw-pcie-common binding that can be shared by both RC and EP mode.
> 
> No functional change intended.
> 
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  .../bindings/pci/rockchip-dw-pcie-common.yaml      | 111 +++++++++++++++++++++
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  |  93 +----------------
>  2 files changed, 114 insertions(+), 90 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
