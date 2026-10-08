Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BE7CA6014
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 19:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U4ek34jSD7ElOMjFlR9+xaSoeHwa3KWrvcFrAp5HuZQ=; b=PbTEf0dgVIbSMp
	RsGCqsFgGSGPqyx2/pe4IozJ8bX1dT+aTy3u3EdviqvMaD/onNoR2HQLI6TyNplcUrZyuC9mOvaQQ
	4vinG5D3O2ZXlQEz7vCwj33msqpj5QOqfOYkBldJ757gwQtTnfn3cubOSyTBhYexL9KMEQgrfrt8q
	mrNeXYiPqLcM9FODwpRpQKyMASXHLfRsV4Ll2MRzWGZ0YqCfEZb88IbB9doxB2WqJqToEJH607qs7
	aajU4lxjq47rhQa9/0B0bheg7Q+oEkcGXn34bU45SWldx+xd3Q3CzMY2VLibMiZ6EkpToMBLsWMce
	ZhuzKFqZZ2RrGsb8aPdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEtdQ-00000004uoV-3gYT;
	Thu, 08 Oct 2026 19:18:32 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEtdN-00000004umL-2iHi
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 19:18:31 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-35115b52125so4488682eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 12:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=google; t=1791487109; x=1792091909; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pOSWDS5/Ihvyp+1XM6mV0GAPNEch8iMG3fi5kmx4byo=;
        b=NiXvfYF6KuZIiz0KW8pcBBYXtPyV0IXp4g0jG+jJVGZcV0ZP2x0A8MwFoM+aXyCNRx
         oTboFk5B38Ol/3vazgf9DcqZASMeYjSOtTULd0ogdVkY6c/BWVO0VUfnlxSkXs5C4fER
         W0L532fzhtxjPT5ieLwK+/K/shVxmDTy/q8j1cDBjdY09Y7CkWxzUmuygnjmKByFgVmF
         oHJvIdUphdbvwJLitaTrQvu+KvOr4325o2xML4rGJSOE3v4M0aHu+Vsj1tZgq1C8lxYR
         lfYlCV9t27P0k3Shd8ExbuCUV+1uDadNkdxc52iMvKZpr64dHpKLgYQN4W4BXcnZNPtr
         wY6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791487109; x=1792091909;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pOSWDS5/Ihvyp+1XM6mV0GAPNEch8iMG3fi5kmx4byo=;
        b=qrSKJd6BHBfBN0vT4efq+QlStse874hvJE6wzdk0z6suMWazS+SEkIzgjsw9GuW7p8
         EvhYzJuBkwLpKPg/RvCGV8nGGAXPK2pjZoQWNi1hv0tVEUbQ9Y4zx97Ul09NOWSk3vYj
         0WzKRu1myWkQkIGjlUHEtF4lzbNMcFCV+W4mwI0auqep9SRVUyosZPoG9oC1A9huEJ8F
         VAyr3zRv10SEGbLvuGzoWU2aRBp08/ewf5Db3k7RBMbSRqjLqgGc4ijIvwy/PCgzjNB3
         pwYeIne92WJQ762/3E6mLXuP7ukF94gbgs2IPLAbkzVyY4KsxprGXCYXTGqGv82g4wJb
         fVQQ==
X-Forwarded-Encrypted: i=1; AKwUvBx43Ca9Zh0yEDbpyUQgM5z+dFxdCji0NPQJOaEd4ut09EUxfBC4awRzPnbHwZEfWnWPsZAzm8aGd4JjN6ayfw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKulURVIS0VrQoLw8vsFf2wXmyiu7pcOqfUjsY7OJFegMtBFC4e
	P2i7RWc2MCCJZsPLOMadBmJ2D6EQd8ht18TZz+vyH1buRLp7E5Mku9HwAKXLd5yP7vA=
X-Gm-Gg: AYBFou1kxS0b1hvN0D9UFXFKN1yvVKBK0OJVzHrkufboSdMBiTONkmdV99TxUYwtqd1
	MwfWUjQmY87DA5cmrRjw2CQBTNG5PlNsLVkzIkQQs7+n33e5Jk6FusfpM9BFLSiSJqmwSvDDgxU
	FKWSvPpuGquQ8yK+BI5Xra3PcC6+Jgzh4NkXWas/eeGv3Rw7vCWK5+r5iah8Hftk4GlwmrgCxXM
	0BAj0/B2CsRoeS7fHzfqLz+in4HnqUyaXdOQJX/r1JMDOipLKrOUIi3J6CfhOmmdFvkorxhWoOT
	yQiPU84I/KTh0f2lSsGEow9oKqcoajKGzrtqV6H4Zp2gP+SnXO56IIvQoSzv3oyRVYL+OapMysZ
	RaQ28hWAhHqjv1OcfgJXZWC2GO2IlJrr8GM8o/M0bRS0+7FBvYD8hax8ZcDKpL900wbfEbmurlR
	8Mxp9b4itjBOsYTifKfO8bbotLW0WwW/7Qqt43pMwac9Ccfdmd9zli4Pqw2tNOXSe7a+NIJzHwK
	1/tEY5VIce2r0qmm4y4Nc8FvA+HUoR6b3HBWAPI9AJm9dhHIQqlPGXiV+V/rfaM5PB3LWUsXvKk
	lSxjUw==
X-Received: by 2002:a05:693c:8941:10b0:351:1f66:469b with SMTP id 5a478bee46e88-3515dc54ec0mr7434477eec.2.1791487108233;
        Thu, 08 Oct 2026 12:18:28 -0700 (PDT)
Received: from localhost.localdomain ([2603:8001:5f01:8bab:bc88:5ec1:4f8a:5b23])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537c841579sm117933eec.4.2026.10.08.12.18.26
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 08 Oct 2026 12:18:27 -0700 (PDT)
From: Artem Dinaburg <artem@trailofbits.com>
To: stable@vger.kernel.org
Cc: Artem Dinaburg <artem@trailofbits.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	Marco Scardovi <scardracs@disroot.org>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	jay.xu@rock-chips.com
Subject: [PATCH 6.6.y 0/2] gpio: backport CVE-2026-53226, CVE-2026-64241
Date: Thu,  8 Oct 2026 15:18:19 -0400
Message-ID: <20261008191824.98662-1-artem@trailofbits.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_121829_707612_09DCCF43 
X-CRM114-Status: UNSURE (   7.91  )
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

Hi Greg, Sasha, and maintainers,

I'm working through the smaller CVE backports still missing from 6.6.y.
These 2 upstream changes belong together for CVE-2026-53226,
CVE-2026-64241. They must be applied in this order because the later change
depends on or completes the earlier one.

The complete series is already present in 6.12.y, 6.18.y, and 7.2.y.

Could you please consider this series for 6.6.y?

Thanks,
Artem Dinaburg

Series:
  1. gpio: rockchip: teardown bugs and resource leaks
  2. gpio: rockchip: fix generic IRQ chip leak on remove

base: v6.6.157 (79643295eba17affbd16ca97f3ef04c90266b28c) plus stable-queue
revision 958ddf240a33ef26b1771be944f0ea6c3b597472

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
