Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDBE7C61CE7
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jun 2025 07:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VEgvMW2V/QVYxRGDNIGc0I7HQcMfcpGhjy7rvAYvRTY=; b=Rq2cLrWXSNwViz
	8x15q8YOZ4Ho3ZrJslwpUMuxGl3mrieykgBIQzxbc4lVhZvoFuJAQetjzdUiH4q2RW16QP8e9vVQ9
	6yGBO0WocJQ8V7q9Bjgw+JzNZllVVrwVrEOYhrca9UPcUQQPshV5D++QqgnpgzTfUCqcdBfOw6Axg
	KEuF4AK53WC6YVj5h2a7zibIHGylRdAGwe4XkeYRSZTSa5dIMr4UpzAe3VfXTd7av5znpNJ1C1/fz
	m+5rhkIY8mdOarylxfm4SsDejcnLOtIaSTpo+vid3drk5nQ84P6yX8Rqj/Gf7WaogwjLQTWhNDBQT
	tLqMipwOymTAJMxwm80A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPG90-000000099E1-1lZ2;
	Wed, 11 Jun 2025 07:45:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFxG-000000097F7-2JjF
	for linux-rockchip@bombadil.infradead.org;
	Wed, 11 Jun 2025 07:33:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=3ezVxbmekm9/g4ysQqa2hM43KCRAzREg88IlWc8iOws=; b=McLGKif3arkYVvx+6M9edRHDmG
	+9HSch+XAc8QMRvExKPwRK1IFiJ0vS/XiBRzxZAM8t6KqIrF9Aai1djSh1Ll/lRBbchzQQMsMJ0xt
	8u1f+E4AwD2FqcRnD8pqVCZFjbXMjY79G7IeMO7l1t8vtqwrpqGQCO3qYonhQ4j5NtMqe1m2scEGx
	5DG3VAYmczdqIlvEFNZE/kbdyeSK8ExBVr8XjAlFSSgVgCWrWboj9pLJXh4S+XKzbmY+Ph9lajVkN
	ZR36NGzRZY0PdESsD6CkxoAOKcDVEQ1AlSO5UAcqIqH77P5mpYxc6wJUvnLU3Y6IaFl8rsGxupgW6
	1I0HAX8A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFxD-000000029x2-43T0
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Jun 2025 07:33:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uPFwv-0007lf-9R; Wed, 11 Jun 2025 09:32:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPFwt-002uFg-1G;
	Wed, 11 Jun 2025 09:32:39 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPFwt-006l8F-0q;
	Wed, 11 Jun 2025 09:32:39 +0200
Date: Wed, 11 Jun 2025 09:32:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] PM / devfreq: rockchip-dfi: add support for LPDDR5
Message-ID: <aEkxF2Q2lBdfmUuJ@pengutronix.de>
References: <20250530-rk3588-dfi-improvements-v1-0-6e077c243a95@collabora.com>
 <20250530-rk3588-dfi-improvements-v1-2-6e077c243a95@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250530-rk3588-dfi-improvements-v1-2-6e077c243a95@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_083300_137109_DFFC3F92 
X-CRM114-Status: GOOD (  33.76  )
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

On Fri, May 30, 2025 at 03:38:09PM +0200, Nicolas Frattaroli wrote:
> The Rockchip RK3588 SoC can also support LPDDR5 memory. This type of
> memory needs some special case handling in the rockchip-dfi driver.
> 
> Add support for it in rockchip-dfi, as well as the needed GRF register
> definitions.
> 
> This has been tested as returning both the right cycle count and
> bandwidth on a LPDDR5 board where the CKR bit is 1. I couldn't test
> whether the values are correct on a system where CKR is 0, as I'm not
> savvy enough with the Rockchip tooling to know whether this can be set
> in the DDR init blob.
> 
> Downstream has some special case handling for a hardware version where
> not just the control bits differ, but also the register. Since I don't
> know whether that hardware version is in any production silicon, it's
> left unimplemented for now, with an error message urging users to report
> if they have such a system.
> 
> There is a slight change of behaviour for non-LPDDR5 systems: instead of
> writing 0 as the control flags to the control register and pretending
> everything is alright if the memory type is unknown, we now explicitly
> return an error.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 84 ++++++++++++++++++++++++++++--------
>  include/soc/rockchip/rk3588_grf.h    |  8 +++-
>  include/soc/rockchip/rockchip_grf.h  |  1 +
>  3 files changed, 73 insertions(+), 20 deletions(-)
> 
> @@ -147,21 +200,7 @@ static int rockchip_dfi_enable(struct rockchip_dfi *dfi)
>  			       DDRMON_CTRL_SOFTWARE_EN | DDRMON_CTRL_HARDWARE_EN),
>  			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);
>  
> -		/* set ddr type to dfi */
> -		switch (dfi->ddr_type) {
> -		case ROCKCHIP_DDRTYPE_LPDDR2:
> -		case ROCKCHIP_DDRTYPE_LPDDR3:
> -			ctrl = DDRMON_CTRL_LPDDR23;
> -			break;
> -		case ROCKCHIP_DDRTYPE_LPDDR4:
> -		case ROCKCHIP_DDRTYPE_LPDDR4X:
> -			ctrl = DDRMON_CTRL_LPDDR4;
> -			break;
> -		default:
> -			break;
> -		}
> -
> -		writel_relaxed(HIWORD_UPDATE(ctrl, DDRMON_CTRL_DDR_TYPE_MASK),
> +		writel_relaxed(HIWORD_UPDATE(ctrl, ctrl_mask),
>  			       dfi_regs + i * dfi->ddrmon_stride + DDRMON_CTRL);

You could move the HIWORD_UPDATE(ctrl, ctrl_mask) to
rockchip_dfi_ddrtype_to_ctrl() and by that you only have to pass one
u32* to that function.

That's just nitpicking though, so for the series:

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
