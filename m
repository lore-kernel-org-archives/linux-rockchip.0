Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72347C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 08:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ry6KiCgMiK7V424sqishjpTJ95P7hfu1uDU/wVoawts=; b=mnZsz9UlNJ5J1i55NqN9dNKJvJ
	pP7sU0b5PKKm1xTzeHE7C4IOxBIewz0lbUCrf5cHXlGnNRgnwoIGFukcmxHFMx02Oe+48LXvE8Xum
	Rrx+od2QvoiKReanbMfpqs7Pk8IPtQotkfnjuBCzcURQDzmNqwoAQKAI/3VmakI83WlbN7ckIzI9b
	o9dv1mN4kBqYzS0kw5YLidE111bAOsg+C7Qa/NGZapIwQZ26WyjCOpexlFpNW8ys7h6vENH/ONzVx
	Jwblz9SKClyXTSqjGtzMsWAlYYk87V9FdjZhz4WeEffnrPJrWFAttJuc6D3MUCFgB0/B72rQELFLj
	yGuvHD8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh3NE-0000000C6QY-3QWN;
	Thu, 22 Aug 2024 08:40:52 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh3Hm-0000000C53M-1y35;
	Thu, 22 Aug 2024 08:35:16 +0000
Received: from mail.maildlp.com (unknown [172.19.163.174])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4WqGhz3j4TzyR5D;
	Thu, 22 Aug 2024 16:34:43 +0800 (CST)
Received: from dggpemm500020.china.huawei.com (unknown [7.185.36.49])
	by mail.maildlp.com (Postfix) with ESMTPS id 2B928140134;
	Thu, 22 Aug 2024 16:35:07 +0800 (CST)
Received: from [10.67.108.52] (10.67.108.52) by dggpemm500020.china.huawei.com
 (7.185.36.49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.39; Thu, 22 Aug
 2024 16:35:06 +0800
Message-ID: <bea8c5b7-c6ab-4332-a733-f7096394f25d@huawei.com>
Date: Thu, 22 Aug 2024 16:35:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH -next] mailbox: rockchip: fix a typo in module autoloading
Content-Language: en-US
From: "liaochen (A)" <liaochen4@huawei.com>
To: <linux-rockchip@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>
References: <20240814025147.3875634-1-liaochen4@huawei.com>
In-Reply-To: <20240814025147.3875634-1-liaochen4@huawei.com>
X-Originating-IP: [10.67.108.52]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500020.china.huawei.com (7.185.36.49)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_013514_814346_108A169F 
X-CRM114-Status: GOOD (  14.85  )
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

On 2024/8/14 10:51, Liao Chen wrote:
> MODULE_DEVICE_TABLE(of, rockchip_mbox_of_match) could let the module
> properly autoloaded based on the alias from of_device_id table. It
> should be 'rockchip_mbox_of_match' instead of 'rockchp_mbox_of_match',
> just fix it.
> 
> Fixes: f70ed3b5dc8b ("mailbox: rockchip: Add Rockchip mailbox driver")
> Signed-off-by: Liao Chen <liaochen4@huawei.com>
> ---
>   drivers/mailbox/rockchip-mailbox.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mailbox/rockchip-mailbox.c b/drivers/mailbox/rockchip-mailbox.c
> index 8ffad059e898..4d966cb2ed03 100644
> --- a/drivers/mailbox/rockchip-mailbox.c
> +++ b/drivers/mailbox/rockchip-mailbox.c
> @@ -159,7 +159,7 @@ static const struct of_device_id rockchip_mbox_of_match[] = {
>   	{ .compatible = "rockchip,rk3368-mailbox", .data = &rk3368_drv_data},
>   	{ },
>   };
> -MODULE_DEVICE_TABLE(of, rockchp_mbox_of_match);
> +MODULE_DEVICE_TABLE(of, rockchip_mbox_of_match);
>   
>   static int rockchip_mbox_probe(struct platform_device *pdev)
>   {
Gentle ping

Thanks,
Chen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
