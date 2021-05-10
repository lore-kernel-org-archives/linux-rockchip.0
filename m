Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03DB7C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 09:04:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 112586112F
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 09:04:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 112586112F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kleine-koenig.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:Date:Message-ID:References:Cc:To:From:Subject:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iEtQyN7zjmJfW1bQ6bjKdl9cxRXDFqcdo9/N+JRh6w4=; b=qreYV5PakzbS7Yi+WqQrr5Dyi
	G8YweQI4IWanMxgPT6xST8rUNc4P9j6TI+B8rLGP38K1V1vq/nYEmXkAfEE4Mym+0EV9vfTNlf7Xe
	FKGajfJqU9i+Pm2yQaNcZEipDH/mLIuct8f/iPto6B3bn03EELdKPwimKjWMETmkBOdQlEbkrTLaA
	wqpi4ZQEDuM8+xjDp6AXl9qxNy9lhOZdYrr0LzmnmSRGp1dbR8jTmxqAXXtY+ZCaLDcH0qJXOmBCF
	SKuMw020xdNkDm3hkGsw7yKX8JVtiXoGgmJHAs46al2BmkNtUT11y9AJZpE4iB6gjG1R2sT7+rSBR
	VPRVUIz3Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg1pW-00DhwA-OP; Mon, 10 May 2021 09:03:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg1pU-00Dhvc-Sh
 for linux-rockchip@desiato.infradead.org; Mon, 10 May 2021 09:03:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:In-Reply-To:MIME-Version
 :Date:Message-ID:References:Cc:To:From:Subject:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=CgfyYWCXpDd+R3zJeXKiPWaP+jpTZxQ6GhEYeX4bAD8=; b=WaJVAPzaO3gmIIZ7XDiv0evsVE
 HQGur9dT5SoGd8cy6aXVp+zFDsCWDyvPXnN+7JKhZ0GgzUf3BDNmx/sjwprszIb4aAjhKsGaioWYF
 EIz/cwi48+jFrPs0KcdIAHTE5FsmKoEfh0U5JaZCfULYRZqHfZ2MdmY7a+DFr+8uSyWXiwPRd0pmp
 6qWX6+AKK+K2qu/ux2zaX12vExyrhBJExBOxri3cqXTrM9MiVRoQb27Ss1yj/WrSeckk2chpXLX3s
 AWjL8wcKm6sy3ZQuNwiXHmDSi/2axweGEmG+Y+iu+Gy82lcWxmtQlG/SUm3J+GIjLxe1e280u3MVR
 HaXZawWg==;
Received: from antares.kleine-koenig.org ([2a01:4f8:c0c:3a97::2])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg1pS-008RHE-CC
 for linux-rockchip@lists.infradead.org; Mon, 10 May 2021 09:03:55 +0000
Received: from antares.kleine-koenig.org (localhost [127.0.0.1])
 by antares.kleine-koenig.org (Postfix) with ESMTP id 72373B91DFE;
 Mon, 10 May 2021 11:03:51 +0200 (CEST)
Received: from antares.kleine-koenig.org ([94.130.110.236])
 by antares.kleine-koenig.org (antares.kleine-koenig.org [94.130.110.236])
 (amavisd-new, port 10024)
 with ESMTP id Uef7iDZUOYlq; Mon, 10 May 2021 11:03:50 +0200 (CEST)
Received: from taurus.defre.kleine-koenig.org (unknown
 [IPv6:2a02:8071:b5c8:7bfc:4a26:1cef:9af1:44f5])
 by antares.kleine-koenig.org (Postfix) with ESMTPSA;
 Mon, 10 May 2021 11:03:50 +0200 (CEST)
Subject: Re: [PATCH] arm64: dts: rockchip: Increase maximal SDIO voltage to
 3.3 V
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>
References: <20210510065449.942173-1-uwe@kleine-koenig.org>
Message-ID: <e6d15362-3804-4428-dd44-fa96c07e79a9@kleine-koenig.org>
Date: Mon, 10 May 2021 11:03:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210510065449.942173-1-uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_020354_588441_F7BEA056 
X-CRM114-Status: GOOD (  12.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8194167066170243750=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8194167066170243750==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="lntBXDof10kDK44EA8MLiQRjhJqz16N5P"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--lntBXDof10kDK44EA8MLiQRjhJqz16N5P
Content-Type: multipart/mixed; boundary="cRjHEuwQeQ0D5FcYjiirw1vR57QrrRQVx";
 protected-headers="v1"
From: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>
Message-ID: <e6d15362-3804-4428-dd44-fa96c07e79a9@kleine-koenig.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Increase maximal SDIO voltage to
 3.3 V
References: <20210510065449.942173-1-uwe@kleine-koenig.org>
In-Reply-To: <20210510065449.942173-1-uwe@kleine-koenig.org>

--cRjHEuwQeQ0D5FcYjiirw1vR57QrrRQVx
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello,

On 5/10/21 8:54 AM, Uwe Kleine-K=C3=B6nig wrote:
> While comparing the vendor dts with the one added in v5.11-rc1 I notice=
d
> that the vendor dts specified 3.3 V which matches the SDIO specificatio=
n.
>=20
> So fix the sdio regulator to provide (up to) 3.3 V.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>

hups, sorry, fat fingers. This patch is wrong, I planned to send out a=20
different patch. Please just discard this one.

Best regards
Uwe


--cRjHEuwQeQ0D5FcYjiirw1vR57QrrRQVx--

--lntBXDof10kDK44EA8MLiQRjhJqz16N5P
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmCY9vEACgkQwfwUeK3K
7AnqdggAjt4FD1aYWRqnGdQM6v81RWg1Va8eIkMjZ8gHiKrfxVgv/IuKvULnJqUN
kecg3kLS9l3z/ADQ2OuJ8w/ORTAuJRan7jXSjaCm6IlURaf7pl+zyIsPMlbCUiPm
2yh0OwkijqTukxfXMdtxJEzkyWGlXFa+VxU8AEEEKfZRse3GcHc2l4zHJzO+9Q4j
EPo6Sl4sKSbvu1GJMccdud2MQ3861v8C83NlQa9qpWpWKC702fLXO9B/vxQSSKgM
EQ9pmzz6iZXK+FqYzfN2lp7NYHBz7VYW6kCxaepJzBFH/YbnY48i2P+uvwXqbA2e
0APzfwrvsXogHFCAZ7O0c5DZicbOwg==
=VDIu
-----END PGP SIGNATURE-----

--lntBXDof10kDK44EA8MLiQRjhJqz16N5P--


--===============8194167066170243750==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8194167066170243750==--

