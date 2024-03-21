Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E2E6C54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 20:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JGKvDFXdCvQnJrXFCBchnBc6zbTujJEK4SFueUEjEtg=; b=tVo/17QzgOYz9+OE6Rn6VVYvTs
	KQzOIZAvAw9Bj+8NEOLdXO7OtfTeE3IS47zj1nUp5rB1r8Vuk8JzuVFHy/SsPWWTXOYvaHKyU6wgO
	yZF+FsTchjRpCoT0Z5+51PlN66WUpuu5aB6KHB/1aSarph2ZgWM6rGGGgEsASpIrD8hKMzdp/KiI8
	ilqf5s6D4+eWTWSMLL7jYy2WCZLMujuxqk3CYaXD2VNaFVtGoydYs6cNHLXLPIpBb2xngyyt4YMBo
	/kW0xG3Mzu6RgOwIhwItzGLsasfN1OOOKwke+A0eT9dU3gcWIX7wM5L90nk4Fl0vbKDB7nuyc7cxQ
	VEMLPHiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnPI6-00000004ZtJ-0FQX;
	Thu, 21 Mar 2024 20:45:34 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnPHy-00000004Znd-0p4Q
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 20:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711053923;
	bh=J3EkheC27TouDCwQoI1Xcs4QrnTzmZI4j/PiqszkMA4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0LQK9pr5gXACUsGM13hgm4eg1lGPVrby1iggpdupsJbcqFTMdJ5zTNUui7eiE+s3f
	 /ANht8lRT5MKKCORaC4e36Oj95KNejTOYVRsdX0t4JYsCE7Rzcp4S3d+3Jss3nCvDg
	 Y6l+ADK3A+rSpvrV5uOkd+ZBsR68f00UHDrCc9TMS/+CxwVuk0kHMltLFoWsEkRiVU
	 slCXl3to8VMVMKBUiqh1nLqWPiII2i8gkg9y6uLQyKJfc4l+tSi+C2GKea/hpWSQ0f
	 qI8BwnrwXiRd5xQWvZzZl2fSfX9DqO4JqM4ZnTVpMLBjXkGx74t0Avi6g28wiIeXJG
	 QVHcL/Xvg025Q==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 913D937820E7;
	Thu, 21 Mar 2024 20:45:23 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 46BE91060709; Thu, 21 Mar 2024 21:45:23 +0100 (CET)
Date: Thu, 21 Mar 2024 21:45:23 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ilya K <me@0upti.me>
Cc: Chad LeClair <leclair@gmail.com>, 
	"andy.yan@rock-chips.com" <andy.yan@rock-chips.com>, "heiko@sntech.de" <heiko@sntech.de>, 
	"huangtao@rock-chips.com" <huangtao@rock-chips.com>, "kernel@collabora.com" <kernel@collabora.com>, 
	"kever.yang@rock-chips.com" <kever.yang@rock-chips.com>, "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "mturquette@baylibre.com" <mturquette@baylibre.com>, 
	"sboyd@kernel.org" <sboyd@kernel.org>, "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
Subject: Re: [PATCH v8 7/7] clk: rockchip: implement proper GATE_LINK support
Message-ID: <qepnk6poq6md5hewkf6otcjgeuj5mkf63azwzjqe75gbyi4fxm@6s7vijaz76uq>
References: <1456131709882456@mail.yandex.ru>
 <uwr335fla4nfvv3mdppcoly6hcsayav26r4r6txmbwrb25ftw7@rxwjtan7evww>
 <7f4b3f38-50ee-480f-a341-ab577e19bb32@gmail.com>
 <2rsu6qa3pwbqic6b7ej6txa34jw4ztrnybzcfcfysue2mky37h@dyrdefbimzdn>
 <97f8b9e7-983c-435e-8fad-11e71be158b8@gmail.com>
 <vetdlmrlwx2bpwliof442zjiir7jy5irs737qu3v7qjhcvubn4@wslcvkis3tsf>
 <5287754a-e488-4365-9e88-811eb028a91e@0upti.me>
MIME-Version: 1.0
In-Reply-To: <5287754a-e488-4365-9e88-811eb028a91e@0upti.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_134526_663702_B836F89F 
X-CRM114-Status: GOOD (  17.31  )
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
Content-Type: multipart/mixed; boundary="===============0847913100750587092=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0847913100750587092==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jfxuo2eajis6pcnq"
Content-Disposition: inline


--jfxuo2eajis6pcnq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Ilya,

