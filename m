Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AACB0C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 17:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zTH2XTHRoqaoV6FZDUp+pOqZnSHYib04jA+sMo1wMpI=; b=BxyR4kZeYIujBnUVbjRv1j6BWf
	ICZWqIzL0ItCX/xtzwZhIi41BS6xEEps0hJA6WVlVsKzw+IaycePnY0ydBKd82OCeBBmAutYTVowG
	h99ljFb08uOUskxB8EqkmpPdN6v7qfjfw84EkaNhdkdP78lStLuHqXMho5bsxOYaPt6lDrfvqX+KB
	G2Xdrg2h8aziu5ncwRoSg0/gMb9BYKLMjtbVDv4INk1CdlTIPM4aj9Kv99SMiKafnNi5g6nOtMwWe
	pwkiieF6q8zOY3tqybDHlQd0DvVDYsM7geB7P/Q0gHOBPbvjFzPBR7aW6I2kfmgxKVUwow65z0hww
	QaF6MD7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r97F1-00EJvQ-2Y;
	Fri, 01 Dec 2023 17:23:51 +0000
Received: from out-185.mta1.migadu.com ([2001:41d0:203:375::b9])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r97Ex-00EJtM-0n
	for linux-rockchip@lists.infradead.org;
	Fri, 01 Dec 2023 17:23:50 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1701451421;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=hLgU+7wOB09UEU3+C41hUEMqKfU8GaasD3Gdu0/3f7k=;
	b=zAX53Eni6p2p9CBvRpUwhei1sTloN5M7Ugs2Ltfw6mFb+zAI/6SPjwPokbQ9ObPDi4bqzF
	nDvJkVFLB0lzIOjyUJQqvGmZeRUlt8CN++nfNoRcScPFdlp5iAWP7jq05CvZC2apP9Vj0J
	BGAT2m3MwAHoCAeWkMfd9DN641CEgdCsA8HuwHXqaoAKNJX3ve9dKdWQFV/HEHcf/rjtjC
	LM/ePs3Knd5cEm8rlCzPfIToG0WSH1m5DAvbW2MmrGWWw5DCzQmy+A28oMaLxjtPbnLRSr
	pt8unH7xv6zVJ7EYIUEejua2QcIxJ+ltie4zif8bZW4SYciJ7Up1kcy1wd6d1w==
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Cc: linux-arm-kernel@lists.infradead.org,
 quentin.schulz@theobroma-systems.com, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: add rk3588 gpio aliases to soc dtsi
Date: Fri, 01 Dec 2023 18:23:27 +0100
Message-ID: <9053330.WAzO9JGhZe@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231201165810.334212-4-heiko@sntech.de>
References: <20231201165810.334212-1-heiko@sntech.de>
 <20231201165810.334212-4-heiko@sntech.de>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_092347_762634_5008E477 
X-CRM114-Status: UNSURE (   8.35  )
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
Content-Type: multipart/mixed; boundary="===============4428535809886365945=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4428535809886365945==
Content-Type: multipart/signed; boundary="nextPart6281475.Va8pG3LGF8";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart6281475.Va8pG3LGF8
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Date: Fri, 01 Dec 2023 18:23:27 +0100
Message-ID: <9053330.WAzO9JGhZe@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20231201165810.334212-4-heiko@sntech.de>
MIME-Version: 1.0

On Friday, 1 December 2023 17:58:09 CET Heiko Stuebner wrote:
> So instead of having each board repeating their list of gpio aliases move
> them to the soc dtsi

Nit:
To prevent each board repeating their list of gpio aliases, define them in the 
soc dtsi

Patch 1 did in fact *move* items, but patch 2-4 only added them to the soc 
dtsi, which I assume is to prevent them being added to each board.
--nextPart6281475.Va8pG3LGF8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZWoWjwAKCRDXblvOeH7b
bplLAP9jWidg3m/ZpOrMBsBLUxVZKwR+F3gVX7rMTu6mzx3kPQEAz8RGcJaBQARC
XxqwtqkYfo3cYHsvT2xjukvyV7f2HAk=
=7xh/
-----END PGP SIGNATURE-----

--nextPart6281475.Va8pG3LGF8--





--===============4428535809886365945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4428535809886365945==--




