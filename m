Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 725F7C9EC72
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 11:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GtKNL1SFk2gAGEpC+MG4/rsgsmhuSyLp2oNy4PEuRA=; b=RyIBJXI1Gkcz6X
	08/RmMMJZXY2gY0qGweyAfZZalFp0TT8efYyVM7sYSvBxLhMxObRkCUY8zuGWRkjkc+jRA3Hdqcf4
	iggfGVZR5ngQBblVXrcr/EMxMk7yir1Mt6jGANAMytb1VWMdbwIVL612PUt5iLfkcIb0C9wj6NIZ5
	lAh0ga/RqPi4NhocTKiqdQdEbFmA97/GOFw7x9wHwx5+7cykVLWsC2Rsv3uD9227i/ZYt15fG4zJ2
	CaxQ5DhnsYF+O1PsNNNLhWmRVUT19RkVwHSUbjv4z1pBuxkbA35wYEsBhUjXFLHNgcoceZt2Tu9yt
	wptesn3+/w6ZqolKsDSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFoc-00000005Dmp-0ltE;
	Mon, 12 Jan 2026 11:10:30 +0000
Received: from mail-m19731111.qiye.163.com ([220.197.31.111])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfFoa-00000005DmP-0hHF
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 11:10:29 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 305501bf3;
	Mon, 12 Jan 2026 19:10:23 +0800 (GMT+08:00)
Message-ID: <07442e8d-f983-4559-a259-3f84828ff2f9@rock-chips.com>
Date: Mon, 12 Jan 2026 19:10:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] soc: rockchip: grf: Fix wrong RK3576_IOCGRF_MISC_CON
 definition
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>,
 Marco Schirrmeister <mschirrmeister@gmail.com>,
 John Clark <inindev@gmail.com>, Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
 <1768189768-96333-2-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <1768189768-96333-2-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb1e65d4903abkunmb79b198a5c4f0b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgeSVYeHxgYGRgfTxhOTUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=aDNaH51hDVuRO/bA9HO1jY9sHyXgfOQdTQx9985PbRirxWNkwdzTJgL48lk7X+I49bBgVIpiQintPnFRjVnx+JvqtdJAYM7A55V/v4b0uzUdZ4gIsMZG3Ul0u//b0ufQnEImK9+HipyCffFxCzufWQl8wq2yVsb1dGCZb4wSV+o=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=mJ9TWEXd0lPwIrpUp9uqI/2FaTrtCpdnq3CQ5tUYyIc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_031028_661132_BA12A271 
X-CRM114-Status: GOOD (  11.59  )
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

On 1/12/2026 11:49 AM, Shawn Lin wrote:
> RK3576_IOCGRF_MISC_CON is IOC_GRF + 0x40F0, fix it.
> 
> Fixes: e1aaecacfa13 ("soc: rockchip: grf: Add rk3576 default GRF values")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
>  drivers/soc/rockchip/grf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
> index 27bfa09..8974d1c 100644
> --- a/drivers/soc/rockchip/grf.c
> +++ b/drivers/soc/rockchip/grf.c
> @@ -146,7 +146,7 @@ static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
>  	.num_values = ARRAY_SIZE(rk3576_defaults_sys_grf),
>  };
>  
> -#define RK3576_IOCGRF_MISC_CON		0x04F0
> +#define RK3576_IOCGRF_MISC_CON		0x40F0
>  
>  static const struct rockchip_grf_value rk3576_defaults_ioc_grf[] __initconst = {
>  	{ "jtag switching", RK3576_IOCGRF_MISC_CON, FIELD_PREP_WM16_CONST(BIT(1), 0) },

LGTM :)

Reviewed-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
