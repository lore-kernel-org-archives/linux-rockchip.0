Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F3AF3C248
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Mar 2026 12:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=25jgZS+3RwD4dipm+IUJuvmgwYax1nbdvTHEigC4CcY=; b=XFERZAEOB95ngu8hh3XHM4xMY0
	d9vYgj71hG+qYQFZH+hfwBa8U8sd7AwDSrU/Yk/8+gmZrTjCBzTs8OG4gfQ9ivfKtF2vcV+rmJxlq
	HOsgu0CO+cx5NFiU3/rwfymSJuYt8PFaiobNGOevWng9hDT6pLX9/IohXJDt/3BvgMAx+5B/fdqF2
	Vh7IlwQ1BcEsHVAPPgqKvLqNA/Egsb3n/lsEz7crVbFjgyw6D5RH/x7ASfH5UKawcJqy56wnqk8N2
	7XcyODlEXV/iZNXSCtpmBX2vDxQTqlcrxjXkDqEYGRyCx77pVMVG3qN2wOuRMeunxULR8U5kL60rD
	SGLZcUHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZjz-00000007Jc9-1PjU;
	Mon, 09 Mar 2026 12:29:43 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzZjx-00000007JbZ-0mGH;
	Mon, 09 Mar 2026 12:29:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 48A5E600AE;
	Mon,  9 Mar 2026 12:29:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82263C4CEF7;
	Mon,  9 Mar 2026 12:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773059380;
	bh=sdACc/Vbt9m0Tf3WatUwZZmOXL5NI62/15tUJ8fQl8M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JMDb8XsIm65PkNu73oLSZoi0tfbQDim/GSj7cTRxWJMUOPPHL2GFZ1NF3os0/1jQ1
	 KSqFUuUZkKacY7gSY8VK0MpssUjeTR5dRxOs6lKincVkR/h8SSvWLSmRweSFReyqJ7
	 fgzYbHiMie8oxNTlQhPYonhvAUqG9b54NebTJb+EvL6QLlyFYxhKBRUQ4OcCfW/8+0
	 496unukW4tkQpsDz1WqSo0UavpBwMHSyI5lQlOSAYuy1hCKHWKcGN9Gj9gHa7q3CLo
	 xjbKUXlkxLsvXFmoF1KSijZ96TjG58B9jJbTLpYeM9xdXdPZy4nQQ1hEVbwnGmX7ZU
	 0uwBoAfd0PhDg==
Date: Mon, 9 Mar 2026 12:29:35 +0000
From: Mark Brown <broonie@kernel.org>
To: Felix Gu <ustc.gu@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Jon Lin <jon.lin@rock-chips.com>,
	linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] spi: rockchip-sfc: Remove redundant
 spi_unregister_controller() call
Message-ID: <52755ab9-7387-4f4b-95d4-2bfdeedc3e5f@sirena.org.uk>
References: <20260305-sfc-v1-1-6fbf6df0e899@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260305-sfc-v1-1-6fbf6df0e899@gmail.com>
X-Cookie: I don't understand you anymore.
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
Content-Type: multipart/mixed; boundary="===============6646942131191037520=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6646942131191037520==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AClr4NiypPa3ZHRv"
Content-Disposition: inline


--AClr4NiypPa3ZHRv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 05, 2026 at 11:38:21PM +0800, Felix Gu wrote:

> The driver uses devm_spi_register_controller() for registration, which
> automatically unregisters the controller via devm cleanup when the
> device is removed.

> The manual call to spi_unregister_controller() in the remove() callback
> is therefore redundant and should be removed.

Not just redundant, it'll be a double free.

> -	spi_unregister_controller(host);
>  	dma_unmap_single(&pdev->dev, sfc->dma_buffer, sfc->max_iosize,
>  			 DMA_BIDIRECTIONAL);
>  	free_pages((unsigned long)sfc->buffer, get_order(sfc->max_iosize));

This does mean that if the device is being force unregistered with
children still present those children might still be submitting SPI
requests while the DMA buffer is unmapped, but in the normal course of
affairs it's more likely that the devices will be unregistered before
the controller.  It would be best to either roll back the use of devm or
add a devm based unmap of the buffer here, the current remove function
has correct ordering.

--AClr4NiypPa3ZHRv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmuvS4ACgkQJNaLcl1U
h9Chiwf9HWSa3dh2cae/FqNy2jBr53e+UB+ij8++KuKvJ4c9nWTndSDG8yv26YUJ
U0WQ7a8K4o0lnfzzdba92bwMC0HbkvNaK37jUBWjv2jfb0VaviYe/DPIRIEaXdJ7
9Ahv5K09vfBXWvzlGmBpaDX0mI1n7agTLuDTnIOAhe0vGuCDJFyQy7O5eg3Vzazs
vC8THtwX0jIsWXId9lRQkdu5dcg6+8z5jLgdzJkg7BEsPvadhk4mgUsNeuUKc7rZ
m8ajxOr9qxHM8WAYrn7J0R50rJCl+gVQmT8m3U+NvRjCbfjuD9+uhttWdPw7mK+k
fg3ykuWMZWrzhsIQLnSr8vY+RnyLzQ==
=JX79
-----END PGP SIGNATURE-----

--AClr4NiypPa3ZHRv--


--===============6646942131191037520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6646942131191037520==--

