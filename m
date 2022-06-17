Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32023C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 17:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UekFMMGMr9Pirt27Hr6wWI2as5UHDRlWUl8h1hWMiQE=; b=dBKNlnOJbnzPIM
	XGiUWD/BPoCyPKrTV5QxoMil/u6CLxNLujDTt5ibKnVkplzrPDL+4ofhXuK+/BT4acK57CxuQB4Z1
	wJ/pLm6CZ2tFLIxqLdCPFwwXizmXN1G1oxBn2cfzgkzAAM8XYEn7Ak/DD2OaWwLOeMR4glnRJqRZs
	kpu3EklRgvlawaJCU+fQcbQsui29816Ia/osZHGBDshMQGerl/Bd6Dqcwu1BUDkQgCD+a4s6MpFW2
	BHfuAYxyhv7RyZx50e9gzs57L4keyxfBJX6Lh1kAhOBcVFmCa79z0x1abLTBwUDcgaHLrA5ojQFwJ
	Nc023rIIvXUqKRtiZrcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2FUW-008Nlh-BT; Fri, 17 Jun 2022 17:10:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2FUU-008Nko-5N; Fri, 17 Jun 2022 17:10:39 +0000
Received: from [213.70.33.226] (helo=phil.intern)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o2FUM-00063w-JR; Fri, 17 Jun 2022 19:10:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sjoerd Simons <sjoerd@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	Alex Bee <knaerzche@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Akash Gajjar <akash@openedev.com>,
	Levin Du <djw@t-chip.com.cn>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 0/3] Add support for Radxa ROCK Pi S
Date: Fri, 17 Jun 2022 19:10:27 +0200
Message-Id: <165548567344.3407211.1662879009841453110.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220614064858.1445817-1-sjoerd@collabora.com>
References: <20220614064858.1445817-1-sjoerd@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_101038_242425_99B891C7 
X-CRM114-Status: GOOD (  14.09  )
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

On Tue, 14 Jun 2022 08:48:54 +0200, Sjoerd Simons wrote:
> This adds a device-tree for the Radxa Rock Pi S; The first patch was
> originally submitted a few years back but seems to have stalled. I've
> adjusted it to sort the device nodes and drop duplication of dtsi
> properties. The second patch adds support for a bunch of additional
> peripherals.
> 
> Changes in v2:
> - Split binding documentation into its own commit
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi S
      commit: 5a86111e9defa367499c932c8e23b03897a97a2b
[2/3] arm64: dts: rockchip: add ROCK Pi S DTS support
      commit: 2e04c25b13206aabb5ffa38632d638c340e5857c

dropped some unneeded double-blank lines from patch2

[3/3] arm64: dts: rockchip: rock-pi-s add more peripherals
      commit: bc3753aed81f6b4a81f3e8bbb32b90f9a8c7cca3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
