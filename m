Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB436C3DA45
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 14:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gBOSHCRNPxfjKI6qG+dnqJkK6EX364uxyaqbN8ZD2+k=; b=wjFqmbfccUwXDcRxt2UtyxDwbA
	vYI4h0MyEAf3TeZumbku2FUmnM8lobyks+N1LkdBrgdLWUu8JZe8FMb1fQzeXNcpBpku5P6UevkYo
	MQgVGbCj1wvNypiyo4VuJnqCoxmfir80pvVUqzgiKvoscfbJyaZqES6xIVNOUvy4OamnCaylvU+FV
	GoFRLbKbAvDtFlkYMAtOEl4Cg8vysuDQQcw02buOAsQphNvit8PgQtBr6tkO7rREHTGno/7kApc65
	WLHTO5xfp0snF0AyjSqtP14WRhEiXREsIYuYZ1LPgmWsEycTqWlKjKCDGnYZTFsGoAd0KnPdjDzJv
	uNZuVRSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSdr8-00000002hDa-1KYv;
	Sat, 13 Jul 2024 14:36:10 +0000
Received: from out-189.mta1.migadu.com ([95.215.58.189])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSdqn-00000002h8d-0AVZ;
	Sat, 13 Jul 2024 14:35:51 +0000
X-Envelope-To: dsimic@manjaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720881343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=sY3DzHg+dlAc4azoMf3OPo0CkoCBcBYF6R4NMkIUhzU=;
	b=Bvgq5RaO6jyBwcqSrbgzUC/dLRdIFw93AmaGjcI4QNSUuxgbfH5xCnNYUnkNITiPEdhDIf
	xtJh4TSGMUENM8tckuXBsd/O9P0NryxqnK+Px6soV51TReV5OzoVxjWIKyjwBVVm/KOzGS
	p/5pGaLyLx3MZ9R01wvQB3TQLCucfFvDjk8iVzGIn84YfcarG54T8jMF/Ui4sCf7Fq2miV
	nXGHd1BQqkemXm2dVHr8Z3Ff6u5E+8dgCwAgVkWJae7WmtvuqQSwKUE5Gmo6t4S6xXGIF6
	MM3tSfyU/5pMUhCo32yH7wKcmD9CMHeEPYrAwGIAnsvm4GGn1NmGoQJi4sWJpw==
X-Envelope-To: heiko@sntech.de
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jbx6244@gmail.com
X-Envelope-To: wens@csie.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add sdmmc_ext for RK3328
Date: Sat, 13 Jul 2024 16:35:34 +0200
Message-ID: <2735059.JVtD0IzA6d@bagend>
Organization: Connecting Knowledge
In-Reply-To: <72718d8d02c25993c138567c96340792@manjaro.org>
References: <20240710132830.14710-1-didi.debian@cknow.org>
 <20240710132830.14710-3-didi.debian@cknow.org>
 <72718d8d02c25993c138567c96340792@manjaro.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_073549_642379_058BEBCB 
X-CRM114-Status: UNSURE (   8.77  )
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
Content-Type: multipart/mixed; boundary="===============1180521274942340667=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1180521274942340667==
Content-Type: multipart/signed; boundary="nextPart2866865.qWf11O12ap";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2866865.qWf11O12ap
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: Dragan Simic <dsimic@manjaro.org>
Date: Sat, 13 Jul 2024 16:35:34 +0200
Message-ID: <2735059.JVtD0IzA6d@bagend>
Organization: Connecting Knowledge
In-Reply-To: <72718d8d02c25993c138567c96340792@manjaro.org>
MIME-Version: 1.0

Hi Dragan,

Thanks for the reviews!

On Saturday, 13 July 2024 15:45:12 CEST Dragan Simic wrote:
> Looking good to me, cross-referencing the RK3328 TRM and the
> downstream RK3328 SoC dtsi checks out.  Though, it will remain inert
> in our codebase, because no supported boards use it, but that's fine,
> we're still improving the correctness of the RK3328 SoC dtsi.

Indeed. But it's hard to argue with technically correct ;-)

Cheers,
  Diederik
--nextPart2866865.qWf11O12ap
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZpKQtgAKCRDXblvOeH7b
bs7DAP9IVMN0oMrNBHeLgpMzL1AegDXUwW6vrLjrH2ayh3cqtQD/fHyImAwOALmM
TIOvYwPAjXuwZtckeR3b/XVwbLJdtgQ=
=tC+4
-----END PGP SIGNATURE-----

--nextPart2866865.qWf11O12ap--





--===============1180521274942340667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1180521274942340667==--




