Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AA1CE77173
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 11:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WdRIiyDuCJJbYO5fpFWpCB3zXX88rLzmwvaNWC75VG8=; b=gKN3IxPZ7n1uDf
	pleSMlGk5SFy5SGS/p2+ljAk3k+WmvVLPBUV+b0zzSIZW5yjfZhMz5LaJTmWqt3L02fvpy/Os0IjD
	JpFYAdZc0/yGigrHRDC92M2GvKf4bUxC/Ag1b4oZE4ORoke/Jz307sLIIp39OaLHaa+RP/LCRTwtA
	guh5oGA9kpfI0F859JBM/3wz/RH4dQ7x6yGpeOTUCbfzzYnX0iZPS/8VpppSKKdIb18mnyJciS/3T
	dh7GH81oL8WoaKGntIt+Ey+UKZnLZi1uM/YPjQzMHdAm8hQd+qe4i9Wh8WuTIX4CSj5xDdJ69uThW
	v4RVzUImiCyAcB4BRIWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJWNT-00000001QxV-2MyN;
	Fri, 06 Dec 2024 11:20:07 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJWMP-00000001Qfg-09z7;
	Fri, 06 Dec 2024 11:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733483937;
	bh=febNccnQ8RS5XqmrWaBISIo5m25NOTjYjc5TdIMoPfA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L41VGT5FtAoj+V8dV/MdyYwwwGpY8uG+Xq+sc+GsYpYTor4ZXKf37LSBrLo0gHG55
	 luGesglz/Qw4rszdWkRLoMYtquLUV+r8tw3xBZCWXmm4uI/sP0WyBudHKgEbUTxPF5
	 oFxtvcsE9uFxxjgnhTbIwQAcqTnsnur1tyrRyAr7y+3FNC2K7ySKTMXztZIoEnGGIF
	 +yyNXronPYeFfRe1M2H60bNjm3JUuHDBz9Md91nVk2ni63DEu1fkL5GoBVvGeca0J+
	 VRBXE+7WsimNnV/uzggEutqBgI2Q446hp+cmkCk+1otGKv6e8NRXyxTJx80+EYWzoq
	 riOeZ2uWHj/nw==
Received: from [192.168.1.90] (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C13B717E362F;
	Fri,  6 Dec 2024 12:18:56 +0100 (CET)
Message-ID: <e6172204-2f3f-4a9c-892c-be85d19ad031@collabora.com>
Date: Fri, 6 Dec 2024 13:18:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: phy-rockchip-samsung-hdptx: annotate regmap
 register-callback
To: Heiko Stuebner <heiko@sntech.de>, vkoul@kernel.org, kishon@kernel.org
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 quentin.schulz@cherry.de, Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20241206103401.1780416-1-heiko@sntech.de>
 <20241206103401.1780416-2-heiko@sntech.de>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20241206103401.1780416-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_031901_257545_40EAE13A 
X-CRM114-Status: GOOD (  13.40  )
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

On 12/6/24 12:34 PM, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The variant of the driver in the vendor-tree contained those handy
> comments in the regmap register callback. Having the different ranges
> describe what they are looks helpful.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index 4ced1479e2dc..c5c64c209e96 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -766,13 +766,13 @@ static struct tx_drv_ctrl tx_drv_ctrl_hbr2[4][4] = {
>  static bool rk_hdptx_phy_is_rw_reg(struct device *dev, unsigned int reg)
>  {
>  	switch (reg) {
> -	case 0x0000 ... 0x029c:
> -	case 0x0400 ... 0x04a4:
> -	case 0x0800 ... 0x08a4:
> -	case 0x0c00 ... 0x0cb4:
> -	case 0x1000 ... 0x10b4:
> -	case 0x1400 ... 0x14b4:
> -	case 0x1800 ... 0x18b4:
> +	case 0x0000 ... 0x029c: /* CMN Register */
> +	case 0x0400 ... 0x04a4: /* Sideband Register */
> +	case 0x0800 ... 0x08a4: /* Lane Top Register */
> +	case 0x0c00 ... 0x0cb4: /* Lane 0 Register */
> +	case 0x1000 ... 0x10b4: /* Lane 1 Register */
> +	case 0x1400 ... 0x14b4: /* Lane 2 Register */
> +	case 0x1800 ... 0x18b4: /* Lane 3 Register */
>  		return true;
>  	}
>  

Nice finding!  The HDMI variant of the driver which I used as an
implementation reference (i.e. phy-rockchip-samsung-hdptx-hdmi.c)
doesn't provide these comments.

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
