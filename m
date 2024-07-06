Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB63FC38150
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jul 2024 09:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k7+X1BRoi/slaKi892GKWfBqpEjvDkFl0/zJYIJxUHk=; b=fO1ro/BKo77ngmAsWdwXVlslXl
	mV/Xs4sKbyVLqBK/AxvLNZclr8Ih/Fjbux9aBWEznoolCRvkLKe0CphzCUFQlNyG4pcbsblS5fu2n
	ABzA+Tw/1UN+8Wb8XXUrM1LNp+nEj9aUhz4LE+JGPuvBfnqII6mhqFbgIYzoqym+8OaL7P2HwjvAq
	RH8IHR4w3Y+G9GgReGU6JoXwcVqydZV9ltd23rOt3yYOdMFsPm+iTpohZ74pfYOnkMNHAhoHJbNvT
	wHzuS5Bqv0Folegr969Nl0rosDMml56bl74CUGj2CY8Bkamv4TZHUpP2hSY1NcxGer7On8SldOTGk
	FuFkUveg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQ1lc-000000000kd-26Rk;
	Sat, 06 Jul 2024 09:31:40 +0000
Received: from out-186.mta1.migadu.com ([95.215.58.186])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQ1lY-000000000k7-1mmr
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jul 2024 09:31:38 +0000
X-Envelope-To: chris.obbard@collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720258292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PbJBjHjsQ3PcfoypffUd8en5i1AVysyfx+Dv3pZEnvA=;
	b=zAskrBRQ/z7e+5IWwbvnSAE5DF85cidj44N/7rO5q4YjOVs3+u4NZRR9wWKLzZa7uQqEu6
	IpNUxcuv1fX4WeUon58fWGih+IOxHM/Sy7EcMVfm40dMyQP3ABvKiknTPQo9k4pFw5byuB
	Tvy9Y2TS+WMQQTlwx/fGN/EI6oD6qe1JNDxFcV9IWIReX/YcCZYv36n76vEjxDnoNfJQpm
	tkG5O4784CEvLNVjDV/MX8WOm/w27VHOdqVDtEIP/JNIIMCsNfSi7pi8Lqn+C0dLT4UP4X
	p3c3uDhOEeLVSLdIwwWLRLUYCCwn6D6AP4sfbZjiUFysuZU5d2rPZ+r3sbwsiw==
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: jonas@kwiboo.se
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Christopher Obbard <chris.obbard@collabora.com>,
 linux-rockchip@lists.infradead.org
Cc: Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH 00/13] rockchip: Enable 4K@60Hz mode on RK3228, RK3328,
 RK3399 and RK356x
Date: Sat, 06 Jul 2024 11:31:19 +0200
Message-ID: <2953850.NpiKvLCMhh@bagend>
Organization: Connecting Knowledge
In-Reply-To: <81bd0794ff2731c8ca38069a872649e007340802.camel@collabora.com>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
 <81bd0794ff2731c8ca38069a872649e007340802.camel@collabora.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240706_023136_777441_E5CA5C45 
X-CRM114-Status: GOOD (  13.62  )
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
Content-Type: multipart/mixed; boundary="===============6108490379423599809=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6108490379423599809==
Content-Type: multipart/signed; boundary="nextPart4303795.WJ182HKTA0";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4303795.WJ182HKTA0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Cc: Jonas Karlman <jonas@kwiboo.se>
Date: Sat, 06 Jul 2024 11:31:19 +0200
Message-ID: <2953850.NpiKvLCMhh@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

[Trimmed the list as this is essentially triaging]

On Thursday, 4 July 2024 19:10:36 CEST Christopher Obbard wrote:
> I tested this patch series (together
> with https://patchwork.freedesktop.org/series/134727/) on a Radxa ROCK 4SE

FWIW: That patch set was added to my kernel as well.

> and things appear to work quite well - other than the hotplugging issue
> described below.
> ...
> For the record, with libreelec kernel patches for 4k60 applied to kernel
> 5.something, the above hotplug behaviour does not occur. 

My LE box (Rock64) still needs updating to the 12.x series, but it's running 
LE 11.0.6 with kernel 6.1.74 ...
(FTR: I did my tests with a reasonably bare-bones Debian Trixie system)

> So it must be something introduced in this patch series ?

You're comparing a (likely) heavily patched 5.x kernel to a (mostly vanilla?) 
6.10-rcX based kernel with a potentially completely different kernel config?
If so, I don't think you can draw that conclusion.
But it seems easy to verify by building a kernel with the same 6.10-rcX base, 
but without this patch set applied and do the same tests?

Feel free to contact me privately if you think I could help triaging, but I 
don't think we need to do that on-list.

Cheers,
  Diederik
--nextPart4303795.WJ182HKTA0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZokO5wAKCRDXblvOeH7b
brsVAP4xBOrH990IwPbkKeyvBI3sceLINd7m3XWqsfw62b0e1AD/QsGmppuSuSf9
UPCsA6/0UyReFtgB5Lw4UNcO3OOAEQo=
=RX0K
-----END PGP SIGNATURE-----

--nextPart4303795.WJ182HKTA0--





--===============6108490379423599809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6108490379423599809==--




