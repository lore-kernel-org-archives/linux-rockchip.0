Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1440E1093199
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deS78AFjvXEqXhIWw2C31pIrFwt58NKDgNCepU3kYXU=; b=0x/t5m9ComQ8tP
	LwNKDIOY9WqFw/s7qMmmL14Bno88pblTfa+xAlOdT6CWmM67A4MDrXM9SFUZ3WxLpjaxE9ACu7qDs
	JDbYteoKiroOJfQJI/Li9i1koSwQJzXR6fpsStfcAKUET8ZRzaWtBojAhVa1q4yNhvHYrfZBji+6q
	yTUKNTDge1sam6MRaGu/NUXIaJxFVzDVQUPX3JKxpHtCfP/gWehyDQS5sWWe/d/x8OiMPPiLoAmHC
	rZSKH4Steucprwvjc+zEBsxzCdZFHi58QKO792WP7hQgR2j3GHZn2j6MLiY9BltIMgRJAWLyRqf1Z
	ah1RfMaPSgg9amQs2/Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3W0v-0000000CSh9-0UJm;
	Fri, 20 Mar 2026 09:19:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3W0t-0000000CSgK-2YgY;
	Fri, 20 Mar 2026 09:19:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=AalUYTBsOrSBLpMWY4eHK3qWwaY7w/HBDn6iVpHR0CU=; b=JLxfpKWwUJQ7V4q1k3XZK/+zpF
	O60Uv785pN1sB2kmdUSqaX7Y1B9+wToYuBlss/ok0M3W7QCkhqgfLaGjYL5kzXYZnVLUbEjttuJLA
	vPy5Gc2zIrsIgWSzx38Jy8n7PNxNDxCbUxe80eb831nBJIG9k2mCFq5QTtwPw4uPDfbT6vRnSCvYd
	TBiVQx+MeHUcSCQTRm7kSLNNoD8n+JwIa22fRYLVWb5XnHVRdbWUMjc57m6WhCg05Lwn7rKWsZ6pJ
	zW8DyJKQB6pu9N6J+RpVL5czpoolpQO/SUrwRmZkHKCg5PvNGSMrffAip2zS+r+YggiuRqsrKBQEP
	9XiAY43w==;
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3W0e-0000000FDT2-2D2Z;
	Fri, 20 Mar 2026 09:19:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 74D8B4026B;
	Fri, 20 Mar 2026 09:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C66ADC2BC9E;
	Fri, 20 Mar 2026 09:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773998348;
	bh=LaFfclQJNpW8j4z2NNQXpLUkD7/mL0945GUUmdgcNYI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XxsQxNPgDUJHJqSei+eyT3/4wLXRMZEqzks3G36VQLFcfu9JWqwnY0mOg0MTOi1Ro
	 0xNBxOt4FxheBLRQZkCyILhWO4riIZOPSIilhvRCJqaqqdY6/5HF3hQPztctn6ucIX
	 1OKBg5jQrZDwH3wIHVCRAqYFJbjGKxwstlRNVQJe9i0P6mwq/PHNiGhZVoaXjuAI5d
	 muiNrzaa0qk78JgPptsfReDFcKvx/Swv28NN4rw22m1qkBYrrXH64UWHgS8AKL1EqF
	 sZayDTa+oC8LyGAjhTAcjJ2yxaJIEWbh77k+fYRJoB/Sn4EYeME3yGNRmV8G2OIOBE
	 oEPtO3LUNwjSg==
Date: Fri, 20 Mar 2026 10:19:06 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v2 1/9] dt-bindings: display: rockchip: analogix-dp:
 Expand clock-names "hclk" for the third clock
Message-ID: <20260320-amusing-magnetic-harrier-20cc40@quoll>
References: <20260319104031.1986946-1-damon.ding@rock-chips.com>
 <20260319104031.1986946-2-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260319104031.1986946-2-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_091912_878605_BBCCBF3F 
X-CRM114-Status: GOOD (  16.11  )
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
Cc: heiko@sntech.de, kever.yang@rock-chips.com, dri-devel@lists.freedesktop.org, dianders@chromium.org, amadeus@jmu.edu.cn, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, didi.debian@cknow.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, heiko.stuebner@cherry.de, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, alchark@gmail.com, michael.riesch@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com, tomeu@tomeuvizoso.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Mar 19, 2026 at 06:40:23PM +0800, Damon Ding wrote:
> The RK3588 eDP controller needs the video datapath clock "hclk" to work
> well. Previously, it works without explicitly adding this clock because
> the 'rockchip,vo-grf = <&vo1_grf>' property implicitly enables HCLK_VO1.
> 
> Fixes: f855146263b1 ("dt-bindings: display: rockchip: analogix-dp: Add support for RK3588")
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../bindings/display/rockchip/rockchip,analogix-dp.yaml       | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> index d99b23b88cc5..d2bc8636b626 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
> @@ -26,7 +26,9 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - hclk

You just told me it is the same clock, no? I asked that and you
confirmed? Or you replied with an answer not relevant to the question?

If this device takes reference to grf, why does it also take grf clock?
Devices MUST NOT take clocks on behalf of other devices, so please
answer with a list of all clock inputs according to datasheet/manual.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
