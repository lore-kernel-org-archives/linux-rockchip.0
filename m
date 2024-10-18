Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B83D2FFEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 10:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:Cc:To:From:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uwNPLTUUbzJYnus5PBCbghQdIPXG+q55QI6n+e5KyHc=; b=ISFh9dOngBN22rcN/x4Vezovlr
	uytrVQmfGskPSiCcpgOacfZwxuvvmWvZqkybvFGAXUpokR/fTuSNXh4EEvPXXceXXQlIfWT5Edx0x
	2SzXCxgZWzD6OfzAovhN9cVUvpfMhhVTG0z7TrJj3yAOeLiAAPgjIxCWQgly5nrIEc69ky472hTVn
	Ih8g7CTATeq4N/enbn3MXRyTfwEI2+tS8MxsJyzEYhTpaKu8m4KTOhOrr46+IUrKJnyvmfrpzfk1I
	CDJUriPu3GudNpovWrwPWJQXr+TPkKNk9Qx5VWyLVJZs6Iavy1zAIYCRSDVhdjb7TP3f8Y4qbSBIg
	+YKnN+SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1k3t-00000000Kom-1HPr;
	Fri, 18 Oct 2024 10:18:25 +0000
Received: from out-189.mta0.migadu.com ([91.218.175.189])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jnj-00000000HXH-2cji
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 10:01:45 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729245699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vq44XNSVqgHa/XdP4NFnLGc5+igXGHK+t/VxbE7OtsE=;
	b=zARhtP6gRoKin5kG2ZnJBZbv96O3U2ZSa/PGkCLH/fcf5CX88L2gh5hWbFXPG77XIWSFFw
	5OkITriS7d0SQOWbZ1hVw8r8U7/7MtJeN1lirpHCADvF072HPESLQVtSKVm0PidTFpwwF3
	0/zQ302uM8dhMjS3TeFjIDyb6PGGbCwnGa0J2iXAXiirC5JG8DQeTOk/tQGtQhuzdMt8yN
	crX6WK3RoUmjPqQdgMp33lZgUIbQ5EdvZYHz1sQUC5QewlCqXqwdbK5nmjy/7wgPJJm1JT
	wuCyiQLqQyQGJISEoqWvihLAEhBQimw4vOAXoGyLG0WmmNSGsvydvVx6O2BsTw==
Date: Fri, 18 Oct 2024 12:01:29 +0200
Message-Id: <D4YUFQSAR6RX.LS5RY03XCV3J@cknow.org>
Subject: Re: (subset) [PATCH v2 0/4] rockchip: Fix several DT validation
 errors
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
 <D4X8GJV0W6JL.32E469JSATFEP@cknow.org>
 <D4YTW4DVRT68.1Z97ZHDYWTKHT@cknow.org> <4604343.LvFx2qVVIh@diego>
In-Reply-To: <4604343.LvFx2qVVIh@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_030144_037758_9598E2CF 
X-CRM114-Status: GOOD (  21.77  )
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
Content-Type: multipart/mixed; boundary="===============2769330884260767685=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2769330884260767685==
Content-Type: multipart/signed;
 boundary=257bc4f7e0a51fb6aba1bc06018e6c2e1bcf34f65203598562bde9d8737d;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--257bc4f7e0a51fb6aba1bc06018e6c2e1bcf34f65203598562bde9d8737d
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri Oct 18, 2024 at 11:37 AM CEST, Heiko St=C3=BCbner wrote:
> Am Freitag, 18. Oktober 2024, 11:35:51 CEST schrieb Diederik de Haas:
> > On Wed Oct 16, 2024 at 2:35 PM CEST, Diederik de Haas wrote:
> > > On Wed Oct 16, 2024 at 11:41 AM CEST, Diederik de Haas wrote:
> > > > Please revert the 4th patch.
> > > >
> > > > I must have messed up my testing previously, but BT does not work o=
n the
> > > > PineNote with the 4th patch applied and does work with it reverted.
> > >
> > > FWIW, I figured out what went wrong.
> > > My testing was correct, but redo-ing the implementation to make it re=
ady
> > > for submission wasn't very smart.
> > >
> > > With ``shutdown-gpios =3D <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;``
> > > it does work correctly, but I forgot to change GPIO_ACTIVE_LOW to
> > > GPIO_ACTIVE_HIGH before submitting.
> > >
> > > I'll first figure out a better procedure before making a new submissi=
on,
> > > so the revert is still the best approach IMO.
> >=20
> > I've now done a new submission:
> > https://lore.kernel.org/linux-rockchip/20241018092237.6774-1-didi.debia=
n@cknow.org/
> >=20
> > So please don't revert the 4th patch now.
>
> hehe ok :-) .
> I meant to ask if the fix wasn't simply toggling the gpio polarity, and
> I guess with your patch you were faster than my question.

I already knew that was the fix the moment I opened the other dts(i)
files with the same wireless+bt module.
While it was tempting to immediately sent the fix, I realized that
being (too) eager to sent it out would be a recipe for another screw up.

And I wanted to think through why it happened in the first place and
that's because my submission process is all manual with an 'insane' long
`git send-email` command, hand-crafted.
So I better learn `b4` (properly) so my focus can be on the patches and
less on the submission process.

Making a mistake/screw up sucks, but not learning from them is bad.

Cheers,
  Diederik

--257bc4f7e0a51fb6aba1bc06018e6c2e1bcf34f65203598562bde9d8737d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZxIx/AAKCRDXblvOeH7b
blibAQDCucJM71C9TwS9Yr98OdbZHEg1kv4+sXW9YlDFAfaGQwD/fYlIrQ8AxlTb
Om8V7JZLgB2t4JwXokIVFR1o0O06NwM=
=HJWw
-----END PGP SIGNATURE-----

--257bc4f7e0a51fb6aba1bc06018e6c2e1bcf34f65203598562bde9d8737d--


--===============2769330884260767685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2769330884260767685==--

