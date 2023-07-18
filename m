Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE905C001E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 06:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRVRgcl+VK547MwzCqpgEfS6PnVMMIyYJvlmNOHauRE=; b=nTxm7ja3b9fxxz
	mxh37FUCAPNgZUPdHYXteOZSVpRA34YpJ8NV1TvVuIIPNhSMWkIUEsLSZ2IHmXBzuOnTRUPgidKRm
	1guGB0h5XPx9yUgk001MG6aZT9Sj9kbDYSxjR6/LDNYx1a1+lTyAoE8RYtXnVf5sN+9g6EhVGHNVt
	YQmbOMvTAEJjEMbvLsMmZyp/szFZwjr/uin1hGLNB69dDEPUjwhBuCvwQ9RHGgy9TB5h8G/WjA31m
	H2FXLHKJBnEGs4Pnw2tbyjs9P2Tl8KDOnEXgd2033zHHTYlLyspzmccR3aymrVlB8nk2fRLqxBiJd
	5fpgYLhm3nMxoBJtUL+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0gC-005kBj-34;
	Wed, 19 Jul 2023 06:28:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0gB-005kAi-29;
	Wed, 19 Jul 2023 06:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=jHVX6dfpCt8cBbZngMojdlaS/kOg+Tlc6u+V2VK9DV4=; b=kCwLuOgqT4vbrPio6Gp/O7AUeP
	olOXDrDGaiWV80qYUGF9LSBsIGfA1AmKowtHuE8RPrsTcnHfCztQZMJ8vVuXKvP0mkVflibvtwOp0
	nAUUGUmie3o6hjqNQeOS5sJzNwSSxycPCoMY4AjMuv18h7ZtxYluuXCvbvd2LVytxStfSSIPk4ylg
	ALTLGKtmki2T9sTWCMj1K80lBhAhqPNUavysc05iL7WeeynfuwNCHfaoomWCL95/VZrNgwycKkcAm
	ovqweO7rlpuari1/hFRRuI1lJgsguxu8+CFZ/UeaURLZTlJnBkb8YLNZ2EyCZ89GXfvvVcqRLqWRC
	TsvogzDg==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLg8I-00BJBE-0t;
	Tue, 18 Jul 2023 08:32:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EA70E614C0;
	Tue, 18 Jul 2023 08:32:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B76AC433C8;
	Tue, 18 Jul 2023 08:31:57 +0000 (UTC)
Message-ID: <53bb24a3-6aa4-4ece-e837-2cd523e0c1e7@xs4all.nl>
Date: Tue, 18 Jul 2023 10:31:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v3 00/14] media: rkisp1: Add support for i.MX8MP
Content-Language: en-US
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_093234_996770_FD14379B 
X-CRM114-Status: GOOD (  24.00  )
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

Hi Paul,

On 18/11/2022 10:39, Paul Elder wrote:
> This series depends on v3 of "dt-bindings: media: Add macros for video
> interface bus types" [1].
> 
> This series extends the rkisp1 driver to support the ISP found in the
> NXP i.MX8MP SoC.
> 
> The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
> and in the NXP i.MX8MP have the same origin, and have slightly diverged
> over time as they are now independently developed (afaik) by Rockchip
> and VeriSilicon. The latter is marketed under the name "ISP8000Nano",
> and is close enough to the RK3399 ISP that it can easily be supported by
> the same driver.
> 
> The last two patches add support for UYVY output format, which can be
> implemented on the ISP version in the i.MX8MP but not in the one in the
> RK3399.
> 
> This version of the series specifically has been tested on a Polyhex
> Debix model A with an imx219 (Raspberry Pi cam v2).

There were comments for the first few patches, but I haven't seen a v4.

I'm marking this series as 'Changes Requested' in patchwork, just so you
know.

Regards,

	Hans

> 
> [1] https://lore.kernel.org/linux-media/20220615221410.27459-2-laurent.pinchart@ideasonboard.com/
> 
> Laurent Pinchart (3):
>   dt-bindings: media: rkisp1: Add i.MX8MP ISP example
>   media: rkisp1: Add and use rkisp1_has_feature() macro
>   media: rkisp1: Configure gasket on i.MX8MP
> 
> Paul Elder (11):
>   dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
>   media: rkisp1: Add match data for i.MX8MP ISP
>   media: rkisp1: Add and set registers for crop for i.MX8MP
>   media: rkisp1: Add and set registers for output size config on i.MX8MP
>   media: rkisp1: Add i.MX8MP-specific registers for MI and resizer
>   media: rkisp1: Shift DMA buffer addresses on i.MX8MP
>   media: rkisp1: Add register definitions for the test pattern generator
>   media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
>   media: rkisp1: Support devices without self path
>   media: rkisp1: Add YC swap capability
>   media: rkisp1: Add UYVY as an output format
> 
>  .../bindings/media/rockchip-isp1.yaml         |  79 ++++++++++-
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 102 +++++++++++---
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  32 +++++
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   |  14 +-
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  67 +++++++--
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 128 +++++++++++++++++-
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  90 ++++++++++++
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c |  35 ++++-
>  include/uapi/linux/rkisp1-config.h            |   2 +
>  9 files changed, 509 insertions(+), 40 deletions(-)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
