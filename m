Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02441C54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 07:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Cc:Subject:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UiSth8+JAABoPsbTWUbS6td6qM/Dss0u+/DuUZVna0Y=; b=syiugODn6yhXZe66gWZi3rr2No
	tuuiOLiyuFsCdqd2VetYuU5Funsco+IM3UHb3d9E+USTyk52Vhj4UKINbKJ3YKtyvS2ZCKadbCjfj
	6MNXNep2JMoc+3zdtkUUBNWMGvw/GZvDZvw0662HEmnF4KoI59vtED5FYEq7FSLyXpxX64h6iJqc7
	73lTdlDx6YyXdaC9uqpwTnYFd18qd1ctwizt32FvXnBygUIMXO9B/ATQ/AlmIKPo3rxa80WkVIQbn
	aVN3omub67XpfDtZFixEdclj0kr/nA9lboIBY61ZlqhcRNA81Am+DBLyR8Kf9jDFcEqBn8bIZEt6K
	0lG7+y2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpjsi-0000000CoLH-0OdF;
	Thu, 28 Mar 2024 07:09:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpjsf-0000000CoKW-444A;
	Thu, 28 Mar 2024 07:08:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:References:To:From:Cc:
	Subject:Message-Id:Date:Content-Type:Mime-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=LE+PCSOHRzOHjXaYAf54q5i1UdCGrlB6HB15OyYUkrg=; b=L0TbqNVbgq9lGgwdxSeBYqbbW1
	s2gAO02pQf/p0QDFTo5GAk00PKTj1fVAjjZB4PVUVTldCeSEhge8OaD0IWn7zHezbbDjBeYwTalAt
	TbJJBNsVtJ/6jYtbL6ewVDOGvbQKwTFZjZaUFYRDksWa68ZSzqjgFccNaA6rcp1JbG86l6asf6ho/
	gkZSqEyR2YNf9RycBkTeoRsxx8H2WN3E9JBQo67EXKC9jpV4MiXTJSVgglimwN3NbUiJ2e1+nkDDO
	nL+auYVY8JjlWwGIf/ZwkyhcTX5MotQfVD97Y1OXgThQ2HrlEuH7pp8yfdYuQmkk2ryaDa5YF541t
	Wfrg8FDw==;
Received: from www522.your-server.de ([195.201.215.122])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpjsc-00000005n1W-46eq;
	Thu, 28 Mar 2024 07:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=In-Reply-To:References:To:From:Cc:
	Subject:Message-Id:Date:Content-Type:Mime-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=LE+PCSOHRzOHjXaYAf54q5i1UdCGrlB6HB15OyYUkrg=; b=l0gc7oAIJqWk9rBkCtBf3gqvab
	Hv/NY3RfPnvnJJpYc+dUCASxCy6FhVwV5Z7vKtv0CJAknRcRFCpMJQCC8JmBxNDs0imyo8DbTUcQp
	6sfyinvlWthNZ79UWnQk9BP886NW06lrqRfW6jb/lfC1QyjuSi/DOH9enK6mURBRkEKAMXSRr6sbI
	pwruCcVT6QxuFA/wZqBuTU7LnoGVtiXFnfniU0YX0N9NjH/2jrWui05fWZ0PSH6E3EdQ1yylJMFca
	N0LZGqE1d7d5NuxkovX+A6AuBMozX/dC35Ben1Re0gnT74c1TJQU4r21oeTyUmof/VzC79ckpVQLD
	nCN7f2Pg==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpjsD-000Nm2-5j; Thu, 28 Mar 2024 08:08:29 +0100
Received: from [185.204.1.225] (helo=localhost)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpjs6-000Gud-4q; Thu, 28 Mar 2024 08:08:28 +0100
Mime-Version: 1.0
Date: Thu, 28 Mar 2024 07:08:20 +0000
Message-Id: <D05701GE187C.3VLOERXP8B3NR@folker-schwesinger.de>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add enable-strobe-pulldown to
 emmc phy on ROCK Pi 4
Cc: "Vinod Koul" <vkoul@kernel.org>, "Yogesh Hegde" <yogi.kernel@gmail.com>,
 "Heiko Stuebner" <heiko@sntech.de>, "Chris Ruehl"
 <chris.ruehl@gtsys.com.hk>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Dragan Simic" <dsimic@manjaro.org>, "Christopher
 Obbard" <chris.obbard@collabora.com>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
From: "Folker Schwesinger" <dev@folker-schwesinger.de>
To: <wens@kernel.org>
X-Mailer: aerc 0.17.0-82-g6ffc0ed5991b
References: <20240327192641.14220-1-dev@folker-schwesinger.de>
 <20240327192641.14220-2-dev@folker-schwesinger.de>
 <CAGb2v64cF2fuW7vKq_=AhY+ciAp8t=fxT23AFJWB1qOv1xWuNw@mail.gmail.com>
In-Reply-To: <CAGb2v64cF2fuW7vKq_=AhY+ciAp8t=fxT23AFJWB1qOv1xWuNw@mail.gmail.com>
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27227/Wed Mar 27 09:33:27 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_070855_094329_2795FF5E 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============3922080444154827202=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3922080444154827202==
Content-Type: multipart/signed;
 boundary=685e7272893909941bbddb0bb8d364638ad9500b3f9d32cffeb73f746d40;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--685e7272893909941bbddb0bb8d364638ad9500b3f9d32cffeb73f746d40
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Mar 28, 2024 at 6:39 AM CET, Chen-Yu Tsai wrote:
> > @@ -648,7 +649,8 @@ &saradc {
> >  &sdhci {
> >         max-frequency = <150000000>;
> >         bus-width = <8>;
> > -       mmc-hs200-1_8v;
>
> Shouldn't this be kept around? The node should list all supported modes,
> not just the highest one. Same for the other patch.
>

This is not necessary, mmc-hs400-1_8v implicitly activates the
corresponding HS200 capability, see drivers/mmc/core/host.c:

if (device_property_read_bool(dev, "mmc-hs200-1_8v"))
	host->caps2 |= MMC_CAP2_HS200_1_8V_SDR;
/* ... */
if (device_property_read_bool(dev, "mmc-hs400-1_8v"))
	host->caps2 |= MMC_CAP2_HS400_1_8V | MMC_CAP2_HS200_1_8V_SDR;

Kind regards

Folker


--685e7272893909941bbddb0bb8d364638ad9500b3f9d32cffeb73f746d40
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJAEABYKADgWIQQFbmi0A2l3pTuK+esCQHEyPYq7fQUCZgUXZhocZGV2QGZvbGtl
ci1zY2h3ZXNpbmdlci5kZQAKCRACQHEyPYq7fRRlAPsHldRKc1S1b2zdwEFymTnt
XA+bgHUm8ffUEy+vUfQWbQEA6YyYuwS22VINEn1TKGAClheEqRN7FIjoWeLPq8Kx
QQQ=
=Vc3P
-----END PGP SIGNATURE-----

--685e7272893909941bbddb0bb8d364638ad9500b3f9d32cffeb73f746d40--


--===============3922080444154827202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3922080444154827202==--

