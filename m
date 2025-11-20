Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2A32CFA447
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 22:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xP3pDW4oYS5rYwdJnIOznamCZxPhNc7U2K3Fakgfj7k=; b=Av3rC9dIB0TaMR
	WdZNcOspcizrz/txdzIr2s/+Sfq/wmMUFw79mYPZaM0LX6Ze6C7u0AKrZZJceqxricTu7CcplbA0K
	oRm6CJvWAaBUiFeiAHy/paQDVWuT/zzsjN+EfEF1axnHQ68VzfD8jTC0AJLTRrtfnbEKr2z3Xv207
	yzwn2miRK+W2TcUtw7L12eQLyMOuAL/vNsok4Q4tOPoWAjwPvjtfRUz+947VtmsGoSJ1hUyijhGZ1
	bU/+zHxxhXV9Yi3+oA1HLMODkPnoh2fX/84A56U5ptlveCdFHdT6VIush68M/0WpZ7IQz7/8pHTgb
	zzV/JxrUhskfAW5y6FuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD47-00000007WVc-1inM;
	Thu, 20 Nov 2025 22:23:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3y-00000007WNC-34ph
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Nov 2025 22:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=bwxznhMq6xEErFPu2+B+diw5QbORrPtnVJP8dxJ7wuA=; b=IK0aoKtxCDr6DIZiVPIZLAmy6i
	FxmVFlAvA/0A1eVM2tqj4eXzc30wsK2hXYK8zu4oWpUcJJg9jS5nV8qH6OBE3KlELRYlxgII7q+Xu
	iv5xXBOECXLjwWarOJ1CnQFMkfqCD41CM8ksIf1PJ7+qqEymnHvihDFE9Zj0Ltit3eJZy1QaxIun9
	4AED3p9AK1pRQ4+jg1PDi7av30h+RNKsxRca/ePse2Pm1Hjj61P+fB1LAZbaulBC/Dg49yUax9qX5
	HACtnj47McMkCe7WRR5pKlEZvfPbbZBYGhd7GZJvVG9cEn2XMms3FPhveJFRr4Al+ecEcsvJ1ztSQ
	WIYOqp/g==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3a-0007Je-2H; Thu, 20 Nov 2025 23:23:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	pgwipeout@gmail.com,
	didi.debian@cknow.org,
	jonas@kwiboo.se,
	ziyao@disroot.org,
	amadeus@jmu.edu.cn,
	nicolas.frattaroli@collabora.com,
	pbrobinson@gmail.com,
	wens@kernel.org,
	detlev.casanova@collabora.com,
	stephen@radxa.com,
	sebastian.reichel@collabora.com,
	liujianfeng1994@gmail.com,
	andy.yan@rock-chips.com,
	dmitry.baryshkov@oss.qualcomm.com,
	kuninori.morimoto.gx@renesas.com,
	damon.ding@rock-chips.com,
	kylepzak@projectinitiative.io,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v3 0/3] Consolidate and clarify LED device tree descriptions on Radxa boards
Date: Thu, 20 Nov 2025 23:23:04 +0100
Message-ID: <176367711181.9778.6379873847365673369.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251113124222.4691-1-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_142338_820345_A90503A0 
X-CRM114-Status: GOOD (  10.76  )
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


On Thu, 13 Nov 2025 12:42:19 +0000, FUKAUMI Naoki wrote:
> Currently, on Radxa boards, the power LED is turned on immediately
> after power-up, independent of software control. The heartbeat LED and
> other available LEDs are subsequently turned on by the initial
> software, such as U-Boot, to indicate software is running.
> 
> However, the device tree description for this behavior is inconsistent
> and fragmented, with definitions split between the main Linux DTS
> files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Use default-state for power LED for Radxa boards
      commit: 6ed597fdbcfa5ffc1a01c8740320c5a20093b863

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
