Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CD9FC6FA82
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Sep 2022 06:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WRX2LuDEPveH+P/qExt8j15/ZdJjUdiQixM4qifthuo=; b=XJJrcdnZJUQyxz
	AAu5YwBT4m5ncz/ByfP5ciPMwlJT4sQUJy5zgF9A6hqDL1QxZRbGp5ydGzA0PADV6SZbw7HA1NPoJ
	54X0DksoWTK/N/0CtRyMW0bD0K8JeEBla3kbF8DC5/k5uP5ypct8lFC4jKytCrJTj+HuGxPoqlTIn
	tbOn3TWObNK1bBNhzV21KOrI2Z6lKoLIXtg2yRCM4v7Uyv2Q1ZFzLqhKGbNlz2d1Iy67YNvzlYxAs
	iG0l7a7+ci2V9p50FrGR51tlE8e3ptUVf6OYLGGFIRP8l+toxvPGKC67bbEvak7TakawD2mrlAc4q
	6MbRfPE3UVfU4q7tkiRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzV-00DdXo-6h; Thu, 22 Sep 2022 06:47:21 +0000
Received: from mx-out2.startmail.com ([145.131.90.155])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obFzR-00DdUI-WD
	for linux-rockchip@lists.infradead.org; Thu, 22 Sep 2022 06:47:19 +0000
From: "Marty E. Plummer" <hanetzer@startmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=startmail.com;
	s=2020-07; t=1663829229;
	bh=2dzRVdpQozlohzrVy/s1FYCAL5P+HUml4WY6gfP8Ors=;
	h=From:To:Subject:Date:Message-Id:MIME-Version:
	 Content-Transfer-Encoding:From:Subject:To:Date:Sender:Content-Type:
	 Content-Transfer-Encoding:Content-Disposition:Mime-Version:
	 Reply-To:In-Reply-To:References:Message-Id:Autocrypt;
	b=fcaHasGI9eRkYcRyfg/UPn02OyHxPGTzf/4LP4opu3hJTLIGxo3tnspqtVnkZj9bC
	 BGtWYKgDCLAyVWwH3HyhOup68rwM+VEadlOtcY1SZC+cqJsoPPnLzkm1K/RtMQkf5g
	 p4txJx+G2MCnjjCsa5t+4LKpP6GhVdUWafCTawnne5NPkdwXluHIJTsvEY98Ud4Hpo
	 G34Jugin1Tes9dfvg85W5gPj9ysoq93wU2GY440P//D9lHeDY+N2EObgSHLxDxx8rJ
	 f6w4IB3jdzB27U1u93db6wiHpWIOXHXHyWHMUzbYKD3ov2VSDwBhrZH02k17Q75bzV
	 eMV+jOvOo9V+w==
To: U-Boot Mailing List <u-boot@lists.denx.de>
Cc: Simon Glass <sjg@chromium.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
	"Marty E. Plummer" <hanetzer@startmail.com>,
	Artem Lapkin <email2tema@gmail.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Xavier Drudis Ferran <xdrudis@tinet.cat>,
	linux-rockchip@lists.infradead.org
Subject: [RFC PATCH 0/4] Alternative debug outputs for rockchip devices
Date: Thu, 22 Sep 2022 01:46:59 -0500
Message-Id: <20220922064704.1740759-1-hanetzer@startmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_234718_218572_F69BD692 
X-CRM114-Status: GOOD (  13.30  )
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


I don't intend for the last change to be included in mainline, I just
need some form of serial output to see why archlinuxarm, alpine linux,
and Fedora workstation all fail to boot on this hardware (rk3399-gru-kevin).
Or at least, I think its failing. At the point of booting the kernel the
bottom inch or so of the screen corrupts a bit and then nothing. It
could be working, but without output on screen or uart2dbga I have no
idea what is going wrong.

I *would* use the uart-to-usb functionality of the rk3399, but as far as
I know this only works with the 2.0, and I'm not sure if those are
available on the rk3399-gru-kevin's type c ports. Do correct me if I'm
wrong.

In addition, the GRF_SOC_CON7:grf_uart_dbg_sel is, as far as I know,
undocumented, outside of the GRF_UART_DBG_SEL_C enum in grf_rk3399,
so the other two options (A and B) are just based on my assumptions.
If someone who *actually knows* could elaborate on it and correct me if
needed I'd greatly appreciate it.


Marty E. Plummer (4):
  rockchip: rk3288: enable u-boot.rom for speedy
  rockchip: rk3288: enable uart2->usb redirection
  rockchip: rk3399: fix typo in grf file
  rockchip: rk3399: attempt to redirect uart2dbga to sdcard

 arch/arm/dts/rk3399-gru.dtsi                  |  7 +---
 arch/arm/dts/rk3399.dtsi                      |  4 +-
 .../include/asm/arch-rockchip/grf_rk3288.h    | 41 +++++++++++++++++++
 .../include/asm/arch-rockchip/grf_rk3399.h    |  5 ++-
 arch/arm/mach-rockchip/rk3288/Kconfig         |  2 +
 arch/arm/mach-rockchip/rk3288/rk3288.c        | 20 +++++++++
 arch/arm/mach-rockchip/rk3399/rk3399.c        | 18 ++++----
 7 files changed, 80 insertions(+), 17 deletions(-)

-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
