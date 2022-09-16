Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A65AAECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 16:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cOJMETCBag34L+sq6CEDax6olAjETCongxT1HiEashk=; b=gkkdIUDKo/A7HxX/H4dBPgXXxD
	athy5WAgpq3X3YwHgKFKIoSx6mdHgpVyro6N51BIqpksWmu9eXRD7QVOM6hZhX8KY3cV7tw9X4wVm
	Yz2/598BGE2pZf4xTT3bswNAXcVMn5QuNqx38mlS0Za2pzs1uPptKaBEtq3KpveA1MzXm6Slk5/Nw
	x9djSerCwr/6G9+DOf9LdZm3TZkkp9Fboj+YrbLftSPvq0f5OB4t0jXO0FuzKbPcjHhCrdtwTWu5F
	rJ4vo4FDo5im92yayY/Z8SZCvUaF8PO1tyJO56ywVGZPcWXbJ7jcUdWurGaYH3AFSRA7ZML3Wl48T
	s2DAmSqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZETx-00F7st-4X; Fri, 16 Sep 2022 16:46:25 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZETk-00F7mx-7g; Fri, 16 Sep 2022 16:46:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA86E1595;
	Fri, 16 Sep 2022 09:46:13 -0700 (PDT)
Received: from [10.57.18.118] (unknown [10.57.18.118])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E876F3F73D;
	Fri, 16 Sep 2022 09:46:05 -0700 (PDT)
Message-ID: <6a64bfed-2939-299f-5807-607406eaa89b@arm.com>
Date: Fri, 16 Sep 2022 17:46:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: k3566-quartz64-a: fix names
 entries, refactor
Content-Language: en-GB
To: Alessandro Carminati <alessandro.carminati@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_094612_360005_5E047A34 
X-CRM114-Status: GOOD (  12.28  )
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

On 2022-09-16 13:52, Alessandro Carminati wrote:
> Fix esisting "No underscores in node names" general rule, and prepare for
> new board versions.
> 
> Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/Makefile         |  2 +-
>   ...-quartz64-a.dts => rk3566-quartz64-a.dtsi} | 27 ++++++++-----------
>   .../dts/rockchip/rk3566-quartz64-a.usb3.dts   |  9 +++++++
>   3 files changed, 21 insertions(+), 17 deletions(-)
>   rename arch/arm64/boot/dts/rockchip/{rk3566-quartz64-a.dts => rk3566-quartz64-a.dtsi} (97%)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.usb3.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index ef79a672804a..97ec6c156346 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -59,7 +59,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.usb3.dtb

Beware that changing the name of an existing DTB is going to break some 
people's boot scripts. Since this one was merged several releases ago, 
it's a probably bit too late to change now.

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
