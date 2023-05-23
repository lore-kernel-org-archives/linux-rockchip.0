Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28CCDC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 19:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L66FRJgf3mTubrMSu3Oa3P4fE9tp9hFzgS9dLtpx/jw=; b=lY2WgJrcaTn80K7ZwuTX5IpCaZ
	wPpENZdwo/4ejlQy0N4JwUMfrSmuBgEyrCG+K9CDH2x8sJ1dBPuAQjYOvEytbwIpQn0g9gh/Csjvi
	ijCD7w08cnlmCbpzjWjsWpwOk4RQvU0woi0wniN0puGJB3m2UlcuzFsB4JGKC79QB2rY/UCreEYAR
	SUNijc+5TOOI525+FMVL9I0F6yc8667fywsccSuVWKCSXbImkvNcGjpgkj82ogjuhNMKGn/ua0MDi
	w8JxCVKYDidlVV/A1JGdY++OxDo6cjkVMa16C68qQvMDaaLsajwXksnSENrxTQWyk8TLiLQC+CAF+
	/Zi+q+cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Y9p-00BJWa-2e;
	Tue, 23 May 2023 19:58:57 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Y9n-00BJVW-0M
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 19:58:56 +0000
Received: (Authenticated sender: didi.debian@cknow.org)
	by mail.gandi.net (Postfix) with ESMTPSA id C838220008;
	Tue, 23 May 2023 19:58:47 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: ezequiel@vanguardiasur.com.ar, nicolas.dufresne@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, m.szyprowski@samsung.com,
 m.tretter@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com, hverkuil-cisco@xs4all.nl,
 kernel@pengutronix.de, regressions@lists.linux.dev
Subject: Re: [PATCH] media: verisilicon: Additional fix for the crash when opening the
 driver
Date: Tue, 23 May 2023 21:58:38 +0200
Message-ID: <3187393.mvXUDI8C0e@bagend>
Organization: Connecting Knowledge
In-Reply-To: <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
References: <20230523162515.993862-1-benjamin.gaignard@collabora.com>
 <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_125855_305355_C98D92B6 
X-CRM114-Status: UNSURE (   9.41  )
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
Content-Type: multipart/mixed; boundary="===============7214833836134224115=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7214833836134224115==
Content-Type: multipart/signed; boundary="nextPart12717958.O9o76ZdvQC";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart12717958.O9o76ZdvQC
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Tue, 23 May 2023 21:58:38 +0200
Message-ID: <3187393.mvXUDI8C0e@bagend>
Organization: Connecting Knowledge
In-Reply-To: <c034db29-b664-793d-35e0-406fdfe2b145@collabora.com>
MIME-Version: 1.0

On Tuesday, 23 May 2023 18:36:09 CEST Benjamin Gaignard wrote:
> Diederik, Marek, Michael,
> I have tested this patch on my boards and I see no regressions on
> decoder part and no more crash when probing the encoder.
> Could you test it on your side to confirm it is ok ?

With this patch I'm (also) not seeing the crash

Tested-by: Diederik de Haas <didi.debian@cknow.org>
--nextPart12717958.O9o76ZdvQC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZG0a7gAKCRDXblvOeH7b
bj0yAP9KYJLoy9vZ9roO3p8+OR3Ir5PuJaJnsd/GM2+SOpRTCQD/S7jY/xWKhHDL
fZBXe5F+v3qj2eg2F5MF2Hf6WE44MwE=
=7jRZ
-----END PGP SIGNATURE-----

--nextPart12717958.O9o76ZdvQC--





--===============7214833836134224115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7214833836134224115==--




