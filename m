Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5148AC0219E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 12:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZwBx+00Vz3SNtozkJZsoiD46XO2OFtU0SS1qEA1Ykb4=; b=rooQC+szUjXe5hUU3MrDCM+LSJ
	Iu+gC+OH5SPDkt7y7TyvRUmJMJXAhj4Msfrdg0kDx2sNsRiosPVCTbowtAUvm3WSVr01ZTsLzjGuZ
	roKVNTIRD1/86UQ7jNHRz50UjUvwbV+bpHZarfwzLdxesw3WBbK91w28f3XFqYwQ2ARvRr4abuf3W
	Dg0U6B8XGzSVIQIbukk2fEd5xoKRBqINcmUQPwABMhjZfWtuRSAmnqF4uP1Op/Ms2whkxalU7p4o8
	z7f1sCy15E02/YGPOSv6zsgVLv2O7nx4KkZ1luenLU0iO8TVrwNO5UP2U/EoiGIVUtkuKIcs3Zrdc
	DpzOQepQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thTCB-0000000HRg2-2Unr;
	Mon, 10 Feb 2025 12:47:27 +0000
Received: from out-178.mta1.migadu.com ([95.215.58.178])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thTC8-0000000HRfX-2LU1
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 12:47:26 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1739191639;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GM2uG63mtzY/UCzuoJUN2JH4a7GbgULHzqMzKpHmkFA=;
	b=ESbKkdxqz4qk8K/csAw9UPdZJegeZNw5n9IhkjYGhZRnGZZk5YOwmafSD0Rsz3LVQ+JSIn
	UYaGH4TnNr6niTvC5xvFSsXylxE5/LRkLAMz6yLn0TmYI+iGQSoGXbDTddwWcgkLCpVhJS
	z6ELn8kRIkefXSFlxLXQ2po+LeFrxMIqr/5oU9Fy8OVp1EC5EhGwqs/5yvhfc9HEZxQNfu
	inEk11D+cJplnPvgdyhFzmNJqNy2P7BaAV2VpcrNxm6dus8VhmFN4FSGtVXy6ycElgWHDj
	3zh1n6PzgxPVVnUX+DHiEOMfpEGWdplyDvIqn15xW6HinaNxpAEgy7vV1IwIzw==
Date: Mon, 10 Feb 2025 13:47:08 +0100
Message-Id: <D7ORZ8AGCPNE.1JTATRGD0MWLQ@cknow.org>
Cc: "Dragan Simic" <dsimic@manjaro.org>, "Maximilian Weigand"
 <mweigand@mweigand.net>, "Marek Kraus" <gamiee@pine64.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] arm64: dts: rockchip: add 'chassis-type' property on
 PineNote
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250207111157.297276-1-didi.debian@cknow.org>
 <87a29b78-5fab-48eb-9a86-f12c41369dfa@kernel.org>
In-Reply-To: <87a29b78-5fab-48eb-9a86-f12c41369dfa@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_044725_151414_62ABC94C 
X-CRM114-Status: UNSURE (   7.22  )
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
Content-Type: multipart/mixed; boundary="===============3808080790548791975=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3808080790548791975==
Content-Type: multipart/signed;
 boundary=b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Feb 10, 2025 at 12:06 PM CET, Krzysztof Kozlowski wrote:
> On 07/02/2025 12:11, Diederik de Haas wrote:
>> Add the recommended chassis-type root node property so userspace can
>> request the form factor and adjust their behavior accordingly.
>>=20
>> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>> Link: https://github.com/devicetree-org/devicetree-specification/blob/ma=
in/source/chapter3-devicenodes.rst#root-node
>
> Drop link, no need to point to source of every property. You don't do it
> for aliases, compatible, model etc, right?

Thanks for that hint, I'll keep that in mind for next time :-)

Cheers,
  Diederik

--b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ6n1TwAKCRDXblvOeH7b
bs2AAQDX/PMiD8ZS28oCmS3Xv1dgFP3IfMHvGFu7LHmEpzKiKwEA+8BWW5g6zQbw
lQVv4CZU5jr1q6/TEA7nZm2n0EmYjAg=
=w7P3
-----END PGP SIGNATURE-----

--b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32--


--===============3808080790548791975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3808080790548791975==--

