Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCBEAC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FP2/7g7tkvX7krqnspYn7+aRN3qZ92ENXcQjgkJ4p+Y=; b=WaTdmCyYntYNy9
	MjuiiX/ZSp7AES6A9NFStJgXeq3pPRi6ugu5pv7TGIY1TwENATZA0l/xXjd2ftcsObEZi4/vHFYMU
	hKLvTnYTvzQs2GhUmQknpQwcasSnsJf8a64HsJfTcDTKasNZrsqbpS/5aGWwAGGq0hGmSKoXjmRJc
	/mm0Dt1WAwf1Ar09muOhmjJb6iGzZQCNJe8E1BPK4bReiY4EnS3QWegl1FMB4St39EDLdnBnLSM1/
	WivNNvZofdv8hEjfhImcCRJWcIv5t+Ri+2cTNiShB7ni7zs8MqzylHWm6TjKb1ZISKmqT68/1PLx8
	W/nexUfQhHIELJdtaqrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7gN-0000000AVVi-2Ub3;
	Thu, 06 Mar 2025 09:38:23 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7em-0000000AVLH-1gZh;
	Thu, 06 Mar 2025 09:36:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=mwIHqJhzWOIGkgEUzYfhXvf/5Wj1KtqzXbEu8SG2luA=; b=VtRtzjUcqxW3aHvvSS3oW85Vj3
	mr2danVnOnFPYQnhKz3yAwBy+3r7iizaxsnY/yAhd10oNCk3BTmKH9e2SYrawGKt5zrFAx5YNHSzh
	tfVSAR9Egb88tUzJbKC5+FQcUlQHRzdk3j+Hvz2Dl60h48FLqZxF1eAJSijbSGGMZsW6zCDN6Yw3m
	Hhv8jELVkzB+MiXHpsPeww69r73SchEaZdHL9ekMN3mODS5ft26jPAXJ/cltVKJE1J246OJwrWfpp
	+CIQrXl1EUXOv+ogUr76LAlMZPCiXzOVexFFyyvK2l1WZFPGqP+gwgOjHvwbKg0JrbehyJXCM4cjk
	62/UsgnQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7ej-000000079mh-163m;
	Thu, 06 Mar 2025 09:36:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 570FF5C47CC;
	Thu,  6 Mar 2025 09:34:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED55AC4CEE2;
	Thu,  6 Mar 2025 09:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741253798;
	bh=Osg4Vntdck2fVcOyCIRV4uD4gndHJmCxrvfUHS/l3Hc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J2pAfj0bUJGCO1GHfX8jLU2Ogzt0wHjo4X9Nz71bcOikYoXkWKFObwDpDTQW8h1a0
	 HikDodnBOpXLZodtMNdYhl0Rg3Kr57JpeLS1/YE58sOfzgZ44XGYmQbfZjJq3rGYoe
	 DeAzhiQXgqFyuUG3cxOitoY5kUqHqYgO12O58wePWjb7q/tYleGqEUvVasxfSaZnEt
	 leolnzzv5MBgE9NqZ1mWyNgawdACAAiQMxzkTbQ5J4ONU8s+1FMMO3m8roDP9aFc61
	 QGmpJ6NxNKTNDwGFb7A6fUWWj+JXjYDEoSBG+py9DVmvZRcuIxN/yMKtSQnEo0aAyD
	 ihYQWZ/Uhenpg==
Date: Thu, 6 Mar 2025 10:36:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, Yao Zi <ziyao@disroot.org>, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add compatible
 string for RK3528
Message-ID: <20250306-frisky-spiffy-bullmastiff-ad9e49@krzk-bin>
References: <20250305214108.1327208-1-jonas@kwiboo.se>
 <20250305214108.1327208-2-jonas@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250305214108.1327208-2-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_093641_445457_C6EB80CC 
X-CRM114-Status: UNSURE (   9.03  )
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

On Wed, Mar 05, 2025 at 09:41:02PM +0000, Jonas Karlman wrote:
> The SDHCI controller in Rockchip RK3528 is similar to the one included
> in RK3588.
> 
> Add compatible string for the SDHCI controller in RK3528.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> ---

No power domains here? Post complete support, so this won't have to be
changed in near future.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
