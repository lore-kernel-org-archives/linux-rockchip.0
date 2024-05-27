Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97E3AC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 09:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=agAgLXqJLuDBHWxcuKJmwW6vzkQZgR9qq+9+reYnb1k=; b=zi9
	DJxNuaKYH7ppuEhdmmhWhxQO7HpLOgMIkW9ehQ+pmSV/qHFhnsQ5pXshKOgsmHpDp+AMUDX/uwXKt
	DXBmgHYVgFasza5ZxVVd76fSVoyYb2fPmxxecQrg5h16Pudfqx1vKGcqPeFuhzgUz+xiP4hsvRx6m
	UcFAJBnLxIrWRfb6+gq79tInPCgKSlnrG11E2P+kRenTaGxzpUPFemmj8dZZAhZ9zyT2myyNu+6FR
	/MPbmHtcAq5JLtcSWZITMPmVbZn+Dsg8xV9v8ca+2iJUOas17eZaFGGGWEHNbwpxWjESNUi64IO7a
	Jz4JPFVrzl1NEfZ/488G2mzryWHqJjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWOA-0000000EMQS-1iva;
	Mon, 27 May 2024 09:11:30 +0000
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWO6-0000000EMPZ-1sHg
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 09:11:28 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1716801080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=ZqyH7wuvd1eHuZpI0zetBDkdzMzWrhsE30sV5e9f5Z4=;
	b=Ac349AtqBSVehDwGTxJhluVaFgGdTZvCYVOQbBB66SG4PFl7vNkIO7VtQ+wV1w7yAlEEi/
	/qZb6Xc2Ji6E3+jqf/66rcQOTx0DSYIsMldTxxRDpE/EreJtWTSZWwfGJNJsMtvULltLjm
	ITfpcdOhD1ShPQjL3fzqwNpITNB6CQKx7LzM7yRU01zWijzP5Dqcg3pml9m2Js7422j1xb
	42YPjkexyEOwK1jWnYKyFQtsfN5xO03tQUHObMynSzUzimzjEd4wxhN81/iv4+ErBXUhM2
	DbDt5iC7LbtjZAPfZEc/h2TPaIyCm3Ph6GFYcbS/CmU6gai0NBKNMsHrOTWffQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org
Subject: kernel warning "Static allocation of GPIO base is deprecated, use dynamic
 allocation."
Date: Mon, 27 May 2024 11:11:10 +0200
Message-ID: <2994027.oaMTqqtBam@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_021126_874064_AFD5D941 
X-CRM114-Status: UNSURE (   6.83  )
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
Content-Type: multipart/mixed; boundary="===============6977744528629519032=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6977744528629519032==
Content-Type: multipart/signed; boundary="nextPart4305844.9lCaMK1LWo";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4305844.9lCaMK1LWo
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org
Date: Mon, 27 May 2024 11:11:10 +0200
Message-ID: <2994027.oaMTqqtBam@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

Hi,

I've noticed the following warning on my Pine64 Q64-A, Q64-B and PineTab2:
gpio gpiochip0: Static allocation of GPIO base is deprecated, use dynamic allocation.

https://lore.kernel.org/linux-gpio/20230120104647.nwki4silrtd7bt3w@pengutronix.de/
is a thread about that subject and
https://lore.kernel.org/all/20231006125557.212681-1-m.majewski2@samsung.com/
is a patch set which (apparently) fixed it for samsung's pinctrl.

I don't have the skills/knowledge to fix it myself, but I saw quite some
similarities with ``drivers/pinctrl/pinctrl-rockchip.c``, so maybe a similar
solution to that warning can be made for rockchip?

Cheers,
  Diederik
--nextPart4305844.9lCaMK1LWo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZlROLgAKCRDXblvOeH7b
bupBAQDQ7+wKZorRubHCj5kqweCz8H18IQ+GsNDaU3L6jaxTrwD/SZ/u7FElZBZN
hpDmONTbuePGSh4qZt63lEtPtQE4+gA=
=ZYoM
-----END PGP SIGNATURE-----

--nextPart4305844.9lCaMK1LWo--





--===============6977744528629519032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6977744528629519032==--




