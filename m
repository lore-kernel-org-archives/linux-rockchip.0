Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89393D3C549
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 05:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jVfDCwMa6hhr/76ipdw3gEJOEcryy0TZCfNR8ZEfCxY=; b=HwSH5PIwphwI92eWtEoQu+TV+w
	N9WYS/5aXK9yi2dHsyK03SJsOnmlWxQP2hnZA9iyMwRGXTiXVbFUosJnfV27zmxBMPl5POD/Tx7KT
	w/nZd7J1f2In0cdLff3zW2p/WqqsszN4NxWrWG1rjkwmYiiHKO1Ymy/x+Rg7LH3dj5riSFG24y97H
	+d4LThqb0UTcaWR6UZgJPXBJXMnlB3MsZ39FHIJHGjN6qXY3UJ9qbidfIF/gO/RaUdyC5I9XwdBAT
	v4E/SslScZJ1z1Une3Wutu63yycxc6DL3qC8Q3rwiRZ3OoyiSanI0TSqAdRr9G3ai1NZjB1SPYFjq
	3phcj1zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1f9m-0000000GvGV-39jP;
	Fri, 18 Oct 2024 05:04:10 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1f8J-0000000Gv9E-2tFK;
	Fri, 18 Oct 2024 05:02:41 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1729227755;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BJWILMVfgDcAgwD1GXhEWso78YUpRlKwkxHJzQiuPHg=;
	b=LooUSCfMS20nW1+kMD16XatHnO5DWvpkihvGSKzw65oyL2CyPPIof843W9XPpwPc6guK0Y
	MJVoL6p6kAJymYGWUJvE3NshwhYKqtaT6IniG7w5qFbC627eYsAWEpK6lrXDbx4AY27+/5
	4ucxA18bkmzHrs83tx2W/PGHyYRXIOr6Tuxq3rIwwDhFdBojavci/sZoxaCYwogTu7fBW7
	0U4EPWYJl6OdL0Gtz7QuNwqHEnK8Jg73bvk3ItYl7f8Pfea4JJO+33lhKf2qz6mHDxQF4B
	ABYWSsWw3+54Y5eb+NkcVfVBxiBjPO9YDjQwCCgocyHljBb4jK2sWMyIbD0Kqg==
Date: Fri, 18 Oct 2024 07:02:33 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, yubing.zhang@rock-chips.com, Frank Wang
 <frank.wang@rock-chips.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf
 syscon
In-Reply-To: <20241017025230.28752-1-frawang.cn@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
Message-ID: <ca0ee8752791f53bac23933e1582dd86@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_220240_207587_DF20B9D5 
X-CRM114-Status: GOOD (  11.13  )
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

Hello Frank,

On 2024-10-17 04:52, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add rockchip,rk3576-vo1-grf syscon compatible, the vo1-grf is
> configured in usbdp phy driver.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> Changelog:
> v2:
>  - This is a new patch adds rk3576-vo1-grf syscon.

Could you, please, clarify a bit why is this additional patch
needed in this series?

> v1:
>  - none
> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> index 50d727f4b76c6..fd42217ab85e7 100644
> --- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> +++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
> @@ -33,6 +33,7 @@ properties:
>                - rockchip,rk3576-usb-grf
>                - rockchip,rk3576-usbdpphy-grf
>                - rockchip,rk3576-vo0-grf
> +              - rockchip,rk3576-vo1-grf
>                - rockchip,rk3576-vop-grf
>                - rockchip,rk3588-bigcore0-grf
>                - rockchip,rk3588-bigcore1-grf
> @@ -283,6 +284,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - rockchip,rk3576-vo1-grf
>                - rockchip,rk3588-vo-grf
>                - rockchip,rk3588-vo0-grf
>                - rockchip,rk3588-vo1-grf

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
