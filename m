Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 294BCC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 09:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wQIn6fsC6wE+/INAwaGSxmN/6fFhUfxPfC0190JOgQ0=; b=wjo9oMYP9ZvMjXYY8UW0yNXrU0
	ZbVpXrvBIWm9jcltKc3RpujkryOYDr20KLStlFCtokGdXqcDxGhtkdvsg9cmCy6kgIhOh3quSPkcM
	1p0VrDnx69FuDwg8jWAYDb/t5EuLiALONQrr9zKnd7X4FXWcndzuk+dwQYDSnOw+sVKwrdJPMColK
	eYQMK55//CKP3P1G/s3I+sqAaZBi7lQjhsPKvcXDBcaqYANKtu0XAbZa+/rexfQAVOqei/aIr1nSp
	KKiucybpqLHRH1alQf9sw8eKoLxUltPtlz/ElSk/Dj+N42GvtvGm8C4OFV3zVgrsApgb4r995Axug
	AqAISgzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNwN-00000001aAs-2AcC;
	Thu, 18 Apr 2024 09:20:23 +0000
Received: from out-185.mta1.migadu.com ([2001:41d0:203:375::b9])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxNwK-00000001a9b-1vjS
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Apr 2024 09:20:22 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1713432010;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OgDQ00mUpxy3+2dq2TcrdALIdNhTcXrsqRSYdfRVb6Q=;
	b=ReK9lGQduw+pn4a4IvkuUbIB2GRIVJ1ww7GWvcLG8CsRLsZajZzxpPHo9bfGYmuNmFR2aS
	y/sLNTbOo6ijQy4bMGv6X/JmXGbAjULg5GYRDp3HumT5gfiDHgXp3vNWhMTUnuZ1PP0+w9
	8Pc8VXXHUQanEtLYN0TK16UtWaujF6tssCaFQ1HJl+2a3Ftq4rHLa9aAaW6nacoUiMvS3T
	XJ3yB06CmbUPnIDf1dmRdEF1WMUGczHML9iH91nYATDBw0gkdtcHmjeWNeu5WJ3xT3MCC8
	4KteMe8chIxEq8blw8cIImy0cFdSYS6HCiaDDvbn8UHUd017Zg6iGdiNkhWS3g==
From: Diederik de Haas <didi.debian@cknow.org>
To: liujianfeng1994@gmail.com
Cc: krzk@kernel.org, linux-rockchip@lists.infradead.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, ezequiel@vanguardiasur.com.ar, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 p.zabel@pengutronix.de, robh@kernel.org, sfr@canb.auug.org.au,
 Conor Dooley <conor.dooley@microchip.com>,
 Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vdpu121
 compatible string
Date: Thu, 18 Apr 2024 11:19:56 +0200
Message-ID: <1774986.o0yEF5yP89@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240413155709.802362-1-liujianfeng1994@gmail.com>
References: <2a516484-ea87-444e-a89d-9fe33d08148f@kernel.org>
 <20240413155709.802362-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_022020_646942_CE023455 
X-CRM114-Status: GOOD (  14.14  )
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
Content-Type: multipart/mixed; boundary="===============7746121895708518737=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7746121895708518737==
Content-Type: multipart/signed; boundary="nextPart27639082.gtX0PHzvVj";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart27639082.gtX0PHzvVj
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: liujianfeng1994@gmail.com
Date: Thu, 18 Apr 2024 11:19:56 +0200
Message-ID: <1774986.o0yEF5yP89@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240413155709.802362-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0

On Saturday, 13 April 2024 17:57:09 CEST Jianfeng Liu wrote:
> I'm sorry for my unkonwing about the kernel patching process. And I'm
> sorry to let maintainers do extra work. Thank you for teaching me this.
> I will do this right in future patches.
> 
> I did received a Acked-by tag from Conor in v4:
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> I note it here in case someone forgets this tag.

I think it's beneficial to send a v6 with the following changes:
1) Make this dt-bindings patch the first in the series
2) Make sure you've collected all the tags you've received to all the patches
3) Specify the base commit

ad 1) I don't know if it's a hard rule, but I've seen a consistent pattern 
where the dt-binding changes come before those changes being applied to 
DeviceTree files. It also makes sense as when the dt-binding change hasn't been 
applied, then the DT file is technically invalid.

ad 2) You shouldn't make maintainers do extra work to get your patch(es) 
merged; you want to make their work as easy as possible. Thus you do the 
(extra) work and provide a new version of the patch(es).
Sending multiple versions in a single day is generally not recommended as you 
should give reviewers some time to do the review. But it should be fine now as 
several days have past without new reviews.

ad 3) The `git format-patch` command has a `--base=<commit>` parameter with 
which you can make explicit upon which commit the patch is based.
That works a lot better/easier then a textual description.

HTH
--nextPart27639082.gtX0PHzvVj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZiDlvAAKCRDXblvOeH7b
bmEdAP9OLqzxTgUxfIC4NVwn89ZMipgZ02R2mr8wczdNorVfxgEAwMVlJgDzsjlr
2lkalQpvcr6qdfULVlBbAY1pfncDyAY=
=4ic4
-----END PGP SIGNATURE-----

--nextPart27639082.gtX0PHzvVj--





--===============7746121895708518737==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7746121895708518737==--




