Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C501C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Mar 2022 18:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmACUhEgNr/XxGcyRjinxk+igED76eFv+PkQaMVCg6E=; b=GPnskgtvL8SQMF
	/2+98kPSesHcRDRimy4AvqfqEetmlSUYRxFhd0TNyLpcQ+8uQJUAbK8WzIUvWWxjxsY45f3laARUg
	3zVLsQcJqo/7ZzYN5zU0NTmJTtNaygGdRKjlMGuH3nqPisGUnA10GKehPIultSSjkSetLaTuh2hmM
	//vp3+rK8EFyFcOorvYDG28qwTC+bUOc/E7zm0L3J5fkcZsn2wuXOzyEN83zmh7dboVWnpkUj5gFm
	EvPhSpLQ2kAXh+Bn4alIr7sY1i5d0uJpiU2Bo2O8NGAOUR/459xretlh+KuzmJ4gNHx9cY2+heWq4
	2upC5IwXwPDhLOGQbfYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSNLw-00DhNe-9S; Thu, 10 Mar 2022 18:17:32 +0000
Received: from mail-oo1-f53.google.com ([209.85.161.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSNLf-00DhJ5-1r; Thu, 10 Mar 2022 18:17:18 +0000
Received: by mail-oo1-f53.google.com with SMTP id
 n5-20020a4a9545000000b0031d45a442feso7780641ooi.3; 
 Thu, 10 Mar 2022 10:17:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=P6BWSW4vUXtb6Zn/KM/YH6Iar9Snb8Amni/kNF2TPhI=;
 b=irUGtn8fUJW5vinEdTjf/2Ac1xO96W8fAT7jlZauQFNad0jqH0ZVUet5YLPoWrD3uB
 DXSC6lEfgWzkeu1SRJb1U/G6A0qActbT5yesv+kKUwDeQk23MOIUiyMGWi7aktP6+1n5
 KdqGS/fPugWUX+Q9Je+0uOvMzxAVOdqUcT0dDd4Vl6rrlcpN1lFvRRSd15oLEI91MaI0
 CYDIyBKIErPspNJw2XHbaUgqDy9bdBBvTPMXPTVujgHj3h4uXYZ6PPO1Z6KuAt300I1/
 oiTf3uAAwL++Q8E9mpBPS0BFCzvh3b5CVjT1/sS54r8MiqRcgH8XkfjSgvp3XqtCaKPv
 GZmA==
X-Gm-Message-State: AOAM532gSMSsfNe4fhxNKjrIpT0DoztIxl2ipP3wYWKJWY92Ls7uT4a8
 sAMuxR6F8vHUVGt7cJ/pxqYmccngag==
X-Google-Smtp-Source: ABdhPJzpcfJhz3jsk4nC85EmodiMwC7aPQpcbxZqL/2c408GwZfrVYG01TUlRfTDa6pGFmXX0KY7KQ==
X-Received: by 2002:a05:6870:618a:b0:da:b3f:324b with SMTP id
 a10-20020a056870618a00b000da0b3f324bmr3568443oah.251.1646936229684; 
 Thu, 10 Mar 2022 10:17:09 -0800 (PST)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 m13-20020a056870888d00b000d103280accsm2569260oam.16.2022.03.10.10.17.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Mar 2022 10:17:08 -0800 (PST)
Received: (nullmailer pid 1799395 invoked by uid 1000);
 Thu, 10 Mar 2022 18:17:07 -0000
Date: Thu, 10 Mar 2022 12:17:07 -0600
From: Rob Herring <robh@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Lin Huang <hl@rock-chips.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 01/15] dt-bindings: devfreq: rk3399_dmc: Convert to YAML
Message-ID: <YipAo5zWp/MF0NW6@robh.at.kernel.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
 <20220308110825.v4.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220308110825.v4.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220310_101715_129453_72F32FB5 
X-CRM114-Status: GOOD (  20.33  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, 08 Mar 2022 11:08:47 -0800, Brian Norris wrote:
> I want to add, deprecate, and bugfix some properties, as well as add the
> first users. This is easier with a proper schema.
> 
> The transformation is mostly straightforward, plus a few notable tweaks:
> 
>  * Renamed rockchip,dram_speed_bin to rockchip,ddr3_speed_bin. The
>    driver code and the example matched, but the description was
>    different. I went with the implementation. Note that this property is
>    also slated for deprecation/deletion in the subsequent patches.
> 
>  * Drop upthreshold and downdifferential properties from the example.
>    These were undocumented (so, wouldn't pass validation), but were
>    representing software properties (governor tweaks). I drop them from
>    the driver in subsequent patches.
> 
>  * Rename clock from pclk_ddr_mon to dmc_clk. The driver, DT example,
>    and all downstream users matched -- the binding definition was the
>    exception. Anyway, "dmc_clk" is a more appropriately generic name.
> 
>  * Choose a better filename and location (this is a memory controller).
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
> 
> Changes in v4:
>  * Update .yaml to use more "default" entries, instead of free-form text
>  * s/phandle-array/phandle/
>  * Move to .../memory-controllers, update filename
> 
> Changes in v3:
>  * Add |maxItems| for devfreq-events
>  * Improve deprecation notes
> 
> Changes in v2:
>  * rename to 'memory-controller' in example
>  * place 'required' after properties
>  * drop superluous free-form references and repetitions of other
>    bindings
>  * fix for yamllint
> 
>  .../bindings/devfreq/rk3399_dmc.txt           | 212 ------------
>  .../rockchip,rk3399-dmc.yaml                  | 306 ++++++++++++++++++
>  2 files changed, 306 insertions(+), 212 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/rk3399_dmc.txt
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/rockchip,rk3399-dmc.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
