Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F254CC04FFE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 May 2024 18:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kmZwPtc6tEtGLDzagVP7kQ87HS1Uz4sK0VObKiji8QM=; b=KWVnYDqQ6++Hk3U2jkAS8laiTl
	FW38d2iVBPflKmQYUZX0K5W/oYq27M8to18m1g0SO6rShpDb2vmhDlMgTdTbx03b60hFPvY0Uvjbu
	ocDcDBPCsDBIPGymc/BL6nkG3IjdrSGwDE6wcmlgCBR+k6qU+pwusRNBbCpp+RL/6XSEfpUwwq6Ml
	wnIJA5NiMb3iaVRkJplYkKSVY+swRsY3B+LILvI02ixE8bHMdrtzatVXcU2iFd6rMCVZPgvGQlrTc
	8cDVjB/i/LDGp7XfC94KlZg/gX6TWhD+eJZW4Z23jOhhH2SLDzkbokYM/S2+3dmCEwMCIg41BVJ87
	1DCCdRDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s97KR-0000000FCg5-2Vb3;
	Mon, 20 May 2024 18:01:43 +0000
Received: from out-186.mta1.migadu.com ([2001:41d0:203:375::ba])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s97KN-0000000FCd6-3Zqg
	for linux-rockchip@lists.infradead.org;
	Mon, 20 May 2024 18:01:42 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1716228095;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jj/JcQQpB8rmUIcI3E2ag3tbR7mqdkzfH4b6x0esQhc=;
	b=g3O7I5yvMu9BQoVNpVIDnLYPyNi7NwX8hmmEKjuqewJcwAQp9o1XdauJ7NZPRoEHYOYxQA
	ug/1qUk+eUqizfl3GRl5CBWKGbBMx7VMwl7F3GXH/lC+ndwLoVXE1b1Q6sJHQm2eftbRRe
	y+y+RObaKCTOyCBCbBJux6tbC7StmkR86+RotipWkVZ1VnOKdWLSW3uXxTdKryVY7zA46p
	58Wm/250r/dVMCYp77nFirTiqtTWXbDlxbjtUCiVJQGatPfX7qK+71wi9ytzjZKprRCP1P
	iSMutYNXONzjLRg+57bTjDWFB5VWsQ9OYCRcUingZaT1TeEvUq83LdocP20+ZQ==
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: robh+dt@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: stable@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the DCDC_REG2 minimum voltage on
 Quartz64 Model B
Date: Mon, 20 May 2024 20:01:24 +0200
Message-ID: <28082151.hHkOrr57cY@bagend>
Organization: Connecting Knowledge
In-Reply-To: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
References: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_110140_178796_EBC697CF 
X-CRM114-Status: UNSURE (   9.05  )
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
Content-Type: multipart/mixed; boundary="===============1580571429076559189=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1580571429076559189==
Content-Type: multipart/signed; boundary="nextPart6401850.1aQqFvIbO2";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart6401850.1aQqFvIbO2
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Mon, 20 May 2024 20:01:24 +0200
Message-ID: <28082151.hHkOrr57cY@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Monday, 20 May 2024 19:20:28 CEST Dragan Simic wrote:
> This also eliminates the following warnings in the kernel log:
> 
>   core: _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000, not
> supported by regulator panfrost fde60000.gpu: _opp_add: OPP not supported
> by regulators (200000000) core: _opp_supported_by_regulators: OPP minuV:
> 825000 maxuV: 825000, not supported by regulator panfrost fde60000.gpu:
> _opp_add: OPP not supported by regulators (300000000) core:
> _opp_supported_by_regulators: OPP minuV: 825000 maxuV: 825000, not
> supported by regulator panfrost fde60000.gpu: _opp_add: OPP not supported
> by regulators (400000000) core: _opp_supported_by_regulators: OPP minuV:
> 825000 maxuV: 825000, not supported by regulator panfrost fde60000.gpu:
> _opp_add: OPP not supported by regulators (600000000)

Can confirm those messages are no longer there in ``dmesg``, I see no other 
error/warning messages appear and my Q64-B still works. So

Tested-by: Diederik de Haas <didi.debian@cknow.org>

Thanks!

Cheers,
  Diederik
--nextPart6401850.1aQqFvIbO2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZkuP9AAKCRDXblvOeH7b
bpi3AQDm7qbYfHudSUzrr2LFgBeDIsZBSArY/04vtRyNrGk0hAEAmADoy6OdU918
gVzI7Zmmt1pEwCDGj6bnrQhovKNdlAI=
=L7k7
-----END PGP SIGNATURE-----

--nextPart6401850.1aQqFvIbO2--





--===============1580571429076559189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1580571429076559189==--




