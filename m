Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F224D1118E
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Nov 2025 20:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J6qqhCM+UcnkGqiBciQAISen5u+grp1yWT06c86szs8=; b=U3/0lDJeV3g30l
	srbp1LHea3nQBMvIrZSImAEkUkmadD6JTbGVrsOmEUYUzD3FWVTgJBQrxQs8qEsELD2DHClHQLgwd
	4FKyAD8bbinliLg4IwAHtGhOKivZW+95rC8upQn0Co/hOV62Y85hS36pkRIY00XxffWMKo3EE3vz9
	LT7GDSSKdp7pHpu1Uob8CWtSaMopA6EnWyUzIGGTfBP/Nm0mb6S+izoX7TDfEBmHq3FeGM6DFfcYp
	j47U0uHmYQHAilEGfNeCpQ31B6iGBxif7Cc9LewzHBfpDbO532XjVqFLrrpAzF3MuCwI2vrDPb4Gn
	5ioDhpQ77o1W59bT8BMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOM71-0000000FcIP-0kbh;
	Wed, 26 Nov 2025 20:27:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOM6x-0000000FcGY-3dXT;
	Wed, 26 Nov 2025 20:27:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1764188851;
	bh=OpcbLyKYxZlxHhsaZdpZh0uLt6gJOnXWPmZWcJ0p0KY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ok95PXRf1zTCFm0YnE0co+79ZEXCN6iHKtdfeBvVFGEnFfol70oUDdzQnxPoNtNhA
	 4vgiQgF8zBakJ4YELldWOM95ZlndMvGGD6x9j6wPtfZqb0VQM7QS0ZfQYA4Zq2aAZg
	 B9VNerwVPKXD2Isn7jYFoVYmkbVLzAvmDo5AGTYlgMgiqqIi4wWYdJp0nIWMuAundz
	 GBE34vN2Borx3yFEHTqArWTmMki2+u09xe+JI123WkPlp0YFyHt6i6W6PtO1FO48Ci
	 TT/dGWd1oEhVvzp7yJxUPwhCPH5O0eV3b2mb7Gf79I6HsLVJKpvrX7/ENQ1NyaHeU+
	 ehucfjHs5TzgQ==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7E64117E101A;
	Wed, 26 Nov 2025 21:27:30 +0100 (CET)
Message-ID: <f53af05d-ac10-43d5-8563-dadafbeb2379@collabora.com>
Date: Wed, 26 Nov 2025 21:27:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH next] media: rockchip: rkcif: fix off by one bugs
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil+cisco@kernel.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
References: <aR17UkYsfAxCZ4fe@stanley.mountain>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <aR17UkYsfAxCZ4fe@stanley.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_122736_061340_B1A6648F 
X-CRM114-Status: GOOD (  15.72  )
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

Hi Dan,

Thanks for the patch, good catch!

On 11/19/25 09:09, Dan Carpenter wrote:
> Change these comparisons from > vs >= to avoid accessing one element
> beyond the end of the arrays.
> 
> Fixes: 1f2353f5a1af ("media: rockchip: rkcif: add support for rk3568 vicap mipi capture")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Michael Riesch <michael.riesch@collabora.com>

Best regards,
Michael

> ---
>  .../media/platform/rockchip/rkcif/rkcif-capture-mipi.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
> index 1b81bcc067ef..a933df682acc 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
> @@ -489,8 +489,8 @@ static inline unsigned int rkcif_mipi_get_reg(struct rkcif_interface *interface,
>  
>  	block = interface->index - RKCIF_MIPI_BASE;
>  
> -	if (WARN_ON_ONCE(block > RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
> -	    WARN_ON_ONCE(index > RKCIF_MIPI_REGISTER_MAX))
> +	if (WARN_ON_ONCE(block >= RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
> +	    WARN_ON_ONCE(index >= RKCIF_MIPI_REGISTER_MAX))
>  		return RKCIF_REGISTER_NOTSUPPORTED;
>  
>  	offset = rkcif->match_data->mipi->blocks[block].offset;
> @@ -510,9 +510,9 @@ static inline unsigned int rkcif_mipi_id_get_reg(struct rkcif_stream *stream,
>  	block = stream->interface->index - RKCIF_MIPI_BASE;
>  	id = stream->id;
>  
> -	if (WARN_ON_ONCE(block > RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
> -	    WARN_ON_ONCE(id > RKCIF_ID_MAX) ||
> -	    WARN_ON_ONCE(index > RKCIF_MIPI_ID_REGISTER_MAX))
> +	if (WARN_ON_ONCE(block >= RKCIF_MIPI_MAX - RKCIF_MIPI_BASE) ||
> +	    WARN_ON_ONCE(id >= RKCIF_ID_MAX) ||
> +	    WARN_ON_ONCE(index >= RKCIF_MIPI_ID_REGISTER_MAX))
>  		return RKCIF_REGISTER_NOTSUPPORTED;
>  
>  	offset = rkcif->match_data->mipi->blocks[block].offset;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
