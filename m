Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D892EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 13:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5volDAVWOksVHF7tNNUyWW3asRkQv9ABPjJKo9HWYg=; b=Pkc68IzXgG5Is1
	4AWYc7Zggqd38A9VDYPHBfWsR/IGQiFrjNeAhkiY3GnvGmCYjg/QGA0Qul1wDq9yT8I404JXTZVSV
	b/3GGER82R3DuX5g/xh8tRoPoIXvlzhmUva4PFiAZQjdRllcNUZK+wLmi9lz+DmmXNbnyKRjhn+nV
	CTMzp7BH+wkJJfmHTSWyytab5PthFMU1GTc4Pq6Ny+jjd9R0roTaixxNk/teXrINgdaOwYDJeUSJg
	Zo16Mx0npb4Flz2wrGVjIlGyrXcNvlW5ZFzVvdDUw8ygPtA7NF3NsbZJPrpBSLFHhbfyCFAlpC/5o
	CpTic446OuG2PG4IsihA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA9qr-000iFr-1V;
	Fri, 16 Jun 2023 13:50:57 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA9qo-000iEt-2s;
	Fri, 16 Jun 2023 13:50:56 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-25e7fe2fb51so520911a91.2;
        Fri, 16 Jun 2023 06:50:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686923453; x=1689515453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DZSMsfjHYkbv48QukJ7afwamMn5a+T7mg3WCsl3VYqo=;
        b=pJEAs8F20r47QcdjnJY4KALVQvbGF86ucToy9Jp3IZXEn7edd5IdyV10zYoYBxW4RK
         n303rc21hGLzLafU6pVBA5c6oCPF9vBPdVcA6b5IDGgH7g5xqqdmwnON0wtHRsoy8vlC
         SlKw8XKBGX9Zh3eNhze9D0+Mcin+0iHqjyP8Ed4L298pa/TiY/NhSoNtmdBsrSKnvQ3S
         mYyIrH7hzgxeEO0ICUZ12H4GP/Pho0D5S6BjzuPJBI7Yzw90avLkl5beM+hAlT7D2vB6
         DQ1rpUASmrgucFfojxJ63xqGUZNWyNUnJ/9fhO6PuF2NAajFr6F46mIdiyg+C9FmE7Qq
         VrCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686923453; x=1689515453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DZSMsfjHYkbv48QukJ7afwamMn5a+T7mg3WCsl3VYqo=;
        b=CVvs7e5PtZ4QB0UhTV8m1y+YT2WHpwFTsX3R5YCAwYU+c2NTLtZ0qgzAjkPJICj4Aa
         ulXXr2+UCnRt+ILy69pdFmL+sIKltzGIlj6bmNKCbc8ZOwAIfa3pyHZYvYXCF9TW2gKk
         RwQ0A/8CRnMm25q0ZGIQiDxAhB7sRT+cmhKCNfUxwN1gTjXc1Ij2WVwG9XEImuMLLOOX
         LURWJKKxgoaxg4A+gB15hf/upq59pNqjX0ToHOdX2zHyGA6V2hxa1IvcPot7xbMZwfdj
         pwr8TkNRZIZh4D485y4vOSCLtEfAKEcqhrGD2cyan9+M55V2wr9WiUT4knEYDliONWyj
         xlPg==
X-Gm-Message-State: AC+VfDwuRLzLnhx65RIooxbMAk0RZpPoHljZSL9MARcD5xvFSj6kKzrF
	HjVtlm5h559vO63QZeACjGthFkIDPTSySS+8ZLQ=
X-Google-Smtp-Source: ACHHUZ5K5CXGV94bxSHgTvSnRBnDdUt2EDVt6IkdoIxbkSmxIlctam5o5kYMV7oHVLeLb78IbPkgIqT9eHVcxVZEC6U=
X-Received: by 2002:a17:90a:1999:b0:25b:cccb:4b8f with SMTP id
 25-20020a17090a199900b0025bcccb4b8fmr1473411pji.44.1686923453255; Fri, 16 Jun
 2023 06:50:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230616062101.601837-1-s.hauer@pengutronix.de>
In-Reply-To: <20230616062101.601837-1-s.hauer@pengutronix.de>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Fri, 16 Jun 2023 13:50:42 +0000
Message-ID: <CAEwRq=qze2NV5emMdohTPKK_UfSVMa2wmPNS2c2zzNqFVdmK+w@mail.gmail.com>
Subject: Re: [PATCH v6 00/26] Add perf support to the rockchip-dfi driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>, 
	MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de, 
	Michael Riesch <michael.riesch@wolfvision.net>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_065054_925970_D79A70DE 
X-CRM114-Status: GOOD (  10.04  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gU2FzY2hhLAoKT24gRnJpLCBKdW4gMTYsIDIwMjMgYXQgNjoyMuKAr0FNIFNhc2NoYSBI
YXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gLSBBZGQgbW9yZSByZXZpZXdl
ZC1ieSB0YWdzCgpDYW4geW91IGV4cGxhaW4gaG93IHRoZSBUZXN0ZWQtQnlzIGFyZSBoYW5kbGVk
LCBJIGRvbid0IHNlZSBhbnkgcGF0Y2gKd2l0aCB0aG9zZSB0YWdzLCBub3QgU2ViYXN0aWFucywg
bm9yIG1pbmUuIElzIHRoZSB0ZXN0aW5nIHVzZWZ1bCA/IFNob3VsZCBJCnJldGVzdCB0aGUgbmV3
IHBhdGNoc2V0ID8KClJlZ2FyZHMKCi0tIApWaW5jZW50IExlZ29sbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
