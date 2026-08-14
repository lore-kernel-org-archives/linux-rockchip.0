Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF6E3C5CFC1
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2026 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hoYzGa5ODFqwaRtlmT0KinHQU7bqNgVivEwIlTk58s=; b=Jy57IXuksrWeXh
	lAvCzgCsQOfwlbySQc+HUNkz9s2J5xEqrhNFTZuSTcEAp2h095MgFDfZuoPg4FpmKvGG9W3AO2hZE
	QxG0QvxT1KHEh9dWzLAoTEIv2OszeDqVLdxxEyBhZJEwCyqxPsMOqHoPnpKsS9jrbVvDokhy9W+6q
	0Q0UVrdiYpdojzj5cLZw82QZQGNxwmKtISCuEQJleD8eE2a+Pc7FRSBaYc9L93VKXwIuqmwfQ5/hl
	aj8w55e9mJyT8cMfTEZL/6/WTu1y5TUSD/ZJO5qvvXjyMSrS9AqogL77vc/WFfhqMtasKf8L6pQBl
	E4622uXGlNfTzBtmKg/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup5T-00000002Vkz-1AVL;
	Fri, 14 Aug 2026 10:24:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup5S-00000002VkO-0oa4;
	Fri, 14 Aug 2026 10:24:30 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A2828601DE;
	Fri, 14 Aug 2026 10:24:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 436591F000E9;
	Fri, 14 Aug 2026 10:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786703069;
	bh=LSS+43e2rqGIx4pb0BHZvPdbHb1/jO03BsnjXyl9qc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EXCdrl9utJkAORwBG5H25hX1EBlEagmtA3Y+QcJXW7940djo0uPId6n8vhpGdzAjW
	 sGXF8GTV92/fxeObdyoNv3kIORP35KQlWoeJE/KX2Aknm7F3YRt5SHLCy4xu+qtn7u
	 5hzljeugjhqx2q2iLwL37CYqfOcjuogvM4JzZ2ccMcuTiJLrDHBixOpTs5ezCApCug
	 K01VKAgpIW+bSKR30AxBcbKfUaDkJRNCt+U3iMozEKnWhT08OzJ81L2eqE+E4Bjg6j
	 IFnsBeWZk90s0v0v3v1gc0hVo5AofFtb+TyII25LwbdyFiechf1MDOSDfbSX9pVyT2
	 GPaHLyMUfc2KA==
Date: Fri, 14 Aug 2026 12:24:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Brian Masney <bmasney@redhat.com>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 15/25] dt-bindings: clock: rockchip: Add SCLK_IN_SPI1 for
 RV1106
Message-ID: <20260814-proud-airborne-skylark-a71da7@quoll>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-16-vlad@zlab.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810121121.210040-16-vlad@zlab.su>
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

On Mon, Aug 10, 2026 at 03:11:06PM +0300, Vladislav Leonov wrote:
> Add the clock ID for SCLK_IN_SPI1. This gate exists per the RV1106 TRM
> but is missing in the Rockchip BSP kernel. SCLK_IN_SPI0 already has
> a binding, so add the SPI1 counterpart for consistency.
> 
> Signed-off-by: Vladislav Leonov <vlad@zlab.su>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
