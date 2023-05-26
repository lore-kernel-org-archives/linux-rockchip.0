Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BEF3C77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 May 2023 08:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgJi4Hjt1o7UME8g1XIB3jo1ASfPwn/8dUhCF1XhsSI=; b=JPSGQo5RyFwYlN
	rINBnVDin1pvARJmnp5VQvBd6VOPg43a8RgnTia+/K+yrKS2aBvMNxIAQ1qDs8heM5UCMSeBuAo5J
	SUSPI1e7W1AMyArZnAUPAdMEQxqIy/zFuStAkkUsVs0XcOkfqtRhkwDJINAtzmFmF/MtSgMPS00fR
	+KLtjxFchiA+V14xkfkN3BQZwcT1ZjfCAGnlIZ2BXzDfkoE3V+hgwhh8lu/SydjJ0AK23gE4uLGH9
	aiEUU3RmtwOba5m7zWYrKaq4Q5oOHnquMy+t7yb8nSGcvg2x9H7PoA4eC7YGfB2MdvS3TJqWNbYGL
	s/x1eYaWpqJopO1BrhhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Sw8-001cx9-1V;
	Fri, 26 May 2023 08:36:36 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2Sw4-001cvV-1X;
	Fri, 26 May 2023 08:36:33 +0000
Received: from [IPV6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab] (unknown [IPv6:2001:b07:2ed:14ed:a962:cd4d:a84:1eab])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2F34B6606E83;
	Fri, 26 May 2023 09:36:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685090187;
	bh=Y+IJxiWc633XOBZbB2+BJidraljDp8EXXiUQb5yaXZU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kpszq4hXIKce8PXvPTFmhLX/QqAmnkIe2GlYur04oNEP2DB+Ty24ObhrS9VHyNi3f
	 jvPhgysl5tFu9/L/tA5WQQq+iYFKmPnirKuzSetjd7j1x1VE2eUStQkfnCHxkputL7
	 B13Ve7LfYoMADZslX7CQrB8U08I+vDZ15MrHQQtfmgeGjC6fRO5jYkC4vreXnY6q2u
	 UISI0P0JCQOYYCf8os8otZ9K81NSeX6/N5K2aLr0bthLzegi0fmqtqrB9467rdOUQ3
	 OrIZZucUTGg3otczqteuOumrR6oNUmi21vmfZDCX9sC3j48qhE02QlmP6nUx7c1hxq
	 Mb1TGrXiu7mjg==
Message-ID: <17ac612b-4464-4a97-4e4d-5e053b760130@collabora.com>
Date: Fri, 26 May 2023 10:36:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 2/8] iio: adc: rockchip_saradc: Add support for RK3588
Content-Language: en-US
To: Shreeya Patel <shreeya.patel@collabora.com>, jic23@kernel.org,
 lars@metafoo.de, heiko@sntech.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com,
 Simon Xue <xxm@rock-chips.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
 <20230525212712.255406-3-shreeya.patel@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230525212712.255406-3-shreeya.patel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230526_013632_669618_B80B3F86 
X-CRM114-Status: GOOD (  16.54  )
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

Il 25/05/23 23:27, Shreeya Patel ha scritto:
> From: Simon Xue <xxm@rock-chips.com>
> 
> Add new start and read functions to support rk3588 device.
> Also, add a device compatible string for the same.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
> 
> Changes in v2
>    - Add a from address.
>    - Create separate patches for adding new device support and changes to
>      the old device code.
>    - Make use of FIELD_PREP.
> 
>   drivers/iio/adc/rockchip_saradc.c | 69 +++++++++++++++++++++++++++++++
>   1 file changed, 69 insertions(+)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 21f9d92a6af4..31637440be83 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c

You're missing a header...

#include <linux/bitfield.h>

after adding that, you can get my

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


Cheers,
Angelo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
