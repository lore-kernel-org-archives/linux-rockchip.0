Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29E9CCAC5AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 23:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t/5W9kBOvQq1CxDm/JXIAhsutpGoplHN+kvsEctysNE=; b=CqCJm+IxWOLWzknI4Y0xtvsEWw
	AdzVpmDaJ25oA0SindK6ZrfAPJwZSGUuFDbE965DiolmvLA9tOvfsgAxeiQ3R1U7+HQAm2+9d4ims
	yMbr4V1TeZVBHGe27HRNou0413MpbQ3gAZf/DHevP2DiXhod8VGSvdOTBCXoTtPlTCkQj+h2xKW2g
	c/SB9ilfkTsAU3NZfPOJiM7RKQXAsOaPYueHiWviek6/F4+IIvgPwJOCf2b2wxrJqlmH6r3P+qUHY
	OgL0C5U5cUYWik2EGkGi962VaC7mRkd++IMwXtrO3ct/lrr+6K+g+K3XQ6Lfc6aDaw5//OjHv2Rx4
	k9pOjRzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1C2O-0000000F7jd-2nIq;
	Tue, 23 Sep 2025 23:03:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1C2M-0000000F7jF-0Okx
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Sep 2025 23:03:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1E78840A34;
	Tue, 23 Sep 2025 23:03:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82F76C4CEF5;
	Tue, 23 Sep 2025 23:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758668585;
	bh=A5dBr5PpaLQmJuxydR8a5pjwhHT9xCswrCUlSGd9Jxc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WYk4QuiANLqAYBKBMQBkOL+iwQ6W/E/SXGvPQAvHkHqa4HXfB+Gynw+sgddMIuFLx
	 sYXwR61KqTFKF/Zfmae9CEXHk4hi3p69eJfcyWbzLy6EVH5XNax8pDmKHL0+HhZE02
	 q+3FjdU0NcxomWCJkKwEtkvOclicfGJmU2DNjoT1Drz1VQpYjkgfoyfx24vNO3sNj/
	 eRbArcv3evXuc3lqX6z5jFBRG3+yAa/URvuqfiqvdvaO0/VrPAYvrnE2KBtGRPXhLW
	 M21qOtY/JqjktuJ7UqJ6Wbsthgw9nc5qP9E8BrbEzqb4hgKkX4BmBK1ZZFj6STOjvw
	 NaA1YBMhbFTlA==
Received: by venus (Postfix, from userid 1000)
	id 2BF3C1805CF; Wed, 24 Sep 2025 01:02:59 +0200 (CEST)
Date: Wed, 24 Sep 2025 01:02:59 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Stefan Schmidt <stefan@datenfreihafen.org>, 
	Jan Lubbe <jlu@pengutronix.de>, stefan.schmidt@linaro.org, linux-embedded@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, RD Babiera <rdbabiera@google.com>, 
	Amit Sunil Dhamne <amitsd@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	kernel@collabora.com
Subject: Re: Call for Participation: Embedded & IoT micro-conference at Linux
 Plumbers 2025
Message-ID: <j5dtkmnu55ycmqpaseazots7mevqyt5lafclvguxj6oz5r5cts@n563dsnvwuu7>
References: <2a353817-f1da-4e7c-8b2c-0853779ec054@datenfreihafen.org>
MIME-Version: 1.0
In-Reply-To: <2a353817-f1da-4e7c-8b2c-0853779ec054@datenfreihafen.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_160306_219837_AC7CFF93 
X-CRM114-Status: GOOD (  16.29  )
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
Content-Type: multipart/mixed; boundary="===============5448194604468601415=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5448194604468601415==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xi4we3ntoqtlf52u"
Content-Disposition: inline


--xi4we3ntoqtlf52u
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Call for Participation: Embedded & IoT micro-conference at Linux
 Plumbers 2025
MIME-Version: 1.0

Hi,

On Fri, Sep 05, 2025 at 09:45:26AM +0200, Stefan Schmidt wrote:
> We are happy to announce that the Embedded & IoT micro-conference was
> again accepted for Linux Plumbers this year. Hosted in beautiful Tokyo,
> Japan December 11-13. https://lpc.events/event/19/contributions/2005/
>=20
> Topics cover all things embedded and IoT. Boot time to kernel size, low
> power communication, telemetry and also RTOS. Devicetree and build
> system have their own MC and we can move sessions between them as needed.

I would like to present / discuss fusb302 (or other chips handled via
the TCPM framework) using boards that are mainly powered via USB-C and
not having any backup power source. This kind of setup is often found
on Rockchip boards (e.g. Libre Computer ROC-RK3399-PC, Radxa ROCK 5B
or ArmSoM Sige 5) and quite a pain, because a hard-reset effectively
kills the board power.

I would present the problem(s), what I've done so far to get it working
to some degree with the upstream kernel and then discuss how to improve
the situation.

I think to become a worthwhile discussion the session would need some
people that know the USB-PD specification and kernel subsystem, such as:

 * Heikki Krogerus (USB-C maintainer)
 * Greg Kroah-Hartman (USB maintainer)
 * RD Babiera or Amit Sunil Dhamne (Google is actively working on
   ensuring TCPM code being compatible with the USB-PD specification
   and they were unhappy about some of my changes :))

P.S.: I'm not sure how the CfP for the LPC micro-conferences works.
Please tell me if this mail is not good enough and I need to insert
something into some system.

Greetings,

-- Sebastian

--xi4we3ntoqtlf52u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmjTJx8ACgkQ2O7X88g7
+pqU2w/6AxYzW774s5ImPsNv11xmIY3uOTWpKgS1cJeVCUVV/75CGcgNZlnhYboe
KvAvCso1L78HrqMA3pQ/N2tfa5IfRUd/q7kkRJT+vlp9UH1LxClEiKKam6GSAsuF
5L382YDSD1x+inub52F21GnpSIE4E4JWAkn1RdMwNMZZ0L72eMYoOeXy1qnFNUc5
f99ME2nqClgAHPmyP3QPyuKuRdu3LVxlgZKzxLHG79jJgWCQOyTGV/TYaGi9ip0P
6ol/inpHjokcWnqhZyQPycuX7zCaqDrf9jhfHZ7Tl0Z48XtGAJySFf0wtxfiOkDE
sFeSD56IG/3/usMiX61FevEHiHovefpw9cN2Z/6W5b6SyJBeofMNoqkRSHbvayJc
BSN82nXAxaN6qwgLdfM3qab0GIUYLmkmP3SNXD+rybr+EWbsOaKtwKEvxE0CVVbW
800/ay8/ti1/4XFfJD2jD6vD4StHAWtIHLkGhO+hCL+8p4uiRC3tiCJvBq89gplY
ACprfRPqA5qE31/8h8Zz5lJkvvpZkNsZl1wFRjIYGFyjigUO/bxHA1Meba7PJBOv
WeL9OiSvKiQsa40D9UcNQnl7SzY1TVDnwhMZQAdEbb1AB1l6FLbF+AVs5ph97b/f
W6FnZ5F60XShgJZp7z41fPp02u5ujNsJNAHy0DeARrdW+oBjGaU=
=oU21
-----END PGP SIGNATURE-----

--xi4we3ntoqtlf52u--


--===============5448194604468601415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5448194604468601415==--

