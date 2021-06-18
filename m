Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E68AC48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 04:25:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0864A6117A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 04:25:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0864A6117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lbr93M5ORgzzgCcY0z4lsrmnR5I3MhyuO1jI56CMJp0=; b=DrResmEPtqZPk53SjI4pb/B4JX
	kPS/ix3S4AGaL1UCCuD6YBT1zYvsqpx6xht+6hF5bNj6g/wpRySnoiJ2dlNQp6SheG7QeNetbIVvM
	Rq9xqSKyJoxnnIv/qAJ5bL8DJkLVP1Jaaao48Fo9Hx94lCoMqh/axlO9xdweR3/n211swcELtPhdq
	2WoN7vLuenWS8rB9aIMufPdw6yY3uCK9cwzGaOicEmZK0/H2ylN88bq6TGRaej3GGzQV5w9dpACLy
	ZsHPmcStuYZThvmVLnKkkdCTRCB62CGFHWqApCnHK8ydt7VfuXhWoaHIJldarZNQYrJb3UsZnG3cm
	AFyAE/mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu63u-00CZIw-VW; Fri, 18 Jun 2021 04:24:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu63r-00CZI2-MT
 for linux-rockchip@lists.infradead.org; Fri, 18 Jun 2021 04:24:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 710BF1F446D3
Subject: Re: [PATCH v5 10/10] media: rockchip: rkisp1: add support for px30
 isp version
To: Heiko Stuebner <heiko@sntech.de>, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, helen.koike@collabora.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
References: <20210617162745.4080975-1-heiko@sntech.de>
 <20210617162745.4080975-11-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <74192794-d153-924f-960f-42d1be88f73b@collabora.com>
Date: Fri, 18 Jun 2021 07:24:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210617162745.4080975-11-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_212455_915720_CEC7BDB7 
X-CRM114-Status: GOOD (  17.12  )
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



On 17.06.21 19:27, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The px30 uses a V12 isp block so add compatible and matchdata
> for it.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

> ---
>   .../platform/rockchip/rkisp1/rkisp1-dev.c     | 25 +++++++++++++++++++
>   1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index a14a0bc39fb0..8a9bb97d334a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -405,6 +405,27 @@ static irqreturn_t rkisp1_isr(int irq, void *ctx)
>   	return IRQ_HANDLED;
>   }
>   
> +static const char * const px30_isp_clks[] = {
> +	"isp",
> +	"aclk",
> +	"hclk",
> +	"pclk",
> +};
> +
> +static const struct rkisp1_isr_data px30_isp_isrs[] = {
> +	{ "isp", rkisp1_isp_isr },
> +	{ "mi", rkisp1_capture_isr },
> +	{ "mipi", rkisp1_mipi_isr },
> +};
> +
> +static const struct rkisp1_match_data px30_isp_match_data = {
> +	.clks = px30_isp_clks,
> +	.size = ARRAY_SIZE(px30_isp_clks),
> +	.isrs = px30_isp_isrs,
> +	.isr_size = ARRAY_SIZE(px30_isp_isrs),
> +	.isp_ver = RKISP1_V12,
> +};
> +
>   static const char * const rk3399_isp_clks[] = {
>   	"isp",
>   	"aclk",
> @@ -424,6 +445,10 @@ static const struct rkisp1_match_data rk3399_isp_match_data = {
>   };
>   
>   static const struct of_device_id rkisp1_of_match[] = {
> +	{
> +		.compatible = "rockchip,px30-cif-isp",
> +		.data = &px30_isp_match_data,
> +	},
>   	{
>   		.compatible = "rockchip,rk3399-cif-isp",
>   		.data = &rk3399_isp_match_data,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
