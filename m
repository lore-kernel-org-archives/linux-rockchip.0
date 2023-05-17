Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF264C77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 10:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ssHXqTkNBS4lChslSzblFY+6qikin6c6JLplsYsv4d0=; b=yQD6cNERz2nDUz
	DfswmikEZdlXETpnUmZu/H+862QgaohQH8v7b1sLt5BAiAAxp79h9TqJevJg2aVk9eqtbae1XIp+b
	pc7WRZA6IB7NwDOpBqAuN/ie2ws6BXplMDlXUSfb0GFXEBYRyBUPpEjdg5iv/hrq7af1thITKuGwg
	3kiHAiQJyU7EvV3SwI0l44/oHnAWdLafz6GnSfZ4n/XmTvxBK8sX0HnzVZ7baUAiw6lJ6iSzl72+p
	ArhZnBhI8UtquTtsUsHR61K2xQrNRPQdGP0HAAwf+xog+F7BM6Hpq5WzLK386IQ5Kn7WM8TqZyjOt
	oDMG4xHbWo6HvoBi1NAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzETw-009QnH-1W;
	Wed, 17 May 2023 10:34:08 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzETt-009QmE-2S;
	Wed, 17 May 2023 10:34:07 +0000
Received: from [IPV6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab] (unknown [IPv6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AFF396605877;
	Wed, 17 May 2023 11:34:03 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684319644;
	bh=CNPDAErWqxe5Rz37F5idUDbn9tn9q19Yz8WhGFdKC/s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Qhrp+52jnkMGIO2iKOvtOSuZFp1FDgQ22+KAjPZK8PLYDp3yHfP3bFvBRiViC/BXE
	 mjH21LxpxsGpEPYE4VsqECzWYcHwCRRyjYrQBHcbAl62fdtlairBikh4sT8tjS6LBY
	 aHMstjfkISKqAD4+rfrwor0iBZ1jmk4Ivc9dMIgmF2YzGp3qkqL4INwuL5R49vabkW
	 QNTw3WMXoHYbyxH4JYg1hLTXySv2eo/zuQuAyCAr4USL34jHr5l20FOJBBZVYARTRI
	 VoHCSXfyhubGMRCsNopd+QdKvbXPi6Sg2VSyujk4ehp9yhFEJN1rNEn7YABnwmJoJ1
	 RFZL98bf9Ik7A==
Message-ID: <632269cc-db60-d405-d31f-b80a7faf1791@collabora.com>
Date: Wed, 17 May 2023 12:34:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 3/7] iio: adc: rockchip_saradc: Use
 of_device_get_match_data
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com
References: <20230516230051.14846-1-shreeya.patel@collabora.com>
 <20230516230051.14846-4-shreeya.patel@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230516230051.14846-4-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_033405_929214_07378995 
X-CRM114-Status: GOOD (  17.63  )
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

Il 17/05/23 01:00, Shreeya Patel ha scritto:
> Use of_device_get_match_data() to simplify the code.
> 
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
>   drivers/iio/adc/rockchip_saradc.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 05b66eff9a44..05ea823a8f16 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -408,10 +408,10 @@ static void rockchip_saradc_regulator_unreg_notifier(void *data)
>   
>   static int rockchip_saradc_probe(struct platform_device *pdev)
>   {
> +	const struct rockchip_saradc_data *match_data;

s/match_data/data/g maybe?

Regardless of that,

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

>   	struct rockchip_saradc *info = NULL;
>   	struct device_node *np = pdev->dev.of_node;
>   	struct iio_dev *indio_dev = NULL;
> -	const struct of_device_id *match;
>   	int ret;
>   	int irq;
>   
> @@ -425,13 +425,13 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
>   	}
>   	info = iio_priv(indio_dev);
>   
> -	match = of_match_device(rockchip_saradc_match, &pdev->dev);
> -	if (!match) {
> +	match_data = of_device_get_match_data(&pdev->dev);
> +	if (!match_data) {
>   		dev_err(&pdev->dev, "failed to match device\n");
>   		return -ENODEV;
>   	}
>   
> -	info->data = match->data;
> +	info->data = match_data;
>   
>   	/* Sanity check for possible later IP variants with more channels */
>   	if (info->data->num_channels > SARADC_MAX_CHANNELS) {



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
