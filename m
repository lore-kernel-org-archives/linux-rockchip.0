Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E197C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 11:12:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 99A7864E2A
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 11:12:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 99A7864E2A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CY1YyZLWRd6iEnTrUIJn+sy+jf39OvmcMQBTQ8QpXuk=; b=wKdGLg3QOHKXCZc0q0tk2rZHL
	fFUZdUZKnGNUYgwHuCBW17UB1rCgJbDRgLAiwEdIt5DXeDUpvWW9FbbM5MiB6E0jThxd5jOqj86o4
	2WrRUMMYLwRW/GGJbKR5T5SitNrx+RHQRG8qg/GY8/oEXgUzDm+MjRv8ES5zpwkssq7S/r9gqBNXa
	yCxtFktrpgZGEmC1qy+hs4BIIsp3iRCkYJQUTg+NSm8vUMXdwVv2t0U/E+hoiNIPdR+R5FId7v0oO
	DuenriuQDOfAfwYm7wQ1yQr4asloqVumbZJ8VhdhdhyDt9z+l+5wQy2VMwQ8r9OVuaGjvbPCMC/HU
	b1fZ36bOA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9nQB-0002Ui-HO; Wed, 10 Feb 2021 11:12:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9nP9-0001si-Qf; Wed, 10 Feb 2021 11:11:32 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l9nP8-0003gY-PH; Wed, 10 Feb 2021 12:11:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 0/6] Support second Image Signal Processor on rk3399
Date: Wed, 10 Feb 2021 12:11:29 +0100
Message-ID: <110045238.nniJfEyVGO@diego>
In-Reply-To: <20210210111020.2476369-1-heiko@sntech.de>
References: <20210210111020.2476369-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_061131_927060_B672B624 
X-CRM114-Status: GOOD (  17.73  )
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
 cmuellner@linux.com, hjc@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 robh+dt@kernel.org, sebastian.fricke@posteo.net, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 10. Februar 2021, 12:10:14 CET schrieb Heiko Stuebner:
> The rk3399 has two ISPs and right now only the first one is usable.
> The second ISP is connected to the TXRX dphy on the soc.
> 
> The phy of ISP1 is only accessible through the DSI controller's
> io-memory, so this series adds support for simply using the dsi
> controller is a phy if needed.
> 
> That solution is needed at least on rk3399 and rk3288 but no-one
> has looked at camera support on rk3288 at all, so right now
> only implement the rk3399 specifics.
> 
> changes in v2:
> - enable grf-clock also for init callback
>   to not break if for example hdmi is connected on boot
>   and disabled the grf clock during its probe
> - add Sebastian's Tested-by
> - add Rob's Ack for the phy-cells property
> 
> Heiko Stuebner (6):
>   drm/rockchip: dsi: add own additional pclk handling
>   dt-bindings: display: rockchip-dsi: add optional #phy-cells property
>   drm/rockchip: dsi: add ability to work as a phy instead of full dsi
>   arm64: dts: rockchip: add #phy-cells to mipi-dsi1
>   arm64: dts: rockchip: add cif clk-control pinctrl for rk3399
>   arm64: dts: rockchip: add isp1 node on rk3399

of course everything was meant to be v2 in the subject.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
