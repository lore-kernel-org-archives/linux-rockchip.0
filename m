Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C78C83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Jul 2025 10:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QSAE0+bUruIdvZ866Z41n2QVYG1E+OF4oTDVc4B00Gw=; b=2kEI+XOCGUa41L0jxOWT77HuZY
	OVJunTnynJ8FtVW86x08NnsxhTH/3WyJCHvkOZUB9Si30hiDr1iTYy1fy96Cs2YW0hV70KnZCPNyf
	hTxTudJiI35M4UoTCdQshbTPGa+/8+rTPBXViyJgevlv/qXflvly+s90SzFydnkfjiFJW57ankYhp
	9rqNMgoP9T5ls/pbNMLpn5Pj5nzfX77d1szS7ix3DEylnzfMbLnDq6J4FPxSaWKD9N3lwbdtfbqUr
	NPCY3KAZKEeSLyY+DMpewe8eqkDpdbIBygKb1oPY5Ok0wQLtWvE0gBxR5yuxzzL2gXkPb7Ft0J8Xu
	y6rC4iFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQv3-00000003PqG-2V7d;
	Thu, 31 Jul 2025 10:53:53 +0000
Received: from out-174.mta0.migadu.com ([91.218.175.174])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhQpN-00000003PAY-2EuC
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Jul 2025 10:48:02 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1753958869;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4odthgpL669trIYuGSc79a2PbDMDTzqM0a0YUOGgrG4=;
	b=qIN3qzqyLEa3z9iZDs4OBiMyEkwfOUm9Rgo0ugEyNNN9bQxGrV7mMmEe7UJSpU2oEYInKA
	kXO5MgJsKXAsjT/ZVYgAxzSdHgrLstMXufy/zJIML0jm1K5GcgSCskrDrRb1VPkibOvLqX
	yQhgIv7EQHp3NYwluIZ2zZ40zpaT0sYyEEoeQkqEfwB3jG4nuJDmd9BNp2PnTkkXn/aTq8
	mD49PYVQmnTWzczEcBPucD9wKrC+VJzmCo0/J6NFqq9x4FvnWon/5NljRHsntow0ithW7Q
	Gi/6M3de/t7h9ADLPGf5p2lYEQ2U8QFdPaK0Ew6QE8v9wQyJswlZbZroRG48Vw==
Date: Thu, 31 Jul 2025 12:47:31 +0200
Message-Id: <DBQ6ISOKV0XR.22W3OAALUKIHQ@cknow.org>
Cc: "Lee Jones" <lee@kernel.org>, "Pavel Machek" <pavel@kernel.org>, "Andrew
 Lunn" <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, <linux-leds@vger.kernel.org>,
 <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: BUG: Circular locking dependency on netdev led trigger on
 NanoPi R5S
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>, "Robin Murphy"
 <robin.murphy@arm.com>
References: <DBLBPIBKFCJV.36AVW8JY88L7H@cknow.org>
 <6817efe1-f2c2-4686-bdf1-fca11f066e3a@arm.com>
 <475ee9ae8cdca5ce86b708fe0ade7c9d@manjaro.org>
In-Reply-To: <475ee9ae8cdca5ce86b708fe0ade7c9d@manjaro.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_034801_715403_27B02744 
X-CRM114-Status: GOOD (  10.35  )
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
Content-Type: multipart/mixed; boundary="===============1932577841762483583=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1932577841762483583==
Content-Type: multipart/signed;
 boundary=0b38981bb829eebfafe48a04f99efa1bdb4b30b7bde156f6b84f4be44d26;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--0b38981bb829eebfafe48a04f99efa1bdb4b30b7bde156f6b84f4be44d26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Jul 30, 2025 at 9:50 PM CEST, Dragan Simic wrote:
> I've spent some time digging through the LED subsystem, which I'm
> already somewhat familiar with, and I think I've narrowed down the
> root cause of this deadlock.
>
> I'll send a preliminary patch soon, after I make sure that the root
> cause is identified correctly, and I hope Diederik will be willing
> to test the patch.  If so, and if the patch checks out to be the
> cure, I'll prepare and submit a proper patch, of course.

Sure, but AFAIC you can send it to the ML(s) directly as well.
Please do CC me as I'm only subscribed to the linux-rockchip ML.

Cheers,
  Diederik

--0b38981bb829eebfafe48a04f99efa1bdb4b30b7bde156f6b84f4be44d26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaItJxQAKCRDXblvOeH7b
bi5gAQCxYSZt1DjQ/NWu1cowGv/jz0IMEd2jlu0r9jnSjHLQuAEAo0Kmyapy/Pgp
ro+OUyTrc2A4aBmU2frzWFW+zmcZtAc=
=jZT0
-----END PGP SIGNATURE-----

--0b38981bb829eebfafe48a04f99efa1bdb4b30b7bde156f6b84f4be44d26--


--===============1932577841762483583==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1932577841762483583==--

