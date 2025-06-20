Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C0BCC71155
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 12:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FW97yY/1UOvXvXFW2lPkr9+OqdLHMGjZdZMIsX98sS8=; b=q2BjiSBC7SzalyvMKu9jTLrNhv
	5n2KvT1ZYmZhORTRjNl73i6SgdDeHVx7KGiAOSfsU4m/Z3BIFPPftWU/Nkv5nC5V9Wqprphx19gjR
	3IbHOrt6SiCPMrjeiDRnZazvNa9VWb9f8b8fjD0a+JzoBdNLz0JqpX5Qx6YW9qX5S4FXcxSUepEnv
	4RGmZz9voXLJ1wKC0BdN0cqwuXKxwDmkivrONlogw9qrJDINpTmn22UdN5Om9ACBppq9PuPEWqAlW
	dcdIYOgsJatrNfmmYwJU0dwjtfx2nF5SfBEuqyiU6d+dpN2wUhIe4NfOKXwXM0t9/W4nkRS/la+6R
	GW/v78rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaRg-0000000FWWT-14tf;
	Fri, 20 Jun 2025 12:02:12 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYhf-0000000FJ2K-1Rjx
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Jun 2025 10:10:37 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1750414227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rh5pIV8WkpI5HMeTJ5df7eJWevXbYQsSGtle3kqnKrE=;
	b=nJuDkGL09UtmImqfvryADBKU0wujEnm2pxtNg2qi98hUv3Oq26UXz8d1At3pQ1c5FJ7z2m
	i7Y73alRZoz+/Hr8yCj+qCJhA4032jLzcd3BxrVFNLqQlE3rXD6HLFXPnNXehBSz7T3SZX
	DSdE4TWhVR/G0DPZit2LKRcM409BPIuBYgfI3dXodbZNXCPBhO1mSG2h565SVyUIC2qZE6
	Csv/1+MoU6j3vxEX6FwAT2A75J1GnTGeo0nz/sZXGjnhlFs4blrt2Rk2ppUvSk9ykjvWB5
	NGdzqJSeUtjW0i917JRpTkyukJPhyA3ylnMr9ICdBSgaX5C2PuBoUwVRnzqe+Q==
Date: Fri, 20 Jun 2025 12:10:10 +0200
Message-Id: <DARA1V0ITPV5.T24DK4TVI0W7@cknow.org>
Cc: "Rob Herring" <robh@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 <devicetree@vger.kernel.org>, "Detlev Casanova"
 <detlev.casanova@collabora.com>, <stable@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: enable further peripherals
 on ArmSoM Sige5
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, "Alexey Charkov" <alchark@gmail.com>
References: <20250614-sige5-updates-v2-0-3bb31b02623c@gmail.com>
 <175036770856.1520003.17823147228060153634.b4-ty@sntech.de>
 <CABjd4Yzz9mh0G5BhpPOGAoadD-A5eX4kdsF8rGrWk82hAE-MYQ@mail.gmail.com>
 <5004008.8F6SAcFxjW@phil>
In-Reply-To: <5004008.8F6SAcFxjW@phil>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_031035_712682_445764DE 
X-CRM114-Status: GOOD (  11.87  )
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
Content-Type: multipart/mixed; boundary="===============6055344658056219163=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6055344658056219163==
Content-Type: multipart/signed;
 boundary=3849aed8dc18aa9a4d5f113a0f5d2765faac8f215c4386c490a0ad7c38eb;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--3849aed8dc18aa9a4d5f113a0f5d2765faac8f215c4386c490a0ad7c38eb
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Jun 20, 2025 at 10:44 AM CEST, Heiko Stuebner wrote:
> Am Freitag, 20. Juni 2025, 10:40:49 Mitteleurop=C3=A4ische Sommerzeit sch=
rieb Alexey Charkov:
>> On Fri, Jun 20, 2025 at 1:17=E2=80=AFAM Heiko Stuebner <heiko@sntech.de>=
 wrote:
>> >
>> > I've also fixed the wifi@1 node in the overlay - which was using
>> > spaces instead of tabs.
>>=20
>> Thanks Heiko! It's annoying that YAML doesn't like tabs, so copying
>> from binding examples is not a universally good idea :)
>>=20
>> By the way, is there any tool that helps catch those?
>
> checkpatch.pl would be the tool to do that, but I'm not sure it handles
> this at this time.
>
> I also only saw things when I looked at the patch in "mcedit", because
> it nicely distinguishes between tabs and spaces :-) .

In vim, ``:set list`` makes them visible as well.

--3849aed8dc18aa9a4d5f113a0f5d2765faac8f215c4386c490a0ad7c38eb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaFUzjQAKCRDXblvOeH7b
bs/QAP0WF4+k13q1KtXzF57NuU9bR7PWT5UFo1PZ4uovhmnPzQEAwWcTlpj6q/oo
whJ0eFpdigYeLRxSCw2IgXaWu2AV3gg=
=hqZi
-----END PGP SIGNATURE-----

--3849aed8dc18aa9a4d5f113a0f5d2765faac8f215c4386c490a0ad7c38eb--


--===============6055344658056219163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6055344658056219163==--

