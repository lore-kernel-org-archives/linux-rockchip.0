Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40BF606A323
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2026 20:58:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jzss9Epb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=FWxdw4O7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=k/F0RTUMiRWSERp6DHBPYL/HLbsiKTXxoQ+OW+1DDIM=; b=jzss9EpbaiS3NXBypHrXDuYS/l
	lQRmZMU7OfQIenAYTcQ7eWrimzCeJFK5qISLLs4SFS326Oft10NXoHxa9IBwkuaKxMR/CbLH3XB8I
	SJ97c0elxnt3/z8Gf18b9uHgaCIBhc/XsnUkS2TG05SlTf/Mtpza+IJhL2Az5+fq6XO7eb3K109Xt
	XhMbtSRvrBpplC4yX7EQjsw+N3vQR6o8VNLZYF/1zawPyjJtBQe/4xSb/h0hwEy+sbchTUYYP7rio
	3l4K5WKYZmeTNYYvUkPwcB27leBIwacJUX6mCS4jReZ5TfddiAAfZDlZoWVYnhXnOuAwDaGYxhNKX
	5K+/IoWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9yN-0000000GeZZ-2Ww3;
	Sun, 08 Nov 2026 20:58:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ9yJ-0000000GeZB-2hcp
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Nov 2026 20:58:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A672C201583;
	Sun, 08 Nov 2026 21:58:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794171515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=De6238UD/S0H2bvHCMlalSxRZnbovN/xIQQ9FupkF58=;
	b=FWxdw4O78gaoFMVrRz5boAUy1d26GfZ5+7pLLuAfJbRMkpiM1FCRcy2jCB7FsKMg/JT3do
	tWdvhHDX1woMHjbyw1HQH+c/A2FEXE/UgWjDICSta2doSvOVkgfcCYgBXssi2gSKBT8oUy
	1/yIU9u6wHQcu905KMU9jJngF1gKfO4HRe/wau1E6D4hAEKmsSfS31sy1Agq1F8LzD3/iT
	7BPoKCQpyQkFBPImqns3KKM8khAehLhMJ9FnqGSeZIyT8LCUb1RItZP0N1e+Hw8hQYoORW
	R063XMPEl2z7ah606WE/ZWh327VSnFsPnBaXzqAqy81IkdnBj3GAqD/M0twuzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794171515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=De6238UD/S0H2bvHCMlalSxRZnbovN/xIQQ9FupkF58=;
	b=KrdfIPhQUkwytxMKyXcEiYoys1J+XneALRLqF1K0uac9AKVA+TZVNxQjjOX1Dvojba3fln
	26QYxg9STl+YY/V7edwYrhr8KdJT4LybBdIu8lF/43sqzLZdwKOeIFPthpBfZIrEk467fE
	+xRwixoblrkpCpPp9my8ekco5R3A3/PpOyIOuTKNoeJU+uiqHQp8pzm/Mi/jUb//useiJP
	cX2GCQPLsGkbZW+P1POzgp1n1S8PQN5ZyQhpcBMgU/rcHj6ZqDw6mLDhIjq+AdfSkxmywf
	4ktI1w1orLL4o4oy+OdOghgMh+W4AIe3nEsXpP5NzmRIutl4npRcvVlGHVqjVA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=mkl@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794171515; a=rsa-sha256;
	cv=none;
	b=RdeY+6Tugd9GAw7gsFMaGtPvcUfR7BdXvHHDCxYHGBsf6xYo624cS3jIaphePeOH57pcql
	pd69a1UasPtkpq4Vy8pGFbIKtM80o1w4V58jIIKj3B8ZNjSlou/+FqBCk3+RxPZrYpuYJW
	7Z6Fu+gD8lp1uPwZdczdY8wYxYSiXtX6qIfThOkjiEmguVuzJdNSbXis6AbCSIxXQSBbjY
	v59b/Ud5cXHCppwltTlV0O2Pi1GOCgCYhrs8aUO7Lk+va6xjA9P6Oq+QQpf132Q03AsY/r
	0MLHSdhKW1y4xw+p3vFoUfzYeTZNVbE7ru6c76gf13v/VGTWtWbLo9sUtFzgfQ==
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1xQ9yF-003En0-1o;
	Sun, 08 Nov 2026 21:58:35 +0100
Received: from pengutronix.de (p4ffb23c7.dip0.t-ipconnect.de [79.251.35.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 48C325E3EB4;
	Sun, 08 Nov 2026 20:58:35 +0000 (UTC)
Date: Sun, 8 Nov 2026 21:58:35 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Cc: kernel@pengutronix.de, Heiko Stuebner <heiko@sntech.de>, 
	Cunhao Lu <1579567540@qq.com>, linux-can@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net v8 09/10] can: rockchip_canfd: prevent timestamp work
 from rearming after bus-off
Message-ID: <20261108-rebel-cicada-of-modernism-a932b9-mkl@pengutronix.de>
References: <20261108-rockchip-canfd-restart-close-v8-0-3e7a23fd9eae@qq.com>
 <20261108-rockchip-canfd-restart-close-v8-9-3e7a23fd9eae@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20261108-rockchip-canfd-restart-close-v8-9-3e7a23fd9eae@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_125839_835618_21E59D89 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2389692233330943960=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============2389692233330943960==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6alp7n7ew5v4jhsp"
Content-Disposition: inline


--6alp7n7ew5v4jhsp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH net v8 09/10] can: rockchip_canfd: prevent timestamp work
 from rearming after bus-off
MIME-Version: 1.0

On 08.11.2026 19:33:36, Cunhao Lu via B4 Relay wrote:
> From: Cunhao Lu <1579567540@qq.com>
>
> The bus-off IRQ cancels timestamp work asynchronously. If the worker
> is already running, it can requeue itself after cancellation and keep
> polling while the controller remains bus-off.

What about using disable_delayed_work(), which avoids re-scheduling.

For an example see:
https://lore.kernel.org/all/20261108-gs_usb-fixes-v5-6-d52dd4940d46@pengutr=
onix.de/

regards,
Marc

pw-bot:cr

--
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--6alp7n7ew5v4jhsp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCavDieQAKCRDMOmT6rpmt
0go4AQDvfv69d/SgdvzUHkdYIBUAuzrmLg89+epkPjptvUJlzAD/cOOphLrFTukx
daIkmgKAWp0Xe+tp5igQ5rE+KhzU7Aw=
=L28c
-----END PGP SIGNATURE-----

--6alp7n7ew5v4jhsp--


--===============2389692233330943960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2389692233330943960==--

