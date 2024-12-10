Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 588ECE77180
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 09:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OPSiHcFBmAH9UpwrdmUT+BfTiGDCtTm5YlXfMrAQuHQ=; b=e1gq/YAlrvZVNXOgD+sfo7G0PR
	LG4KgKjpIkgmdMQdclgOWpr3zRbBSeVXQcF7PC7eo0Lo/7MM508+RGvD3FnEdi0+/XCOIhYBUmRwd
	ET1aSZ9IlWxTPS5RYbkOeWT6BOonkEv05KpielRjmoAq+KM4K1pzrd70AOyiSLp8uN4VGz2yvLvSp
	VMuhiPfhc8i4EI4iA18xetMlMVEyghBTwMY6KdPRHcGkmsKvclVSvLkoHt+7I6jc2rztGa60mGQkq
	DkHzctR6Gu9k94Bd+0RZkLOlsrCDqVMKpTcXStfgK2JPbZxQf8DDBlLoRcUxkapcPgsHu1cy/2s5a
	1T1Dtkkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKwoQ-0000000Az4n-1GJb;
	Tue, 10 Dec 2024 09:45:50 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKwnL-0000000Ayo8-1OPR;
	Tue, 10 Dec 2024 09:44:44 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733823881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3YiF7ThrDbAWeKuRCOAFsJKBbN+BqrzeViLR+WJYBGs=;
	b=vPqeDVKo1NuK++72WGjDs5Xgi2ccTif6seKQoz8N1jraAKbxWjh1xsj9p9fKxk5kBtjak2
	Y0B1KqAk1QaPGV5y0Bqd+soG2AtWYXWIrJbmta/TgRIVhvZLJ/ns29XXX8SWyYB7M+Eflw
	Da005oSFEzy3hU2FQv23SHrYlsihCE7MeEh7+AKgmGUOiXjJT8EgskvFMQlIGAd3+yf0Wf
	b7SRLYf8BrVNeZ0qWQUWqtPK7qyN8LE8sTA9K6E1DEIYEumta8tQ9J9vcdFHl1w8n1mhPA
	DVS2QvvTyoYO25N25eQKgyPZkp6KJX8sDp5iBtSU+UY+4VusU/zoSF7GvfrqJQ==
Date: Tue, 10 Dec 2024 10:44:40 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang
 <zhangqing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/6] clk: rockchip: fix wrong clk_ref_usb3otg parent for
 rk3328
In-Reply-To: <20241210013010.81257-3-pgwipeout@gmail.com>
References: <20241210013010.81257-1-pgwipeout@gmail.com>
 <20241210013010.81257-3-pgwipeout@gmail.com>
Message-ID: <0d11705121f29ccfb7cfa342505a6e35@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_014443_528572_33ECC275 
X-CRM114-Status: GOOD (  16.08  )
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

Hello Peter,

On 2024-12-10 02:30, Peter Geis wrote:
> Correct the clk_ref_usb3otg parent to fix clock control for the usb3
> controller on rk3328. Verified against the rk3328 trm and usb3 clock 
> tree
> documentation.
> 
> Fixes: fe3511ad8a1c ("clk: rockchip: add clock controller for rk3328")
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
> 
>  drivers/clk/rockchip/clk-rk3328.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3328.c
> b/drivers/clk/rockchip/clk-rk3328.c
> index 3bb87b27b662..cf60fcf2fa5c 100644
> --- a/drivers/clk/rockchip/clk-rk3328.c
> +++ b/drivers/clk/rockchip/clk-rk3328.c
> @@ -201,7 +201,7 @@ PNAME(mux_aclk_peri_pre_p)	= { "cpll_peri",
>  				    "gpll_peri",
>  				    "hdmiphy_peri" };
>  PNAME(mux_ref_usb3otg_src_p)	= { "xin24m",
> -				    "clk_usb3otg_ref" };
> +				    "clk_ref_usb3otg_src" };
>  PNAME(mux_xin24m_32k_p)		= { "xin24m",
>  				    "clk_rtc32k" };
>  PNAME(mux_mac2io_src_p)		= { "clk_mac2io_src",

Sorry, but I was unable to verify this in the part 1 of the
RK3328 TRM, in both versions 1.1 and 1.2, which is all I have
when it comes to the RK3328 TRM.  Is that maybe described in
the part 2, which I've been unable to locate for years?

Moreover, the downstream kernel source from Rockchip does it
the way [1] it's currently done in the mainline kernel, which
makes me confused a bit?  Could you, please, provide more
details about the two references you mentioned in the patch
description, or maybe even you could provide the links to
those two references?

[1] 
https://raw.githubusercontent.com/rockchip-linux/kernel/refs/heads/develop-4.4/drivers/clk/rockchip/clk-rk3328.c

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
