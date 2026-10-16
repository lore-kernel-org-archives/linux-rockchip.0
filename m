Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A64F7CCA464
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lsr0X78GvogaCFlPRWyIDmwTkZXQ5VOHQ/8P8GwGRtI=; b=XA4q+DdQ6+M/S3
	TkWgTfz07EJzhJBlIlmD/d2F1bAgc12SoXRjynRLiexeLgXjc2lvDweIaMFd52zH2pmT3sNCYwk2g
	9BMozJEa20UbKmZjN6yo5PMzuqhMwG0bVFrqzwpEjqiEzgTdl+ug/+W62AaXH1Vhkzn9ul0kfQ3hS
	pvJT7COdFmmv51zoKTbalA2VgZ0e2MiN7XgpXpSYnRophBU3SjE+LXP9d+kGjZkpjr467Z8VnOdMW
	AfQCx8bhZu7KCJvh1wcMiCgv40e2ieOTM9aWIJjzbYVSV6pmfEy6h/z534Y4uVCxl7YYPMEFfUO4N
	LJz+Wwnd4S7oirN00Zlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfKK-00000002fAm-077u;
	Fri, 16 Oct 2026 10:38:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfKI-00000002fA5-2IWy
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 10:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=6nGmaW43TFsY8203dyOJ+Nrc5EUvdzx8Ca6xsjCPHmQ=; b=QwGhWeJutuuDvVDYmP0gtyfjVK
	v8jU2oI8bWLywKa0wUAD2e/X4rrscrmen1NOFdHRGCp0xhV1lqwOK9i9ZjGCettNvd8+k+oSBk5my
	ou0G3/Kz8OnvIt4zDqDNm92KlvaPMD3P33Dem97WehMHib/fetVT85930KbFJ1KdWhJwEDLvbQJv0
	xY0j2H6B1LV+FILaIttpvcixos8ZgSJWyHq37kZTadaLGAAkY6jD3LlSOABzJZokCqh8WeFvPLlPr
	k/dMdTaC6ELv4UvCj8ro7cYU9kUsq7JGrGvMFDGffo72400Qn/GpS44B7d1eDwxg6vkDrBYu0ScKI
	SNGO4EsA==;
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHfKF-00000001OQM-0X6i
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 10:38:13 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4a16bc2278aso45282255e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 03:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1792147089; x=1792751889; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6nGmaW43TFsY8203dyOJ+Nrc5EUvdzx8Ca6xsjCPHmQ=;
        b=qSEMOPoy0di1fSChhX5qAZDyjRvOX0AUiXWTwUI+HNeEG39q0aIicyT5kuVKh4AYWu
         miw/EoeBRMo9LJ80udrgXGORd6MzuePFzB9mOvj+kPAdQhrcOiNCvak4tAQdM795jJUx
         qq52W3TzIHDe2lNWneTQ1iMv1NcPTxSr5k3o9wnopZn+NcASzIbLIzTzeqswPbej73aB
         0luznByx55IAplKd0tQzHLKIz6sPuB0k/Njm2AJOf71vfOe86yStfVArYFNQr6qU3Ts3
         kHOjwTBAsSN/cBeYAMgVKvnAO9tZ1CFUm3HHf+nDrSndLBU8AiRk4O0US9yeK/zoLuNX
         W45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792147089; x=1792751889;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6nGmaW43TFsY8203dyOJ+Nrc5EUvdzx8Ca6xsjCPHmQ=;
        b=upbsiObm8jLt3S+U7hhkxAIhn93x3i/efNiRaWn33TLQK/5igRXt9XQwa8ulYLXoWP
         CGca0klMMHie6WDQNWsmrSpFJyPf8Xuq7IEL4P2otXlpiljuPnS6ZcayZc5dOopuZaIt
         b6/i6YqPVeaVzl6ae1zymcQs9mofftZ1505ee3uCo4qpzYOOdVcM9y6ji7Qt+0BDH1nk
         zU3LXKTG1ScsTyC130iHTxIsbq4JNmN/RxvAHZXMQ5VTEXgICS4lHRBzZuLJKFwHi82w
         6SGE/Y2Af9Ts1W8jfMounYkDhC/nLyManuQWHmCvo4ZuITSR+MdulQ9OSJSsluDUg0nW
         5OyQ==
