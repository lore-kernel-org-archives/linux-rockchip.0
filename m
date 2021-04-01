Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29CECC433B4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 22:20:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B279B61103
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 22:20:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B279B61103
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:Subject:In-Reply-To:Cc:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hYdLH+6+DTxvnyZFRn7DtqGpILBvITW5k28sEPJ46XY=; b=RLHEphIz/PzB1e0A5z5P9e6fBy
	SR0aOkI4gWKFgWHqNho9eEdI0PaGxN8ci3gapylTCpZsOBuBdiWPQMSm1WwEh0RNZnsl+PdG32t2y
	pGwt662IZes05S2as1S5oh/0tr8J/oMuA7jIoLEYxBSVMtuS86YnXb1A4K4NOVPY2VtAg8OmvLE1k
	mZ+8oOza6lEsclsDbr7ESxqWydXWtvm6One21msT1bXhuAj3QntpEW+ig7yOk+RdYNJvoqpFCJU6/
	4veo5k+PMrFkewvlgBJbUkot/Geg3yHVrzmC7ECR2btDueAiTiS/kHkSeGXXFPElQliNqKDZ5plgj
	L4GOuTgQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lS5g7-00BBaU-Pa; Thu, 01 Apr 2021 22:20:39 +0000
Received: from sibelius.xs4all.nl ([83.163.83.176])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lS5e2-00BB2U-7v; Thu, 01 Apr 2021 22:19:02 +0000
Received: from localhost (bloch.sibelius.xs4all.nl [local])
 by bloch.sibelius.xs4all.nl (OpenSMTPD) with ESMTPA id 1523916e;
 Fri, 2 Apr 2021 00:18:21 +0200 (CEST)
Date: Fri, 2 Apr 2021 00:18:21 +0200 (CEST)
From: Mark Kettenis <mark.kettenis@xs4all.nl>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, gregkh@linuxfoundation.org,
 balbi@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
In-Reply-To: <20210401213652.14676-1-jbx6244@gmail.com> (message from Johan
 Jonker on Thu, 1 Apr 2021 23:36:48 +0200)
Subject: Re: [PATCH v6 0/4] convert rockchip,dwc3.txt to yaml
References: <20210401213652.14676-1-jbx6244@gmail.com>
Message-ID: <c1bced42d7388f34@bloch.sibelius.xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_231833_334478_9DD56904 
X-CRM114-Status: GOOD (  25.88  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> From: Johan Jonker <jbx6244@gmail.com>
> Date: Thu,  1 Apr 2021 23:36:48 +0200
> 
> The conversion of rockchip,dwc3.txt to yaml was added to linux-next,
> but the necessary changes for rk3399 are still pending.
> 
> For rk3399 dwc3 usb the wrapper node for only clocks makes no sense,
> so that was removed in the YAML example.
> 
> Now dtbs_check still generates notifications for the compatibility string in
> the dts files that doesn't match, because it changed from
> "rockchip,rk3399-dwc3" to "rockchip,rk3399-dwc3", "snps,dwc3".
> 
> The problem is to keep compatible with old device trees.
> I.e. a device running an older device tree should still work with newer
> kernels.
> 
> Comment by Rob in version 3:
> Presumably you are getting lucky here (with link order). The kernel
> has no logic to decide which driver to bind to if there are 2 matching
> drivers. If we did, it would probably be the opposite of what you want
> here as we'd pick the most specific match. This driver should probably
> bail probe if no dwc3 child node.
> 
> Please advise how to move forward with this serie.

As I tried to point out earlier, this kind of binding change is
unhelpful.  Yes, you now have extra code in future Linux kernels that
works around the problem.  But other consumers of device trees
(U-Boot, other OSes) will have to add similar code or keep using older
device trees.  And even then it will still cause frustration for users
that want to run older kernels.

I do understand that it is sometimes necessary to change device tree
bindings.  But changes like this one just cause a lot of pain without
a significant technical benefit.

Cheers,

Mark


> Changed V6:
>   rebase
>   remove accepted patches from serie
> 
> Changed V5:
>   add select
> 
> Changed V4:
>   removed patch "of-simple: add compatible for rk3328"
>   add patch "of-simple: bail probe if no dwc3 child node"
> 
> Changed V3:
>   remove aclk_usb3_rksoc_axi_perf
>   remove aclk_usb3
> 
> Changed V2:
>   remove node wrapper
> 
> Johan Jonker (3):
>   usb: dwc3: of-simple: bail probe if no dwc3 child node
>   arm64: dts: rockchip: restyle rk3399 usbdrd3_0 node
>   arm64: dts: rockchip: restyle rk3399 usbdrd3_1 node
> 
> Wu Liang feng (1):
>   arm64: dts: rockchip: optimize clks for rk3399 dwc3
> 
>  arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  4 +-
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    | 12 +--
>  .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |  6 +-
>  arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |  6 +-
>  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 12 +--
>  .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      | 12 +--
>  arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts  | 12 +--
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts |  2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |  8 --
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   | 12 +--
>  .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  8 --
>  .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  4 -
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  6 +-
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    | 10 +--
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 12 +--
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  4 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  8 --
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 12 +--
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  | 12 +--
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 86 ++++++++--------------
>  .../boot/dts/rockchip/rk3399pro-vmarc-som.dtsi     |  4 -
>  drivers/usb/dwc3/dwc3-of-simple.c                  |  4 +
>  22 files changed, 59 insertions(+), 197 deletions(-)
> 
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
