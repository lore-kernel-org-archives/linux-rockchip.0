Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE961606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 08:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=e02gQQGS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=UNB+yZPq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=v/b/HalCpu0PKow5ANCntrllAh2RiysqnikNteiSVQs=; b=e02gQQGShrBCEk0uiTcNr/8aLS
	xFfiHbp+UkOnucf0kLyysytbXQQYmZANhXyyLCNDdtORubikMFMMyOIHTRprDYFWoAsawzCf7q+Tj
	MwxS9PtmDBJgUqU9UYcnGKrPX3ydkD8rFOiRQcR5MnSKcqiBQr7P23ygmrJM8o3KHg5b1c9CGqnMg
	H6U1FyxjTufiOYtSNXALyGCIVC/+coZNxup+HpefkVQvOSf62Y+uNUpUlcl7Qm7pCI6aB1padWWPS
	UbvVj/5+U8VW+VwYW2cQqqKohyXrz4AzXsuVajD+677qSwJjxML8xWrBa1PnW7ZaOl0U7Jex/9vYk
	cmKQ9E2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmDh-0000000By9p-3EnX;
	Fri, 13 Nov 2026 08:01:13 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRmDE-0000000By49-08x9
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 08:00:52 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-3ab30d04674so1054281fa.2
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 00:00:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794556842; cv=none;
        d=google.com; s=arc-20260327;
        b=Ir+ilQIetcmhP4Ee2bIFkercsc7921XxnGvJWjfW880nG9y7mO1op4MJ83kuaDWqy5
         eyzSwpmjhJgdOr8JoSz2ABsg9T4dGXDw68Z9kpkw5RBM2S3pfHKNqGuvpynY3hDyPlxP
         yYKxF1QNwCiuxCW9ETqIi40hPehYwCv6pq9U1Gw8BXHsdjnQKGu6JuUDV6vO07j1Vpad
         XAJOjEqc8aPQc1Tw1mqrAS/gTpx9q6RYJdC7XANu27+KUTSllMMZ7rNWLnE6lax4C/9w
         tvEbKN/wMxON4Ft4AK3Z1vP3SF2OORXD7Zuo/nuFKKX6a0CliwL05amfh8oBKRJGQlV7
         zw7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=im5VzDYCAR+lhrziKPe6VB/YsWt6tS1hfXIpy0sqr8w=;
        fh=XfNugaYdoTKvi7DAwrL2Xy6yztpSe3C1oeKg/OilSyc=;
        b=iPDQ9BgsoqfJ3W3y9QeXx3khfUNLk/8c95XESDtgJJPpRK7eBxZAe+7iuONb+SW0Wu
         OI6M8E+PQR+RKJHPcqs10KN+QcbIs+RNKysWvPeBO76M/RSDRaqVFa9HU+v22UuLylo3
         RMz/jD8VJ4cHypDK0lA/G/K5kmorMYE405H8IC5x+xncnGH/GysuKvAeLdOV2k8/O0Sq
         r7K0PdWz58PMY0pSuuje2s87vcZwX0bWJ3oeUhR861UqmaOk60DnD+2yV5VqQfzJ+NAW
         oSG4cnexvCh1c4PoAloi598svGN+zx6ntx2v9fRxit8GrkK2dZ+bOv7ltgaxGROJuJbk
         2/Nw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794556842; x=1795161642; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=im5VzDYCAR+lhrziKPe6VB/YsWt6tS1hfXIpy0sqr8w=;
        b=UNB+yZPqGJN7fzofTFji7BSf5vu3dPYCH60xng7qkX7KxqGby3dKJg3f07r3sJQkhJ
         CuNij1uIxVSuYy2wT53/3yNYrzmT2AEt2xb2pkWEkXYUGlsLE7OYMKRhqNHydlIGOlLY
         e80LfYDJhZzpjCuYqIhhVpBBmQnbYAghOiAkXgwyZDC1WIt39zbU69zPCad8ZWlyGMDl
         gu5cyrYFb+L5Pda1lx16P4p0WTrr+sMmQGBuefvo8Oj3QsaEtf1fCjAatI45C3PDv3cp
         oQnqk8Noow/rAULCHPubmeLQcfZdk4kuD0OefCZpQAo5iV6ittKmrKoqDXv42LYVwHL1
         Z56A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794556842; x=1795161642;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=im5VzDYCAR+lhrziKPe6VB/YsWt6tS1hfXIpy0sqr8w=;
        b=uf3K6NryfNsAnuyCY5np2Dt//3OgviphEtAOJdL2KdwOXKe57Xj5uUcm1s4c4EmqyM
         oJbQn5okoAyGMu0xqlyRl37erawdYnCJNW75bnfcqRxOK+fajg/zKaJi8MqwU+Ff1ol8
         71SIimWNlsV0L/1Yhkjmkn4axFc7G7Z+UuQxYCy8LjRGBriaFmnfRN+cOZBownL/uJ1z
         FD6MZXq1+C3uItZuKIUPOiKg+KgtveTtDFlZAtImdzF+OydD1wtQitMiGVy+1d9dgVBd
         sIMADfX1ESzuJKLnhE4IRxrD7f4W4/N7NmOTGKMRxBkgGGhYhYrJS5IhkbDe5tW5LWSJ
         r0yw==
