Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2316BC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 11:30:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HoNab+TjaSwupTc0MjAGaplyabSPMRbaWm+v38fKp6A=; b=v1fbqXrvi7g1qXHqVF/hbk2NMb
	kClpazOcfQ2ru7elrc9E7DTE2QPdWuC2pNHKmx5rpzVkMywUdQywePCxRiBT4uXWXeNlMEKKUy6/J
	JpR+w88hcttAc881Sq2Jj1g2MMMnBgRTGl0G2jdVaNr3OTzH+sOp3LFkNM58DoPB0FfMLCHM8l3On
	/zwJ1bwL/lL5Qpu7yBCGi2y3GfYNggOK962wwSyIVkIYoPXZA1JO4UrEEWtCMcbb7g2gS/2iz2G+4
	x694/VR3vKl02Xmt75ag5CWSuQQJ92NCSNz8pQN8QS01wCDk3WhGYr/fUD7vEluUd1yL9dH7BtWGT
	lqxldDbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCD5-00000006lt9-3FxV;
	Wed, 14 Aug 2024 11:30:36 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seCD2-00000006lqt-2qzM
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 11:30:34 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1723635028;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=dP4bfrn5l3bdzoF3Sl1T7LFZ0IksHKCZ14p6q3YI7oA=;
	b=G4twbP6JuI139v/kXGn4SCpcTW5bzEAEIvpdt6NSeUFEozxioUePvIdOKqsxUAvQMUqO2F
	FrrrM3cjQgFBE5lJ8JddLkQz202Wr18Ph4TWhhlyOA3Fj4WM6R28xQd+KCI2G6Ux1zl8D7
	dNkzLaWs0PF7fliMKCfj9guX4bOMnhuPZ3X1o1Gb4PMZSO+J5eBm24ZZUlcSnnQo4vd2oM
	RskMe8NWhVwYM/1n972pRWuPFF4DlJQFmswnBcW+hjtGykCeZrxXA5wMw419GLMxA46A8y
	GSfDZYGcAuhsoTGVEd71ajU7a/SaSSsfVfo2d8XfxkKowj0xC4VHJs/LBaWXVg==
Date: Wed, 14 Aug 2024 13:30:17 +0200
Message-Id: <D3FLMBPACMF8.249JV2GI2QGHA@cknow.org>
Cc: "Daniel Golle" <daniel@makrotopia.org>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH V2 1/2 RESEND] arm64: dts: rockchip: Add DTS for
 FriendlyARM NanoPi R2S Plus
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Sergey 'Jin' Bostandzhyan" <jin@mediatomb.cc>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <Zq7LBqKVvVVVLg7a@makrotopia.org> <2309282.ZQ0cqP7t2B@diego>
 <20240814112138.GA21761@ветеран.su>
In-Reply-To: <>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_043033_466061_9197B5F1 
X-CRM114-Status: UNSURE (   7.20  )
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
Content-Type: multipart/mixed; boundary="===============6793659674340140860=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6793659674340140860==
Content-Type: multipart/signed;
 boundary=2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Aug 14, 2024 at 1:21 PM CEST, Sergey 'Jin' Bostandzhyan wrote:
> In case you tell me to go ahead with a v3 set, should it be in this
> thread or not? I understood RESEND's should be new, but updates should
> stay in the thread, right?

No, a new series should be its own thread too.

--2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZryVSwAKCRDXblvOeH7b
bmGSAP9pY3YpoP4U50pQV1Shkwvh21J5/bpdqejppJ2armAa0QD9HzOqM8smiCRG
akUL19LbeMD4BmdZJzATIpD5hxaJfA4=
=lOzW
-----END PGP SIGNATURE-----

--2230cd77cb85420e4ea04e69faf9ec868c0da4eaf62f7bd0825d5c64cdcd--


--===============6793659674340140860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6793659674340140860==--

