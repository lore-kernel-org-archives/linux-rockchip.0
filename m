Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8ABDCD5BB7
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 12:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KkcjEGKo8U4TFuRIyJfBOy/uPHrVL9J/wBB7zwJ0nFo=; b=NstqDlKBRwGNUzyosIk3SnyU5C
	AIzG1EC2eaqPem+jJ5k85H8n1TI/D9+mFgYCed1/6r5cXV9gHbcLfu550VO1RPB2EJs4dwbRGh2eK
	YginPaVsWQRYq44oWpUNgDuN8vogwewlaBrujJjRK8KyMb+BBo9QpKHsqkVnLdx37BklN8IW9iYys
	x2Mkz9G+mRxRfVFkzt9LnXwChSblRidBfZ4de7Vvzuq0DpslKZ1ivFQ/E5IreRhmZMuPLknvIUMhb
	wrYAnzQ9V61fukxBiFTR9oXr7Qu70fNJNl75VYdpRUez5vuZn+lyR4DqqcMaO9y00o8wLTx7Jg1v+
	Ei3ATxyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smBWC-00000008I53-43h3;
	Thu, 05 Sep 2024 12:23:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smBUW-00000008HdB-4B86
	for linux-rockchip@bombadil.infradead.org;
	Thu, 05 Sep 2024 12:21:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:References:To:From:Subject
	:Cc:Message-Id:Date:Content-Type:Mime-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=m0upCeZNrvDUQnDPHLYGuminqK/9oN+kaTuNQFta8ZQ=; b=jpZq63dNVW3hbseP+c67Jsqzsk
	Z/eoB9tf9LKLXXToT7WfXjkimku7Zw4WrdAh/0T6cwkRXl1gjecNMPpBZLMF8U8i+6JXeMMYEbUe7
	reZD3MPmrn4d3UVqmHlQwbeCTeNWJXgm3yqTWfrlZpg/dXl/pY/pL39xmVhfXG4j/1c2DPGabykQh
	PijfG/6JeLDfMrFDrHq9oADnI+CUCCz11hrJGzRiR9xAw3OpiD9WxpgGwsKirtUJYDeqQE3ULTKOU
	IfMeg/3xtxvvFbWwoK/SFZRDkquVCkocEwaESxRm+EMxLCkb5wGPq9sXES4C5lzQtfxiDqkovembb
	GhPWybQQ==;
Received: from out-186.mta1.migadu.com ([95.215.58.186])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1smBUT-00000000TqN-1sUs
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Sep 2024 12:21:35 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1725538881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m0upCeZNrvDUQnDPHLYGuminqK/9oN+kaTuNQFta8ZQ=;
	b=zp8p7HP3ol+AN7+2w0u8sw3feRS6+EtQvIxCq07dq9Dksj1BTJW2+cqNyFjtKP6ganjaEn
	yRNrdKSMcY/zfUd8lPaFdyuO200HIfl9M0UYYVq+QjhfTeeHWi3ZsXLlJI/TiAsATCV/lL
	veM7whyuJj/XoEN2jpV4SpdNDhvZug15hXJg+oub6sWMNS2+cB/OUt0lAoVp2pFnJ7qL2j
	SqaBjowIo9rVkcQwbGsTr0xQhJHz0c8SGtIc0svjbcOf+GIlorwOBqTw4aNVmdWlAEsRFN
	ylbUhCkexhSvxeUXkNtWjgLL7n/y9GT0QxkzY2rzCRTpBPMhUMgjMPRxu1j2AA==
Date: Thu, 05 Sep 2024 14:21:12 +0200
Message-Id: <D3YCHAOLOU6W.3B8MJYAYWOEGK@cknow.org>
Cc: <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add a few aliases to the PineTab2
 dtsi
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Dragan Simic"
 <dsimic@manjaro.org>, <linux-rockchip@lists.infradead.org>
References: <987e68d1c5e9a0cc56d730aec87246aa5ab8ea14.1725535770.git.dsimic@manjaro.org> <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
In-Reply-To: <c820085c-a4f4-4d03-9df8-733a79e911c0@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_132133_733462_E911B7D1 
X-CRM114-Status: GOOD (  15.45  )
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
Content-Type: multipart/mixed; boundary="===============1679543363517398817=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1679543363517398817==
Content-Type: multipart/signed;
 boundary=2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Thu Sep 5, 2024 at 1:39 PM CEST, Krzysztof Kozlowski wrote:
> On 05/09/2024 13:32, Dragan Simic wrote:
> > Sprinkle a few commonly used aliases onto the PineTab2 dtsi file, to im=
prove
> > its readability a bit, to make it easier to refer to the actual nodes l=
ater,
> > if needed, and to add a bit more detail to some of the labels.
> >=20
> > Suggested-by: Diederik de Haas <didi.debian@cknow.org>
> > Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>
> Unused aliases do not improve readability, so for me this change is
> making code worse without valid reason.

This came forth by a question from me to Dragan about a patch for
another board which doesn't have a charger defined at all (yet).
I actually have that patch (but not the HW) for a while (~1.5 year)
now and I had used `rk817_charger: charger` for that, probably because
I saw that being used everywhere else.

Then I compared it to the PineTab2 and noticed it had only `charger`, so
I asked "What should I use? With or without the alias?"
In this case the inconsistency is causing confusion (with me).

So: What should be used for that other/new board(s)?

Cheers,
  Diederik

--2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZtmiOgAKCRDXblvOeH7b
bivAAQChtRQ4JLxi+OzTHCGMxlshCxBB/+x9r0QIrUHdVfc2oAD/W0i0uuf14sm/
WIQpeeE4yYyvBIzmSAeyyCQ1XcoRYgw=
=dEN9
-----END PGP SIGNATURE-----

--2d312f426b36611740239ff3b0c317c3ffbb2d79eaae2fd1cbf4292c25aa--


--===============1679543363517398817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1679543363517398817==--

