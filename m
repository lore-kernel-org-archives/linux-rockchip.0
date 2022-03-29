Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75FC1C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 13:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ag/irPjI/AOSaZQ+4iM4jC8EIBMm3ORtKKT46xQMXcs=; b=Nwl/oRwQNei+MF
	2uZt8lhdYshVckdqE40x8JpmQc1F3DXBP170m6bgAGcFQhadBnRHqOH8mPqa38+QwfKTfveS2cUzO
	H+40Uydn/pTkWRExKYMN8eogTZSZpwWop6//5e2L7kVmcLUAFZLhJGX+AV3JDAdD4b2gVWt2Qzabl
	wYMLskOb+epuZtUJ9klGcNeMUpO/kF0dmMeN/7F1l3tSP9rqvmEyiFEpNrfAhah2k9T6J78C+sDPy
	nMbG8asbwtthibWeDAjAv08PKm/yZTUJuYNqLJb+wRa1pumHVMVFE/9W0sI0EUNU1h58b7FYm14+J
	1QC2SugQsNvvsFcV3Hfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZBoQ-00CLCp-Rg; Tue, 29 Mar 2022 13:23:06 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZBoE-00CLAB-Nl; Tue, 29 Mar 2022 13:22:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 906B41F427D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648560166;
 bh=fkYLreROLaT3/ibZDuXdX+BsL1eXrW9BPtkQObOUCLI=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=SH2cosC88mdr4JJm9YuIlwoNjheKrDyBxC/UwAl3gfENxnzbYLa3augL9iNYg7xcR
 MVQC5j09cDSp6eId5pdWMsktMXaM4BK59ObEKqu4aq/z2WCvpBgbPt/NK7HNL4/jFs
 AerULpX/HvC6XH0M6JmPJUGeQqC6RWuuyXNuQcokzL2Ic5Vgu0fuxkBfrjDCHlbWoS
 f27WFyR/56vhRuHA7tyh/gOiC/V5sCHLVYAA5bzYLD7RvcOU5RgFp6FLXqLc6t7FYH
 lTTkCeeDd8VbwmG4kstNqKmbOjE2GQJf07VKQhB98ciN4ZHprKweQVbaFk99KzrgGl
 u26dLk8elbCww==
Message-ID: <72850490-44aa-32b3-a963-6e1d38d35db7@collabora.com>
Date: Tue, 29 Mar 2022 16:22:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v9 01/23] clk: rk3568: Mark hclk_vo as critical
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-2-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220328151116.2034635-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_062254_940001_D4885187 
X-CRM114-Status: GOOD (  24.25  )
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

On 3/28/22 18:10, Sascha Hauer wrote:
> Whenever pclk_vo is enabled hclk_vo must be enabled as well. This is
> described in the Reference Manual as:
> 
> | 2.8.6 NIU Clock gating reliance
> |
> | A part of niu clocks have a dependence on another niu clock in order to
> | sharing the internal bus. When these clocks are in use, another niu
> | clock must be opened, and cannot be gated.  These clocks and the special
> | clock on which they are relied are as following:
> |
> | Clocks which have dependency     The clock which can not be gated
> | -----------------------------------------------------------------
> | ...
> | pclk_vo_niu, hclk_vo_s_niu       hclk_vo_niu
> | ...
> 
> The clock framework doesn't offer a way to enable clock B whenever clock A is
> enabled, at least not when B is not an ancestor of A. Workaround this by
> marking hclk_vo as critical so it is never disabled. This is suboptimal in
> terms of power consumption, but a stop gap solution until the clock framework
> has a way to deal with this.
> 
> We have this clock tree:
> 
> |      aclk_vo                  2        2        0   300000000          0     0  50000         Y
> |         aclk_hdcp             0        0        0   300000000          0     0  50000         N
> |         pclk_vo               2        3        0    75000000          0     0  50000         Y
> |            pclk_edp_ctrl      0        0        0    75000000          0     0  50000         N
> |            pclk_dsitx_1       0        0        0    75000000          0     0  50000         N
> |            pclk_dsitx_0       1        2        0    75000000          0     0  50000         Y
> |            pclk_hdmi_host     1        2        0    75000000          0     0  50000         Y
> |            pclk_hdcp          0        0        0    75000000          0     0  50000         N
> |         hclk_vo               2        5        0   150000000          0     0  50000         Y
> |            hclk_hdcp          0        0        0   150000000          0     0  50000         N
> |            hclk_vop           0        2        0   150000000          0     0  50000         N
> 
> Without this patch the edp, dsitx, hdmi and hdcp driver would enable their
> clocks which then enables pclk_vo, but hclk_vo stays disabled and register
> accesses just hang. hclk_vo is enabled by the VOP2 driver, so reproducibility
> of this issue depends on the probe order.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>     Changes since v8:
>     - new patch
> 
>  drivers/clk/rockchip/clk-rk3568.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 63dfbeeeb06d9..62694d95173ab 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -1591,6 +1591,7 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
>  	"hclk_php",
>  	"pclk_php",
>  	"hclk_usb",
> +	"hclk_vo",
>  };
>  
>  static const char *const rk3568_pmucru_critical_clocks[] __initconst = {

Nice! That's much better than the DT hacks, IMO, thank you.

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
