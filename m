Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260F2606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 15:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QcDaaLyX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=QHnCCBKs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QQuaalLkaP4pRmIpvNqWkpmc7BDy9P3m/wZbyUp1AEQ=; b=QcDaaLyXpRAUflOcw5wDriXie9
	vfR6n41xnJfEkidEdOBLzjkszbebidErRT+PXjcm8v//utWN/MmLhjGnvPxNnPsA4Q6XZG5JtUuxa
	nh4wBfgHsaj7l3DIuLRtQ8eaBOvQfzhuc/a3Zd8UPoES9ZmVPfJYxgyrLx2GBLmuyQYjH6aLqb3jV
	hAitNXngxhysAViMjR+8krZ67L4+SzxS6j9NlJ6cbWq/36fiVmpIz7LpOM/B41dudbg1xGKNsGF56
	dV0Txd/qmAp6GGuEwPYz+pqMjqnh9a4DIFuDE6Toodut9dA4JNrNWPdOOo4b+OzRHJH0w6Lq9FoK3
	tNLNrn3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNXjM-0000000EdcR-1OwC;
	Sun, 01 Nov 2026 15:44:24 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNXjI-0000000Edb9-0hIh
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 15:44:21 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2e60f9af6e6so20699055ad.3
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 07:44:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793547859; x=1794152659; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s3FlG17r0XFRuydckmuTT5yPIYEc0FuY2CChe1Jf4cQ=;
        b=QHnCCBKs9RVzkVBy7JvbKQfPlkkXRvIsiJj5a1FvBlFCQJIJz1Aq5A8vagCzqsY+O8
         WWhsv+z2Tu9rPKdEV+wilxm/m54crz8mEwexVLP4KXQ+WWNuJm8jTZJCcP68sH1n+OWb
         IhLH2z749OlXViHOVAbF8Qa0gFF2ich0va2NcHRtJ8vihegIflYqxYid1MmIyZyJyuKj
         SZbbmvEBqBTqicKRfedBa7UbWUiDAoqLgrcv7iB09wq22lol4wlroOJ64tYvAMozg0uQ
         Mb2oGXwpt8bQ5qCakj2zy/ZCLlOTnnczZaIq9/+bVZjzVOHSM9wm/zc7gtvxkf9/YkoD
         BqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793547859; x=1794152659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=s3FlG17r0XFRuydckmuTT5yPIYEc0FuY2CChe1Jf4cQ=;
        b=WfiSZ1aVxOtzluUNxQwL/uJCxmu1xEVuWdyruBMZsB+YAeW1aJuuvJxlMlTUR9lNoD
         vsrd/aS2O6E2SzlgJh8kDHmIv536IjXQqznTjw9HJNIGakINmyZQ0NHCcVBdhM1zNSf8
         qbDVyCdbI/V/POFwYyyug3FEvegCHpREOiecYg4r7MCm77C7aMBBV4HgiBsmKsPuCfCn
         o8fIHld4TMgKEsCK9egEMGK0uQlmR1PllYi4dvY1bzzOUjiGSq39LIMVPvCYao/Db8Ay
         /hZ1PnmEOZ0WJq6rxl+TB7BzzG5AJyZQI/WNO9wxr7rwjK5+QKiyLqebPUVkvj68OKCy
         tMkQ==
X-Forwarded-Encrypted: i=1; AKwUvByM3yfwLX+usNLgtMtunYLqcFrqgy2EqEkUKlnJarwMF/dkSVBOCHtryRVvE2njnYSc1TPLEhbfhA5X2letyg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Zppr/dlyc8ptXUZ2p7tEQrqgygjCbaI4/CUpfMmqGHsxiwJrL
	DRdDTjnyK9pp4H3cJONfhUwc75+xv50dolYoL09aDAekBD/pxzMb6iWB
X-Gm-Gg: AYBFou2T7GblWYxo53HAljHvX1KvbNxIXGuydgn/tb6XYKeXKQM1RKlGOLsQIKe83MJ
	eNXY5u2mk++iUcP/rWP+kUx7IHpOCAaO3lwWYkaiTq52ZxBItR5xP1KeiseHaVIkGdi8y+fI8eA
	YcWe+zTtOJrh1ih+A7s23SB9nQk1XwdBmEUOHhjPiX2hLhVZAB2DhMhwt0dVHbTFi1UNZwN9BSb
	mY4tBQOO3hU0kBFObOqKeHZM1PaCLy7f9kHiGto3uHNqBKGSsnrEaT6lkofFTHIPxdlEwKXpgYQ
	WNb2yWDZbN9BGGjmAlYEqZ+RxZhfLmQj0OhZAj1kRoIUBCJHkOt31au8S1L7UdaF7haChXZZhWz
	yZu3jLku+F7yNAfvKxTr2uK2CAsHfJyYSD8MZhKyaYjJ27LMskWaTAIn5ivmt6k8UHmlS1FYz/R
	RfrLuPOGsEUrVCBR1jLymyOrTNu82ef2BvIokgDbQXsiRxrq4ue3wR/1q2b/PVVR5Dzo4XB+2PP
	NeBy2JI3p6/bEwfD9GpqEFO7KkKyhS4H0iX7r9w0tqmnGgFoaU+P/DSI/WTTTQfdgSfIBqEUGYd
	gaUHA/t6gg71sp5HOKDEuFNdZu89VAKSk4Q5ubnm/Q==
X-Received: by 2002:a17:90a:c88c:b0:3ac:d79f:8229 with SMTP id 98e67ed59e1d1-3ae8984cf7amr6490533a91.61.1793547859268;
        Sun, 01 Nov 2026 07:44:19 -0800 (PST)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ae6e2a703esm15058401a91.0.2026.11.01.07.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 07:44:18 -0800 (PST)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
Date: Sun,  1 Nov 2026 23:44:07 +0800
Message-ID: <20261101154407.3949-1-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260922055011.14972-1-yaozhonguwl@gmail.com>
References: <20260922055011.14972-1-yaozhonguwl@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_074420_226915_977F83BA 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Heiko,

Gentle ping on this one. It still applies cleanly to current mainline.
Please let me know if you would like anything changed.

Thanks,
Yaozhong

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
