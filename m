Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4771C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Jul 2022 13:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qLTHFSWV3jRWUIPDzFZc8t8hCyl8LulNYNKz4OkFRIM=; b=xGG06MQc0x+hU0nfnXa42PSm30
	cWn9rbF5tlYalJWXAJgREQ0qkbikRLZ192SvXI3dAYT6HqsL+CqiNQaQK/gTaC/IE5L+gsoJwEhZA
	htTcZe19ie1dzN1eXoThuhNxkS7Rc49ciiHcCk/6GryALsMM5kHb3/3m89JGsxvaOBcGvStwjHcrW
	OWT534W0LaBfJAC37pGDLP6FwtkUy59HvWmJ+CHDOGM424fL9h7QINWPKCC1z05xO3WW7HHLnmknw
	pzr3B+9HcCqEvuESrXvL5c4OyF/UTOSZy522W7amIBa9kxe7QuEj244w+8MF9Emndl7E0SG9SHUsb
	ktnFbz8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7ctk-009hQN-CF; Sat, 02 Jul 2022 13:10:56 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7ctW-009hLf-PX; Sat, 02 Jul 2022 13:10:47 +0000
Received: (Authenticated sender: didi.debian@cknow.org)
	by mail.gandi.net (Postfix) with ESMTPSA id CB176E0004;
	Sat,  2 Jul 2022 13:10:32 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v7 00/33] crypto: rockchip: permit to pass self-tests
Date: Sat, 02 Jul 2022 15:10:22 +0200
Message-ID: <5836825.lOV4Wx5bFT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220702_061043_013631_F714D257 
X-CRM114-Status: UNSURE (   9.39  )
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
Content-Type: multipart/mixed; boundary="===============4346382361281697705=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4346382361281697705==
Content-Type: multipart/signed; boundary="nextPart4750321.31r3eYUQgx"; micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4750321.31r3eYUQgx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sat, 02 Jul 2022 15:10:22 +0200
Message-ID: <5836825.lOV4Wx5bFT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0

On Sunday, 8 May 2022 20:59:24 CEST Corentin Labbe wrote:
> The rockchip crypto driver is broken and do not pass self-tests.
> This serie's goal is to permit to become usable and pass self-tests.
> 
> This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> rk3399-khadas-edge-v with selftests (with
> CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)

https://salsa.debian.org/kernel-team/linux/-/merge_requests/493 is where I 
integrated this patch set with the Debian kernel and tested that successfully 
on my Pine64 Rock64.
IOW: Tested-by Diederik de Haas <didi.debian@cknow.org>

AFAIK, this patch set has also been tested on rk3399-rockpro64 by sigmaris.
--nextPart4750321.31r3eYUQgx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCYsBDvgAKCRDXblvOeH7b
blpaAP9kFZ/boaOXl0bbOZEIBmCFypk1uuBcJuyFoKwO5UqmFQD+IfGRbHcHhnvC
lA2OKhtfIjfHBONu1gwLt9f2XbMMBQk=
=PeHT
-----END PGP SIGNATURE-----

--nextPart4750321.31r3eYUQgx--





--===============4346382361281697705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4346382361281697705==--




