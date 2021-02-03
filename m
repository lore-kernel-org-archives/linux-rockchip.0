Return-Path: <SRS0=CWUy=HF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30651C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 19:54:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0F2A64F68
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Feb 2021 19:54:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F0F2A64F68
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SeNTrIwhGNVDUwmtUedn411gpyifTNJUVNTM1VdLPlM=; b=mFKbTWVgE6sPNOvr4YXQ1xilS
	/5oqoSNvQ0jxjMUYlZOQtwvflZNbApVnmt9UC6x76sYV8evouG1eR3ZPO98ke6EsEeVNWEahqvKyo
	gWnKrDKoiEm6xYrahzmOWSntGpfQxrqZS0uioyQL69DZtVJFb90IUnrH/4mEQk36Y+fVb7iWzE4TH
	H+XzmpOIU7Xctd8mSuEjn94DGRjGN7afsJsmxj9mmGPYslNqW89BoJr2vws95UdShUoKN4Bp2Pz4S
	M0wK0OkAESlDnyJBbF6UrTkh7TT4aqTAd2nGT6rawWTnxhuHqtwj4QhN31wZAA0V6Eyr/a4uXYHv9
	IZD9pF3Fg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l7OEi-0003aR-Mm; Wed, 03 Feb 2021 19:54:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7OEe-0003ZC-SH; Wed, 03 Feb 2021 19:54:46 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l7OET-0000yQ-R9; Wed, 03 Feb 2021 20:54:33 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Fricke <sebastian.fricke@posteo.net>
Subject: Re: [PATCH 0/6] Support second Image Signal Processor on rk3399
Date: Wed, 03 Feb 2021 20:54:32 +0100
Message-ID: <16624224.lhrHg4fidi@diego>
In-Reply-To: <20210203181422.txbd6kvujlmz4nju@basti-TUXEDO-Book-XA1510>
References: <20210202145632.1263136-1-heiko@sntech.de>
 <20210203181422.txbd6kvujlmz4nju@basti-TUXEDO-Book-XA1510>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210203_145444_981734_7D93D959 
X-CRM114-Status: GOOD (  25.77  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

Am Mittwoch, 3. Februar 2021, 19:14:22 CET schrieb Sebastian Fricke:
> Hey Heiko,
> 
> I have tested your patch set on my nanoPC-T4, here is a complete log
> with:
> - relevant kernel log entries
> - system information
> - media ctl output
> - sysfs entry information
> 
> https://paste.debian.net/1183874/
> 
> Additionally, to your patchset I have applied the following patches:
> https://github.com/initBasti/Linux_kernel_media_tree_fork/commits/dual_cam_setup
> 
> And just to not cause confusion the `media_dev` entries come from this
> unmerged series:
> https://patchwork.kernel.org/project/linux-media/list/?series=426269
> 
> I have actually been able to stream with both of my cameras at the same
> time using the libcamera cam command.
> I would like to thank you a lot for making this possible.

Thanks for testing a dual camera setup. On my board I could only test
the second ISP. And really glad it works for you tool :-) .

Out of curiosity, do you also see that green tint in the images the cameras
produce?

Thanks
Heiko


> If you like to you can add:
> Tested-by: Sebastian Fricke <sebastian.fricke@posteo.net>
> 
> On 02.02.2021 15:56, Heiko Stuebner wrote:
> >The rk3399 has two ISPs and right now only the first one is usable.
> >The second ISP is connected to the TXRX dphy on the soc.
> >
> >The phy of ISP1 is only accessible through the DSI controller's
> >io-memory, so this series adds support for simply using the dsi
> >controller is a phy if needed.
> >
> >That solution is needed at least on rk3399 and rk3288 but no-one
> >has looked at camera support on rk3288 at all, so right now
> >only implement the rk3399 specifics.
> >
> >
> >Heiko Stuebner (6):
> >  drm/rockchip: dsi: add own additional pclk handling
> >  dt-bindings: display: rockchip-dsi: add optional #phy-cells property
> >  drm/rockchip: dsi: add ability to work as a phy instead of full dsi
> >  arm64: dts: rockchip: add #phy-cells to mipi-dsi1
> >  arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
> >  arm64: dts: rockchip: add isp1 node on rk3399
> >
> > .../display/rockchip/dw_mipi_dsi_rockchip.txt |   1 +
> > arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  39 ++
> > drivers/gpu/drm/rockchip/Kconfig              |   2 +
> > .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 342 ++++++++++++++++++
> > 4 files changed, 384 insertions(+)
> >
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
