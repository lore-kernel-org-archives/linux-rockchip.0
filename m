Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6960C606A33D
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 21:46:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=FB8IuOUM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=e2aFpoLG
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d2Jf8BArWARYB8f+BGfzZAjiPS1qf1UcDfdDw/ZKymA=; b=FB8IuOUM+n3+/GYQTzYfHT65cl
	OsfAz91HyPERVVGxO2HbPpJo9+uTMJDJj2jrMERuzJ2khPXOaarrbZjs+Ol05O7epDcoZahcar7sE
	mI5IYHhjSdx9lDc9o7Ihg1xFzK9NURLg7a6YXZ4xuJK4KU1PK+hI8FQaNNZcSYXy9hV1GOhyzoV35
	Y6NTmHVfdFfBZkY99qLnlHicxO6hmW8AJELn0aDtj9FXefVJhx14f47oWG96P0k874EKlRP8recsW
	Q08cI5xw9x278H21aQo1mlclcMBrr4w4Xwo21PY+7kqvZLLU3CeTHvFS1ovE59EPt+Fqf616yLDtc
	Eyr/iyyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR0B-000000079vs-3m1d;
	Tue, 17 Nov 2026 21:46:07 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTR06-000000079ux-4BHs
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Nov 2026 21:46:06 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-4bb666304fdso11329845e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Nov 2026 13:46:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1794951960; x=1795556760; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=e/0455aVSKf4ZqTvdu8SIA7Syq8Dck34mc+Lxs2NK9Q=;
        b=e2aFpoLGnaJekC6GOzvpdisKS6cWpS4//QaRIneEa8dyYPdZuEx4xpoJAmLH7/2ml4
         6gvvOi6BuiWzmABnZgsiw19+DES/VW2TlN5Kb3eQP7PKEMdrSE1RXanxWja6ihmATChv
         qqxXbJLEbna7D3te9VHPsmibmCUfCbf+SyultwqNM5Q5wcP6pi7Wyq67kRFuUnRnukVv
         uqRCxL5p7GU7sieHoCfkLaUh6Gy5iUSrBzWAomdy4W9/cYS2H5S3UTu/QpX4Caw6Gzjt
         e3fFBGlV1A51g6KTl/PvcaPgce5J2XqbiebcypXe7SZ7WPxu2cJ+NIagEGRhwvdh1iT5
         AI7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794951960; x=1795556760;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=e/0455aVSKf4ZqTvdu8SIA7Syq8Dck34mc+Lxs2NK9Q=;
        b=HJakkjYIqBNK4y4rkr2jlMsfmUUgk0vLsF8siSzM+dzTR89vuDjsZRMWIqg3xNZs6s
         fP1x3nKV/54G931eIxMfJSu59cttqdwEFRF4ccMHZBEHigXAr8tFGOhofnhbqCOSn905
         2EQi58EHABTGQ7AKlTR83PCiDO5jMwojA+NGZd+VFRUh6uOSi0lqdA4tQUYrVSiPKsY9
         Qg2zBkbLI2S6u2cqeVdUGM5QzJzAhIP6zohBJbmxKaG/Z01zzaNvYoy6JNjPeS9qvXDy
         UHPb8XI5sL4gRnw1WSg7qUCWrLJ3Ya/Xi3Y0jPrhWqsw9penN9ugJw+y2Ep3yATzayvR
         mZ+A==
X-Forwarded-Encrypted: i=1; AL+hErEkKS0aWBDVOMFMEzAHqRo/6WP4NPhJtqv2sTbctt7bfgm1qKT/ZO2iqgr8EbJzSpe06JfwWhadreX37azeWg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+i82R9r+M2RdFZR4B+dGzQW2z+JY6046CyjEkeQo+1i3OOez/O
	nS72aDXJg98HwgdFoufWZQ/PwdfXwb3LF+ytQSjv0OGlXrc2sb20YIbTC/ml0HWZleg=
X-Gm-Gg: AYBFou1Zt8IRn4p3f8vEevljXpmfdXY2ME7/mKqj14hhAgsIA8KN4Sn2Nwj6vSziGGB
	oWXBnssepLsTW/lDkWzj9IInpmpJ/GSXm/phU/7e9vY/sxQ+MaDoO2KTKdMye/BNafUT3D1Bqp+
	z2pPlIX3mfrzRjldQb/rn0qlv0GZQDN8Bnv6FJQbQ1FyJG+b9Ik4VQJV0Z8QHS2OyzYtipXFXbb
	jZJE4P1QBVVoM2BqAG2Ya//Gn/nDJ9OwFGSv2P9NEVGRaQ2dmikHR3I9cPr9zsrD0WdT9km9Hag
	x7h1vsis6yfctCbOM04f1Ql0fdQgRTZasISrk5KPI89Tw8yIE3Oum5KWe/rq5Q0/AaHDSSLCQ04
	L8wQnHy4VVYSODvKWlAv+EdO5Vhx4w2poOkqkqcdhB16l28OnkWUHgSt8/232pjwULjSY6PG5xF
	bx16OV14GTysNZVTsTprvWTmLLcIcE5WClFprIOzfpdO7gYF7vzWtF5vnqocxGynZVfYTlNGhrY
	hSjpWzZYBc8A1uAOqHnhYGt+h4PhNrtAodqJkLOdAO+HGI66lVcjWbjaRt24lYcFsifIAxOlAPi
	CXtrF9/Sc14BUjbWef9Lp+epUrvR/E9PU2HgiZIZhseE7Q2cxll4bRvJOKeFDahu4xnh6MAsoVs
	4XnU=
X-Received: by 2002:a05:600c:a54:b0:4bb:5fd1:92aa with SMTP id 5b1f17b1804b1-4bb7da30033mr10977415e9.15.1794951959287;
        Tue, 17 Nov 2026 13:45:59 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb7d28ec3asm15648465e9.0.2026.11.17.13.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2026 13:45:58 -0800 (PST)
Message-ID: <39614a57-c375-4bee-bcea-f0ebd2d0b572@baylibre.com>
Date: Tue, 17 Nov 2026 21:45:57 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] accel/rocket: Fix the IOMMU domain leak in
 rocket_ioctl_create_bo
To: Chaoyi Chen <kernel@airkyi.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>,
 Oded Gabbay <ogabbay@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
References: <20260814022453.437-1-kernel@airkyi.com>
 <20260814022453.437-2-kernel@airkyi.com>
Content-Language: en-US
From: Daniel Drake <ddrake@baylibre.com>
In-Reply-To: <20260814022453.437-2-kernel@airkyi.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_134603_049031_5F037543 
X-CRM114-Status: UNSURE (   6.59  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On 14/08/2026 03:24, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> When rocket_ioctl_create_bo fails, rocket_iommu_domain_put should be
> called to avoid an IOMMU domain leak.
> 
> Fixes: 658ebeac3351 ("accel/rocket: Add IOCTL for BO creation")
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Daniel Drake <ddrake@baylibre.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
