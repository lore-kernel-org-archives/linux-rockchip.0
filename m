Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD4F5C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 13:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8WJqVeeRVpZodRvTR6y4p8ICYs6QlGgVEgjVf5aB9P4=; b=Pj/2Ud8GhVCy1u
	8yGVe2wJzk5lkzKhfvf2mBtUmlPpPK+nOXlYAkDHjmsjDlrPoWK2B8jsdvcG2sTZ0pxRnCHdWxrsG
	xV4Sogy+6dS8AXtYeV0P9dYVywZkibezQ5pNy4BxwtETmxd1z6LE2pv/kycoHKx4kSRX8a/z9rY94
	xNOMqy3o2QmAjritYomsJuezQG1RUfjxJDEcBdcj6BLWHDSgPTaZiHd4arFkNoeN2OMWsztU0hQUE
	B9NmGc4J+NuQldB5LhiQvnFpxiQ1NsddanQr0drpaUEXzbHPhsKKTAblnBk+dlFeGiocjMt+KY8ZH
	Pm56c5ZOhj0oe8T/XOIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ8HQ-00AKVv-Dc; Fri, 04 Mar 2022 13:47:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ8HN-00AKVX-J7
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 13:47:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79F4E1396;
 Fri,  4 Mar 2022 05:47:32 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8E1D63F70D;
 Fri,  4 Mar 2022 05:47:30 -0800 (PST)
Message-ID: <926e583e-14d1-67ee-f3dd-4f2cb57ea638@arm.com>
Date: Fri, 4 Mar 2022 13:47:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH 3/4 v5] dts: rockchip: Update regulator name for PX3
Content-Language: en-GB
To: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, strit@manjaro.org, mbrugger@suse.com,
 arnaud.ferraris@collabora.com, knaerzche@gmail.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
 <20220303203958.4904-4-macroalpha82@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220303203958.4904-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_054733_711063_9D0AF0C6 
X-CRM114-Status: GOOD (  13.59  )
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

On 2022-03-03 20:39, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The regulator name of SWITCH_REG1 does not match any other board
> with a rk818 PMIC, nor does it correspond to a regulator in the
> rk808-regulator driver. Changing name to SWITCH_REG which is
> consistent with other boards and is in the driver.

The datasheet I found also names the channel "SWITCH" rather than 
"SWITCH1", so this seems correct to me.

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>   arch/arm/boot/dts/rk3188-px3-evb.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rk3188-px3-evb.dts b/arch/arm/boot/dts/rk3188-px3-evb.dts
> index 39c60426c9c9..fc478ac4e781 100644
> --- a/arch/arm/boot/dts/rk3188-px3-evb.dts
> +++ b/arch/arm/boot/dts/rk3188-px3-evb.dts
> @@ -212,7 +212,7 @@ wl_18: LDO_REG8 {
>   				regulator-name = "wl_18";
>   			};
>   
> -			lcd_33: SWITCH_REG1 {
> +			lcd_33: SWITCH_REG {
>   				regulator-name = "lcd_33";
>   			};
>   		};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
