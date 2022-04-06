Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12387C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqKT8FIgC58qJzi/L0sskeu1WSKAx2fRJA3zGw7vpsc=; b=q60Op1jTuWd5eK
	FdHJfKkP/vgSctiIxJR7PysDzMm9Bbcy7OZvYUkbvHn19SW/PuQBWGVvCdLLqShntgzB4JtjR7nhS
	nZxqBnPwfEP6GHEUX7YE3Tk/TDvcU0dS4WQTdqgau1XR8iNa1LOIG58+7A3e7xSBlJnltdyVsmXgI
	79LRfyBOfN6yzXza4BK8KBZh/0HKmTkvu8PbI8ZFvyL1WLhHEZK7nt7da8ENTLN1DF/E3LNbTg7u6
	6NwYL2zx1bVQri2qV5wtr5qLa7dvaNKWfTpX4lzLJK2LLO3V6RmIIoIceSULx29j2hMoj7NgNofSX
	4U7Rewwd7Qn7xtCWM0TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc3dp-005hos-Cf; Wed, 06 Apr 2022 11:16:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc3db-005hiW-Ok; Wed, 06 Apr 2022 11:15:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D150423A;
 Wed,  6 Apr 2022 04:15:39 -0700 (PDT)
Received: from [10.57.41.19] (unknown [10.57.41.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E042C3F718;
 Wed,  6 Apr 2022 04:15:37 -0700 (PDT)
Message-ID: <bb429523-6a06-33ab-2289-22ef5fa8b0cb@arm.com>
Date: Wed, 6 Apr 2022 12:15:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v9 01/23] clk: rk3568: Mark hclk_vo as critical
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-2-s.hauer@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220328151116.2034635-2-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_041547_935637_0086A2EE 
X-CRM114-Status: GOOD (  22.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-03-28 16:10, Sascha Hauer wrote:
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

FWIW,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
> Notes:
>      Changes since v8:
>      - new patch
> 
>   drivers/clk/rockchip/clk-rk3568.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
> index 63dfbeeeb06d9..62694d95173ab 100644
> --- a/drivers/clk/rockchip/clk-rk3568.c
> +++ b/drivers/clk/rockchip/clk-rk3568.c
> @@ -1591,6 +1591,7 @@ static const char *const rk3568_cru_critical_clocks[] __initconst = {
>   	"hclk_php",
>   	"pclk_php",
>   	"hclk_usb",
> +	"hclk_vo",
>   };
>   
>   static const char *const rk3568_pmucru_critical_clocks[] __initconst = {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
