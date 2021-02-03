Return-Path: <SRS0=CWUy=HF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87D83C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 18:14:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B32D564F7E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 18:14:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B32D564F7E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=posteo.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H85fgxUoxDWKfi8f0bYJvcONtmzSndqgnaAp8F7ZAXM=; b=kh9rSm/WIE/jkw6FMMExbMsvc
	V5sTHmkH7MfNg+zlc0PMY8jq61Ih4c23oSf79olZYobCTfyv/+Rco4l9W3deQupKInS8n2ATAXet2
	xcJK66khAGsgAx4hL2HEInq25CIR8ofWaWtirf1QET5GOXuU//Xkvt+igI3Ve0WP/oC3pQOyLYNxr
	8omMHStyaVcZUJ8U4mf1aMDxgOPEBen6bJBFUyHInW6sUs+fiDx8uURx0czsuY7pW1H8bCKpelmSC
	kDj1XDEAtP6Pr33PiOg7x9l9GDRDxoEbcuklcVJHwUnUsUWMzZNxWapkUDtnonjlXSbMw5ojenH/r
	kso6G0FvA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7Mfx-0004F9-9u; Wed, 03 Feb 2021 18:14:49 +0000
Received: from mout01.posteo.de ([185.67.36.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7Mfr-0004E1-Na
 for linux-rockchip@lists.infradead.org; Wed, 03 Feb 2021 18:14:45 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id F0BD9160065
 for <linux-rockchip@lists.infradead.org>; Wed,  3 Feb 2021 19:14:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
 t=1612376077; bh=95Jo6jadPYtj6MXt69Zot2RehnRdPqf90i4ijMVzY88=;
 h=Date:From:To:Cc:Subject:From;
 b=WPu3irPOSwnqaUPdGdKgFDOQTFH8jTR/M+vXhZEah1KnwWOX+ByCZxblNf5fouKBf
 dYp1NPyJaaNMe92UcxHvQpBF4chmMwPFfGG1th3gaTKouO5ogikfx0fBmCu9jA9pMw
 OR8rE5eguSq2e/vQjJ5bwgD8x5/7Q6UE2QJT17WSQaw4HIOZM18DciNOSJLycpUQNH
 XDt+J0EqxXs+pSwrjJC+OHB355lcWk3nfCEnHkab+O6loJLW4tNjhCeRDuBwoSl+xY
 8jEAR/ozoDsgsy8eJ9jAXt1mMxgaJZ424QvDwTLZFkTpLuZRZV/bzqxOootsfoasnR
 YEbQv9KnCNv6g==
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 4DW8w34mLRz6tmS;
 Wed,  3 Feb 2021 19:14:27 +0100 (CET)
Date: Wed, 3 Feb 2021 19:14:22 +0100
From: Sebastian Fricke <sebastian.fricke@posteo.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 0/6] Support second Image Signal Processor on rk3399
Message-ID: <20210203181422.txbd6kvujlmz4nju@basti-TUXEDO-Book-XA1510>
References: <20210202145632.1263136-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210202145632.1263136-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210203_131443_997528_214B2DCB 
X-CRM114-Status: GOOD (  14.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, dafna.hirschfeld@collabora.com,
 cmuellner@linux.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, robh+dt@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Heiko,

I have tested your patch set on my nanoPC-T4, here is a complete log
with:
- relevant kernel log entries
- system information
- media ctl output
- sysfs entry information

https://paste.debian.net/1183874/

Additionally, to your patchset I have applied the following patches:
https://github.com/initBasti/Linux_kernel_media_tree_fork/commits/dual_cam_setup

And just to not cause confusion the `media_dev` entries come from this
unmerged series:
https://patchwork.kernel.org/project/linux-media/list/?series=426269

I have actually been able to stream with both of my cameras at the same
time using the libcamera cam command.
I would like to thank you a lot for making this possible.

If you like to you can add:
Tested-by: Sebastian Fricke <sebastian.fricke@posteo.net>

On 02.02.2021 15:56, Heiko Stuebner wrote:
>The rk3399 has two ISPs and right now only the first one is usable.
>The second ISP is connected to the TXRX dphy on the soc.
>
>The phy of ISP1 is only accessible through the DSI controller's
>io-memory, so this series adds support for simply using the dsi
>controller is a phy if needed.
>
>That solution is needed at least on rk3399 and rk3288 but no-one
>has looked at camera support on rk3288 at all, so right now
>only implement the rk3399 specifics.
>
>
>Heiko Stuebner (6):
>  drm/rockchip: dsi: add own additional pclk handling
>  dt-bindings: display: rockchip-dsi: add optional #phy-cells property
>  drm/rockchip: dsi: add ability to work as a phy instead of full dsi
>  arm64: dts: rockchip: add #phy-cells to mipi-dsi1
>  arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
>  arm64: dts: rockchip: add isp1 node on rk3399
>
> .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
> arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  39 ++
> drivers/gpu/drm/rockchip/Kconfig              |   2 +
> .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 342 ++++++++++++++++++
> 4 files changed, 384 insertions(+)
>
>-- 
>2.29.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
