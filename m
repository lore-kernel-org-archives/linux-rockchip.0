Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D29FC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPsANFu5B9zqTmOyvKWdeQDkctRoudNvEMHIWhBLugk=; b=0oLi6MIkTvqcbP
	bch9aVFZlzhftoAshENqiax8yfk08PS74GPhzTFnJ+RKCOuF2YyYW25dNLnD/rPCyZzJGDJtQdzgc
	8rgJw3JkOSrVAdOacioNEb7Z9CLeSPendT65X01BrCSo+XOh1EbEl3xWBN/izgMugoF+yc4JUeG3R
	WKB7iXhfEDzHFsqRZD/4bXuEmPZLrMFSGHvI3dl2Ml/bOEEN2UsYkRtcsgHq5AAKrSeBjota4c0lZ
	fAHg/WyWWyMBCI8chgFUQNlPRZXh2Dn0DsO4Qa05wQy5zS8JE7r2N3HiRe9W1CYcHqY5tQckqBbq6
	98MpmLZSggNXbasaZxug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outrk-00AOQi-MQ; Tue, 15 Nov 2022 11:12:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1outpm-00AMuj-4K; Tue, 15 Nov 2022 11:10:32 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1outpf-0007ai-C3; Tue, 15 Nov 2022 12:10:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	Stephen Boyd <sboyd@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCHv3 0/9] RK3588 Clock and Reset Support
Date: Tue, 15 Nov 2022 12:10:19 +0100
Message-Id: <166851058432.863884.12311782948431945111.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221018151407.63395-1-sebastian.reichel@collabora.com>
References: <20221018151407.63395-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_031030_199575_510A1DF5 
X-CRM114-Status: GOOD (  12.99  )
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

On Tue, 18 Oct 2022 17:13:58 +0200, Sebastian Reichel wrote:
> This has been part of a bigger patchset adding basic rk3588 support.
> Since that gets more and more out of hand, I'm now sending patches
> for each subsystem as individual patchset.
> 
> Changes since PATCHv2:
>  * https://lore.kernel.org/all/20220930153857.299396-1-sebastian.reichel@collabora.com/
>  * rebased to v6.1-rc1
>  * define rk3588_rst_init() in clk.h to fix build warning
>  * add input clocks to the binding
>  * add some more rates from the rate table (merged downstream fix)
>  * fix input of mux_700m_400m_200m_24m_p clock (merged downstream fix)
> 
> [...]

Applied, thanks!

[1/9] dt-bindings: clock: add rk3588 clock definitions
      commit: f204a60e545ccd4bc28939054389690fd194cb5e
[2/9] dt-bindings: reset: add rk3588 reset definitions
      commit: 0a8eb7dae617a9537b9a64a6b14e63415c279eb5
[3/9] dt-bindings: clock: add rk3588 cru bindings
      commit: 4f5ca304f202938a07eb0c2e20551795286d817d
[4/9] clk: rockchip: add register offset of the cores select parent
      commit: cf87691f143e6cc5727767b02ec2be3725534a5d
[5/9] clk: rockchip: add pll type for RK3588
      commit: 8f6594494b1cb0ad14493795b436413cfe64a0f8
[6/9] clk: rockchip: clk-cpu: add mux setting for cpu change frequency
      commit: 2004b7b1803719eaaaee5fa6b089b1699a65d31d
[7/9] clk: rockchip: simplify rockchip_clk_add_lookup
      commit: ff94c8660dac444081f2f650fae36a283c55b117
[8/9] clk: rockchip: add lookup table support
      commit: ada8f95ba04e8fe07289b7de157ae99bb96bc8cb
[9/9] clk: rockchip: add clock controller for the RK3588
      commit: f1c506d152ff235ad621d3c25d061cb16da67214

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
