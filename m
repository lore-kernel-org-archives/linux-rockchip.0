Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB7A606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 14:35:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Z7/MaOb7;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=f/SUUrh2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uLo4R/h+iZEJQbhOo5ug3qOxoOOWUd7IUivkzIoxagQ=; b=Z7/MaOb7bzSAYzPXQRKexD33d/
	dnBSakz8fu9ET9j3CbS9uIiGFCGKtxGR+pFQc/6UKQuocZdhbXI3CtJXspffzNAzcqCQXowYBB7eP
	qW1FRqQfrSfOAGmPcTJgvnK8YKIFownUh44bDSSNLsXj5EF/ooyH+IMnWng+o2WTQZoYszzyZrlOm
	7YBdbtMlXmqlihMGQAbFDyBnwIx4feyNpmaDivaIUU4IRoO4mkTABMrNaGEepbstSCRfBihs5xJo/
	96DcCIfH5atVWwLDYC4mLNAnB01caKkNhuAxdvioPAdhopzl8b6osl5GTqYIXOFE+No+y/50k+dNa
	QdbKob6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyZ4-00000009IbY-3OvQ;
	Thu, 05 Nov 2026 14:35:42 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyZ0-00000009IYH-3vpT
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 14:35:41 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-89f28c3ac7bso780417b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 06:35:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793889338; cv=none;
        d=google.com; s=arc-20260327;
        b=V2JHLHBxEyVg5jMS4MzVRlIiumEsZ/qa01faDChd+CMChg93yK6keREDutzt1CJd0c
         lN/M1ElgoKtJw5m386/Wk3IRwuEZpl/UZCldm2w5x9hhguV9/6LCGC+DAnIS8o03WEmh
         KbQI1Dtak/DBkueY3WBWIaiWlnQ4U3ErInpa3Sqlc77mbLU2589qNsFjxjy4FMVRXnWl
         Wsf5KfjLpjAiIqImR0Y+LhvtRi2J4g9Rt9Lnvbgh1f854yw73GM4qPjwJ/PIIyk7EI0n
         86phjyJrKazQvN+KKSdM2pFcPOGio4MTwx5Ji2gCIv7F1nBiKFG2/4fkoFLVnGtO8/aq
         4oiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GkU9fJVYjw6koPkED18+RNmNCd0Pc4rVVHMltt2KuQg=;
        fh=nQCp2WCyvW9zctpLxmvZm0zYJ2gXFGyqZcZm7zZpGsc=;
        b=E89WQMH3scE1HXuz+jYGLZ/1LSlXsGyh2hFno1KGE4jR8iWbnaj+GbMoMsb3XsSSC/
         RVOHLloUx2ozAc8pu9A7g7f5Cnd89H0sAaxMxBuJXTR+HANv7LR4RpqoanaqDwR++byl
         fJGO4BXmQmqE9Cz4IFeClHyZ+CgUSSBhG9TRYsCpP2Wm0jsr/SNCdX/MMoHfZTdjng6F
         KNHK+JSj9W1cRM9DCjm3EkBEVGigh9RVVU52gNQx730RpviLUZ8GvTDPvn09Ss2lDh7R
         ABhsvYJJpBWi/NWz7MN4XurXF50/Ri6cU6LJl4eRmR49FHbmC8qe+H7xU6zomgytjR/S
         1dDA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793889338; x=1794494138; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GkU9fJVYjw6koPkED18+RNmNCd0Pc4rVVHMltt2KuQg=;
        b=f/SUUrh23LtbQDJ5L835NpArHUOXDrg0b7mSfFSZllryxG6KJh4flR3u0fKMHqHlx/
         qzJiwfQJNHaijdlbj0rYUoXpAvK1wVgl9v5rnkWfVgYIh+4wdX7lTgNHCC2X8chQwz8W
         ZlzB2aRfLl7OW64IXMZ2KJsR8R4O7iKAX0HF9Js5KPRvgTX+IVOF/wSFzwV/xtzYQcOr
         3PQHTNqqMD1j3WuEx/xE35YgJarnoIRCu/pLQ5eMZ1s+Zs1r3XJ6CNYqZTmgM5oAcV6n
         DzuIaN9jHE84uMwGfbZEK6veNHUlCehueErIU7zcOD+GfuNxjKCA5J2DnlDUiW2okPzI
         zL/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793889338; x=1794494138;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=GkU9fJVYjw6koPkED18+RNmNCd0Pc4rVVHMltt2KuQg=;
        b=s4HdmSHJMUCr+D+dajMJQdQr+eqEqSgYsbwLE06w1UxKWi2de72oRD1Is2t0CYRAiM
         ThR5UjdCEFG0usF0Hyl774osb9mcAiqldz4a9qyHn2m4jhFzbqS5W2V+kRAch/UFp2od
         lW63CDu76/o71kauGYo1eSWyLV/eT/H8kuGEA36zBPDbfZVxgbj3Uonlggo8xQjMnVAg
         AB/lYnb0anmgVCRLR4kZ39AcGwsclCCIEBxDpH4fQZWQEBfKigv2d7E83PD/om8RM/Mx
         xQLFPEOSbKEMl71Mb91tdsSHbRhPJnBN2uBIPEtVRsvWHt3g00ghgyWixMQzAcdMkRGE
         xyzg==
