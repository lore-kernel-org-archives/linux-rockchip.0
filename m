Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83672C54ED1
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 11:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=chJH3W0UVgXPR7MYHHQglRwoQlhOBYHSX4AuWXhm7G4=; b=Qvis3KRkVfyMxL1OJeBT+4vGv8
	GkrgErbpCfX0fOKJyDhtioEg+uoxCANgxCXnigtyOMC17DH49iKy3M7eqqbv2ipA0I+EomHuQG1VL
	wfbTsqSpxGEZy6g9XvdyVn24gsnA7AHiMT1UH/0X9fLlGNJ3hDwl/ywoLzotSmPChDfjlRN+bWNYX
	Z4yhRmCupRiNbfcYXxjylgLawfu1O5inI+3pcHzooddA597AhJ78mf570tQJTx5JdENukdQLuoQDS
	1YNhglxLPXSAPZMtzZlStSYqILaeK4cRniCCzEUFTnAvBudDDoRn4d6NtiFhapPieFbrlg8TvmJZi
	3RgQH4vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjH0P-0000000FAv9-3y76;
	Wed, 28 Aug 2024 11:38:29 +0000
Received: from out-181.mta1.migadu.com ([2001:41d0:203:375::b5])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjGzZ-0000000FAi0-14Zy
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 11:37:39 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1724845051;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Rt23x+Z3I8iukH4ZIcW8lmeAjhdTehSaRhcHPHwj+BA=;
	b=E5Nr5HWwMY8ydf5lboDmLryWqYnrHUY4fv7b3Hxv4L3UE584qjhFefqNT62Zpxx0mnEGZk
	q5Yo4RVp4ohCMKA+lNu7EC9my5lkbPhOXRxVXcMAt/oAEKz3n4zA+3VarwvsgjdvHHAaRY
	Il35luGF4np0tKyHBBRVKzKExcA1Sm7dOKGY2BOZAG/lSWLoKUbGE2M95RTbC1a9QZch9m
	8jzWo56nXQBt3mt2pkdwJb8jY1Lp+RobBBfyKugM6TKzvRvDfkvt3XtwZ8iVNwJYLoue9K
	PEEMN2e432Mh856s55h2N5Kj4Y/vzXWP3lrdDu3+dzbWxQKpS6gsTmuxM/JHTA==
Date: Wed, 28 Aug 2024 13:37:22 +0200
Message-Id: <D3RIJDLW8QYE.1HYYTUUBD1H5M@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <linux-clk@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3 2/5] clk: clk-gpio: update documentation for
 gpio-gate clock
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>, <mturquette@baylibre.com>,
 <sboyd@kernel.org>
References: <20240828101503.1478491-1-heiko@sntech.de>
 <20240828101503.1478491-3-heiko@sntech.de>
In-Reply-To: <20240828101503.1478491-3-heiko@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_043737_843420_9FC778B5 
X-CRM114-Status: UNSURE (   8.16  )
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
Content-Type: multipart/mixed; boundary="===============5517508420435218330=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5517508420435218330==
Content-Type: multipart/signed;
 boundary=8176c0910110b2751c496c935bb6f58df2d108ac65f75328a6bb1174599f;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--8176c0910110b2751c496c935bb6f58df2d108ac65f75328a6bb1174599f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Aug 28, 2024 at 12:15 PM CEST, Heiko Stuebner wrote:
> The main documentation block seems to be from a time before the driver
> handled sleeping and non-sleeping gpios and which that change it seems

s/which/with/ ?

> updating the doc was overlooked. So do that now.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>


--8176c0910110b2751c496c935bb6f58df2d108ac65f75328a6bb1174599f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZs8L9AAKCRDXblvOeH7b
bv4UAP9DMhUi5AxRybS8zex8A36FmbWrDyUmxWT81dQ5DLnq3wD/XM+7U9lbgS2g
Ai6Vjn85KETcvxvY+0MI3D/hSyLylg8=
=vX1l
-----END PGP SIGNATURE-----

--8176c0910110b2751c496c935bb6f58df2d108ac65f75328a6bb1174599f--


--===============5517508420435218330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5517508420435218330==--

