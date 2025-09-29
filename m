Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BADF8CAC5B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 10:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJPzSuoI8G02s+0KTLRQA40MYOyAHSx4fwR/yAUgJ7Y=; b=CIuS5VnT9O6DuX8PAA/tNpdmGc
	v3i1MFVJoCANdc5BEXIcpi1vv7FISDzME36MBo2/jh8Y07mMSukUlnyxseqFRYhQ+J3mvnAUdK28V
	JnT/sSsTaHA2yQqQKsbnnUcw54hHfQFkHkPwBgirNsd/7vXREoGi9XkCcEIda2PQ9XwYQmfrOfrpG
	/+u5dIYpNrnSUSwM3+sCPiPIK5W5+1avdZ7R0jh0hmSkrcOj4eI9XbmDvA258jwq6Jp18y6btFiNp
	5cTbwNABpCqU/vFuF01KQHy1ZVHVY2TOIQ+YxaISvhY6v0q3o0zOxhh46fDgGNackBhXe7cRFmrMu
	MOixOtTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3B04-00000002A7j-0Xzv;
	Mon, 29 Sep 2025 10:20:56 +0000
Received: from out-182.mta1.migadu.com ([2001:41d0:203:375::b6])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3B01-00000002A5Q-1orc
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 10:20:55 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1759141249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Mbhu+qHT9sgoCc33RJBFnXb9kyOGGNiTxZ7rlYKda5M=;
	b=cdURmXl/TEpUnukbrz/vjDzW8vbikibsWOeWapU9jc7K7o1GKhmF04qfRal36aqveOLNF/
	M8HwPQjlWt+CjXISHQBFiC2qITPn1iW0pyF55gm5O+oVkWXUez9Ou3HYumxHkrCsSe4Nj2
	f/Kid8hQx+fp395KB3Wfs+R9PtvnZTAhpW4OaqQx7eU02sffE63RFc0l8TkHOg/35/Bqv2
	Ev6XebOT32IvRsktwont2k9pqN3ARTjhAGtdmp/g+CFVus6FuFgTSd4B0P8+xz1YKnweqN
	BeAH0xaYTLuaYJkYYALOpiFpyr0IoF1i+ACDG8H8xoY3XKzCbpo6XvPhx98U2A==
Date: Mon, 29 Sep 2025 12:20:45 +0200
Message-Id: <DD57IZJQ4FQM.3T5791FLUQ8KQ@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: introduce LinkEase EasePi
 R1
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Liangbin Lian" <jjm2473@gmail.com>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <heiko@sntech.de>,
 <quentin.schulz@cherry.de>, <kever.yang@rock-chips.com>, <naoki@radxa.com>,
 <honyuenkwun@gmail.com>, <inindev@gmail.com>, <ivan8215145640@gmail.com>,
 <neil.armstrong@linaro.org>, <mani@kernel.org>, <dsimic@manjaro.org>,
 <pbrobinson@gmail.com>, <alchark@gmail.com>, <jbx6244@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
In-Reply-To: <20250929065714.27741-1-jjm2473@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_032053_686249_D3DA95B8 
X-CRM114-Status: GOOD (  11.58  )
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
Content-Type: multipart/mixed; boundary="===============9152964036583669336=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============9152964036583669336==
Content-Type: multipart/signed;
 boundary=ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Sep 29, 2025 at 8:57 AM CEST, Liangbin Lian wrote:
> LinkEase EasePi R1 [1] is a high-performance mini router.
> ...
> [1] https://doc.linkease.com/zh/guide/easepi-r1/hardware.html
>
> Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
> ---
>
> Changes in v2:
> - Change deprecated "rockchip,system-power-controller" to "system-power-c=
ontroller"
> - Link to v1: https://lore.kernel.org/r/20250925055906.83375-1-jjm2473@gm=
ail.com/

You received an Acked-by on patch 1 and 2 in v1 of this patch set.
You're supposed to add that to the next/new version(s) or explain why
you choose not to do that (bc f.e. there was a major change, but that
does not seem applicable to those patches).

Cheers,
  Diederik

> Changes in v3:
> - Fix typo ('status =3D "disable"' -> 'status =3D "disabled"') found by k=
ernel test robot https://lore.kernel.org/all/202509261328.Grjhp029-lkp@inte=
l.com/
> - Link to v2: https://lore.kernel.org/r/20250925092037.13582-1-jjm2473@gm=
ail.com/
>
> ---
>
> Liangbin Lian (3):
>   dt-bindings: vendor-prefixes: Document LinkEase
>   dt-bindings: arm: rockchip: Add LinkEase EasePi R1
>   arm64: dts: rockchip: add LinkEase EasePi R1
>
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3568-easepi-r1.dts    | 692 ++++++++++++++++++
>  4 files changed, 700 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-easepi-r1.dts
>
>
> base-commit: d0ca0df179c4b21e2a6c4a4fb637aa8fa14575cb


--ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaNpdgQAKCRDXblvOeH7b
bom1AQCfTswrFfDluNNV0dFculfDTyDmVKKRZ2crWGkMgZeo3QD+IhxsVqmnFLwb
Y6aWblLbHF2szDiC2O8HwzlysYVA4gY=
=DNJx
-----END PGP SIGNATURE-----

--ee8eb54230dbf014845d09a9401c721f636de595bbad24edb5099a7626ce--


--===============9152964036583669336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9152964036583669336==--

