Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1AFEC0755A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 11:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YI8hlR+z1dr+64d6hUf19tLlx1vfcg1y93at7Qwg6gc=; b=bAB5q4UkR4jy66
	LZyUeiz6tvETfSspvYQeabFovxzCNWHda7TWniJPlWOj1D1Ql8xNvRbPuMGj+HvvzpqzAlGVTnYU/
	gzZDfXaSBMvHLc+uJ0Hse47a4BV5FwK9U5kCM2q2g17xPpJPiV4YBgSh6K2cfH9GHrXfTrGIS2x3/
	3uQew8II/Y5qhX323J6pPkIVz6zS3X3zWpmLFpCHf65HQ9c88Yj2378DZ7YuXfQD+Bc5PruUr6qJF
	XUGvR9UXEsAxoAGPy46J3d5wG0P4XO9dnnFaw3isvcPsAf1CxCCi80UZkdOtKrpinJo9ef1YML/H+
	8k2wOtr3JvXWL58QhCqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7a58-002JC2-1w;
	Mon, 27 Nov 2023 11:47:18 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7a54-002IyW-2B
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 11:47:16 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40b34563987so22965115e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Nov 2023 03:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701085623; x=1701690423; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3tA3boN6EG4yS9sARU9W7D9LN4ahR4KmDV0zSEVrFb0=;
        b=rc6y1MKlhBkj33PKLJM5kVOhZrxpW2JuqXG6PdO4EXcfkBA51PvfCNJIi+gK3HhGZy
         D7Zl377n+nOuwmIyhWaXJY0kMrUcgb2olcq9gw802HeYHd7Msqg74Bs00AmYQVWJUzZ5
         zMyXRMqmcR/SMZnVdyP1+rxFxmckjgFiktPZaXdhkrmebz+q0usyoWNbpiytGOXXiXUH
         pXH2PFK/H2kgm88r6NDs9i7PjONy5Q3wwa1HlpH6Q+wGmN4n1oAyS13PwyYO/oMr7Qom
         YIfxu2JrwBu+tvnkZqdk2D4t7RS/bqdzt2Ys4SQpbxA5D/R4XiS1ddOjFyTo6fdUOK96
         IANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701085623; x=1701690423;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3tA3boN6EG4yS9sARU9W7D9LN4ahR4KmDV0zSEVrFb0=;
        b=T1+2zl/loWWGgNyHBFVLzuJVOv04Jowf3j4cZgLUIOQNeNYdNEn0aL67TR3jfu7oZp
         C+E4yxiIr5XGvHvHjpnXoH+1QBuzt+nNBSWwjWkmDmJq8Yxx54bBM0N7wAOZzt60GQVH
         xP1LFnsV3SSuCjxRMmzETTDZO85ecO5OWgMudvz4tJUaV2NfGWWY3hzknnKgpW6mh2O3
         nGTOE7YGVhqhshzZp1jHQawyNsbZNgOYKuMurj0byOyovSkprgx33vxJFhmKbg6s9JUC
         wN0Y6NYraG+GiQo5xGF7phX3ytyfPNVfbcnjMf+QuQFd+KHWZLzWIwQ06bVGmCYXFiqT
         KqEg==
X-Gm-Message-State: AOJu0YwEcJRVG/nKkM6ACMMIFAvOoowlM3CEoR+lrInZxupGVQg5zejf
	Irm/CCFk6mdUNyYKlO9IX4BvcA==
X-Google-Smtp-Source: AGHT+IHFHh5s3DrJkF+ahST3zPitBaks2yNwrnyWDMDsu2R3tzZh+/mmIzmyi63lGqBAWzE/QyPjfw==
X-Received: by 2002:a05:600c:6d3:b0:408:37aa:774a with SMTP id b19-20020a05600c06d300b0040837aa774amr12532754wmn.17.1701085623387;
        Mon, 27 Nov 2023 03:47:03 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id s8-20020a7bc388000000b0040b4562ee20sm1681859wmj.0.2023.11.27.03.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 03:47:03 -0800 (PST)
Date: Mon, 27 Nov 2023 12:47:01 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: Aw: Re:  [PATCH 6/6] crypto: rockchip: add rk3588 driver
Message-ID: <ZWSBtZAwn_58UtcD@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-7-clabbe@baylibre.com>
 <trinity-a0ee3146-f23d-4f6c-b29c-5fe446c4d4ad-1699797868421@3c-app-gmx-bs50>
 <ZVtVkACNHTcCjqGp@Red>
 <trinity-a9a71294-1396-43e4-9ed5-9ee2914ef093-1700838301802@3c-app-gmx-bs48>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-a9a71294-1396-43e4-9ed5-9ee2914ef093-1700838301802@3c-app-gmx-bs48>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_034714_722508_AF54F2E8 
X-CRM114-Status: GOOD (  11.92  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Fri, Nov 24, 2023 at 04:05:01PM +0100, Frank Wunderlich a =E9crit :
> Hi
> =

> > Gesendet: Montag, 20. November 2023 um 13:48 Uhr
> > Von: "Corentin LABBE" <clabbe@baylibre.com>
> =

> > You are using kcapi-rng but the driver do not support RNG yet. (and pro=
bably never if I continue to fail having good results with it).
> > So it is normal values does not change.
> =

> which functions does the driver support atm? or how can i test correctly
> (and which kernel options i need for this)?
> =

> regards Frank

Hello

The driver handle AES(ECB CBC XTS) and hashes (MD5 SHAxxx and SM3)
For testing you need:
CONFIG_CRYPTO_MANAGER_DISABLES_TESTS is not set
CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=3Dy

Note that I have already got several report of random hashes tests failling=
, but I am near to have a reproducer.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
