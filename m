Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9D52C197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 14:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DlRonNmSgBRips5O95h4oCInMa6SR0fqNfvkF1MEvaQ=; b=Xp01VLNNUss59ClH/cOL7/Amni
	ZNOjnNiogy0mMI4fSA+Ux2oAn+WT9Czc0h0u1IZeWsItETp+LfJEUXD8zxewHDIxk0NwexZNLpbuy
	J9OWaw8RmtWxEIbNdQe+kTch0lbukbwzURNgHgTBiTbDwUPKW3pZwJwXBxlEHcApjQNH7Ac1MA3kg
	2jnT7A4KwRbkKdbcn6ScXOJtu5w9AEOlZxVOlhUrjowEDvQKt5Osd+R2DhvOLBcBN6anHy2IzMVhd
	Tv10dY3xtSHFaYb8tGAoCF4C5uzVrzp3oH4uQoUvMEozRYJoI8V+BXplMRMsIjMbhod8Z9afqsjfq
	1A36e8Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r55K7-00CIA6-0G;
	Mon, 20 Nov 2023 14:32:27 +0000
Received: from out-187.mta1.migadu.com ([2001:41d0:203:375::bb])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r55Jx-00CI6X-2R
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 14:32:25 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1700490731;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=9f2A7iG9QxlXfAhIGL2D+akxaRYV9pGj/jh0RBA7f6g=;
	b=eXTUg62Ik8PLUvGO7KikQvTAi17nKie3zmKzUDBoMEk2ga6YJTT54Tjd9fZM8hrdqElBQ4
	PNCG0CuwseA+UJ2MRXx1SbyNNOMxrIBE34jqYs28BsICDpe86GZ1824IfBZ/2hb2mFsx7R
	Uidq3sIaMcDoYnaW3nMGUeT/Zy93B/jRKSKedNKrVt/EQgE+mD/v9HOfvUZ4igosvIYpCb
	6j3A6+7ObP+vWntzpGTxE3GE9DxGUfyOHDxNvYykR4PF6SuwpBtXgxnlfHtWNCMRgZW0qT
	qaRVL1ffrLSwxwZLInfnFEOrxGq+UYUzFgcdDrjJh1Chl7x5Jw6QjDOHRT2RHw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Jonas Karlman <jonas@kwiboo.se>
Cc: Christopher Obbard <chris.obbard@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2] drm/rockchip: vop: Fix color for RGB888/BGR888 format on VOP
 full
Date: Mon, 20 Nov 2023 15:31:59 +0100
Message-ID: <4726930.fbnEVBQaF0@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231026191500.2994225-1-jonas@kwiboo.se>
References: <20231026191500.2994225-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_063218_428887_ABAE21E3 
X-CRM114-Status: UNSURE (   8.54  )
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
Content-Type: multipart/mixed; boundary="===============8344584982024709275=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8344584982024709275==
Content-Type: multipart/signed; boundary="nextPart2134285.SbVt0S7CNQ";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2134285.SbVt0S7CNQ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Mon, 20 Nov 2023 15:31:59 +0100
Message-ID: <4726930.fbnEVBQaF0@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231026191500.2994225-1-jonas@kwiboo.se>
References: <20231026191500.2994225-1-jonas@kwiboo.se>
MIME-Version: 1.0

On Thursday, 26 October 2023 21:14:58 CET Jonas Karlman wrote:
> Use of DRM_FORMAT_RGB888 and DRM_FORMAT_BGR888 on e.g. RK3288, RK3328
> and RK3399 result in wrong colors being displayed.
> 
> The issue can be observed using modetest:
> 
>   modetest -s <connector_id>@<crtc_id>:1920x1080-60@RG24
>   modetest -s <connector_id>@<crtc_id>:1920x1080-60@BG24

On my Rock64 (rk3328) I was able to see the problem without this patch and see 
it displaying correctly with it, so 

Tested-by: Diederik de Haas <didi.debian@cknow.org>
--nextPart2134285.SbVt0S7CNQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZVtt3wAKCRDXblvOeH7b
bh3QAP9r8UfZ3jyDD/yp2jWUOlNzKz65zugAk67eVGxIULqbyAEAmtAgGSCuHdAN
t0RCnpEig29n4OGCexugcrRCnSp09wE=
=Aix3
-----END PGP SIGNATURE-----

--nextPart2134285.SbVt0S7CNQ--





--===============8344584982024709275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8344584982024709275==--




