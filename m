Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5CDFC83F1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 13:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pH19ycfF8MMwU5Feo/W0kSx0WDNekINrjR6oGVeiYNQ=; b=s9AWzO8QYVdaQZ
	vH7tXhsNxidGZ6JgxJRQufJlAlr7tAago/WX0LPhSS4+TBbGKJeX6ceJLCwwMKnw17AL5Uf/Dw93I
	Cp+UfCILzhu7/ey2BKF+HdlwnIzBF5KJjNVwcja9n7kGzQPJd9/i4vHe21Wp0XUoxxXjdERvhuFOm
	LoADXMqqXauWmXiNDmmCEFYdNOl98+NliVKVSZm5Bsfcc/dF/sgEaiAyBf/NzVUo4OmCWubUHUPyR
	3eJFr9wogegeY9VvQ+1xgRZIhlCJ8pVQ1/hXNaQg9PfzaoIj3uObKqJZIicW3QLRNylUgHHLKwqC5
	hgA2nxEgdtUyJ5/9A0AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewMf-00000007YUx-0gns;
	Thu, 24 Jul 2025 13:52:05 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uesfz-000000078Fp-1zDe
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Jul 2025 09:55:48 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-45618ddd62fso8353235e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Jul 2025 02:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1753350946; x=1753955746; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkXB2c1oP/E/k06GcTgcZXpElzLoIFNZDVG4i5HTvOM=;
        b=ipEzVgTrMNszcPIQDHNGRlfD1Tomg1QNYDDC5cFGFxmSGXwV48WCHPYbA21KAgkQEI
         E3V1OssT1jXpmaklEGNUJYNlrqTsFnVFyV9gxDrYLMGGcvPmMuxEIpUjSJqHRId2djvU
         YlwbbtM0RE9+NaQrE1BkGAEnsxtgRI0Ypv92NG0rMch52cPoe1IaKpNFwi3Lgq34JIOx
         0D4B25QV9NCuQI7z6kF85GiKcjjdXjxjyVMkhSR7clWniLNj/GZTIWw4XqgLGZ7COWK/
         ZyY3hrP7QaDSGD2SKh3vkoosFtz/h/YjAUnfuITmsGy5DDFbwQnjvv0AE01JvlWI/QJ1
         4QrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753350946; x=1753955746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkXB2c1oP/E/k06GcTgcZXpElzLoIFNZDVG4i5HTvOM=;
        b=nEynvmp0qzt4CBIOXaJxF1++UDQKMn2SjZgqOCRYDfLzOiR/NbbBeLeK9YVlJyuk5X
         HNeA0HQEwYH75GCcbJ3M0Z3o1WNV7uD1C/1nKX6lpM1ENbdEkSi+yBRy/S/Ewrs1O9yf
         E1jNR4C0Vk7AcpvnHpVF81lsiY7/o+aHmREG7+FV4HbmHGu+wFaDA0JZeT1Td0+XVGTI
         fOq1/T94xQmyapQpAF7dRuVR4rKFxqpoAZ2NJRQk1FXmFc5JXKKpAeglw1SYB930+1RO
         q5bZoCnXLyjxJgFMSe+Bi9uKUUOOO4NGbyCkbWhmvdrR1WoK42c46QacbaZXnU9ToinK
         ookw==
X-Forwarded-Encrypted: i=1; AJvYcCWGn7hbMJYvXpE+SPqyGghfZHeuIcUH772X07KW/xWJ+mmZV498e6x8TP88+T7/survqoBzAPn9CPYinWE1aA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx/6N2Yv5vOmwxoNLg6Dj95X6pxLNh+XJRXnIDl1gLCgkwYHWzd
	Jv/2Bt7NrTyCVtnataN6nuhaUdznVlxcTJxKBC50/xeabU2+XB0BC8SXSmcVSJKQPYY=
X-Gm-Gg: ASbGncvg60ArzMsy36St2PCvNQMfKvkzbQN2sYKV0C3CkArEXyfjTuBq4aFhNoAkcDz
	G0P2uMnsV5qJAZv0B0ndXkymk5HF7YVoQyLZgtHq/HTu9U1VGkYixp00cU9N4u9fpoiYXLieJqS
	KN7hfbl0zOOjOET7bPheSauXwSf54TExlTWud0sX9fgLU8ca9ns/QvcbhDblcmJK8JWB/8xowqB
	31C5NCWWVIG/6FQiWfXKIS58zwaZ96O2MLxBSKvX26EQxl0PPJodBcnKQzB1YnZkzje1uPxez92
	EDj+uKP9KOaq5yg991AlhyVpimV3WTmxOrZhrbCiIO8W9vdI1YFvchg/izaFQZgsjy559Jip6u+
	p5+1FsbcSdGhNoDix2xNc3Is=
X-Google-Smtp-Source: AGHT+IGRP/pIwNEZN/YSf647P0VBiKuokrllq5cryuGfggOfcoyMAvsAeQOTeSXR8LCaWYe+gmrK6w==
X-Received: by 2002:a05:600c:37c8:b0:456:cdf:1ecd with SMTP id 5b1f17b1804b1-45868d76755mr53246535e9.31.1753350945830;
        Thu, 24 Jul 2025 02:55:45 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:f44c:20db:7ada:b556])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4586f88cfe3sm10532965e9.0.2025.07.24.02.55.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 02:55:45 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/5] rockchip: Add power controller support for RK3528
Date: Thu, 24 Jul 2025 11:55:43 +0200
Message-ID: <175335094187.68378.6716301267666015992.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250723085654.2273324-1-jonas@kwiboo.se>
References: <20250723085654.2273324-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_025547_510309_AC1EB7E0 
X-CRM114-Status: UNSURE (   8.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Wed, 23 Jul 2025 08:56:42 +0000, Jonas Karlman wrote:
> The Rockchip RK3528 support multiple power domains, one PD_GPU that can
> fully be powered down, and other that can be idle requested.
> 
> Vendor kernel flag all power domains on RK3528 as always-on, this takes
> a different route and instead tries to describe all devices power-domain
> in the device tree, even for controllers with unsupported runtime status.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: gpio: rockchip: Allow use of a power-domain
      https://git.kernel.org/brgl/linux/c/cc2f156a33278d9b23b5cf8f738c55c842d0f225

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
