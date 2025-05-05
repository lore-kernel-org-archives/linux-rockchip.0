Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67B8BC3ABB0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 08:06:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Subject:Cc:To:From:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VGaInOve18oeaFSyGovetl4c8miGE+AgjlSfWNtxgiA=; b=YsZwKiKVF/W3TvL7OrIwVHJzkj
	kVDkfb8HcrmFyevd+PMoMoNGuUVKxSz6T9KxXNqFlHZ12Fo63RLm5fbimn3fT2MLdYfrcJaz8rYNF
	rYVCBIwI3OUdm7cOLCe+FMyc8NBVpCxrUto6TOjXJ3LXL/SnEuXpwgrM/W7DcZkyQ0wMwD+00mQf0
	eMOsJuwh/5qI1NqnSdNFPmibkpQDneYtI8SyTpcmtMBy1aGnd20P5HhiQYDRo8kFqXTK893QmhPUu
	dd1ll7a6dv+rBNK81wD2U2+Ff3YPt5O2btcGKZBQ3YdOl0iuzMeObkLP8fkl4ySDrzfUn03PiFzBF
	Gb1Q/+jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqpp-00000006jpo-3aiD;
	Mon, 05 May 2025 08:05:57 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqlZ-00000006iqx-10wK
	for linux-rockchip@lists.infradead.org;
	Mon, 05 May 2025 08:01:34 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-ace98258d4dso570896466b.2
        for <linux-rockchip@lists.infradead.org>; Mon, 05 May 2025 01:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746432091; x=1747036891; darn=lists.infradead.org;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y1D14DESXgEJssAmCS0DlckceNK8D0Dq2lVptoRgrgc=;
        b=b4ZvP6D2lWiqAP4z1cZNZp3FYPgeGEhRhxsZQwyoiB8GpzKHtXDGB9TmQkbOfN5lZe
         PQSZzDWgldAyNz2XyP4gaeZow3lcnDvR6Esfzw5Fdq2TbEZf5hxhrcQ5nCY67wNCSdbq
         neHtE0fstKZHuX/lJM6BFgcI+u0JY2R0jDx/AlHhEq5oN1MQ6AjnfKHsw1QawjBCWY6F
         W8kgwZnkrbTVSdHOVPfscZ8isP7tU5FzDT8Xt1hE6QLl/qx6mxdjzPsPKPOnTV2bW0QW
         1iP07sD2Jj3l1lAs9X/B09/BxZj2OKrBgdk98S+eZiP23dDbdMFGL1fU7j2A9szWtVad
         lwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746432091; x=1747036891;
        h=in-reply-to:references:subject:cc:to:from:message-id:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y1D14DESXgEJssAmCS0DlckceNK8D0Dq2lVptoRgrgc=;
        b=kAhFpBLhksH/kN3x9u+QUcMvCn2+YJuJBAuqfEJ3yxr37m6b0UT1nFb3IyMHTOWU4t
         llqaSYIshSQ8AJ60gUUlrHAtuOzu2uvxOXErfLF8dxGJDWUFBLUqsCbB5TZo/BTsqoWa
         wtPbDtyyyAofUpe3Qkvv6BK620tM6ipixBpZMVwYTLxmtTjzqFPl/DSyXxUQhhyQJcz9
         OIWYRDWmnpZiEP+dqCUnS9KTRj09lL/gRd+BTUi05NgOZVe4t0D9cY94Kd8hCTh4eGLE
         1pmkNZ/qHzIfJMIO5pF2MK0C/715dHkBqQVMCmaq2xW6tvtgMJ430kCB9sfLTe8f1eWS
         +WWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVnQiCizlzcJyHddwt1pyHt2ns2qe5sbzueHhHPYDkjoBmpiqjO6EEKUcIV1M4Pmuz8cf3B3Lgd//u6DUJ2uQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyv6ujBMEXBrCu1gFjMNhQZEonFkwj2GZr5EpOZzJLcu7QORPkn
	ca9XyJLoQEOsdBZYiro55I6GpidVr9DcwuyAJLqnqx5BDsOAgvA90N+nkyojVkw=
X-Gm-Gg: ASbGncsAH65vkWlAIKHZTOaUWKiMWxhFK3FeK7J4SsV0RdsXQpBmdoUZdHsiavaw3KQ
	y7O4zhxxusjaaQ9KjVOXKE3yKcz3d3+gM25suHFKXBNVhIWe/0MeVZUOwKleXwYNgr7uVr4sBED
	qoqsnTesZnm8oRxxutwZk5LTaKjClQhls6rDabVZ9vmELcS9+U1zD5yJ1KHwKO1ZvZh/IDcsVb+
	b0ObXRpHYisz9Zna3I+ErnnM4+RFhWbvZRsdnaDY9iKE7hRXpXuvWPGGUwlrqBS8jlLL/gintuw
	MkcUVchplkuZCMTZK9CCXC0tsRykLfc423IXMHDa3HYOIt4G8oMK7Pkrsqv71VqStJDYyoCynUY
	o7hd+1/qfD8SZDzAEO5vL