On Thu, Mar 21, 2024 at 10:01:10PM +0300, Ilya K wrote:
> On 2024-03-21 21:31, Sebastian Reichel wrote:
> >=20
> > Ah, that was actually not setting up the clock links at all. Sorry
> > about that. I reworked everything again and moved all the GATE_LINK
> > code into the separate driver now. Please give it another try.
> >=20
> > Greetings,
> >=20
> > -- Sebastian
>=20
> Applied this to my 6.8.1: https://github.com/K900/linux/tree/rk3588-test
>=20
> As far as I can tell, literally everything works now - it boots, runs, an=
d I can read and write the flash even with ROCKCHIP_SFC=3Dm.
>=20
> Thanks a lot for digging into this, y'all!

Great, thanks for testing. Can you check if it still works with
ROCKCHIP_SFC=3Dm when applying the following additional change on
top of your tree?

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-r=
k3588.c
index fea7e7fcc4a4..f0eb380b727c 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2413,7 +2413,7 @@ static struct rockchip_clk_branch rk3588_early_clk_br=
anches[] __initdata =3D {
 static struct rockchip_clk_branch rk3588_clk_branches[] =3D {
        GATE_LINK(ACLK_ISP1_PRE, "aclk_isp1_pre", "aclk_isp1_root", ACLK_VI=
_ROOT, 0, RK3588_CLKGATE_CON(26), 6, GFLAGS),
        GATE_LINK(HCLK_ISP1_PRE, "hclk_isp1_pre", "hclk_isp1_root", HCLK_VI=
_ROOT, 0, RK3588_CLKGATE_CON(26), 8, GFLAGS),
-       GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", ACLK_NVM_ROOT, CLK=
_IS_CRITICAL, RK3588_CLKGATE_CON(31), 2, GFLAGS),
+       GATE_LINK(HCLK_NVM, "hclk_nvm", "hclk_nvm_root", ACLK_NVM_ROOT, 0, =
RK3588_CLKGATE_CON(31), 2, GFLAGS),
        GATE_LINK(ACLK_USB, "aclk_usb", "aclk_usb_root", ACLK_VO1USB_TOP_RO=
OT, 0, RK3588_CLKGATE_CON(42), 2, GFLAGS),
        GATE_LINK(HCLK_USB, "hclk_usb", "hclk_usb_root", HCLK_VO1USB_TOP_RO=
OT, 0, RK3588_CLKGATE_CON(42), 3, GFLAGS),
        GATE_LINK(ACLK_JPEG_DECODER_PRE, "aclk_jpeg_decoder_pre", "aclk_jpe=
g_decoder_root", ACLK_VDPU_ROOT, 0, RK3588_CLKGATE_CON(44), 7, GFLAGS),

Greetings,

-- Sebastian

--jfxuo2eajis6pcnq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmX8nF8ACgkQ2O7X88g7
+poxghAAowHQsxDDCHEy4G6Noi1/XUJr82t2q8ilGU5EjMgWqU4l3xCG6eiASQ/1
X7q/a2d5MK0NhHTQYMRTSKa+gCWatNiLAfB14oPzGYugtnK9TxJXNVjYuNziaDfb
n+tB1U5DM3PjHiq1cXbJiMMa88iG17pVzXjjlex2cxoFFK4JEFmB4oaUKDVq03+a
QlnqYw/lgzZRPpAeMFq8HNrrpBXhrY/6aq0UMpb/DaYKC2e1rI8Doled3Z89fiWB
N1mJ1g79/vqbyCnZ/18MqwPAqSJqdc2x7+KJxAb/Kp3ogFXyImRdygJz0NoV59GT
sBt0uDor8zoVowsYim8Rq6MPDJRGhZMsNfTPeCiYGdUrHIGFR5NbqBwPik7aVog8
CQkOXYHnOFFdGMVOWdWRF83HJaJJt1PDYQ4a1d+LmSiUFM4dC4mROMZ8DZqDoiQd
eDFdGiFKluuaZ2SqxDf1M7UeA1zEMv8tvwgBjdOQIYxpP0yt2Q4yjFpqq/Y92Pnv
1qKHgD2Qd2BnGHJhtWLd8CQ8jSTC4OUajP8ahKzWh7KjpKsHi8OmOtfgzEfqmToP
njI4lDGV4gqiKJf5qaLtFLcx1wRnw/dOBNCEGpdVGg6V9496KwmlNVdy/ueDhGNk
ch5kuPWltiTRi1sWXfN/qbyQElQpf6ElCJ44i41FyClSVMOlezE=
=ngYT
-----END PGP SIGNATURE-----

--jfxuo2eajis6pcnq--


--===============0847913100750587092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0847913100750587092==--

