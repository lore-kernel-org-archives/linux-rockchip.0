Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB22ACD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 18:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMoshZfCKiOsivCO5N/EtlJUL1ZtGaBdNKiYJstoDVQ=; b=pmE9Ovf/GkREty
	Jh7J+upHa22FIVd76EryIq7k1QffUbTOMR9+zYMp1n3YDSpCkYJVVhpuMXnKijrFFy+EioPnF205+
	bUeuV9JU1Zh0IdA1DWA5ZlofZ75sSY9c1PWkFiQYyjS7AxLwi7Na8flwzMuCQo2V6G8SSJ8ExeQC6
	CaocsYRXaAfdtqgLXRYAhag7kYXqrLRPDfXuhwaSqbKGVBTf+L4sYXqQpPpHC1VxHggfsf1GfqbC7
	KYb8WEaLoTzAl6Bw7kP/KLsMMjRE6D13qqYEBHMmFaFPiE6xRTE6EO54iY7PtQfoFuUYNsWTLivkl
	tPiIullgNcnX2Xu4Z86A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKZd-0000000HByY-14Rg;
	Tue, 05 May 2026 18:32:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKKZa-0000000HBxr-41FG;
	Tue, 05 May 2026 18:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8XLywXLhWtlTlBR18sfqteObM8GZewXIF3W7Z1e289s=; b=u4hhcy2bO54pmQJm1LJusecOJf
	AYn8xH4o6FndxOJ34cYYYs9dWmAd7VHE08vyjd9h+yQvTmrn0+ykAdncYSsOJsiTujLd5ABpqgTh8
	X1HU7GpdO2esO5kTE9srB+RpoOV06LiQbuJbPfiDRxCDkk0/uHIXoYtbzp2Hr6gWWJLAE77tz7clS
	hLMK5e7Dsyn7T9IFdP7TN4TzYodeqegaIUk4N8xb3mDUUyFLb2tl5Fd+CWdQhmWIctKacDVfmjAfd
	W/C3ykqo8MVvCN+E0cj/kMTSUtLM5d6+wh2vtCqhED9flFcVbrIhKErU4v52+LyrRRFYxzwGxdkCe
	luKunzHA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 00/13] arm64: dts: rockchip: Wire up frl-enable-gpios for RK3576/RK3588 boards
Date: Tue,  5 May 2026 20:32:40 +0200
Message-ID: <177800595582.3294944.15259294512505640833.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
References: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_113246_997646_C4844F4E 
X-CRM114-Status: GOOD (  12.60  )
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


On Tue, 28 Apr 2026 00:57:18 +0300, Cristian Ciocaltea wrote:
> Several boards based on the RK3576 and RK3588(S) SoCs use a
> GPIO-controlled voltage bias circuit on the HDMI data lines that must be
> switched according to the active link mode: asserted for HDMI 2.1 FRL
> and deasserted for HDMI 1.4/2.0 TMDS.
> 
> This series adds the frl-enable-gpios property to the HDMI nodes of all
> boards for which the GPIO configuration could be identified from vendor
> BSP kernel sources and/or schematics where available.  In a small number
> of cases it was necessary to extract and disassemble the DTB from the
> vendor firmware image.
> 
> [...]

Applied, thanks!

[01/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3576 boards
        commit: 2cd97880fbc434b49a211784561586f0397499b7
[02/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3576-luckfox-core3576
        commit: 12eb09ee67cba1e3cc0c75149d0a04a5187ca575
[03/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3576-nanopi-r76s
        commit: ba0d7cfb9870064296a8d4d57ff2c230166ada3c
[04/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3588 boards
        commit: 643d6733e58c663b66defea758bfb8d336047456
[05/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3588s boards
        commit: 3305c44489505e98e794cacce80cb1de9f1b81ad
[06/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3588s-gameforce-ace
        commit: cb3ee61e35a9d60e6410526fec7b74af9be22d88
[07/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3588s-khadas-edge2
        commit: bb85f4f5541de9abbe7e300e94d58ea888dd3b33
[08/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3588s-orangepi-cm5-base
        commit: 640c768d315b25f8e56844d1d71c8d0040dfd88b
[09/13] arm64: dts: rockchip: Add frl-enable-gpios to rk3588s-roc-pc
        commit: 0c58a27bf04d88c979dc8ce86c62bb13d15626e4
[10/13] arm64: dts: rockchip: Drop unnecessary #{address,size}-cells from rk3588-jaguar
        commit: 161e023cafaca600aa7e5d5fab437334e6e6bcca
[11/13] arm64: dts: rockchip: Add missing pinctrl-names to rk3576 boards
        commit: 78f650c45ec342c16f80c50e7ee77272e76f179e
[12/13] arm64: dts: rockchip: Add missing pinctrl-names to rk3588 boards
        commit: 0c2c0b6cdd71c5a43f83db2e0dcffe4701d10b87
[13/13] arm64: dts: rockchip: Add missing pinctrl-names to rk3588s boards
        commit: 224aa83f3f73a8b17051c1639125260cc04617bc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
