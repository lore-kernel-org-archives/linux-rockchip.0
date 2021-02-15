Return-Path: <SRS0=FO72=HR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 165DFC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Feb 2021 15:11:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8626260233
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Feb 2021 15:11:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8626260233
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=konsulko.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fxzlB5q4NcoU6pgrAd8Q29sVTGYYdsS1HNSyfYYUZZ8=; b=JNdQo2ywReoiHMbBb/LRf7XCD
	xUGP4HWMypcTIj1KpVYKM+DyZWEOHMe+QLZooJKETy+Ms5uhVX4J5YKyWFsBi4bfs3QDl5PYxbgO0
	PkNixB1hISrVbF/bph87vwKEdMb+9kJtAC4ASiCC4JL6HBvLQkdm3JiaRwbGP95QRV0SpaImbZhek
	zZOZQSYzUCJSUrFvdhcikvRC30CXRSNTFRV0IFOA3assnAxKubSu4RSRJOBKF/TV/6kczrS8uSNjj
	6/1/buLhyJCr+HUexKUhcTzZLacL8mt5Q8hY/7X2QSxqWTOKZqinf6U7hBt0xlaiAxh0N7yB3mFTK
	bd3IpeKfw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lBfXA-0007tD-7O; Mon, 15 Feb 2021 15:11:32 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBfX8-0007sn-BF
 for linux-rockchip@lists.infradead.org; Mon, 15 Feb 2021 15:11:31 +0000
Received: by mail-qk1-x72e.google.com with SMTP id t63so6654371qkc.1
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Feb 2021 07:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mvX6EmHRlL9zi/FVzHFmyVnt3mpmjgi0M/t0dOAUcLA=;
 b=tfIzyTFO+VbVFn5mKaB9pkfkWDug/UcEQqzwVUukyzfWuHIYDYS+zw/n5ROU/FWTlV
 ibwWa/n6FxM3sWX4/gGcu8jjTjnfYG7KdmFMb3FySyCawgcAMQHpvcMHIX2BX3rfoufX
 6mEfvb+1GbCA8Vf27iOwJQliqS2sFSNBUIAlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mvX6EmHRlL9zi/FVzHFmyVnt3mpmjgi0M/t0dOAUcLA=;
 b=PoWJh5r6UzGHZfxDH6VnJVgdnvhCnCsUoiTOACa92gO39BeHfiOhWUNzoVzhqpPIew
 evmpqBIIIq+XCJMqSUKgo+jR0XPzoWqOLUxMfJsf49VharrdMD3yHn6y4VOwdaXEBf1g
 zsBzqqGztCLiu/aCon//1ZvJ6CTtOkP0cN637lhIo9CM141g2c2BYxUzBSZmgdXuoW9P
 7LC+s5uvgzxpsSb6+oIhQjznGkts1eW45B8Z32GIZIuwu4asMzMlcT8xdjB73DG+4+Uh
 HAzUCIhTunxIndBcdDSkhEFKdPwtfFcQcBIv8n8LdagZBNICOMcQxBD/IC3AwvSKBrCY
 oH4A==
X-Gm-Message-State: AOAM530/RNMyqJXrjIKqmGcbQaPdJNFBwfBwQ5qZLqivvOO/MNZpJu+m
 36OnF96i58rxcByaou1hOYIM4g==
X-Google-Smtp-Source: ABdhPJx/pcJUHfToG8bix71lqFrfFTFdN3ZwvZxCeG5YUM4wnGwMmptROQlYzyxhYl8Sk9x1mDkXuA==
X-Received: by 2002:a37:bd01:: with SMTP id n1mr15646653qkf.469.1613401886747; 
 Mon, 15 Feb 2021 07:11:26 -0800 (PST)
Received: from bill-the-cat
 (2603-6081-7b07-927a-3801-240a-0456-87f9.res6.spectrum.com.
 [2603:6081:7b07:927a:3801:240a:456:87f9])
 by smtp.gmail.com with ESMTPSA id n4sm11592954qtp.72.2021.02.15.07.11.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Feb 2021 07:11:26 -0800 (PST)
Date: Mon, 15 Feb 2021 10:11:24 -0500
From: Tom Rini <trini@konsulko.com>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [BUG] [BISECT] rockchip: roc-pc-rk3399: TPL misses dtb
Message-ID: <20210215151124.GN10169@bill-the-cat>
References: <a197cddb-f363-f790-f743-5012341591ba@fivetechno.de>
MIME-Version: 1.0
In-Reply-To: <a197cddb-f363-f790-f743-5012341591ba@fivetechno.de>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210215_101130_494745_BA816FB6 
X-CRM114-Status: GOOD (  15.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
Content-Type: multipart/mixed; boundary="===============7294989715417648515=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7294989715417648515==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GchPhc2tMwNMEruq"
Content-Disposition: inline


--GchPhc2tMwNMEruq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 15, 2021 at 03:05:20PM +0100, Markus Reichl wrote:

> With recent U-Boot and roc-pc-mezzanine-rk3399_defconfig
> and booting from SPI flash I get:
>=20
> U-Boot TPL 2021.01-00884-g0a2aaab0b6 (Feb 15 2021 - 14:36:50)
> Missing DTB
> ### ERROR ### Please RESET the board ###
>=20
> Bisecting points to:
>=20
> commit 0a2aaab0b678fd1778ff2fc59d0770fc82995532
> Author: Simon Glass <sjg@chromium.org>
> Date:   Wed Jan 13 20:29:49 2021 -0700
>=20
>     fdtdec: Use CONFIG_IS_ENABLED in board_fdt_blob_setup()
>     This setting may be different in SPL and TPL. Update the code to check
>     the correct setting.
>     Signed-off-by: Simon Glass <sjg@chromium.org>
>=20
>  lib/fdtdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> Reverting this commit fixes booting.

Thanks for the report.  I'm about to push a revert for this and I'll add
a Reported-by from you.

--=20
Tom

--GchPhc2tMwNMEruq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmAqjxgACgkQFHw5/5Y0
tyztBAv8C1uf9Tuy6Pep6SQ3A/a2vriz0QEQ0fXfrzXozsz8tg2ORZNBmyR6x6yb
dmIT/4oL9N3G7q1CeRt0rZgCBB5vMvRb7988VLWvHzbud5x07sY+0IDcZZ4zC4OC
gB69WE250hhkgBR3PgRtuGjY25ga67m1urSPQkAfT4Yd+k5rVSx9eDS50hUI7e2P
hHorr8RteOF5nqpcYQxzWw96GMUdPy+IX0OSEboo/E8g3ez5XPZz1ozmPfnf1htG
yJhmKuhvbfusKSOyKuCiKxDEcwggpkUQHreIhcaXlvYuamX+gXiXSsONxhQWRjGj
kt0SXJaXFsUbUOiLoCNSmIIXPhYKlc/cID9Ouu31wX4C1W0e6NuXhKNyVkgVA81r
DuBw05cpL1w3sI49LX+nJ+9at3xoGEPT6+FyGyAEJ0f7f8VSz2V/Ro85ciCx975t
PRTqVyDDUHWKf1gWFFvI1MnCEjvLs6nHg4VxXvnODQ3MG900IHtmRzj2pj2uE5Gi
jI2iaODu
=I03A
-----END PGP SIGNATURE-----

--GchPhc2tMwNMEruq--


--===============7294989715417648515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7294989715417648515==--