X-Forwarded-Encrypted: i=1; AKwUvBxeqoLV6t/VUz1bZozD8glJYtuyyyTW63TDCkzbJCbRTvbATdUVOYj4AjIKMa3VUlwIWdmLBj0S54vjhMRiuw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKyNKefZZwkQhHVN3Dv7f3SDmD8qAQZKfmLLszLPeSPH3cBexUz
	nVxbKty9/V+PSLqf5p+jrfv9PR7P3JxhHkIL1H4Qu+k7X0AblyLmxMrxezR9JHacGEQ=
X-Gm-Gg: AYBFou3CRDnaC3/KQa5q8sM/lfY7jgRzshDUff6AUCmeuNUFlAZ0l2pyfTfBxcYDm5a
	4riCGewcGAL1QkBfzsnUgDTyJh6Vc6UnrhRVJXzStS6L3WKZoDwWJ9s75fJc8/+xgnNNB2DTzBC
	7RyTMlibet8fIJoxGHYtkFnGbQJHLpv+aFBTABMmEPNE4SjDdZnyk/fSHBL3r2b6mtQBiHNj+Fe
	tq+GrsL453TPlaoPzw0FandK/dagLQ+gfRfHuS2fT86mMNvkf2lcsIqDkU8+QLcVwqx6j+NazjJ
	qx9KdB4Pkt53Vo4+2mSV+8irl3jjFh8ZLUpw6qqgfiLq+Ot3+luJL8Ylm4FPve5N4ozLMStlK61
	R7Iskjgo3L+S3+f+sZUAigvcZtU8ZzcdGPYeYLWrIFewXAQr+naBoRLgRtHuVvuWidGM9jn4JPi
	iuy8vmu/nqrOL4enISaLPZwDMHjo9fseiNeXSgXZQyBFjt4FMVx8zp/udsShW6dNefmrErUqCYv
	iBax3xafjc=
X-Received: by 2002:a05:600c:1c23:b0:4a1:cef3:fb3a with SMTP id 5b1f17b1804b1-4a1cef3fd00mr28299025e9.9.1792147089174;
        Fri, 16 Oct 2026 03:38:09 -0700 (PDT)
Received: from [192.168.0.167] ([109.78.92.136])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1ce02d619sm26430935e9.3.2026.10.16.03.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2026 03:38:08 -0700 (PDT)
Message-ID: <b4a76677-0929-44bb-9c94-7ceb09952168@linaro.org>
Date: Fri, 16 Oct 2026 11:38:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/8] dt-bindings: phy: Add PHY_DIRECTION_TX/RX
 definitions
To: Jason Yang <jason98166@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
 <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <20261016-dcphy-rx-v1-v5-1-e63b49eabe2d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_113811_366121_C27720E0 
X-CRM114-Status: GOOD (  16.89  )
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

On 16/10/2026 09:56, Jason Yang wrote:
> A MIPI D-PHY or C-PHY can be a transmitter or a receiver. Some PHY
> blocks have one of each and can use them at the same time, so one PHY
> node offers two PHYs. The existing cell, PHY_TYPE_DPHY or
> PHY_TYPE_CPHY, selects the mode of the whole block, not one of the two
> PHYs.
> 
> Add PHY_DIRECTION_TX and PHY_DIRECTION_RX for a cell that selects the
> transmitter or the receiver. The first user is the Rockchip RK3588 MIPI
> DC-PHY, where the transmitter serves a DSI host and the receiver a CSI-2
> host.
> 
> Suggested-by: Michael Riesch <michael.riesch@collabora.com>
> Link: https://lore.kernel.org/r/7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> ---
>   include/dt-bindings/phy/phy.h | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
> index 979b5dfd8353..9ead74d9a172 100644
> --- a/include/dt-bindings/phy/phy.h
> +++ b/include/dt-bindings/phy/phy.h
> @@ -29,4 +29,7 @@
>   #define PHY_POL_INVERT		1
>   #define PHY_POL_AUTO		2
>   
> +#define PHY_DIRECTION_TX	0
> +#define PHY_DIRECTION_RX	1
> +
>   #endif /* _DT_BINDINGS_PHY */
> 

This looks like a neat solution to your problem.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
