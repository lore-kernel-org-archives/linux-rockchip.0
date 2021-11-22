Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B70B4C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 12:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=syMoce16MLrILB7FH6YdXcsedaev4WXo5DM+iSumn8w=; b=IGxFkR45k+kzYQ
	Wq8J3Kyxcn+Q4X0zXUC6ftrrvtf+3TDPaj6nKUf7LhMhP7eIa58XP8UZ9C/H/I/nwYi5woB7BJUG/
	fKN1RowcCgWM90UVJJ/vcfKa+r0HAJzFLKWjK3wl4tk/TlyMlgh9Ac0oCY1tYUgPL7W5FhTCG2yJp
	EOEfJCwFLc3ij0rE6tWIf5oHqAM3Uw3uim3zgTSDFSuH9S8lOMp9GpKPU0PnzN+aPlo2LtXJPLrnH
	dqneP2C1ZnpSm77HWS2mOJf/ghLfQJu4TNvDM34ouXRGIvOYYngSsyC7n4pnIev+eFSDYRbGQF4ZO
	XUJUSzePoS1ztt8mE+wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp8g4-00GR1Z-CM; Mon, 22 Nov 2021 12:44:08 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp8VF-00GNTB-UC; Mon, 22 Nov 2021 12:33:02 +0000
Received: from pendragon.ideasonboard.com
 (cpc89244-aztw30-2-0-cust3082.18-1.cable.virginm.net [86.31.172.11])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2F2DD1B40;
 Mon, 22 Nov 2021 13:32:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1637584371;
 bh=QKRF7G2PcQLgRH2yZC8hCKafyAlgqBTJ7BddEaQGc1E=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=qS6myqc7tBnmxkRabheB/pbBFG1CvdypxyZU083SYDCMcGnx/xbU2MTszHfaK2ib/
 BFgsuQqmYx2bcd45adPsHML++9+DFzK0RLpQ2e9+bK7rlIa4AHJfabha+s3LvAu43S
 14dNLSOSv6lkuIXLuqtnqfm+tuVs9UuMkwDyywTs=
MIME-Version: 1.0
In-Reply-To: <20211120122321.20253-1-kmcopper@danwin1210.me>
References: <20211120122321.20253-1-kmcopper@danwin1210.me>
Subject: Re: [PATCH] media: rockchip/rga: do proper error checking in probe
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Kyle Copperfield <kmcopper@danwin1210.me>,
 Dragan Simic <dragan.simic@gmail.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Heiko Stuebner <heiko@sntech.de>,
 Kyle Copperfield <kmcopper@danwin1210.me>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Date: Mon, 22 Nov 2021 12:32:48 +0000
Message-ID: <163758436861.2984710.7560336354232633119@Monstersaurus>
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_043258_177786_EE019F86 
X-CRM114-Status: GOOD (  16.18  )
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

Quoting Kyle Copperfield (2021-11-20 12:23:02)
> The latest fix for probe error handling contained a typo that causes
> probing to fail with the following message:
> 
>   rockchip-rga: probe of ff680000.rga failed with error -12
> 
> This patch fixes the typo.
> 
> Fixes: e58430e1d4fd (media: rockchip/rga: fix error handling in probe)
> Reviewed-by: Dragan Simic <dragan.simic@gmail.com>
> Signed-off-by: Kyle Copperfield <kmcopper@danwin1210.me>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index 6759091b15e0..d99ea8973b67 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -895,7 +895,7 @@ static int rga_probe(struct platform_device *pdev)
>         }
>         rga->dst_mmu_pages =
>                 (unsigned int *)__get_free_pages(GFP_KERNEL | __GFP_ZERO, 3);
> -       if (rga->dst_mmu_pages) {
> +       if (!rga->dst_mmu_pages) {

Ouch, that indeed looks like it was unhelpful..

Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

>                 ret = -ENOMEM;
>                 goto free_src_pages;
>         }
> -- 
> 2.34.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
