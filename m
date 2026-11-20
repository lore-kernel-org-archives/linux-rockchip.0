Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7DA606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 13:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YUkZJs8s;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=AGjG0qqK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:References:In-Reply-To:
	Cc:To:Subject:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=RyZ/UOzG4gNQwc5bhyGle78Bp8aOfd5f26sLdMqzwbI=; b=YUkZJs8s84JJ0kC41xL/LWfEIL
	FSb5wosj9bQxuPPeYOxFBfKPpiN2AR4ft1heC+q1CkiNm6n0IciznwCgC823n4HgExlm4rD30IOqw
	dTCUyOv31/atJkqwWoYc1HpUS0pBdEw9Kx+rz9BMM19qWPVx0ZkbQAdHg1hy7I1F2e2e5YmKKibW1
	xf/HFZNhdOe4Y7BQ4CcnqBLyR/ZuHCDttcFjM7Vds/v9GphDWKBj4VEk8DQRPJKPI2PUh/Re7/17m
	QGLpq21AdnxYNWbPdpZoWrT8EJ83B6jnANsAzGdYuMmEa6eCKqJW2Gc+ikfgFEks95FrLquJXRI5F
	mkmr6fYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUP4Q-0000000FBdC-0Qb5;
	Fri, 20 Nov 2026 13:54:30 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUP4E-0000000FBXP-1QEg;
	Fri, 20 Nov 2026 13:54:20 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c0a:3200:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 04D5C205B37;
	Fri, 20 Nov 2026 14:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795182856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y4gUhOHZ5Dg/eVpejUL/iLgyeedE8wBdB818/Yz+Gac=;
	b=AGjG0qqKX/dnRRDclRFEwp9LrG0BIGja6B5bhxSSGDDqOPb5yA8hC9qMxHo4g+DXTECZwD
	IYaN68X/1Azmdy82gHGmFZ5GW81u8JMFFRRU9uV5dqM/N6OG/x+uc1xF3zJd7xuaRIJdGU
	DOl44ccwdw/MMDmM60XV3/hV72DcNinIAn8a14Iqzwee2NoGw1AK1N4VcFQ0UHAgZR/ldN
	lLM2EpqDyDz0vmuofAhepsk+ctEuSBSS8zemeftHb0V1er0rxRC/eGH25RQxgS1oBiP791
	Tj89HipKsku7LiYfWPecDrRmzZ4sz+mnqChbpOjB24+K2e/VnIN+6RG/T5p33w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795182856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y4gUhOHZ5Dg/eVpejUL/iLgyeedE8wBdB818/Yz+Gac=;
	b=Mfe3EvlI8G6xPOHWf8h2x/WMkjBzJv+9Soql10ONZZokf8gJT78snxc2o7ZQMZQnFYrY/D
	wJqKYMd4en+axLquesgQqClWLOWMdl8b3bVJUncFSS2BvamlX2RgjapkPBMnUAQdZY/ne9
	fE/NyJdD3IwRvVv+v4Y05ti3k2S7MZZ5XZWRyqxlTMpPhJ3avcKoOkZIWUfTGoM+reDmfS
	P+UzSZFW97SIxsqwmFHjvdV/S+HjIraANeegTzQ6drkPK4fQEkWxtELHXeRaM/+mQdlcUg
	sRuUAmcchX+pOW/K9nw8YwHUqqukp2n5oh8FwDiqiQVms2VkpPbMTdEWSS6ARg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795182856; a=rsa-sha256;
	cv=none;
	b=G50iDqclBwQIZOWXrSdW7zR+j/nX6mLkHD8Qk5r0W79Gg3wVsvVp7z1bSLZqjKt7DZZc7Y
	1V+/ZnBTI7wprK2F7feR7hUaqh1k9K0SlI13gMBRRDb36Gz76OwxmQsZ/8X0ejXNbp3wNt
	s5O6W45XlBvPPtiacPbuBo3UbJNo/6v4q1ydZUDVNCBa6nlAbQLg6jq4XRpuRWN8TT66Fm
	wp0jVvBGZyQseEVX6ALeuWGSwoKiBrcvajQI56/Now9Eu4OVmEhZu7xwoXc8Ar2jgXyrbi
	behoYLWmgMaUNr/SBC+0BsllffVVHV4tW77uvrH+fKeKXQpY56PMpLAoc7t0tQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <028df402-a8df-4084-a4bc-7eca286a0c35@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v7 2/4] media: rockchip: Add JPEG decoder driver
To: "Sergei Khomenkov" <shomenkow@gmail.com>
Cc: "Sascha Hauer" <s.hauer@pengutronix.de>, "Lucas Sinn" <lucas.sinn@wolfvision.net>, "Mauro
 Carvalho Chehab" <mchehab@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "Philipp Zabel" <p.zabel@pengutronix.de>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <92CE2271-6485-4B33-AF75-480F9BD56980@gmail.com>
References: <20261022-rockchip-jpegdec-v7-0-3fd7dd55f408@pengutronix.de>
 <20261022-rockchip-jpegdec-v7-2-3fd7dd55f408@pengutronix.de>
 <596F6C9E-4A5D-4AE8-8D26-7A7247050D7D@gmail.com>
 <85353f59-52a0-446d-ace3-65e2d03d0d0b@pengutronix.de>
 <92CE2271-6485-4B33-AF75-480F9BD56980@gmail.com>
Date: Fri, 20 Nov 2026 13:54:15 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_055418_690081_57C1B921 
X-CRM114-Status: GOOD (  20.73  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Sergei,

On 2026-11-19 22:19, Sergei Khomenkov wrote:
> Hi Sascha,
> 
> On 2026-11-18 14:27, Sascha Hauer wrote:
> > I haven't been affected by this issue lately, but saw it when the series
> > was still based on the hantro driver. Yes, I'll change to 3 bytes per
> > pixel next round and make that the floor of sizeimage. Would be nice to
> > have a proper solution for this rather than either wasting tons of
> > memory or risk having too small buffers.
> 
> Thanks. A correction to my last mail: 3 bytes per pixel is not a worst
> case for 4:2:0, despite what tj3JPEGBufSize() suggests. Since then I
> built 4:2:0 test patterns that push the quality 100 scan as far as I
> could: libjpeg-turbo writes 3.35 bytes per pixel of scan data, byte
> stuffing included, for one of them (640x480), and the Hantro H1
> encoder on the RK3026 3.14. At quality 99 the largest I found was 3.08
> (libjpeg-turbo) and 2.88 (H1). The patterns, 96x48 and 640x480 JPEGs,
> the same frames as raw NV12 and a short script that makes them at any
> size, are at https://homenkow.ru/kernel/vpu/
> 
> With the Annex K Huffman tables and 8-bit samples, a baseline 4:2:0
> scan is at most about 3.3 bytes per pixel before byte stuffing and 4.9
> after it, at quality 100 (lower qualities are smaller). Other tables
> give a higher bound, and APPn/COM segments add any amount on top, so
> for a decoder any fixed factor is a trade-off.
> 
> So 3 bytes per pixel covers what the H1 wrote up to quality 99 and most
> of its quality 100 frames, but libjpeg-turbo goes over it from quality
> 99 up. If that trade-off is fine for you, I have no objection; I only
> would not call it the worst case in the commit message or a comment.

Ok, I'll rephrase that.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
