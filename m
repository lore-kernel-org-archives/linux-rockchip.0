Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15B1FC07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:46:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8FD2C61248
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:46:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8FD2C61248
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QRU7/v5P6RJi2J8NHm5ZStNXdhZLLdipmjXNlrHabJ0=; b=WyX0842K0rIIGA
	drBb0Jml1avC+ChrMQnjNg4NA8A1xL/lbSRPIlX3KEgBwqzMixJSsKRkteNUuAWiglgfDBrwgdeG5
	PZPflg0BmqRHDhjaj1TwQ6B7gKwQS+YwYXYyr6UTXCpVjMXiFkEdX1wLCG7/braZ3KvYHfSowu4xG
	h+T5eru3beQZ5oIomsFiunPN1m9r2/gfhpgv953PpoEdI27JsB5R86kFIMa/3lB5gNOinQN53kZpv
	VI7JbJdyvvHsft8gDDOnikXEd7Wq9JGxUFwfpSLp/oc3qNpyQhH0lguN/23DSpCjuH+l12e8mg2QF
	sDwarpEEMqR1abVakMoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m32p1-008Rh2-9d; Mon, 12 Jul 2021 20:46:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m32oy-008Rfr-4k
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 20:46:33 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m32ot-0005pE-5E; Mon, 12 Jul 2021 22:46:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: mchehab@kernel.org, hverkuil-cisco@xs4all.nl, ezequiel@collabora.com,
 dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v6 0/7] rkisp1 support for px30
Date: Mon, 12 Jul 2021 22:46:26 +0200
Message-ID: <10918018.2OtUDhi4od@diego>
In-Reply-To: <YOyos6b4QvLkl6//@pendragon.ideasonboard.com>
References: <20210618130238.4171196-1-heiko@sntech.de>
 <YOyos6b4QvLkl6//@pendragon.ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_134632_238681_CFDBEACC 
X-CRM114-Status: GOOD (  27.09  )
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

Hi Laurent,

Am Montag, 12. Juli 2021, 22:40:19 CEST schrieb Laurent Pinchart:
> Hi Heiko,
> 
> On Fri, Jun 18, 2021 at 03:02:28PM +0200, Heiko Stuebner wrote:
> > This series adds support for the slightly different v12
> > variant of the ISP used for example in the px30 soc.
> 
> Nice :-)
> 
> How have you tested this ?

I have this running on a px30-evb with the integrated camera.

With libcamera's tools/rkisp1 script it works out of the box,
but there is also my still pending little libcamera patch to add actual
support for the changed values [0] which then even makes qcam
work nicely ;-) .

Heiko


[0] https://patchwork.libcamera.org/patch/12668/

> 
> > changes in v6:
> > - camera compatible in px30 binding example (Rob's bot)
> > - move a last wrong positionen constant define (a v12 addition
> >   should not be added in the v10-prefix change) (Dafna)
> > - rename size to clk_size in match-data struct (Dafna)
> > 
> > changes in v5:
> > - handle interrupt-names as conditional required property (Dafna)
> > - add second example for showing interrupt-names (Dafna)
> > 
> > changes in v4:
> > - clean up multi-irq case (Dafna)
> >   Now each variant can have a list of interrupts
> >   and their respective handlers, with or without
> >   interrupt-names
> > 
> > changes in v3:
> > - add necessary binding additions
> > - fix pclk naming in binding
> > - move v12 clk_ctrl register bits to v12 addition patch
> > - fix rebase artefact with hst_enable
> > 
> > changes in v2 (from rfc):
> > - split out phy patch into a separate series
> > - drop dts patches for now
> > - split v12 addition and v10 prefixes into separate patches
> >   to enable easier review (Dafna)
> > - remove {stats,params}_config structs, we can just use the
> >   correct constant (Dafna)
> > - adapt to styling comments from Dafna and Helen
> > - add patch to remove the unused irq variable in struct rkisp
> > 
> > Heiko Stuebner (10):
> >   media: rockchip: rkisp1: remove unused irq variable
> >   dt-bindings: media: rkisp1: fix pclk clock-name
> >   dt-bindings: media: rkisp1: document different irq possibilities
> >   media: rockchip: rkisp1: allow separate interrupts
> >   media: rockchip: rkisp1: make some isp-param functions variable
> >   media: rockchip: rkisp1: make some isp-stats functions variable
> >   media: rockchip: rkisp1: add prefixes for v10 specific parts
> >   media: rockchip: rkisp1: add support for v12 isp variants
> >   dt-bindings: media: rkisp1: document px30 isp compatible
> >   media: rockchip: rkisp1: add support for px30 isp version
> > 
> >  .../bindings/media/rockchip-isp1.yaml         | 114 +++-
> >  .../platform/rockchip/rkisp1/rkisp1-capture.c |   9 +-
> >  .../platform/rockchip/rkisp1/rkisp1-common.h  |  44 +-
> >  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  81 ++-
> >  .../platform/rockchip/rkisp1/rkisp1-isp.c     |  29 +-
> >  .../platform/rockchip/rkisp1/rkisp1-params.c  | 557 ++++++++++++++----
> >  .../platform/rockchip/rkisp1/rkisp1-regs.h    | 406 ++++++++-----
> >  .../platform/rockchip/rkisp1/rkisp1-stats.c   | 107 +++-
> >  8 files changed, 1050 insertions(+), 297 deletions(-)
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
