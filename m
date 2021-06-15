Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6F21C48BE5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 18:09:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A89B613BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 18:09:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A89B613BF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T27rsFfJ5gg+Aj12+S5e57k5SFo2QDckn1nomFZJlUM=; b=y4+Z06bpDoTNquJeUSNU3NLQw5
	AJltG2ANbzx1y8AfHmjJlAGOqlZ/sd4K8mGNS8DgaletU27HQuQOiUF8w2yLMNcmwH4M6xFexkV8m
	MjkHZdRjDWijSllHBvgbMUV6Nb4eIyiIvVnmyUea5StSJnWbhBjGh022B0cR3WVmrtie4LiE5sxSO
	XE11ukfFOoqpEZN783mBgUJuBpaQ8vS2XVjTUP6G88zcn8A7sVNcMYXMynS6R0zDBrvscJxaUCDLQ
	6uLOtiCsIooSh+VBIQL7DrZNZhYjPPuutXhlwY5yU68wB0zx5NRvjLT3lEjguVSHQn/nGZfY0g9B9
	BwHLzhsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltDVJ-0020ml-OH; Tue, 15 Jun 2021 18:09:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9MO-000E8e-VF
 for linux-rockchip@bombadil.infradead.org; Tue, 15 Jun 2021 13:44:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=TqENAzXK75gfT3LNPHaoTQR0YOZG0n0MS6BU5dXETjQ=; b=GKvNQs7L13qDJBmxGC8iUCUAVM
 u5up/nmtCqYdFDO4IHy7NmMF3pHrBLORDqbvkfaSK8SZb1KEwnLcKr/RHcLwOMjYrMUYEXzqxL7TQ
 KiDAavj5av6wbYiTibRsWbDi10LysXZRO0nhQcsg4bNHQuvnfFEXWyfgTBHvXlloN5uKmFpuy3R5w
 QREtHzBnH6BXXmTReVX9AtXuNKzrR4OhCrEBPf7/JATSXt7E3z7F8kG7eZawzwQAxu4A87+PmxxfE
 2w8YFsM4csh3RvMpZDSWhaaLtOPsX6EpHuoatvqRfMX2DOxZnWJ80djGQQL511Cq1PL44IC3bQOuV
 7xrSXo5Q==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt1s7-007Nf8-EU
 for linux-rockchip@lists.infradead.org; Tue, 15 Jun 2021 05:44:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id EAE351F4209E
Subject: Re: [PATCH v2 1/7] media: rockchip: rkisp1: remove unused irq variable
To: Heiko Stuebner <heiko@sntech.de>, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, helen.koike@collabora.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
References: <20210615003741.3758316-1-heiko@sntech.de>
 <20210615003741.3758316-2-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <2cab11ac-fb57-73fd-7262-70a3636e1253@collabora.com>
Date: Tue, 15 Jun 2021 08:44:25 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210615003741.3758316-2-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_064430_540930_5C5714DA 
X-CRM114-Status: GOOD (  19.91  )
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

Hi,

On 15.06.21 03:37, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The irq variable in struct rkisp1 is unused as it is only used
> to request the irq during probe, so remove it.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

> ---
>   drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 1 -
>   drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c    | 2 --
>   2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 038c303a8aed..be8a350c7527 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -352,7 +352,6 @@ struct rkisp1_debug {
>    */
>   struct rkisp1_device {
>   	void __iomem *base_addr;
> -	int irq;
>   	struct device *dev;
>   	unsigned int clk_size;
>   	struct clk_bulk_data clks[RKISP1_MAX_BUS_CLK];
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 7474150b94ed..7afa4c123834 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -489,8 +489,6 @@ static int rkisp1_probe(struct platform_device *pdev)
>   		return ret;
>   	}
>   
> -	rkisp1->irq = irq;
> -
>   	for (i = 0; i < match_data->size; i++)
>   		rkisp1->clks[i].id = match_data->clks[i];
>   	ret = devm_clk_bulk_get(dev, match_data->size, rkisp1->clks);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