X-Google-Smtp-Source: AGHT+IGp4PfYHD/YxcY0Mn7oA5l0dQ/O7fQeMsiDfpR5dpQOL/r9zkCVIrRqDBHZGZeydZuEK+PkNQ==
X-Received: by 2002:a17:906:7f99:b0:acb:b0f4:bc77 with SMTP id a640c23a62f3a-ad190858b7amr637113766b.57.1746432091180;
        Mon, 05 May 2025 01:01:31 -0700 (PDT)
Received: from localhost (dynamic-176-003-040-035.176.3.pool.telefonica.de. [176.3.40.35])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-ad18914736asm449923366b.7.2025.05.05.01.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 01:01:30 -0700 (PDT)
Mime-Version: 1.0
Date: Mon, 05 May 2025 10:01:22 +0200
Message-Id: <D9O2I6OT6RSA.JDWMLFP77KSX@baylibre.com>
From: "Markus Schneider-Pargmann" <msp@baylibre.com>
To: "Marc Kleine-Budde" <mkl@pengutronix.de>, "Manivannan Sadhasivam"
 <manivannan.sadhasivam@linaro.org>, "Thomas Kopp"
 <thomas.kopp@microchip.com>, "Vincent Mailhol"
 <mailhol.vincent@wanadoo.fr>, <kernel@pengutronix.de>, "Heiko Stuebner"
 <heiko@sntech.de>, "Chandrasekar Ramakrishnan" <rcsekar@samsung.com>
Cc: <linux-can@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH 3/3] can: mcan: m_can_class_unregister: fix order of
 unregistration calls
X-Mailer: aerc 0.20.1
References: <20250502-can-rx-offload-del-v1-0-59a9b131589d@pengutronix.de>
 <20250502-can-rx-offload-del-v1-3-59a9b131589d@pengutronix.de>
In-Reply-To: <20250502-can-rx-offload-del-v1-3-59a9b131589d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_010133_284120_607DFCF9 
X-CRM114-Status: GOOD (  20.70  )
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
Content-Type: multipart/mixed; boundary="===============4469909967241233366=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4469909967241233366==
Content-Type: multipart/signed;
 boundary=64453a89ddc6afb76b4932a46c59c202600130e560186a7d832de92cee9b;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--64453a89ddc6afb76b4932a46c59c202600130e560186a7d832de92cee9b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri May 2, 2025 at 4:13 PM CEST, Marc Kleine-Budde wrote:
> If a driver is removed, the driver framework invokes the driver's
> remove callback. A CAN driver's remove function calls
> unregister_candev(), which calls net_device_ops::ndo_stop further down
> in the call stack for interfaces which are in the "up" state.
>
> The removal of the module causes the a warning, as
> can_rx_offload_del() deletes the NAPI, while it is still active,
> because the interface is still up.
>
> To fix the warning, first unregister the network interface, which
> calls net_device_ops::ndo_stop, which disables the NAPI, and then call
> can_rx_offload_del().
>
> Fixes: 1be37d3b0414 ("can: m_can: fix periph RX path: use rx-offload to e=
nsure skbs are sent from softirq context")
> Cc: stable@vger.kernel.org
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Reviewed-by: Markus Schneider-Pargmann <msp@baylibre.com>

> ---
>  drivers/net/can/m_can/m_can.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/can/m_can/m_can.c b/drivers/net/can/m_can/m_can.=
c
> index 884a6352c42b..7c430eaff5dd 100644
> --- a/drivers/net/can/m_can/m_can.c
> +++ b/drivers/net/can/m_can/m_can.c
> @@ -2462,9 +2462,9 @@ EXPORT_SYMBOL_GPL(m_can_class_register);
> =20
>  void m_can_class_unregister(struct m_can_classdev *cdev)
>  {
> +	unregister_candev(cdev->net);
>  	if (cdev->is_peripheral)
>  		can_rx_offload_del(&cdev->offload);
> -	unregister_candev(cdev->net);
>  }
>  EXPORT_SYMBOL_GPL(m_can_class_unregister);
> =20


--64453a89ddc6afb76b4932a46c59c202600130e560186a7d832de92cee9b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSJYVVm/x+5xmOiprOFwVZpkBVKUwUCaBhwUhEcbXNwQGJheWxp
YnJlLmNvbQAKCRCFwVZpkBVKU3urAQCJ69IFypvaFtVZN9A3KA4EhHPYFZnLhKhP
Pk2HK1dA9AEAlZm7/1uU/TAuxXN+0/6NZUVxbJO2yOQNMI6MhbuvGwY=
=/3qK
-----END PGP SIGNATURE-----

--64453a89ddc6afb76b4932a46c59c202600130e560186a7d832de92cee9b--


--===============4469909967241233366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4469909967241233366==--

