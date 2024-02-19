Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F96AC48260
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 08:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XebLybMcrGVLd+zJkxAX3s81+aEtB4d1w538FZv6nU=; b=izfmJREvMMEgqN
	iu4zwS7r4lbtBwSG0fjnSvP5iCiOKUV3p8MsYVosU6X6zhmrfkVfy5qdQfy/1+p+y1r//60pYmWIe
	zaRbN1byVejS481JQKP9J+F33m07gjv+nCC5AZcsMLy7aufV+WDZLbmfq9JeLQrxNjcLGTc8p4zR/
	f5f1+iCIsJwlZBoAFHBFoSjIgKBuG6qKchO/R5GHhiCXRTCNlNp3iUYBgi0eAcpaFPlXooeCOPnR7
	BbhLLX6xvr0H+JS801dAqJzCZ5fe1SjyLjgAuBJnhD1tOHYSH7nBSsK7Bqhb0w6oWBC9o9v6034gG
	GRD8a1WrM0mxtcVuNVtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzEP-00000009dJM-1iH3;
	Mon, 19 Feb 2024 08:42:33 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbzEL-00000009dIx-36Mk
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Feb 2024 08:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1708332149; x=1739868149;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=b3pLRSvlRNkx4QVYyNlxFS5vrERzFzUE1laQUlHC0YI=;
  b=p37kSZjShauff4zfMfl3LlkNkrOXzSeOIsMNtl/c4GphRS2dy9pxpjwK
   yEXOIZHJnH4bxLBIXO0Pgm/0B3l5bsjFY2PTe9Xsci8hr+08JrGwBL3Bx
   BYTYGDwi8hGxxIsqqaOP33fLFiyrFhrAyGeKcUuUbyRnUagHtbqROdZN7
   9iolTXxlBUORQA9ZNLiY54YG9NsjFVOBI+X1WOSx/xUg08vsonjvyMizo
   NsDejmuRCMI6fzCkVZjTCzjtzEpmTU1C6v9URQiSgVfu3eAHpxoYiQM2U
   52zecaqvbb9YeySzagMpfDvW05GJa4VS6xHpvqjqzv0BGKZ07jL1bt0WY
   A==;
X-IronPort-AV: E=Sophos;i="6.06,170,1705359600"; 
   d="scan'208";a="35468937"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Feb 2024 09:42:25 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id BD1E7280075;
	Mon, 19 Feb 2024 09:42:24 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: linux-media@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Adam Ford <aford173@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Dafna Hirschfeld <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>, Helen Koike <helen.koike@collabora.com>, Kieran Bingham <kieran.bingham@ideasonboard.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Paul Elder <paul.elder@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v13 00/12] media: rkisp1: Add support for i.MX8MP
Date: Mon, 19 Feb 2024 09:42:27 +0100
Message-ID: <6019598.lOV4Wx5bFT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
References: <20240218204350.10916-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_004230_187459_DE71C657 
X-CRM114-Status: GOOD (  20.99  )
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

Hi Laurent,

thanks for the update.

Am Sonntag, 18. Februar 2024, 21:43:38 CET schrieb Laurent Pinchart:
> Hello,
> =

> This series extends the rkisp1 driver to support the ISP found in the
> NXP i.MX8MP SoC.
> =

> The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
> and in the NXP i.MX8MP have the same origin, and have slightly diverged
> over time as they are now independently developed (afaik) by Rockchip
> and VeriSilicon. The latter is marketed under the name "ISP8000Nano",
> and is close enough to the RK3399 ISP that it can easily be supported by
> the same driver.
> =

> This version of the series specifically has been tested on a Polyhex
> Debix model A with an IMX219 camera sensor (Raspberry Pi cam v2).
> =

> See individual patches for a detailed description of changes compared to
> v12.
> =

> This should hopefully be the last version, I plan to send a pull request
> in a few days, in time for v6.9.

Still works on my platform TQMa8MPQL/MBa8MPxL + IMX327 using libcamera for =
1080p + SRGGB10 debayering. For the missing commits:
Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> Laurent Pinchart (2):
>   media: rkisp1: Add and use rkisp1_has_feature() macro
>   media: rkisp1: Configure gasket on i.MX8MP
> =

> Paul Elder (10):
>   media: rkisp1: Support setting memory stride for main path
>   media: rkisp1: Support devices lacking self path
>   media: rkisp1: Support devices lacking dual crop
>   dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
>   media: rkisp1: Add version enum for i.MX8MP ISP
>   media: rkisp1: Support i.MX8MP's 34-bit DMA
>   media: rkisp1: Add YC swap capability
>   media: rkisp1: Add UYVY as an output format
>   media: rkisp1: Fix endianness on raw streams on i.MX8MP
>   media: rkisp1: Add match data for i.MX8MP ISP
> =

>  .../bindings/media/rockchip-isp1.yaml         |  37 +++-
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 180 ++++++++++++++----
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  35 +++-
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  71 ++++++-
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 131 ++++++++++++-
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  35 ++++
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c |  19 +-
>  include/uapi/linux/rkisp1-config.h            |  50 ++---
>  8 files changed, 472 insertions(+), 86 deletions(-)
> =

> =

> base-commit: e0b8eb0f6d652981bfd9ba7c619c9d81ed087ad0
> =



-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