X-Forwarded-Encrypted: i=1; AKwUvByg8ncoqu4ujKGDaBP5RTURf6cIpVhwJA07Dtxbznlo/C4txhagYXOUl9alGlFykqZiNSudDM+dC9BQ+QJBhg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9jIS69APG8Pjm5NF3+xnaB/z9+8XY6OkiVtnSOLaZqnBuxWvgD
	HN+wPwa4gJ58LDK7yt2fQgUqM3uVnxR05dPwvLlmUAqPhRgp87FS/WvfmTXmaG5HDYo+tezfkmT
	nLhBl7hVlmbND4eC56Ts3UD3ehX4t31IFEEZZOo7jYg==
X-Gm-Gg: AYBFou1P/zEatMsLKhqxDAhhqYXMDrBSof+WGAmRch5k/IcMf0/6PCq95o3+qah5Oex
	3IyqcJ+dNQeDn3J8Vwjcxv/LXjJvJzayUE8iEeLbppRKfC754VwMGqeeGunUSdkLPKVp4t2Cvvc
	TNawIvUPatUuUhJz9B/BRUbq9dicfG+8EOhKyudN1kt1Pe4umttpGZak3IcbfuODPDhUPErisIl
	/gE/8O6mDw0rhzHghE+ki7NQr7oJyJw2xbBgIU7SDEKMTIqlaZ+/cawGxdhhlOr3CGeS/vegwn8
	PiivxuupLF5jnjL5mOgMmh7nKrjzuPbxnsUbfgQqp0soOWE/QjojuuB8bBUFuJtgRc3dlovRh7p
	ni3xKJ6JvcS6t9wNLP3MkzJmuUIH6I9zpEvuH
X-Received: by 2002:a05:6a00:330a:b0:84e:909:ac03 with SMTP id
 d2e1a72fcca58-8a9be48c598mr16519398b3a.10.1793889338094; Thu, 05 Nov 2026
 06:35:38 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com>
 <CAPj87rMQdE3eeUxGSb4oQfB4Adry6UV8CvhGoTKtdKGQHdSo4Q@mail.gmail.com> <81fbb960-abde-44ea-82ab-3adc054da836@collabora.com>
In-Reply-To: <81fbb960-abde-44ea-82ab-3adc054da836@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 14:35:26 +0000
X-Gm-Features: AclHuK__6TlodHOzyVdjm-UulEeYQ_S-cCkdzywOgk9TNIGTgV-C-tpWJDrX-8A
Message-ID: <CAPj87rOKJ_EEmSwkokjvqytgnzTi8V_EhtGywQHe7xeww+ECDg@mail.gmail.com>
Subject: Re: [PATCH v6 00/15] Support 10-bit YUV422 and 8/10-bit YUV420 color
 format on DW HDMI QP
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Sashiko <sashiko-bot@kernel.org>, 
	Igor Paunovic <royalnet026@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_063538_999728_B548CE6B 
X-CRM114-Status: GOOD (  12.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hey,

On Thu, 5 Nov 2026 at 13:04, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> On 11/5/26 2:25 PM, Daniel Stone wrote:
> > But if this series keeps on collecting unrelated patches until Sashiko decides all
> > of VOP2 is bug-free, we will never get this series merged. Could we
> > please keep this series focused on the useful bits at the end, and not
> > keep on adding speculative new Sashiko-pleasing as artificial
> > dependencies?
>
> Yeah, sorry for that.  I'll stop here with regard to addressing further Sashiko
> findings, unless there is really something wrong introduced by this series
> (which doesn't seem to be the case).

Nice, thanks a lot. :)

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
