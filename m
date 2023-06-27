Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC635EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 08:12:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVcFF/48pcAZh1fWRc9FXvZNyLT2B1aK8l9deNMqoH8=; b=QT/OsGhr10gnDa
	IQDIiWjd5GBQryS+gIexvcvAfDjjn//jfYj7INcI5MAMR0GRqcsaN2kOjUmcAaAIT2jUvMx9TCSFa
	B0ZggTJ2BqAu+DBymen+3R5gOWfZUPssullyHwS/7p6Y11MAZy9M3fA5McJYj/JfDA1l3qB0UrVV9
	XnGPawZccr6z2s6UZeZ9OlC88AAO7l4LwCNJqZJjUxPmigJrnkgWiw6no9YTazsuPKTY/wtc8hCLz
	ZegNrw1DaUtTQ51IWT/N4HK9NZAAd7uOo4y+aEKsF5z3ExJ4w88EQlgRvvo0MkOM+4e+KdlcDx9fm
	+VwpXMkWOs5FR7gS7E2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3o5-00CWju-1e;
	Tue, 27 Jun 2023 08:12:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE3o3-00CWj7-1s
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jun 2023 08:12:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9F0F96103C;
	Tue, 27 Jun 2023 08:12:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47E29C433CA;
	Tue, 27 Jun 2023 08:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687853530;
	bh=uxVq6R7IQZafWDueCri447HjwsLG9DXntJCl08Kx+eE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=aLrzrPvRdhGcLEoy8ikoWIjwqdjsNMcsx1zSzp1yUrXiLmgS9zvgrT9VmCx7BfXUD
	 dBh4I9XSOnkFKouHVteQfELuY6TyAfxcCU1c69PsJvx61t3kKtw6wCnRuyadhMEigB
	 B4gpDuuqfPdv7/Sd/+tipg/k2LrCC0MzlVuBnyNR7Nk6VqSchufBdwTbVdjmvmPR0z
	 WmDqcZVYpSyDHQSKilBZmsDdgS1WSaTVlY1qbw0E4oc2LTn47ICDwGvdjGQmfM5vpx
	 gUMxS0Sdfj/OFecXJ2WjRhGy1ksfUAg5IT9rhWOgrdRYaAhGwVSDr9NWMo5spMeNVd
	 qOhVrBZp8O2uQ==
Date: Tue, 27 Jun 2023 10:12:05 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Emma Christy <emma.t.christy@gmail.com>
Cc: ezequiel@vanguardiasur.com.ar, gregkh@linuxfoundation.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] media: rkvdec: removed redundant blank line
Message-ID: <20230627101205.49ea3617@sal.lan>
In-Reply-To: <20230621154247.43983-1-emma.t.christy@gmail.com>
References: <20230621154247.43983-1-emma.t.christy@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_011211_676523_2A3449E2 
X-CRM114-Status: GOOD (  14.87  )
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

Em Wed, 21 Jun 2023 18:42:47 +0300
Emma Christy <emma.t.christy@gmail.com> escreveu:

> Adhere to Linux kernel coding style. Removed redundant blank line.
> Issue found by checkpatch.
> 
> Signed-off-by: Emma Christy <emma.t.christy@gmail.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>
> ---
> Changes in v2:
>   - Fixed Singed-off-by.
>   - Fixed Subject line.
> 
>  drivers/staging/media/rkvdec/rkvdec-vp9.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-vp9.c b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> index cfae99b40ccb..0e7e16f20eeb 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-vp9.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-vp9.c
> @@ -227,7 +227,6 @@ static void init_intra_only_probs(struct rkvdec_ctx *ctx,
>  				}
>  			}
>  		}
> -
>  	}
>  
>  	for (i = 0; i < sizeof(v4l2_vp9_kf_uv_mode_prob); ++i) {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
