Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EC54C35FF1
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Mar 2025 21:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdutDBsRIZks0tKiq+UuOeP3Sdpk2o2y06r1w7moLUc=; b=eqP4rPPg9KCl/q
	onxn/5d/Dq9AwmlHtHzl8dvJ89z2ZThbDaNqWycdczr6z6d4fF8X8My6tSp+iIA9U53qNld6NR6uD
	B+YmryvWMCGbT2SCArwTsQ/J7AXJKRXdm/8fg2OIjw4G4+j2CgSXhKVeEuJ3uKLmwbw2fBPHaLmJ9
	cnwBUNsLsHgS9edOPepSmHi1OY9e0int75r33sc/c2wrW8AK4nfMYrGalZaec/3DjCGfP+OBrnGMp
	kzaPnsUh01ZQ6O8/zeGGnc24Mmq3eyWQ3DvIRL0BJlCZwtZs/rb8VcWKYxy+Rea7GauXiKeSkPkZn
	IADsH+XxTPmcIhXC9L5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttvWV-00000000dgO-2lQf;
	Sun, 16 Mar 2025 21:27:55 +0000
Received: from smtp.forwardemail.net ([121.127.44.59])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttvUj-00000000dX1-1DqL
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Mar 2025 21:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742160362;
 bh=W3BUKa9QvnPlmXnONvzXA2ROEjOwfnjtdg2uvv5bZM8=;
 b=nt0e6fa5Ff+d9SXz86iElbhRbolXF/Xo5ja/HkBIlhT032wpYJLERSmEMjd7dm6g8QnpIO8lb
 eEF1is34C/zOrrXrkdACc0xSTQ729D0VftJE2ZQaK9eXnEEFNMVwi/7hyOtl5eAuOQHPkFs93xo
 1SVSSqwhoZpTJqumh2Rj2edJo04+ZHH5E9o8uGKOO7icLHmFEjC/0VdQ/kcNsCODIQbcf4TjJ2P
 rW6DqcOg//KjfBIH5zzlbo0NkEy/wtkct469AcrZRlasa+Fzt/e82B2TSJrw+edIXspjJQDE3da
 ukuFWvFokfmZpOueoCbPQBQwR7DCHFVkYhrPYTqDp6zw==
X-Forward-Email-ID: 67d741e6615b196bfb50dc90
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <7e5ff689-c013-47c2-982b-e7f4c1d233ca@kwiboo.se>
Date: Sun, 16 Mar 2025 22:25:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] nvmem: rockchip-otp: Add support for rk3562
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250227110804.2342976-1-kever.yang@rock-chips.com>
 <20250227110804.2342976-3-kever.yang@rock-chips.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250227110804.2342976-3-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250316_142605_916296_A4E7B862 
X-CRM114-Status: GOOD (  14.13  )
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

Hi Kever,

On 2025-02-27 12:08, Kever Yang wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> This adds the necessary data for handling otp on the rk3562.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  drivers/nvmem/rockchip-otp.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> index a04bce89ecc8..6f86cf8ec390 100644
> --- a/drivers/nvmem/rockchip-otp.c
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -341,6 +341,17 @@ static const struct rockchip_data px30_data = {
>  	.reg_read = px30_otp_read,
>  };
>  
> +static const char * const rk3562_otp_clocks[] = {
> +	"usr", "sbpi", "apb_pclk", "phy",
> +};

These are the same clocks as used for rk3568 below.

> +
> +static const struct rockchip_data rk3562_data = {
> +	.size = 0x80,
> +	.clks = rk3562_otp_clocks,
> +	.num_clks = ARRAY_SIZE(rk3562_otp_clocks),
> +	.reg_read = rk3568_otp_read,
> +};
> +
>  static const char * const rk3568_otp_clocks[] = {
>  	"usr", "sbpi", "apb_pclk", "phy",
>  };
> @@ -372,6 +383,10 @@ static const struct of_device_id rockchip_otp_match[] = {
>  		.compatible = "rockchip,rk3308-otp",
>  		.data = &px30_data,
>  	},
> +	{
> +		.compatible = "rockchip,rk3562-otp",
> +		.data = &rk3562_data,

Here we can use rk3568_data directly without having to add a new
rk3562_data struct.

Regards,
Jonas

> +	},
>  	{
>  		.compatible = "rockchip,rk3568-otp",
>  		.data = &rk3568_data,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
