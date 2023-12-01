Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49A42C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 17:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Jz6y9jcN67g93mEqd1IQoC0n8GRIgiVSE97FNw2Y5zk=; b=3WtFzRJgLcHAjJBxyOqnWwNw/M
	VZRa2jMWYkSBJM5a+lqB3EwHTdMRY+cMWGF943w4GciKuxv90o5xBkJKo5F+KkrOb+o8tqwuTBQJA
	0CoEsJAMsuUaRUY6jOdLJbRwWxpYZtZVAds9Si+XqFE5CxAOhv5knWUOiz7B4nxXe9XpSvfJa2QbI
	DlJy3qZAOxlr2/OaYjG0qo7iSEMuXVo8/L8b+38Dt2dyahc0tNUq/zxFlSd1jwgXM2rywubP6TGH6
	jvA67G6i0HBK6CjrUBSeV0d6Jy52fR0Gm5AvViQMVVdUpHFDDDr5WVeTMQnomIWN/HZRvlsol5vbe
	WeoVKMMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r97BI-00EJVB-2P;
	Fri, 01 Dec 2023 17:20:00 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r97BE-00EJU5-2d;
	Fri, 01 Dec 2023 17:19:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701451191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MujGHo99CizeQU+at91QJv/6vJMAGmpQzEuSvY6++ao=;
	b=YgtqdO72ypmK6qjFvxtX+9McyiXr2RMjj3BxcR3WH1di0Ls/u+lLuD2WcMl3u0XRod+dAr
	QQ+Csllmb8gr8sg9Qhk3e5PQN93xYUc4p2uUkWPYamEORmMEJ1AnN7GvgxgOCqgkesXnSA
	eP6n8ONCw/yNIXKio0K2r1CkG3MTHpyp/D0PU6/0FCHYJJyndLz1ctJRGOgySSiETQW0k1
	o8LV/3ZWKMdfK4zYUAxK4JN+/RGLypXFkSjiYcrjVoc5aTEMhFKhTw3SQlsGiSj7VKvxXs
	lD2a/RIXuVmw8EI6KzPHPrPSX3/qhuPIWmGMbzjROVnZlrQj770wPacPWT4Hzg==
Date: Fri, 01 Dec 2023 18:19:51 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, quentin.schulz@theobroma-systems.com
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: aliases for core busses in main
 dtsi
In-Reply-To: <20231201165810.334212-1-heiko@sntech.de>
References: <20231201165810.334212-1-heiko@sntech.de>
Message-ID: <034a3f8712f8405113a92a1e1969e94e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_091957_337711_5F00E539 
X-CRM114-Status: GOOD (  11.09  )
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

On 2023-12-01 17:58, Heiko Stuebner wrote:
> Placement of aliases is cause for a lot of discussion :-).
> Most recently in [0]. And while devices such as mmc controllers do have
> names not following any numbers, this is different for the core
> busses/devices like serial, i2c, gpio, spi.
> 
> All of those start at number 0 and increment then. And all pieces of
> documentation like soc manuals, device schematics as well as pin-header
> descriptions for SBCs also use these numbers to identify the controller
> instance.
> 
> All previous Rockchip socs also carry those core busses in the main 
> dtsi
> so that not every board needs to have the exact same aliases defined.
> 
> [0] https://lore.kernel.org/all/4762834.KRxA6XjA2N@diego/
> 
> Heiko Stuebner (4):
>   arm64: dts: rockchip: move rk3588 serial aliases to soc dtsi
>   arm64: dts: rockchip: add rk3588 i2c aliases to soc dtsi
>   arm64: dts: rockchip: add rk3588 gpio aliases to soc dtsi
>   arm64: dts: rockchip: add rk3588 spi aliases to soc dtsi
> 
>  .../dts/rockchip/rk3588-edgeble-neu6a-io.dts  |  4 ---
>  .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  |  4 ---
>  .../boot/dts/rockchip/rk3588-evb1-v10.dts     |  1 -
>  .../boot/dts/rockchip/rk3588-nanopc-t6.dts    |  1 -
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   |  1 -
>  .../boot/dts/rockchip/rk3588-quartzpro64.dts  |  1 -
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |  1 -
>  .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  |  2 --
>  .../dts/rockchip/rk3588s-indiedroid-nova.dts  |  1 -
>  .../dts/rockchip/rk3588s-khadas-edge2.dts     |  1 -
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |  1 -
>  .../boot/dts/rockchip/rk3588s-rock-5a.dts     |  1 -
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 32 +++++++++++++++++++
>  13 files changed, 32 insertions(+), 19 deletions(-)

Thank you for cleaning this up.  Here's my Reviewed-by for the entire 
series:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
