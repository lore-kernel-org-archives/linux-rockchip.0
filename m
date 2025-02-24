Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A12BC021A4
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeHE5UVTVkuEhdjzfCAj/g1cnSvM2oRtQw6Z8xzKidc=; b=pLLv/QtTUESStk
	tY0nVVMCQQhZ/BUwDJOsTu1pJAOFW3Dm6utzYtJhnrM9X8huVB+1co4hIxXa2oUOB1Psq7a3ARAYp
	vT/wc9ZYLV9tP02kG0f6fgqnbftjOOaxt6zDO8DcZqlApOK7jd4bVRVOJ7v3SREW4x5oW2rZQuEE1
	fiMMRb3uRh2eT5gote6eur4GPBzcMFpsgpFSvlCvxyZlUDqsUw8DqsYgDZ7CztkR6s/HGjxA77bVS
	FFh3tuIIzbe9oF9k6oQQZeQVY+lUtku61UQU3dyTfMwWZz42uBLy0f81iTWWDQ1lUbdf/w+b+BVel
	jQhtqqEtWcsXaIyuNRfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmerm-0000000F41y-04Ez;
	Mon, 24 Feb 2025 20:15:50 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmelt-0000000F30P-3Kb2;
	Mon, 24 Feb 2025 20:09:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E45BE5C3A57;
	Mon, 24 Feb 2025 20:09:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5FFD3C4CED6;
	Mon, 24 Feb 2025 20:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740427784;
	bh=YWblvzyL6cWwWDLx/Cb21hLUSZ83nNZh13vfA6xbIdw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j9WqobFEmTEBiK03iSDs7rBWeNj2Enp3iOKbXMubwdCVqTH3nR7Z6Orq2THBIQCa6
	 zIsqI2hSJvv8RohqUfpxeUDzAdGknsZ/+3W/kxe409xhPovrxLr7xHdy0waAMMWXju
	 RfsTSuvr0gFY68ScJwgAX+qMUX14rPFUEJgRO9s1FhJAWAEq4w10TvVOObvqldia9d
	 pb0Bqp/f8NaTDha2k/C71GuXPDL8M9JzTRflwH18Eh/RfsSLKyyKQS1hKwlFyF5VgM
	 ak7+42bDdgp2CrkD7ZDEXBu/Gce+GuYtHiXIeEvjqdECRCr66UOZOV5wi6ezFKRVtv
	 hzjlS8AA6+Tug==
Date: Mon, 24 Feb 2025 14:09:42 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v7 11/15] dt-bindings: display: rockchip: analogix-dp:
 Add support for RK3588
Message-ID: <174042778228.4021934.12821302542409218645.robh@kernel.org>
References: <20250224081325.96724-1-damon.ding@rock-chips.com>
 <20250224081325.96724-12-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250224081325.96724-12-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_120945_873876_8752D92D 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, dianders@chromium.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 24 Feb 2025 16:13:21 +0800, Damon Ding wrote:
> Compared with RK3288/RK3399, the HBR2 link rate support is the main
> improvement of RK3588 eDP TX controller, and there are also two
> independent eDP display interfaces on RK3588 Soc.
> 
> The newly added 'apb' reset is to ensure the APB bus of eDP controller
> works well on the RK3588 SoC.
> 
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Add the main defferences of the RK3588 eDP and the previous versions
>   in commit message
> 
> Changes in v3:
> - Expand the property clock-names, resets and reset-names
> 
> Changes in v4:
> - Remove 'spdif' clock which added in v3
> - Add the comment of newly added 'apb' reset in commit message
> 
> Changes in v5:
> - Put the differences between RK3288/RK3399 and RK3588 into 'allOf'
> 
> Changes in v6:
> - Keep the widest constraints and add only RK3588 related constraints
>   into 'allOf'
> 
> Changes in v7:
> - Fix the errors related to 'reset-names'
> - Remove unnecessary 'maxItems' under 'reset-names'
> ---
>  .../rockchip/rockchip,analogix-dp.yaml        | 22 +++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
