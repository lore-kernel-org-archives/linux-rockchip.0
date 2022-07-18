Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E957C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OS+uVgeriul5f4am8CHlz7OqNzQIDo6ikL6Q601X3pE=; b=Bh920eIRqvqrNn
	Gp93InIzkDgPL3bABUOJF4rFosaRvdmUNEABf5C5toCKMHLqweGeoBbz/Ix/p+nfhrz8Q443pY77u
	Y/khiINks9SFQdqFv6qTY1ae8NqEx3MfDkK/QLTMlka8c2EkRp/fOLxc5TtLdFWHbcArKt6C63ToB
	5gBR2KCzWvhuOntwxZa3Cdcj2KupOgU/HB35h93R4bWLmfPNQqafxmbzj8naMAnbWbSVYSf8l4Vvb
	SHAvaL9++hBbgJd28lCqctSV8sM3M9p8Ae0/tdQZ2UCOEjjLR6wTvWDZhAGUWNP4N/ffd3Uf7926W
	1CXfEtMesSgPY3cpTR3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDNkT-00CNuX-KF; Mon, 18 Jul 2022 10:13:09 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDNkH-00CNpQ-Df; Mon, 18 Jul 2022 10:13:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 3E184B81082;
	Mon, 18 Jul 2022 10:12:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD49FC341C0;
	Mon, 18 Jul 2022 10:12:49 +0000 (UTC)
Message-ID: <f3162b4e-a2ab-326b-f905-360dc63bc143@xs4all.nl>
Date: Mon, 18 Jul 2022 12:12:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 0/7] Enable 10bits bitstream for Hantro/G2 HEVC codec
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, nicolas.dufresne@collabora.com, andrzej.p@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 kernel@collabora.com
References: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220718083945.200845-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_031257_626884_D6C0644D 
X-CRM114-Status: GOOD (  21.84  )
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

On 7/18/22 10:39, Benjamin Gaignard wrote:
> Since v1 Jernej patches to support 10 bits decoding have been merged.
> This v2 rebase the previously send patches and add Ezequiel reviewed-by
> tag.
> This series add 10bits support for newer hardware blocks (i.e without
> legacy regs) and for HEVC codec.
> 
> It based tested on IMX8MQ with HEVC conformance tests.
> The results are that all 10bits bitstreams are OK.
> 
> The problematic point raise by this series is the question of where 
> to put HEVC validation function. Does it have to be only hantro_try_ctrl()
> or shall it be done also in .run().
> This series doesn't change that behavoir so I will argue in farvor to
> merge it and to work on this validation time problem when unstaging 
> the driver.
> Hans, Ezequiel may that sound acceptable for you ? 

Hmm, the hantro driver will be unstaged either this week or (hopefully)
very early on in the next cycle. So I think you should no longer consider
hantro as a staging driver but as a regular mainline driver.

This series definitely won't make the 5.20 cut, so I think it makes more
sense to get this right before merging it.

Regards,

	Hans

> 
> Regards,
> Benjamin
> 
> Benjamin Gaignard (7):
>   media: hantro: Store HEVC bit depth in context
>   media: hantro: HEVC: Fix auxilary buffer size calculation
>   media: hantro: HEVC: Fix chroma offset computation
>   media: hantro: postproc: Configure output regs to support 10bit
>   media: Hantro: HEVC: Allows 10-bit bitstream
>   media: hantro: imx8m: Enable 10bit decoding
>   media: hantro: Allows luma and chroma depth to be different
> 
>  .../staging/media/hantro/hantro_g2_hevc_dec.c |  4 +--
>  drivers/staging/media/hantro/hantro_hevc.c    | 13 +++++----
>  .../staging/media/hantro/hantro_postproc.c    |  7 ++++-
>  drivers/staging/media/hantro/imx8m_vpu_hw.c   | 27 +++++++++++++++++++
>  4 files changed, 40 insertions(+), 11 deletions(-)
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
