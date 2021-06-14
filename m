Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA65AC4743C
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 11:10:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 343A86109E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 11:10:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 343A86109E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cL+Pb9s8TbsY7BbLVrzF7ojxHR501ltcJAVyEXN2aAg=; b=TGtPaiRQkE7bORId+KlWjBQ2oq
	SHPSw+wjFumP9FanipRPKnaZSKDRD7QqI7pLgydXzVrUqW0HSGrNPzm100Nubgagn4uZAUfRD1n6W
	5ppIhvrRfxilhu79g+N+ITdPv9izM5XSYcL6+9bwDAQFt4f5nzl4Japl7UAfY0npzhKX3QEEluAAn
	hqm++Wf7X7C59pIDMQK6e+28RRrvnan7mpQmRgJRxD18rsbVpUXAkq63Y4MmLku/Rek3lvddZttsI
	5ar0dda+TrHi94SYl+bzAz82rsfbINVKFlHYHNea9yoT4JtRGGCQknjjNETdF9rZzijdyCMqYuTxp
	rATFYAMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lskTi-00Dly2-HD; Mon, 14 Jun 2021 11:10:02 +0000
Received: from lb3-smtp-cloud8.xs4all.net ([194.109.24.29])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lskTU-00DlsE-JP; Mon, 14 Jun 2021 11:09:50 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id skTKlbz73hqltskTOlmht4; Mon, 14 Jun 2021 13:09:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1623668982; bh=vddD9ihU2ZPegn37Asrq1n1pbNugCtI3Mvl3vbyY6h8=;
 h=From:Subject:To:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=Lr2Ea2Nto2lShMCH2S9F4Qy+ZMmP4fHjYWaNzClW178dJRGP54kumaKtjozLg2oLd
 LQMuiNVGR9I8w5WypJ4YRPdfuowA9aC9QRfMekvPfAau101RZ/J59N1MP8jhmdjU3K
 OS4v4s8q4i/oESf9z+CqGFOYapY0ti9NtJ2a5xMcs0ZDp2SeH2Lf5ffiLnOA7kjyst
 ueW+Kl8n7VsJkKpUteqXBAdyJZ95oqNK6y+Bax4i+7COT2dWkIoZ6CaJLnbSK5SJRh
 LGCZrLW9z4hSugxCMrtavEG/12C4UXL1xJw9PqdDVMoPJOX0kg53FKJcbg/5xOBBQ3
 593kZXqao8AGg==
From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v2 00/12] Add support for older Rockchip SoCs to V4L2
 hantro and rkvdec drivers
To: Alex Bee <knaerzche@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
Message-ID: <562d80eb-92e5-53ff-0a15-182cc7676063@xs4all.nl>
Date: Mon, 14 Jun 2021 13:09:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfD616eqUHJJQZz5sFByPOsT2nDsyUUckWPOoJiPESgeRGGyqXzoSDTV2d+J5vxBPHFQtCE7ANAWcxFhYOA2b34PGEqUnsnh0BYxT2Y/TDGHWlY35SSlP
 5sDVP+cBhS+p4bof0AGFTWLMLb2+szh+3qsh6pfM7nmwYqGhklRnvwUSK0zv3BfDCY5NeVTZ64UubpapoTbeu6hiMuIVlCyNMfY5gWEV9sZeK5RgS9Y2YVVe
 1RhaL33Dyo50NUabDEv2s3gJ3caTcFX7FKyrJ8SKjbht8ZKhmP9F0QVbCx8zurQcluEv9iJfZlWM4ZdW7yqihDnr1Q5hJDm32rXciZZE16jvN5f0yX6DqvYt
 PuWagwZEzgxglTyQSuMHEOJTgYbIjQwCTaM1mv7O/UKwaN5DOhPjz2nspL7qz7pfYIedpiYgBXvA60bPpRR85gnE8BqfHzTTz5gzZE0tF0NRIXp2whb4Mpam
 wlpeh6OUSzGzv/pShG7G47rDyvF/uLaeHwKNsX0vrPW4QM2UaS69Sw2DQFqCnCrFv1w2GNheGgRZQnLeWoGgoLJqCTkA4r8GgbFqqaryRm2P5ciY9a1EGH3f
 HFI8Tcqv3xyQUd7XHc5DDckgRCV7DEm/WOnEOAXXZWN3n5wqd/xNwDab5wDOtts+/e0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_040948_805418_8C9B59A7 
