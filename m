Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA9A9C4706F
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jan 2024 13:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uO2uq21L6AuSCQjH8kKZKftvxzMDDnuS68C/EPa7nYk=; b=3cu/47IK6a9mpvipKzG036+dtq
	/3iKOh5B+cn6gWF4531qY67b5Bql+IOSY4wFYiVetLGWpyPH3x+zDuRcjKukpXfRfm4lE/dQCmlri
	9zg0B9NO3+h1GX9zS1zehhy/AJyrUQyyyybgdtf5ZsXnRTKIHi0DGNmVDNYWSlGdK1OThCGIlRpwK
	BLnZWtWp/xgf696/CjXBpL3BY9Gtdm+GGzLGGTzs5HRyxTFapWGYUUYVq2g3+vLM5r/ZSHDTYh/nk
	54FYmuGW9cB/WwHFofgXmvrpIYCCqvnYPLKmJeMZLk/SO1uOChKcyGpF9ed6gD55OMomMquTb5AXC
	2RXdyBMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKIoa-006M0Q-2f;
	Mon, 01 Jan 2024 13:58:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKIoY-006Lzx-06;
	Mon, 01 Jan 2024 13:58:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DF19C60EFB;
	Mon,  1 Jan 2024 13:58:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5299AC433C8;
	Mon,  1 Jan 2024 13:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704117523;
	bh=t+f4Znj3FNYbBCxfo60vMjy20/W1jFBDpQMRsFjVBuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=inc5WUqsf/Vw/W+FtcWbnloAfe2/VDN5sVHInSg5AR0Oyp18cPiuyGwcB6ul2pTO+
	 OrioZ2G0Ke49+WgjcKhAEckVWVMSZsOIJO38eni5SXzfnwzT6TYWEd6NoiVygrlRo6
	 0INsqNnn1ng4cInW3xssTisviDkbp+4bQkDrqE85+J1P6bv6x5BZpTku/ZT8eP4B7V
	 ltwg8DbbfhdEx5z/8mLfqao5n33rNQZlLv3rwAFJzTPmlSJowAvQNW/Iw9Ox/MDaRz
	 kGmBF7+UEs0/hqxmchcCRUwd6h/8SQU1GPGR/yN0kxwZfL3I6DSrj9byCj3dl8ODss
	 zpIoszdNlfWjQ==
Date: Mon, 1 Jan 2024 13:58:38 +0000
From: Conor Dooley <conor@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: media: rockchip-vpu: Add rk3588 vpu
 compatible string
Message-ID: <20240101-subsystem-clinking-d3b1a1dcf640@spud>
References: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
 <20231231151112.3994194-3-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20231231151112.3994194-3-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_055846_134747_F30BA208 
X-CRM114-Status: UNSURE (   9.45  )
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
Cc: sfr@canb.auug.org.au, conor+dt@kernel.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, knaerzche@gmail.com, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1847397333526091216=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1847397333526091216==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KyxL4TV6V4aWT69C"
Content-Disposition: inline


--KyxL4TV6V4aWT69C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 31, 2023 at 11:11:12PM +0800, Jianfeng Liu wrote:
> Add Hantro G1 VPU compatible string for RK3588.
> RK3588 has the same Hantro G1 ip as RK3568, which are both
> known as VDPU121 in TRM of RK3568 and RK3588.
>=20
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--KyxL4TV6V4aWT69C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZZLFDQAKCRB4tDGHoIJi
0krIAP4x33KV2Y2E1cOYB1TgS8jK9biNoJfRtKdWrA2G3rLj7QD9GDgJCPMBn59S
ECEYH9sl7zdG8Bid60MeDGWnzLyv5Aw=
=36Vr
-----END PGP SIGNATURE-----

--KyxL4TV6V4aWT69C--


--===============1847397333526091216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1847397333526091216==--

