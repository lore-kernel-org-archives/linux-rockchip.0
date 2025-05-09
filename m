Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF118C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 17:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zuDgelzjP48lrDeFRg8Ruozi86ZU9HruzaPBDMT7WNI=; b=XdmEjnU5zHg3MFMwhm481peIm0
	mzr+skUTVUYIeAuh4VQ6Ovjfnk4G+DvdUM3oLKVCzd+xWIbRUtmQl0Cg2pHibgjJ/uikCnl2vCP5F
	JYnURKeap8TDmx5uiVhKnCwIUVfXSo2q91HRk2gohGePlqvLZP9d5zekJCTgRCR/j67Rn3+NYLs33
	nmtBdldQ1XEhZO+aYR48mHZHsRGnZgaHC73et1X2MwIouNyLmLZhbgumxB4Duky8k2QlZi/Xi7ITE
	KG6a8TnynFyf4dRcIkKKN9bgC5z1/AMsYnrHOfrslcqV5HxcwDinInAdwze+oVvIvDy8KG60vIaWA
	MRM+Kqqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDRfb-00000004SVp-2rbA;
	Fri, 09 May 2025 17:37:59 +0000
Received: from out-173.mta1.migadu.com ([95.215.58.173])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDPkN-000000046Uk-0xTE
	for linux-rockchip@lists.infradead.org;
	Fri, 09 May 2025 15:34:49 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1746804875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=K1E2b0XxNtqEsAhxKbHa26ec+Iv+4B3ST0nSXvkyMcE=;
	b=txjLPg+2r2oCcSAmqMhRMoJ6ogAGxsVdesD30F5X6afQ/G6keHvb8TuZG8TPtcuMozvGZe
	mSnluLjZf32SfIaFxu2kDCMJdwF5NkV7iI1pmMdBjCKWl8GvSPe9gB7DIrMEQiY4/xw76s
	vZd3sx72Z/HPVrdL1gWryYxjPr2HZvDyhr/krmQsylu9GGhoaG2khy8Zk+sfCR+wlHEB1E
	wZmiIhnXtDKkuuqp+YLzVcGVLLjLQ4oZiWjOI8bZQKJAMfsO21Nczv6cRcQA94Bg5XCucw
	/7q1wq12+OQ3wF4FoP8vshSdux+lhiBfUi5nN/c1XxJYWGUJcEnBKwprc0dCHw==
Date: Fri, 09 May 2025 17:34:21 +0200
Message-Id: <D9RQN76VZXO8.T3I0046FNVG3@cknow.org>
Cc: "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Dragan Simic" <dsimic@manjaro.org>, "Rob Herring"
 <robh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/1] arm64: dts: rockchip: rk3568: Move PCIe3 MSI to use
 GIC ITS
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Chukun Pan" <amadeus@jmu.edu.cn>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250308093008.568437-1-amadeus@jmu.edu.cn>
In-Reply-To: <20250308093008.568437-1-amadeus@jmu.edu.cn>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_083447_410776_4528849A 
X-CRM114-Status: GOOD (  14.69  )
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
Content-Type: multipart/mixed; boundary="===============5568404222237035724=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5568404222237035724==
Content-Type: multipart/signed;
 boundary=7a05250e7073856251351d2d7eed564a7ba885e16373e9e67c2c1e611f0e;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--7a05250e7073856251351d2d7eed564a7ba885e16373e9e67c2c1e611f0e
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Sat Mar 8, 2025 at 10:30 AM CET, Chukun Pan wrote:
> For a long time, rk3568's MSI-X had bugs and could only work on one node.
> e.g. [    7.250882] r8125 0002:01:00.0: no MSI/MSI-X. Back to INTx.
>
> Now the ITS of GICv3 on rk3568 has been fixed by commit b08e2f42e86b
> ("irqchip/gic-v3-its: Share ITS tables with a non-trusted hypervisor")
> and commit 2d81e1bb6252 ("irqchip/gic-v3: Add Rockchip 3568002 erratum
> workaround").
>
> Following commit b956c9de9175 ("arm64: dts: rockchip: rk356x: Move
> PCIe MSI to use GIC ITS instead of MBI"), change the PCIe3 controller's
> MSI on rk3568 to use ITS, so that all MSI-X can work properly.
>
> ~# dmesg | grep -E 'GIC|ITS'
> <snip>
>
> ~# lspci -v | grep MSI-X
>         Capabilities: [b0] MSI-X: Enable- Count=3D1 Masked-
>         Capabilities: [b0] MSI-X: Enable- Count=3D128 Masked-
>         Capabilities: [b0] MSI-X: Enable+ Count=3D32 Masked-
>         Capabilities: [b0] MSI-X: Enable- Count=3D128 Masked-
>         Capabilities: [b0] MSI-X: Enable+ Count=3D32 Masked-

I tested this patch on my NanoPi R5S with a 6.15-rc3 kernel + a number
of [vcc|phy]-supply patches that have been accepted for 6.16 (and a
small WIP LED patch).

With this patch I get the following kernel warnings:

pci 0001:10:00.0: Primary bus is hard wired to 0
pci 0002:20:00.0: Primary bus is hard wired to 0

If I 'unapply' this patch, I don't see those warnings.
The output of the above mentioned ``dmesg`` and ``lspci`` commands is
exactly the same in both cases.

The PCI IDs refer to:
PCI bridge: Rockchip Electronics Co., Ltd RK3568 Remote Signal Processor (r=
ev 01)

It's possible that this patch only brought a(nother) problem to light,
but was I supposed to see an improvement and if so where/how?

Cheers,
  Diederik

> Chukun Pan (1):
>   arm64: dts: rockchip: rk3568: Move PCIe3 MSI to use GIC ITS
>
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)


--7a05250e7073856251351d2d7eed564a7ba885e16373e9e67c2c1e611f0e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaB4ghAAKCRDXblvOeH7b
bl/EAQD+K7c6vUljn1EBtoIGabanVcKojXgvdX70yKiRNSvqPQEAvapmOAWC5jab
K8JwHx8knw5EZOulmU6azbvFEkAZqAk=
=bpa6
-----END PGP SIGNATURE-----

--7a05250e7073856251351d2d7eed564a7ba885e16373e9e67c2c1e611f0e--


--===============5568404222237035724==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5568404222237035724==--

