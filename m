Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DED8C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 15:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d3PJyoAhFjfIqZnKAi0b8kj/tPGLpjTxEjrCG7uEzDA=; b=Ihu3Tkan9m5twEql9Wc9ZhRLVk
	tvQIqZ4NSrCDpG4M0MjsKWUn/OWPqE25VjiVSuReomFpgYMw3o5WRhnds6qSdRUk8zDZGNwm6V2IV
	L6ZZoh7HWnLoK5By6H8V4i+YDstm+ew90pB/AE6Tey7qfPaoVPh4x3wxs1sOmTfIRpqNBv/2T8nZz
	MubHWFF0DvB++4Stc1vn7ojoelq3cX2KvOBnfybosI13IGLIetaXQfoixlf5SzV5DcZzQZJ860y/k
	2hZBzQdeeHcqiHIkXRr4epFXU+BJyb23Nw8B5p7HxaXGJiPDLhgB36THGHJJqkRNjpWNHUSdZxdrB
	cblPiM1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYzV-00000008RqE-3whh;
	Thu, 01 Feb 2024 15:28:37 +0000
Received: from out-178.mta1.migadu.com ([2001:41d0:203:375::b2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVYzR-00000008Rlw-3Car
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Feb 2024 15:28:35 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1706801306;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=26SIQ5pnUVxGBuzI6N0P1NMwW5cCHuoQn92ze0+AFsQ=;
	b=dbsB0s4yLvfcXftjxVr1PtbRs0QgJobNiO59PIQlR+5vqDeS6MwE3KDheQe7Zeo/6jj9Wu
	3YYkWz02yT5UvIE6dYU778APsSZ3OoLjiw2acfpe6EN01sFNvUpeSrL9WCuwQ7DKzvVNL3
	TPT83bfEyHiowg7jkGq16z+gZOX95kRZ2T6KvX8sKvgryAaTlZGnuhBVcZpDNzM/RHvOGv
	4/CZVqJC3FKT9xqUgVCBSIcnoNPNHdQzMlaMeEzMw2mqMwUxCbwJIRXSNEwJOKrXBBIN8r
	hxvCJau/xkmanotkIlFn8oAO33+ZY43btxhwKWKJUXJ3S3dKTANUGpCdb6Y4Sw==
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
 Danct12 <danct12@riseup.net>, Ondrej Jirman <megi@xff.cz>,
 Manuel Traut <manut@mecka.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
Subject: Re: [PATCH v4 4/4] arm64: dts: rockchip: Add devicetree for Pine64 PineTab2
Date: Thu, 01 Feb 2024 16:28:15 +0100
Message-ID: <13234147.MA61SxHe9P@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240127-pinetab2-v4-4-37aab1c39194@mecka.net>
References: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
 <20240127-pinetab2-v4-4-37aab1c39194@mecka.net>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_072834_012931_EEDC97B6 
X-CRM114-Status: GOOD (  12.09  )
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
Content-Type: multipart/mixed; boundary="===============0786839105855952645=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0786839105855952645==
Content-Type: multipart/signed; boundary="nextPart1794107.V1UpVPejRP";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1794107.V1UpVPejRP
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 01 Feb 2024 16:28:15 +0100
Message-ID: <13234147.MA61SxHe9P@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240127-pinetab2-v4-4-37aab1c39194@mecka.net>
MIME-Version: 1.0

On Saturday, 27 January 2024 10:48:45 CET Manuel Traut wrote:
> This includes support for both the v0.1 units that were sent to developers
> and the v2.0 units from production.
> 
> v1.0 is not included as no units are known to exist.
> 
> Working/Tested:
> - SDMMC
> - UART
> - Buttons
> - Charging/Battery/PMIC
> - Audio
> - USB
> - Display
> - SPI NOR Flash
> 
> Signed-off-by: Alexander Warnecke <awarnecke002@hotmail.com>
> Signed-off-by: Manuel Traut <manut@mecka.net>

Everything seems to (still) work, so:
Tested-By: Diederik de Haas <didi.debian@cknow.org>

Thanks for submitting this upstream :-)

Cheers,
  Diederik
--nextPart1794107.V1UpVPejRP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZbu4kAAKCRDXblvOeH7b
blXGAQDP5qENxaN5dIVjBieTyOlY8fPPngqtXwFL4vkEdreqjQD/b48bb1yvUxQr
vS2R3FNuHLcDSnHLKoxjZg+592xUfAU=
=5fTJ
-----END PGP SIGNATURE-----

--nextPart1794107.V1UpVPejRP--





--===============0786839105855952645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0786839105855952645==--




