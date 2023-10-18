Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82C37CDB482
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 15:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcqFOTMMFFhL7MpyXwRp5MJmB8BWW0XDzprxfvu+V2o=; b=fS8Jt/nvBOGpB1
	SphMRUhiLUHW3kCoL/FHtTQy8lx1ukgpxoFNvxGiCkOiBnINbBQMd9ezM+nohV2rZDjXZUf5SX6Gb
	nPPx6N4emTs0Rk7bQrhYtzVUQdYnzsTcWA4d3jpdmQqMbrh1pI94c5fWNTC78qXj/MVzBckPRv81h
	Oh5gqL5pmsMeW6HY/J3rCD32ocVZAYAqqN8jB1e0QKCUOcLh2wcQJNQN1J8yiH1wrorrAeKbXQk1g
	cL0DRkShqt0Xifp1ze2uyZft+HHecW8Aa4Idt9vV2AKWxf1ZHoGVR+aCsMMwBOT6sSnuKYah/9J9o
	iz29UbHd+kyd6ZljzUTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8MJ-00F1mP-1X;
	Wed, 18 Oct 2023 15:21:19 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt8MG-00F1lK-2F;
	Wed, 18 Oct 2023 15:21:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 3C726B823DD;
	Wed, 18 Oct 2023 15:21:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECACCC433C8;
	Wed, 18 Oct 2023 15:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697642474;
	bh=LYagyGRuLOJIx08cI88zPgXWvrkcS7iNbLmlFxrSclU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZLnIhd9wqi3ayfSZPlcIMGhn5cH+ssUY+jlIdiUjagca/1sntsjihy6sAyb8buY9i
	 t4GDD9OTHBDHbhtx/M5Maf02ICkO51Fdi3uVKmLJBaBpv0pjue7vHK61ZyOnsTIIoC
	 B12j9Szlhdcd/G5cbrOEGnML4dHSZnOY0wQUf2qbgvz8AIu6QIdCgQugSASxV+vsDv
	 m14v6Z30satjrlNduGH3eSKZu5N+PorzNuckMElrfGxEw3OEQmkHgmVUCWPqE+eWQE
	 73tHO5fRAQpY7Su4FJRXizzHo08si1lXn7/jH0hbEB0IGzsLhRQ2ZyrnAUtu/dQsxL
	 6nY08XHyxiuKA==
Message-ID: <6e43eb6d-351b-4c32-aba9-65ee5b8fd0ed@kernel.org>
Date: Thu, 19 Oct 2023 00:21:07 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 00/26] Add perf support to the rockchip-dfi driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Robin Murphy <robin.murphy@arm.com>,
 Vincent Legoll <vincent.legoll@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
From: Chanwoo Choi <chanwoo@kernel.org>
In-Reply-To: <20231018061714.3553817-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_082117_040717_8039539D 
X-CRM114-Status: GOOD (  15.21  )
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

Hi Sascha and Heiko,

I finished the review from  01 ~ 22 patches.
- 01-05 patches are merged.
- 06-22 patches with acked tags.


Some patches modifies the 'include/soc/rockchip/*' files.
After getting the ack from rockchip maintainer (Heiko Stuebner),
I'll merge patches from 06 ~ 22 patches to devfreq.git.

Best Regards,
Chanwoo Choi

On 23. 10. 18. 15:16, Sascha Hauer wrote:
> This series integrates the recent review feedback from Chanwoo Choi to
> v7.
> 
> Chanwoo, I am sending the full patchset again for people to try this
> series. You said that you applied 1-5 already, so please start picking
> from 6/26.
> 
> Sascha
> 
> Sascha Hauer (26):
>   PM / devfreq: rockchip-dfi: Make pmu regmap mandatory
>   PM / devfreq: rockchip-dfi: Embed desc into private data struct
>   PM / devfreq: rockchip-dfi: use consistent name for private data
>     struct
>   PM / devfreq: rockchip-dfi: Add SoC specific init function
>   PM / devfreq: rockchip-dfi: dfi store raw values in counter struct
>   PM / devfreq: rockchip-dfi: Use free running counter
>   PM / devfreq: rockchip-dfi: introduce channel mask
>   PM / devfreq: rk3399_dmc,dfi: generalize DDRTYPE defines
>   PM / devfreq: rockchip-dfi: Clean up DDR type register defines
>   PM / devfreq: rockchip-dfi: Add RK3568 support
>   PM / devfreq: rockchip-dfi: Handle LPDDR2 correctly
>   PM / devfreq: rockchip-dfi: Handle LPDDR4X
>   PM / devfreq: rockchip-dfi: Pass private data struct to internal
>     functions
>   PM / devfreq: rockchip-dfi: Prepare for multiple users
>   PM / devfreq: rockchip-dfi: give variable a better name
>   PM / devfreq: rockchip-dfi: Add perf support
>   PM / devfreq: rockchip-dfi: make register stride SoC specific
>   PM / devfreq: rockchip-dfi: account for multiple DDRMON_CTRL registers
>   PM / devfreq: rockchip-dfi: add support for RK3588
>   dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml
>   dt-bindings: devfreq: event: rockchip,dfi: Add rk3568 support
>   dt-bindings: devfreq: event: rockchip,dfi: Add rk3588 support
>   dt-bindings: soc: rockchip: grf: add rockchip,rk3588-pmugrf
>   arm64: dts: rockchip: rk3399: Enable DFI
>   arm64: dts: rockchip: rk356x: Add DFI
>   arm64: dts: rockchip: rk3588s: Add DFI
> 
>  .../bindings/devfreq/event/rockchip,dfi.yaml  |  74 ++
>  .../bindings/devfreq/event/rockchip-dfi.txt   |  18 -
>  .../rockchip,rk3399-dmc.yaml                  |   2 +-
>  .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   1 -
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   7 +
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  16 +
>  drivers/devfreq/event/rockchip-dfi.c          | 814 +++++++++++++++---
>  drivers/devfreq/rk3399_dmc.c                  |  10 +-
>  include/soc/rockchip/rk3399_grf.h             |   9 +-
>  include/soc/rockchip/rk3568_grf.h             |  13 +
>  include/soc/rockchip/rk3588_grf.h             |  18 +
>  include/soc/rockchip/rockchip_grf.h           |  18 +
>  13 files changed, 863 insertions(+), 138 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
>  create mode 100644 include/soc/rockchip/rk3568_grf.h
>  create mode 100644 include/soc/rockchip/rk3588_grf.h
>  create mode 100644 include/soc/rockchip/rockchip_grf.h
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
