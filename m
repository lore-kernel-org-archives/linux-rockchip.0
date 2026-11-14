Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93EE9606A33E
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 05:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sQcQzPml;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=iZnIxVtK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Re7TPyfAdyIuOxGrJPi1oeh/EekdL5it+7BaLqswypQ=; b=sQcQzPmluj6hQZgHHIwh5JjMUs
	8CQSdRIvu5kDVK4faojPeb22mwxv203zUOFC+IDOvC/gxSiuWwbEwQZdcoeWkBmyGEGcHUnNUPzJd
	UWfyr0Bs8KTe54xLz6Hgx1ZGvJ9hFAHUAlBo16/Q+8CtmD3DTysu5f5ESKCkuNK8/QKlQ+3DZjImR
	KXx1RpQ7LGmrKvZz4NP8T3A2vNRCr4X7EdPlZM1YQ0XA18HXtrI3h3Fz++MwrlkdPLlK70UEUcWKX
	Nz4wkvn5GUm192m0VO/bUnALYb2uwW8wV4WzhIFZfETaVLQ7rUCgqSd9/TKDZVf3aiiWW/UjxcqJx
	xmprF1tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS5ty-0000000FRYA-3DdI;
	Sat, 14 Nov 2026 05:02:10 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS5sx-0000000FQO4-3zBF
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 05:01:11 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-3b0ac1900efso312633a91.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 21:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794632467; x=1795237267; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7aG/eE5olsJwInv+bEoP1V0eDG7IVNV9VWAhiP+RMC4=;
        b=iZnIxVtKSYp9LjwYy/+AP8DQ2SEtVhdwt19g5FIiYsNs1/XThu0kjpDjTciE+/I4c/
         YMeg9noWcOase15pmWynsTWm+OD7xr1ytqSVhNc0SeNXLb8dDjDyn9eygYCbGDImQa9e
         JBerLTEj16xVF8gG6SmU5SIBLP+TB/kyix+5IPVvIqJX9ZJ6DU6Vb3c5dEEbGuZ6oWlw
         fp+xuKhsx7qWYyxVvATwygZ01PdBZxy4N8E3HobTkI2z2VT5k+m1puLzemDGGF9sTZ1T
         00GBD0pPbruw+SdKT17fOsIFXd7IBA+B/VM2jEQnM4SGaHXILBXdrMIm9GLKPADiWSWE
         V+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794632467; x=1795237267;
        h=mime-version:content-transfer-encoding:content-type:message-id:date
         :references:in-reply-to:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7aG/eE5olsJwInv+bEoP1V0eDG7IVNV9VWAhiP+RMC4=;
        b=OxkOfj9mQwY/BCGEn/riONoXEZuA9UwzB3tE+f9Q5FUrDvEgAsJVU0b04Tv/TVP3Zy
         ugH5+mlmMu2quvEUm6EGM6WQcVGKfTZY1bxq8Qt1BgP/Tfehym9c2CBZvVNf7cdjJmas
         /eW81Q6n9s7vKH0YnaZAcsn9MWiNnOqQC3wlYnH69KXFb3c2mzxJDvphet93KInGeskY
         Z2BSIjpjzX/Wi+aCEFDCcsbrnmqaRnk4c/zFcbC1xuo6pM4FMzMuBAaU7HQI/FSas565
         f9xkcWqys//fRZ89DijvxUPlV4xVtRqHO03ZFISOzLOEow8lUAQ5GJzi2ePT5gR5Tb5C
         1TtQ==
X-Forwarded-Encrypted: i=1; AL+hErG4gvu611wehNKCsFS9GTmlKkPXUtpUkXX+EXwD98CYFC3qAmn15T3lND1YMNlcftVaH7jPlguU8AG2QT9ACg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+ElC+8DJzy3PfYQeL8x3GcA/DnD4YoJWm1ythRKOY2e1D3AVeY
	vLNKRiaceQTU3PY6eS73i5yreiwuZiby26O7GquUsxBBgmJ/GhRjMYY5
X-Gm-Gg: AYBFou1uIYOSHm7/tamttNvEveNoyRdhHOxp7Dot0JPKU8ZXQi5upK1MVoysiFOtmtH
	qSaiHoM8/d8UO+v+4I0mbOQPMSF/T4dtTX7TqiCzSzIsOL8/u0S6EGT8xZKM0NeEWORtfahHGJi
	G+AU1ng1LqzESnqHKD4tK96KdMJDl3eQllFn2DUT9w1w5LvPoN8yDC6BW7K1ev2OSSg5pDJWTVj
	NPc5LblYbi6iO9oqSatZClo8rXq88auuzAbHJXM7SsV3fM1kmQVUqeO1FFES583zde5DzO4jdQI
	qujua1sw7nx3mlKdX31nXutCvh2OWXMZ8OPdgYZpoQ2Fb9db/zXIhpeoig75DHzs6o1MD9yZ+xO
	SUNEVfrrQQtlMn5l2tYVzhIO05oj2ju693M/WkJYDzhtL2z7FSEpE3ECvnqp/+3QvlgfUxWgXFv
	VHh6NfPG/5O7M3zGvx0xxC84iQO4chr8EnTq4LaKHPQn5Lcp04IGOWO221XpIDgMaN+csPXXPbY
	RWLuS6oUYOAnOwQPjEdvQbbDxwOQnagQJEypnymmKEJKLWBoMlzPVNy5H/Ge8zhocmrqz2NrvWa
	GCVNuipjH5d7SC93Dv3Ng4PivwRBNYopL6IR+vBGP6IXWDE4l7bznvV8VlCRpxpHS5z5P8db/g7
	pcXQLzRwMguEJd5JSJvo12A2vscA=
X-Received: by 2002:a17:90b:1b06:b0:3a4:c895:570 with SMTP id 98e67ed59e1d1-3b1b0a0e7c9mr7131064a91.4.1794632466846;
        Fri, 13 Nov 2026 21:01:06 -0800 (PST)
Received: from claudebox.iyengar.cloud ([50.39.139.68])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cdded58a9b9sm125917a12.12.2026.11.13.21.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 21:01:06 -0800 (PST)
From: Arun Iyengar <aiyengar1990@gmail.com>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, hverkuil+cisco@kernel.org,
 Jonas Karlman <jonas@kwiboo.se>,
 Sven =?utf-8?q?P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] media: rkvdec: Enable multi-core support
In-Reply-To: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
References: <20260810-rkvdec-multicore-v2-0-986f89d22cdc@collabora.com>
Date: Sat, 14 Nov 2026 05:01:04 -0000
Message-ID: <179463246494.3611640.18079808669048880957@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_210108_048049_122C0B9B 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
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

Hi Detlev,

One more data point for this series. On top of it I have one stream
decoded on both RK3588 cores at once through the CCU, as the Rockchip
BSP does ("soft CCU": each frame goes to the idle core, and the CCU
holds back reference reads until the other core has written them).
For a single 4K stream that gives HEVC 227 fps instead of 130 and
H.264 121 fps instead of 67, bit-exact. It needs two v4l2-mem2mem
additions, so that the next job of a context can be scheduled while
the previous one is still decoding.

I'll post it as an RFC once this series has settled, so it can be
rebased on what lands. The code was developed with Claude (Anthropic);
I review and test every change.

Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
