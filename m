Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87629D462A1
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 13:47:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v512GfqfO5CtHfuca8mgrRCZ7e6F8STmP0PODIZGZxY=; b=r+IZ5jsf34oMg3umLXmqjSuysY
	BVJGd5s3sZ5iohso2tt8ykpisXOzZTtcYb5IsLXmmGeaJuoHZ55aE+lOpuPjxqTUvV5PzguBXUduE
	0slC3SOnIhxlxNDm++3HDCINeTwJJHynhCMMv9vsHMUdOtFsHulIzUlpk0X0H9/Iyp6ji1WtTtFfl
	COGtwYrmQj3S2vctfgLpdqG3/2DW56GGe/tKyS8w1jg0+fIabbrT9J2DoBIncXGkPxoVCF9su3xpC
	dwdZFilXCREPv1q8+vkDl+8la16C3n4krxPsE9P08ROLdR0xbygk4ILnTdUmxYPfUVKBFee+8+qKq
	FJOhNOqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDiW-00000006yuw-2KsA;
	Wed, 13 Nov 2024 13:47:32 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBDiS-00000006ysE-37y9
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 13:47:31 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1731505643;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=gHzgNJeIjaZvOxUJjdGqYlYVOhgCdeNHnJS5Tf5gqqo=;
	b=oJAzufwbQyl9R6AI9N6hKcQr1xZ7g917yk55W+o+iBq+F/6J8dDKSYoHOuGyXniCw1c0aH
	j1MELuP7eScci6PRS70Wd/QmT+lf9DJuovkNUfEEnAH9ktCkECh0Tdz07ow31JIM4+JO/x
	CMZEEqThq7seu+hjoeOoa6ddl5v5zGNuun1YOtZgCOKWRFZHEQy3VEyhKCIUC9nKu8PBJr
	roX7HkWwXJ7wF0RNlxSYpdfdoaGQ765LB1iTBqljN4lJ4fVhSVucFMVpXhH8ruHycyrNsa
	qIa51jRTdHN71BT7aANfTr4PV6dcC0yMiygo8gf0fEYLnVU61d33va7pud+cAw==
Date: Wed, 13 Nov 2024 14:47:12 +0100
Message-Id: <D5L3IQFBCNBQ.1Z5OB2COPA7C5@cknow.org>
Cc: <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 "Shawn Lin" <shawn.lin@rock-chips.com>
Subject: Re: Q: Kconfig: 'If unsure, say N'
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Sudeep Holla" <sudeep.holla@arm.com>
References: <D5GVI1Q30BTS.1ZVQ4YC4OJYEL@cknow.org>
 <20241112054623.7zxte2nny7h4st3h@bogus>
In-Reply-To: <20241112054623.7zxte2nny7h4st3h@bogus>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_054729_209975_CBF7BDC7 
X-CRM114-Status: GOOD (  21.11  )
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
Content-Type: multipart/mixed; boundary="===============3853972620739806047=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3853972620739806047==
Content-Type: multipart/signed;
 boundary=d6058cffb12ad5bd71cc704a8a30ec90289c25b15f02e290b59919e252dc;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--d6058cffb12ad5bd71cc704a8a30ec90289c25b15f02e290b59919e252dc
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Thanks for your response.

On Tue Nov 12, 2024 at 6:46 AM CET, Sudeep Holla wrote:
> On Fri, Nov 08, 2024 at 03:39:30PM +0100, Diederik de Haas wrote:
> > In quite a number of Kconfig help text entries I see this:
> > "If unsure, say N."
> >
> > But that raises the question: How can I be sure?
>
> If you don't know about the feature and it is not having any user-interfa=
ce
> why do you want to enable it. You must understand the feature to enable i=
t
> and use it IMO.

Ok, understood.

> You seem to contradict yourself here. If you have understood the help
> text and think it is useful, it seems to me as an indication that you
> are not unsure really. So you can enable it if you want TBH.
>
> > Not to discuss these specifically, but just for illustration:
> > ``drivers/firmware/arm_scmi/transports/Kconfig`` has this
> > option: ``ARM_SCMI_TRANSPORT_SMC_ATOMIC_ENABLE``
> > which IIUC enables an *optional* feature for an atomic transaction.
> >
>
> "If you want the SCMI SMC based transport to operate in atomic
> mode, avoiding any kind of sleeping behaviour for selected
> transactions on the TX path, answer Y.
>
> Enabling atomic mode operations allows any SCMI driver using this
> transport to optionally ask for atomic SCMI transactions and operate
> in atomic context too, at the price of using a number of busy-waiting
> primitives all over instead."
>
> So you read the above text, understood and find it useful. You must be
> not unsure of this feature then, so what does that text bother you.

In this case I was wondering whether this was related to Table 1 in
"Power and Performance Management using Arm SCMI Specification"
whitepaper.
And I do think that I understand most of the Help text, but I'm not/less
sure about the part starting with "at the price of ...".

> It is just a caution to users who are just build and not looked at the
> code, or have no idea about the feature or doesn't understand the help
> text.

And my question was exactly about "just a caution", which raises the
question with me "caution for what?" ... which is an unspecified risk.
So to be on the safe side, I will not enable modules with "If unsure,
say N" unless I fully understand the source code.

Cheers,
  Diederik

--d6058cffb12ad5bd71cc704a8a30ec90289c25b15f02e290b59919e252dc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZzSt4wAKCRDXblvOeH7b
boRiAQDx8Eh2ofEVih95M/okFMQsvSV2EcKZw8mMPdo8wV8lsgEA8/3y5avIppoN
+/q44cpCGJSZQaSLsydKu9Uq+boaxQY=
=qLuS
-----END PGP SIGNATURE-----

--d6058cffb12ad5bd71cc704a8a30ec90289c25b15f02e290b59919e252dc--


--===============3853972620739806047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3853972620739806047==--

