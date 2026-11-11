Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200AF606A331
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 22:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4jRBN3xW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=LU7GxPKI
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HRzahOKs14qePCnPgDNYrJISnWwrbrcrufC431RflXw=; b=4jRBN3xWOFRdPfVggwJn644c4+
	/Qy84F/xs18OK8G5BD10Bp2ubQxUWIpXVDwlKrHEfDRm+94/B1Cg036K0jjmOd1M2GYgWxKMtJDzu
	1KaU0ml8dc+nmAlwRNw3YWvO6PrFNWALEPscuLb9WvWAlUvSNiAqbOSFClDhqgsxkSo4RG5jsXqxT
	sTfkk+vWtt9hXLIfkVGmzfKzILYGlAkBEzzlvhAzJYsNu+KDvFhWgIZ1zMY3NC3s3dkk2PIPnhitF
	qhSGunniHZNvrhbnFly9oreQGhgZTpA4HxRx21XrqzAu+LHRiPJngIv/RWG1OcIFkZ131ww8P6ssj
	bUcUZ9+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRGQi-00000007tfU-3bp7;
	Wed, 11 Nov 2026 22:04:32 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRGQh-00000007tfD-0Hgc
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Nov 2026 22:04:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4E987635F5;
	Wed, 11 Nov 2026 22:04:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09AC51F00A05;
	Wed, 11 Nov 2026 22:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794434670;
	bh=nzxOIbpVWvN1/7w7Gefz50DVN7UAEAU8g5PqRLWlbIs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=LU7GxPKI5n8f1/eFXRMUCp8bBPzHUzSZVdG7KSr//4qrmweTs4YE133NVhBI6TvTh
	 JdR6QgYr5cp3sJ0Io1vkqPZAvaDvRB/r1Kwp+aquWMHwdeiusSBaFNRuiqW3lwFGg1
	 EXDK9ejy199Ydh62HTLOj6jlJZpIiM/05MVhUG+NzSJp97/w42z8ADMnerfLiJFmCc
	 5EVZywoMkbSKVUNxdvM+7fJrAkkKBEkU3iHKezFMGKcGXCZssNkoHPoqxuuRUO4zEP
	 1aPo3mPJTKC8ETN+9rBJJkYyWsVup+RPAPXOlR+YOb5dNcOgvhQTAt5V2VLfdFeTkQ
	 IQtDOZ92kD8ww==
Date: Wed, 11 Nov 2026 23:04:24 +0100
From: Thorsten Blum <blum@kernel.org>
To: Mariia Nikitash <nikitash.mariiaw@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	hverkuil+cisco@kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org, kees@kernel.org,
	justinstitt@google.com, morbo@google.com,
	david.laight.linux@gmail.com
Subject: Re: [PATCH v2] media: verisilicon: Replace strlcat() with scnprintf()
Message-ID: <avTmaEUzcTHR-Q6W@kernel.org>
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
 <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 10, 2026 at 07:24:46PM -0800, Mariia Nikitash wrote:
> In preparation for removing the deprecated strlcat() API [1], replace the
> strscpy() and strlcat() calls in hantro_add_func() with a single
> scnprintf() call.
> 
> This preserves the resulting string, including NUL termination
> and truncation behavior.
> 
> Link: https://github.com/KSPP/linux/issues/370 [1]
> Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>
> ---
> Changes in v2:
> - Replace seq_buf with a single scnprintf() call, as suggested
>   by Hans Verkuil.
> 
>  drivers/media/platform/verisilicon/hantro_drv.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)

Nit: the prefix "media: hantro:" would probably be a better fit.

Otherwise, this looks good to me.

Reviewed-by: Thorsten Blum <blum@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
