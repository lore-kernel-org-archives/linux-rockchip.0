Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22925C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 16:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4dX48/RKCBywiFEDbdiAhKMTPWtC0YN5rl60yzUw9lI=; b=na/pIHDPLkrRaWUqsWFhyWRvQW
	5pZMqccVRECWmDhUZT6DDwRcK3mqrELQ/OqSC7f3DcxdeopPYrJ5T/gCXsRZJOPs8z57PfWITrP3a
	zuB4GwQnY031eTmgdxPnKymMocIEd1VesbyYk+YrglTlazmbszNsMRg7kus6bTbUka8JrnToQ1tzz
	Azgf0sht89kc5ZDhO5N24GabaGmfm8RauXfxzPdkzqlTh0YqSY4lsivmeQeQ4Mk9pKDuNJpC3rDtq
	0yhEWvqzfbeLwEAe85jNoC55/NXF+ey158ud1rWY4kvYsSFFE83ElsMFPhUhph9xE1IeUvLZDq5UZ
	NJ7RN/9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGiQZ-006PgT-14;
	Fri, 22 Dec 2023 16:31:11 +0000
Received: from out-188.mta1.migadu.com ([95.215.58.188])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGiQU-006Pd2-2X
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Dec 2023 16:31:08 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1703262659;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=YFHH50hCCyLNIdU/YT5+WZzO0ybiRxLRVhJ6sMUejcE=;
	b=Ibm0y4rVXPlNtN8Sr0N3hgBvaIUKOeikwqIn2f6Z0qNc6GnBl4PMOViFTGk55d3AG60s7G
	fjpjUQ9SvH3F1was7QAUuxnO2RBndQTpE0pNKVS/5kGz2KGSi9XGuizRQJtWtKJMdA469d
	HpX0nlfNdd1mPH7lpEpfMiytS/nblr4ogIneVrlblWWmfUDEmk6B1qThobBrnoH3H6+tJT
	8BT00+Og8/uFhcMCexYA42tQm5fZXoxkq8JJAc5KPJdimQz2lPGy9xsGOzOs2n+06ENqgA
	aMQ41nmU6vdeJkm9ilXoGQ9V5PbsmGRamL+Cu0SuXN02GILeUZYk+b19XmzCqQ==
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
Subject: Re: [PATCH 1/6] dt-bindings: display: panel: Add BOE TH101MB31IG002-28A panel
Date: Fri, 22 Dec 2023 17:30:45 +0100
Message-ID: <2093114.Y6Bb1VsB30@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231222-pinetab2-v1-1-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
 <20231222-pinetab2-v1-1-e148a7f61bd1@mecka.net>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_083106_994643_719C3437 
X-CRM114-Status: UNSURE (   7.70  )
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
Content-Type: multipart/mixed; boundary="===============0355425881197158632=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0355425881197158632==
Content-Type: multipart/signed; boundary="nextPart2385407.UgvIaav1Zi";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart2385407.UgvIaav1Zi
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Fri, 22 Dec 2023 17:30:45 +0100
Message-ID: <2093114.Y6Bb1VsB30@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231222-pinetab2-v1-1-e148a7f61bd1@mecka.net>
MIME-Version: 1.0

On Friday, 22 December 2023 12:05:41 CET Manuel Traut wrote:
> +title: BOE TH101MB31IG002-28A Pine64 Pinetab2 DSI Display Panel

s/Pine64 Pinetab2 // ?

It is used by the PT2 but I assume it's a 'standalone' panel?
--nextPart2385407.UgvIaav1Zi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZYW5tQAKCRDXblvOeH7b
bpSBAP9kwBO9FNQcfUOEoOnOmZkf72v8PYZgnmH11XJJpo3BMwD8CYhreYnW4Qbx
cjIf48g7u1jSU1RBntQ2ZLGWwocsLAk=
=0mEu
-----END PGP SIGNATURE-----

--nextPart2385407.UgvIaav1Zi--





--===============0355425881197158632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0355425881197158632==--




