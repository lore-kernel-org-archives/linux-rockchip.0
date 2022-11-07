Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C308AC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 09:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RjsTiec+2W3hjYtfacir3Quo+hSHaVx2cCKn1i1gZ4=; b=z/6ahHCXTUiCRt
	gbq5ZfrrSho31PHCd/yZF/kNuvNfy+PX+mxnQq9m5vOz10HtGWMEhMni32faPSsfRMS6U8B6qutyr
	K39qJpKJZftR3YPa/Wfhenv6d6Y5DJjsFC960TGy4wMJQfOgWjnfGV5ZsdoRu6TADrmtlVh8B9iSi
	KnO2YqWEG1CJH9S636Eg7mV72rWRbTTw56Qna1ilPRUteffVIGL/5PgjtU/aDbECqt3QY27+MNYnL
	UF5nWJRd6Wup3WIKteipOggE7S+hpFVVXacEcx82P7t3NBHcsDrcOSsH5nganhPxiCMxyUq8/s0va
	zEcy3iZ7oxGjQ1Th8dpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oryQl-00DIgW-3A; Mon, 07 Nov 2022 09:28:35 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oryMr-00DFqg-3y
	for linux-rockchip@lists.infradead.org; Mon, 07 Nov 2022 09:24:36 +0000
Received: by mail-wr1-x433.google.com with SMTP id v1so15167140wrt.11
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 01:24:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+354V4bqL0Q80jmGbwChiKqgB2s0lMwmgUyfQySGfaA=;
        b=E71QyXbP3nAgn6MM5N2pgIc3hT3H/iHfIUAU8Ieoh/Ek99yAgL4c+CSCtxXlJFsxi2
         oQKXQt5hRIoFkHwXg4zDilcpzkUaNn5sHtJF+RXJMDmKJ8GvRHLOYuf7jOjKILE7JLXz
         vkf3yrbpQNlPbK3hzs4yvXiGrtLXR4GhK1keNClzSJ68zTACMW9QOlIo3dJBkpqfZkNY
         rYqrcRMkTZr95zGNnMJDUjRbaAgqaqQQ7jKZjfPJlegxtwOWJfPsjbJQDHCwR7WObvjg
         sOXt/xfP3F5lmklHbFiX99USOs+IweJ5rmmNJ3FmYYsx54KH9yB5mizRKoMTndNF34LK
         R5sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+354V4bqL0Q80jmGbwChiKqgB2s0lMwmgUyfQySGfaA=;
        b=eshei2IMkEqumWGJQ7ZIqpUYBgdi/enly+pUX19GJoDlLQNSA6dlQk+8UNkY/ryRrD
         hS5+ukG7bpI1zacCORmeUZvTWEIZJvEcCG36CH6ZlqrKqmBik8NqYquQNu8WBJMhZh/4
         1lcMp89k0kftC0oonqNO/lQe2wxvqzQhuOPCRkjB/13dMFfYqTCq7USA8JkEJvSG4FLR
         1L4mvCJtGPNN9ngAvjjfgb0BMml5IvCMkdGzhBNHAvo0M7q7eaBZoT2AEH/TwdWAARel
         PIWB3Pe4tgB7q6F1Ub6lwM3AJCBe/f7N8wbk17bw0w+q+ESz6i+zALLComIHLvo7ntL+
         Ck4Q==
X-Gm-Message-State: ACrzQf2F4oWx5zJdeQo+pj3hyTz7vAorn9OZok41rD9NEvBnWOYXupIU
	RO1cOQepFq2PGdHIQW4mxC6qpg==
X-Google-Smtp-Source: AMsMyM76jUbfY3U9anmFeQe0yqiI0jfkssTVhjiLNVk0IeFJjugyoiEQh76BCcrNqUAVsVF7XkG27Q==
X-Received: by 2002:adf:ed89:0:b0:236:8ef6:472d with SMTP id c9-20020adfed89000000b002368ef6472dmr28532719wro.61.1667813070284;
        Mon, 07 Nov 2022 01:24:30 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id bw14-20020a0560001f8e00b00240dcd4d1cesm2268916wrb.105.2022.11.07.01.24.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 01:24:29 -0800 (PST)
Date: Mon, 7 Nov 2022 10:24:24 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Yang Li <yang.lee@linux.alibaba.com>
Cc: herbert@gondor.apana.org.au, davem@davemloft.net, heiko@sntech.de,
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: Re: [PATCH -next v2] crypto: rockchip: Remove surplus dev_err() when
 using platform_get_irq()
Message-ID: <Y2jOyPoor1hJ7xoV@Red>
References: <20221104074527.37353-1-yang.lee@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221104074527.37353-1-yang.lee@linux.alibaba.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_012433_421326_78592204 
X-CRM114-Status: GOOD (  12.42  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Fri, Nov 04, 2022 at 03:45:27PM +0800, Yang Li a =E9crit :
> There is no need to call the dev_err() function directly to print a
> custom message when handling an error from either the platform_get_irq()
> or platform_get_irq_byname() functions as both are going to display an
> appropriate error message in case of a failure.
> =

> ./drivers/crypto/rockchip/rk3288_crypto.c:351:2-9: line 351 is
> redundant because platform_get_irq() already prints an error
> =

> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3D2677
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
> =

> change in v2:
> --According to Corentin's suggestion, make the subject started by "crypto=
: rockchip:".
> =

>  drivers/crypto/rockchip/rk3288_crypto.c | 1 -
>  1 file changed, 1 deletion(-)
> =


Hello

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
