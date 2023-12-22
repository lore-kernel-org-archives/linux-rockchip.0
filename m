Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C11C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 16:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qF+EJEL+do+D1GejAXSTQ/aXT1+LQj57x9/D1mEmUZU=; b=vO/JAF73V8IqrVQWpSRAfdLBk3
	50eW8OcC/oU7HsaMcAsfTbpk/VR1xh4BIZ6Ut6R1z/WIg34GfL9xzwOMaPMZyEygwm9epUqWC2MB8
	/uUiNs5tGF/tLcoTKt22ujOLzPL8XuUwsCzqi6QtPyoMisrsCVVGPb8Tg4MQVS35445th5qWN0BGL
	L7SzKIyoZudHy7Jt7uEBmHVjdmIJ6f0YNuufYEeHBiP1YVJOpuqr+9p6c8Opntgz+3byiHqmcQr9e
	AVnkWUhSdGUzxF3yqr9bZO9dYR55t2whUMjtDhcISKFCmx9/rzGuNSQ7t6I2HKLH8bYt0fObTHRwH
	seBkQq0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGikY-006RrI-35;
	Fri, 22 Dec 2023 16:51:50 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGikV-006RqS-1z
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 16:51:49 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1703263903;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5pp9nMgujJn+Cpq3o1955F8zPLtLYZQipTve8oj6tc8=;
	b=OoTtPvha9uyqsBUq/zsp/Mn1p45thuXKeug1rXypmg8foySIO6I4Y1i1wTJf6uuPUsuxvu
	rErQxsnFBRVH9OXK5B7AcNHQRNKAu86CrSEHIrxvUi9NiDOIZWV3OkccPZi9aYQnbJ7uCi
	9Q91rM0EKTl/Q4IQkYe3w0AE0XnWd6eMFcdM+hlUm/bkQ7Ttf2frhOZKkj+q3XK9vcrV4j
	mu310rciAwIJ+RO/q7TKloG2IIjcz2TU5V0fMnosxdYpxiY5ojGVxChHpyPT5yphfd0OuN
	U9lHSEJ9AkEJtd1P7RUgQ4NUtsvZUJX2YLtazQGtwj/fBlJmLvu29ylq27dzgA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>,
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>,
 Manuel Traut <manut@mecka.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
Subject: Re: [PATCH 0/6] arm64: rockchip: Pine64 pinetab2 support
Date: Fri, 22 Dec 2023 17:51:41 +0100
Message-ID: <2631715.l0DajZZ3Y3@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_085147_794910_1D8F8C77 
X-CRM114-Status: UNSURE (   7.16  )
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
Content-Type: multipart/mixed; boundary="===============4297170975167160032=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4297170975167160032==
Content-Type: multipart/signed; boundary="nextPart2286417.7pCFYIXMvo";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2286417.7pCFYIXMvo
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH 0/6] arm64: rockchip: Pine64 pinetab2 support
Date: Fri, 22 Dec 2023 17:51:41 +0100
Message-ID: <2631715.l0DajZZ3Y3@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
MIME-Version: 1.0

On Friday, 22 December 2023 12:05:40 CET Manuel Traut wrote:
> [3]
> https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/
> mobian-6.6/debian/patches/display/0018-drm-panel-add-BOE-TH101MB31IG002-28A-
> driver.patch?ref_type=heads 
> [4]
> https://salsa.debian.org/Mobian-team/devices/kernels/rockchip-linux/-/blob/
> mobian-6.6/debian/patches/device-tree/0134-arch-arm64-add-Pine64-PineTab2-de
> vice-trees.patch?ref_type=heads

FWIW I believe the actual sources are from
https://github.com/TuxThePenguin0/linux/commits/device/pine64-pinetab2_stable
--nextPart2286417.7pCFYIXMvo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZYW+nQAKCRDXblvOeH7b
br9kAP9lep8IEbNMNDxvFBfaIg1bqdTUIItkkqVnhx+sEs2xjgD+NLX/sy1F2zYq
tihWEexfx2PMq2zU2Xz+xGm2AJuoww8=
=2R8f
-----END PGP SIGNATURE-----

--nextPart2286417.7pCFYIXMvo--





--===============4297170975167160032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4297170975167160032==--