X-CRM114-Status: GOOD (  26.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Alex,

On 27/05/2021 17:44, Alex Bee wrote:
> Hi list,
> 
> this series adds support for older Rockchip SoCs (RK3036, RK3066, RK3188
> and RK322x) to the existing V4L2 video decoder/-encoder drivers - namely
> hantro and rkvdec.
> They can be used as-is or with very little modifications.
> 
> In preparation to that patches 1,8 and 9 add power-controller support for
> RK3036 and RK322x, since both drivers rely on pm. The drivers for them 
> exist already in the common Rockchip pm driver, they just haven't be added
> to the device trees yet.
> 
> Changes in v2:
> - reordered patches as suggested by Heiko
> - fixed indentation and order issues in dt-bindings / DT patches
> - added patch to reorder variants in hantro alphanumeric
> - added patch that merges hantro platform drivers for Rockchip in one
> - added missing DT patch for RK3036 (missed to submit with v1)
> See individual patches for details about changes.
> 
> Thanks for your feedback,
> Alex.
> 
> Alex Bee (12):
>   dt-bindings: mfd: syscon: add Rockchip RK3036/RK3228 qos compatibles
>   dt-bindings: media: rockchip-vpu: add new compatibles
>   dt-bindings: media: rockchip-vdec: add RK3228 compatible
>   media: hantro: reorder variants
>   media: hantro: merge Rockchip platform drivers
>   media: hantro: add support for Rockchip RK3066
>   media: hantro: add support for Rockchip RK3036
>   ARM: dts: rockchip: add power controller for RK3036
>   ARM: dts: rockchip: add power controller for RK322x
>   ARM: dts: rockchip: add vpu node for RK3036
>   ARM: dts: rockchip: add vpu nodes for RK3066 and RK3188
>   ARM: dts: rockchip: add vpu and vdec node for RK322x

Unfortunately this series no longer applies. Support for the G2/HEVC decoder
was merged, and that conflicts with this series.

It is best to rebase you series to the master branch of the media_stage
tree (https://git.linuxtv.org/media_stage.git/log/), which contains that
series. I expect/hope that this will be merged later this week to the
regular media_tree master branch, so you can wait for that as well.

Regards,

	Hans

> 
>  .../bindings/media/rockchip,vdec.yaml         |  10 +-
>  .../bindings/media/rockchip-vpu.yaml          |  33 +-
>  .../devicetree/bindings/mfd/syscon.yaml       |   2 +
>  arch/arm/boot/dts/rk3036.dtsi                 |  72 +++
>  arch/arm/boot/dts/rk3066a.dtsi                |   4 +
>  arch/arm/boot/dts/rk3188.dtsi                 |   5 +
>  arch/arm/boot/dts/rk322x.dtsi                 | 140 ++++-
>  arch/arm/boot/dts/rk3xxx.dtsi                 |  12 +
>  drivers/staging/media/hantro/Makefile         |   9 +-
>  drivers/staging/media/hantro/hantro_drv.c     |   6 +-
>  drivers/staging/media/hantro/hantro_hw.h      |  30 +-
>  drivers/staging/media/hantro/rk3288_vpu_hw.c  | 208 -------
>  drivers/staging/media/hantro/rk3399_vpu_hw.c  | 222 --------
>  ...jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} |  30 +-
>  ...eg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} |  25 +-
>  ...w_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} |   2 +-
>  ...rk3399_vpu_regs.h => rockchip_vpu2_regs.h} |   6 +-
>  .../staging/media/hantro/rockchip_vpu_hw.c    | 526 ++++++++++++++++++
>  18 files changed, 848 insertions(+), 494 deletions(-)
>  delete mode 100644 drivers/staging/media/hantro/rk3288_vpu_hw.c
>  delete mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw.c
>  rename drivers/staging/media/hantro/{rk3399_vpu_hw_jpeg_enc.c => rockchip_vpu2_hw_jpeg_enc.c} (87%)
>  rename drivers/staging/media/hantro/{rk3399_vpu_hw_mpeg2_dec.c => rockchip_vpu2_hw_mpeg2_dec.c} (93%)
>  rename drivers/staging/media/hantro/{rk3399_vpu_hw_vp8_dec.c => rockchip_vpu2_hw_vp8_dec.c} (99%)
>  rename drivers/staging/media/hantro/{rk3399_vpu_regs.h => rockchip_vpu2_regs.h} (99%)
>  create mode 100644 drivers/staging/media/hantro/rockchip_vpu_hw.c
> 
> 
> base-commit: 5d765451c2409e63563fa6a3e8005bd03ab9e82f
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
