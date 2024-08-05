Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7297DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 19:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=We6VeGMB66X3Rlsxx+e+C4Jnvt5kqneK2BFqkAdtDiE=; b=VYNLHPVC3/XTML
	hUvq2sbEvzExaV33OlOvbgF7zx6ANigjuFxscDt6dC8ykZOnzisFIpeUfUiNtRDM0hRuSPHJGmYrN
	IqDrOwgorXLwccP6H6jbabQzByiD0gcUrngRvYqVpNySPzGlFmewa56T0agK4ywOUgHyvlIQpcLQ2
	oWDSb9wH/Kc6u8Mxr6LOsMiFrhMt2wwXRjBVEVVVF2T7eN6OfgD5RS4ODcwW7wf9/zXGO/+5qC9Z9
	xAm1y1fHi4LTjLN7on3Swxut5Th5DD68Esi6prSGB9H8DWQOh4YYFAwqPQ9mzaZ3/BwUWkr5ZQ6by
	Ii8NJ4XK71SP3WfpPaXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb3gl-0000000H4in-3J1E;
	Mon, 05 Aug 2024 19:48:15 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb3gE-0000000H4YL-3RdJ;
	Mon, 05 Aug 2024 19:47:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4269460CA3;
	Mon,  5 Aug 2024 19:47:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F779C32782;
	Mon,  5 Aug 2024 19:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722887261;
	bh=cuyjByXL2D1AJd9a3vQq1EBfMAign6H9/NzGZnl2f8E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nJ6NX7jWM1JONW67LYY42jJxw3wA9172UTFQsJ2D7BI3J9AwJfNUU9ZTapIHEDTTH
	 fP5cId5pTdCdTTNfI8GZjRIGthHi4si8FzoPbqsOs8UvTYwC0EuuGYdVJSoaPgrZ8f
	 rhbMPyMA+VgQy8RA0L+JA5BNCo6RmEyNIR1NviZqNtC7EjoY7jJe+QsjulMbvVATnN
	 vUMmF86CyN9kA//qJldrArAvvoh15wMemsH/4bzT3HQ1zlN3bdtHZcs+wsDDp498Jm
	 BSKIcgux8O95t9+lG+4WkJOZ/BsGBxEvdrl0WLqcFxFy8Fdfgad4GeVMlen0ad4COF
	 fFwka+Tfmelig==
Date: Mon, 5 Aug 2024 13:47:40 -0600
From: Rob Herring <robh@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>, Lee Jones <lee@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Weizhao Ouyang <weizhao.ouyang@arm.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org, linux-serial@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 02/10] dt-bindings: arm: rockchip: Add rk576 compatible
 string to pmu.yaml
Message-ID: <20240805194740.GA3188010-robh@kernel.org>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
 <20240802214612.434179-3-detlev.casanova@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240802214612.434179-3-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_124742_925034_2245E3B3 
X-CRM114-Status: GOOD (  14.80  )
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

On Fri, Aug 02, 2024 at 05:45:29PM -0400, Detlev Casanova wrote:
> Add the compatible for the pmu mfd on rk3576.

Typo in the subject. rk576?

> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> index b79c81cd9f0e6..932f981265ccb 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
> @@ -26,6 +26,7 @@ select:
>            - rockchip,rk3368-pmu
>            - rockchip,rk3399-pmu
>            - rockchip,rk3568-pmu
> +          - rockchip,rk3576-pmu
>            - rockchip,rk3588-pmu
>            - rockchip,rv1126-pmu
>  
> @@ -43,6 +44,7 @@ properties:
>            - rockchip,rk3368-pmu
>            - rockchip,rk3399-pmu
>            - rockchip,rk3568-pmu
> +          - rockchip,rk3576-pmu
>            - rockchip,rk3588-pmu
>            - rockchip,rv1126-pmu
>        - const: syscon
> -- 
> 2.46.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
