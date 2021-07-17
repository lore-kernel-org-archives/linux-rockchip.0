Return-Path: <SRS0=BK9L=MJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_2 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73DCCC636C9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 17:02:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AD0661159
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 17:02:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3AD0661159
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ro8Rsc7be0jCdbtumZj9CpBF/hMtLNVQUPzZIklirto=; b=hx6mXRL4OHKggf
	Uk6r4bmJOahw+dzcotUD5yHQiyjXEi2YtV6+iBd4GzzZLcMZJxhxfCR6hVLO/RxlJpxxF0msooAOz
	TKfBm2v8zq7I6k+SzXOLvR6qOv94peiXKiLXRGUNi34TaXjKBZgKOYCVwpwPxYIxjW8OpQFbq3QFX
	Aji8YxM9lTELEuXqJQQSWEBMxepirNu4KXPg+0KqLlZJaGgzdWkRsjT9kEeO+vQ+HJhThAUubT+FV
	OOkJkGisC7dt+Q1hB5ATC3b8o65w4fYHODKTbNfYMtYoDADqDjB0tCHZw0B4UlRMs/5bMwqLcDb8c
	j/i/9FxVWr7u8Zj/gkJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4nhK-006s0t-Mx; Sat, 17 Jul 2021 17:01:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4nhI-006s0U-N0
 for linux-rockchip@lists.infradead.org; Sat, 17 Jul 2021 17:01:53 +0000
Received: from jic23-huawei (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net
 [81.101.6.87])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 132B9610F9;
 Sat, 17 Jul 2021 17:01:47 +0000 (UTC)
Date: Sat, 17 Jul 2021 18:04:11 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>, Peter
 Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: rockchip-saradc: add
 description for rk3568
Message-ID: <20210717180411.452ee61f@jic23-huawei>
In-Reply-To: <20210712014437.97427-1-xxm@rock-chips.com>
References: <20210712014437.97427-1-xxm@rock-chips.com>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210717_100152_821280_215B437E 
X-CRM114-Status: GOOD (  14.28  )
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

On Mon, 12 Jul 2021 09:44:37 +0800
Simon Xue <xxm@rock-chips.com> wrote:

> Add description for rk3568 saradc.
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
Series applied to the togreg branch of iio.git and pushed out as testing
to see if 0-day can find anything we missed.

Thanks,

Jonathan

> ---
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> index 1bb76197787b..e512a14e41b4 100644
> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> @@ -20,6 +20,7 @@ properties:
>                - rockchip,px30-saradc
>                - rockchip,rk3308-saradc
>                - rockchip,rk3328-saradc
> +              - rockchip,rk3568-saradc
>                - rockchip,rv1108-saradc
>            - const: rockchip,rk3399-saradc
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