X-Forwarded-Encrypted: i=1; AL+hErFpQNQtle67kUHgkN5txe9CBg+AFbb+JfdQl/GOf0xkssgSqBWp+9MP+Ibqvs7E6iaBGeWLyD6PojvMpJYlFg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9vgYv4wPKrxjLG2rz9oyeXxiuCNzZSnGjm3jFVDlHp1UHMs45c
	JN9Vi8xA/WefWS8wIT2H3O958URMmCv+MULy840mrIkKNH1Q8vkI76Z1doBYGQDq4B24rO3giHn
	zl/L711JnATi0gHoIepNRwELfMRp8Qn8/LKlu93vJFg==
X-Gm-Gg: AYBFou3a37cDFz8ND8L63jLSgYTxM6MMAQqgV6oTBRy1+a89vMh8m3SQSCjZ6IBfYQi
	cX5gR96NlQavr1j/17eXdGgwXHzpgCMnN17wV7TofzVsJlj4eipz1FBVeWh7+bKYNXT1PE+ajH/
	T037sppTXA6nDLKKSFI1bzf0NU6qFaMEeZRHdz/IytTJjuKfrBvH+XBJWWMFTIXd3uhG4SprZYo
	YuKd/PztgxGTguHUL4jrUE1DFcOTirBLy35bDZpKChmcbSFvChrjFVEzThrpuoAoJp2r9NHf8nI
	HVX13yuJpFqwhjnicjk+gWIToECeq/3YW+SKNs8BWGzlNoEHuV7y+cTf6fCNsY2iJDHgtCuEpls
	KSwOS+laIEO5NUEV1MqWCi5fZ4yZZ8tqPz0e0PZDgNDqxMjIVy7P8N5gBHZh/rCQ+nzE6EMg=
X-Received: by 2002:a05:6512:108a:b0:5c0:b5c:4084 with SMTP id
 2adb3069b0e04-5c1705d663fmr682927e87.1.1794556841810; Fri, 13 Nov 2026
 00:00:41 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-hantro-codec-fixes-v2-0-f44424df585b@gmail.com>
 <20261112-hantro-codec-fixes-v2-3-f44424df585b@gmail.com> <f041c5d87698ab3be8283ecc71ead0679327238e.camel@collabora.com>
In-Reply-To: <f041c5d87698ab3be8283ecc71ead0679327238e.camel@collabora.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Fri, 13 Nov 2026 00:00:30 -0800
X-Gm-Features: AclHuK-I_zgsSZZ7-9_Jv6URD3G7__LXdFVlF7HwZI4Ihkxqdy0NcAMKAgOjjTI
Message-ID: <CAEy9hNVSC7TAvdLmN-yWH9NdtKH9jgVnyxFwLJ+J2qPZvOQTEA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] media: verisilicon: Don't offer VP8 above 1080p on
 the Rockchip VDPU2
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Hans Verkuil <hverkuil@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Jeffy Chen <jeffy.chen@rock-chips.com>, 
	Tomasz Figa <tfiga@chromium.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_000051_089817_8CD2C154 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> Just to bring to your attention, the IP does support up to 65Kx65k, but then you
> can't do referencing (its the WebP mode, key frame only). Hughes Fruchet from ST
> started looking into this but his work was not completed. The general idea
> though was to perhaps introduce a V4L2_PIX_FMT_WEBP_VP8 (or VP8_INTRA, naming is
> hard) format to signal this to the decoder, and limit to 1080 the FMT_VP8 (what
> you are fixing I suppose).

Thanks, good to know. Yes, this only limits FMT_VP8, so a WebP or
VP8_INTRA format can still be added for the larger sizes.

> If you have time, it is also miss-configured on the imx8mm, the combo-core
> (G1/H1 combined, like RK modified version). While the imx8mq has 4k h264, I
> don't know if the VP8 core actually is capable of 4k, so perhaps both soc need
> fixing.

I have no i.MX8M board to check what the VP8 limit is there, so I left
those tables alone for now. I will take a look at getting a patch for
this separately.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
