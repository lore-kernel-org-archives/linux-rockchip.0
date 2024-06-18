Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB97C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 17:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wFR83hjV9V2/zFiTH9IbAXfulkSf6BkU2MV1WjAfgyI=; b=ScRM6qPz/2Fn1aOqV/23GPjgR+
	+jIxoRcUxhtyvvA0ko/Ds51mVfZSpJpEypTN7Ht0EHkRe+UIpoOIabRhW2SaM5SePjpxnWQ444jNQ
	MDhGMKNTGSDSvKBRf5rU7VlYnNrQdY177ihAJ4VywYSS/jsP1ZqdNh6OF2rqBxpkaS9h7uPdEBbgr
	pC5iBU5WIaj6RQ+0iI8f60FiRQo9MeR/fv5F4yHJgmffo2KkCOInX6cl8K4cba8vCjXf9GM9g2CRu
	v466A9gYldTWOFsBbl/i6eqHctoRvCR0sS3DMxlYjMqdDoWNhYJiRRFzooaWclnbA5ecIlfkGaL2s
	KP5ZuTng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJcfe-0000000G28k-0NVY;
	Tue, 18 Jun 2024 17:31:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJcfa-0000000G27t-1D9U;
	Tue, 18 Jun 2024 17:30:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D769D611E6;
	Tue, 18 Jun 2024 17:30:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF4E1C3277B;
	Tue, 18 Jun 2024 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718731856;
	bh=+AIDgnkglNABOkM07rYQEuwdoQhiijYiDXrSPBEmNso=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dme/cf6uW4hfXjEHMMUZ5cmBMGTqn+Z29mSxUCF8xexGDNK8ynkK4zxJ07QC4j0GR
	 ApXNUkaUb2ze7qHAEtzXroLEktMM+7yGvn9bLW+uQwGMMyrNjNr5V2vqYDSBzGUqM0
	 cIZUfBiLVDJfwRE+fWOEriXccv3puvg2pWnEbx/Aywgqi46KPlkTLBhojivLV+oe3a
	 GgYCUHMBfEaB72IuIsHHGF/+j+cJ8zoFWcwP0raDSfhfl7uiacMye8OI+7XcDvPx4W
	 PqfqMv0qej6Cq1o2pQ4cI01Foz6h7G6nO5ksKWtMANOEg5plcxbHTo5diFDNPhbefj
	 lcewYiGpvxEhA==
Date: Tue, 18 Jun 2024 18:30:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 3/3] dt-bindings: net: remove arc_emac.txt
Message-ID: <20240618-speculate-sampling-d7933a1dc858@spud>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
 <1a45f178-3ed4-49cc-9bb9-c1f9978356bb@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1a45f178-3ed4-49cc-9bb9-c1f9978356bb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_103058_437496_DD55DAC4 
X-CRM114-Status: GOOD (  10.06  )
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
Content-Type: multipart/mixed; boundary="===============8402515962869637849=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8402515962869637849==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QYbO1KTJM7QqsiWe"
Content-Disposition: inline


--QYbO1KTJM7QqsiWe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 18, 2024 at 06:14:32PM +0200, Johan Jonker wrote:
> The last real user nSIM_700 of the "snps,arc-emac" compatible string in
> a driver was removed in 2019. The use of this string in the combined DT of
> rk3066a/rk3188 as place holder has also been replaced, so
> remove arc_emac.txt

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--QYbO1KTJM7QqsiWe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZnHESgAKCRB4tDGHoIJi
0n2FAP0bZj3ydwoGLXHSklzjFjA0G1JZuS2f9Mq5LO+o++9dDwD/Zv8VPx8TNMgY
rQ3xZj/iKj+ScXOPgIQ4AiexcWy9Wws=
=YHdX
-----END PGP SIGNATURE-----

--QYbO1KTJM7QqsiWe--


--===============8402515962869637849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8402515962869637849==--

