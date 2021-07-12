Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A69DC07E9A
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:41:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5A3A611C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:41:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5A3A611C1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+GuKxmGgJjOIrnmQOpbJlII97CjwvRO3DEUb4mgLnk=; b=KB7ZutMDvoDJnc
	+u54ozzRdoZPbZVYOj5UCdkdiegCQkyQ4qjQRTaOgHorhjrnnC50BsfKjTG86ATLb3KWGXU4SAgvA
	o1hIfjvkb9Dlzkakz2Px5f6ofsKs1eS1ZjVUUZuFVg43yipVnqXr8Kpd3rM9oNGh51JyofmgpdQQQ
	iDgjr0HgbCbKkh0HWPpbYbDzWxv62kO/75BHhNWtro76iUKFyjw445qqsRIg0jDtVftFY64iqDiU+
	RFp3VouWSfhAzOp9mh+7IJzyFN6ixkQtXFxGjGClFXEuOZfwn0SgJ3XXwmY+EbP2FOuTw5USnGiVB
	yh/ptCUiMzH+hQAlAt0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m32jp-008RNP-L5; Mon, 12 Jul 2021 20:41:13 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m32jm-008RMe-La
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 20:41:12 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id E1392CC;
 Mon, 12 Jul 2021 22:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1626122466;
 bh=0aBMtciFOLOBzK2VCu5OEUJgwztazVFZiAZli1S6XS0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=okX7uKIXtjXXSmoohLlfKYIcVaNlxXl7pXJ+cPmPBU3RrrrDZc1IgC+Pl/8cq7Rco
 ioPEh+sog4y/nBOQ4AwRFcVoT1VCrJDhSy+hbS1C0s14h3Tc4spl95QxXz7CnLha5C
 NxfdXhUz8vcpHZEGbXzXErI/m2Su5aXJxxjHCJyA=
Date: Mon, 12 Jul 2021 23:40:19 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, ezequiel@collabora.com,
 dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 0/7] rkisp1 support for px30
Message-ID: <YOyos6b4QvLkl6//@pendragon.ideasonboard.com>
References: <20210618130238.4171196-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618130238.4171196-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_134110_884109_E5AC8D44 
X-CRM114-Status: GOOD (  18.14  )
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

Hi Heiko,

On Fri, Jun 18, 2021 at 03:02:28PM +0200, Heiko Stuebner wrote:
> This series adds support for the slightly different v12
> variant of the ISP used for example in the px30 soc.

Nice :-)

How have you tested this ?

> changes in v6:
> - camera compatible in px30 binding example (Rob's bot)
> - move a last wrong positionen constant define (a v12 addition
>   should not be added in the v10-prefix change) (Dafna)
> - rename size to clk_size in match-data struct (Dafna)
> 
> changes in v5:
> - handle interrupt-names as conditional required property (Dafna)
> - add second example for showing interrupt-names (Dafna)
> 
> changes in v4:
> - clean up multi-irq case (Dafna)
>   Now each variant can have a list of interrupts
>   and their respective handlers, with or without
>   interrupt-names
> 
> changes in v3:
> - add necessary binding additions
> - fix pclk naming in binding
> - move v12 clk_ctrl register bits to v12 addition patch
> - fix rebase artefact with hst_enable
> 
> changes in v2 (from rfc):
> - split out phy patch into a separate series
> - drop dts patches for now
> - split v12 addition and v10 prefixes into separate patches
>   to enable easier review (Dafna)
> - remove {stats,params}_config structs, we can just use the
>   correct constant (Dafna)
> - adapt to styling comments from Dafna and Helen
> - add patch to remove the unused irq variable in struct rkisp
> 
> Heiko Stuebner (10):
>   media: rockchip: rkisp1: remove unused irq variable
>   dt-bindings: media: rkisp1: fix pclk clock-name
>   dt-bindings: media: rkisp1: document different irq possibilities
>   media: rockchip: rkisp1: allow separate interrupts
>   media: rockchip: rkisp1: make some isp-param functions variable
>   media: rockchip: rkisp1: make some isp-stats functions variable
>   media: rockchip: rkisp1: add prefixes for v10 specific parts
>   media: rockchip: rkisp1: add support for v12 isp variants
>   dt-bindings: media: rkisp1: document px30 isp compatible
>   media: rockchip: rkisp1: add support for px30 isp version
> 
>  .../bindings/media/rockchip-isp1.yaml         | 114 +++-
>  .../platform/rockchip/rkisp1/rkisp1-capture.c |   9 +-
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  44 +-
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  81 ++-
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     |  29 +-
>  .../platform/rockchip/rkisp1/rkisp1-params.c  | 557 ++++++++++++++----
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    | 406 ++++++++-----
>  .../platform/rockchip/rkisp1/rkisp1-stats.c   | 107 +++-
>  8 files changed, 1050 insertions(+), 297 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
