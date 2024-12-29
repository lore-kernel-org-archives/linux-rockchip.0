Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E749CE7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 11:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvT1rLJ2m5FKm7xq9lPx3kHhuJBtwKInKzXXd9H3FkE=; b=aW6aUdbkj5xFU8
	ZG55AhDEah6t+67oAqS1ZBTBhyRyTj7kvQfAMrBJI7ouJIkGjuVK1zcAVtbHAeFSi3dhThinmIaHB
	S/0DZAOC9Mf9eFkonFFZQalbgRr2dt6TwtSGBbKFWRxjDtBH6lT4Khmo+gCqnXUL11NhAQsWZ/mzF
	5hYJ3097+L80wbb/K+OMl4CaIIe1y/LAlg5y0aL7KIToH+Wi1qHAID9wicyW/P8OxV0YCNkSJdN9S
	OQzHSqF10VXNGrUvxYyJh9GxtpifmdPDQ8W1KZEgYJ90qUFhRApk8zP7rJoHHRyVnefWmL5eFn66G
	b9rA21ZG366jPj7FmB0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRr3G-00000003Iip-3h4Q;
	Sun, 29 Dec 2024 11:01:42 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRr3F-00000003IiO-03Y1
	for linux-rockchip@lists.infradead.org;
	Sun, 29 Dec 2024 11:01:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 98BFBA409F2;
	Sun, 29 Dec 2024 10:59:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1033C4CED1;
	Sun, 29 Dec 2024 11:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735470098;
	bh=HIUKol1lhJ7a6WQ5Eg6nWAR+OEd8LhPQUbSzdcQkHuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D2feMjbtDFMKAO1IfK3+OFmqOkLiVabCVcl3IoRQZuFmRMA2emmT0OltUSHcyZ8E0
	 M1mMNqUiN32ZaqH9lsb7niozAms+rnwJxyJldyQvBPJWLI8wTUOibEiEF9eFUHnPT2
	 LTU4xG6F5mml6W2+/5gLscFLjliCgY/XBTIYhl2oVlNZGueOG/johznls+rKmqmhvf
	 wloUsXL14lOJq92BC1B0xEo9YTaiLl/ya3ivKFizjE/HfsFVZ6PT0GxZcWonvGw+h/
	 ENh0JayomOlp//l8oy7WsACS/1+idU9az0pFypdPH0j2LrkBRhS1KNcichtV518SWU
	 hbJwFF1YZN3Vg==
Date: Sun, 29 Dec 2024 12:01:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com, 
	liujianfeng1994@gmail.com, dmt.yashin@gmail.com, tim@feathertop.org, 
	marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net, sebastian.reichel@collabora.com, 
	alchark@gmail.com, inindev@gmail.com, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
Message-ID: <2qhpltryco3yqzmiu42ojf2wtekwevikxrt3v6myb73izzgxc3@6wq34glt7rmo>
References: <20241226005845.46473-1-naoki@radxa.com>
 <20241226005845.46473-2-naoki@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241226005845.46473-2-naoki@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_030141_132167_B43D5149 
X-CRM114-Status: UNSURE (   7.38  )
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

On Thu, Dec 26, 2024 at 12:58:43AM +0000, FUKAUMI Naoki wrote:
> Add devicetree binding for the Radxa ROCK 5B+.
> 
> The Radxa ROCK 5B+ is an upgraded version of the ROCK 5B based on the
> Rockchip RK3588 SoC.
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v2:
> - None

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
