Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA1F0C38A02
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Oct 2022 08:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JErxwYMaSM3u79Z/i54Yb4E8irKaYlRS3mlzgNsxqbI=; b=Dc9qU80taKbz7p
	Qv/WT3FkqucbXEDT27yHPs4/26lzJBvWr5R45ITm92jRfWBfV7qWQzj3yVIOw5TyfURxJwhBGVXJu
	RqNXMy99byHyLJlJrdf10KydqQkuhXiLhUixZXmqjQx1KtYiQVxZklxPA/OgeA4S99d8I3xB3pdXv
	8W6x/gNX83eplEHpDnGnWAviqG54vX4v1sWDg0WSZcGcA0Fcw3nFaefIQodydIDqiwxvVU5o2YOVi
	FvQ6oGWH3oa39nTAGYxk77eoPbpTvjwtml49CZS3Wug99yP7kWiRobG5oGaE9AH7wMpMuMhCyc3No
	XC98sq0lwyvX805AznBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oogxP-005G0X-Bt; Sat, 29 Oct 2022 08:12:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oogxF-005Fyf-Ez; Sat, 29 Oct 2022 08:12:34 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oogx5-00055T-D4; Sat, 29 Oct 2022 10:12:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: herbert@gondor.apana.org.au,
	davem@davemloft.net,
	Corentin Labbe <clabbe@baylibre.com>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	ardb@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Date: Sat, 29 Oct 2022 10:12:21 +0200
Message-Id: <166703105270.1426558.18336536991217213193.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_011233_535908_1630A407 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

On Tue, 27 Sep 2022 07:54:38 +0000, Corentin Labbe wrote:
> The rockchip crypto driver is broken and do not pass self-tests.
> This serie's goal is to permit to become usable and pass self-tests.
> 
> This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)
> 
> Regards
> 
> [...]

Applied, thanks!

[26/33] clk: rk3399: use proper crypto0 name
        commit: b136468a0024ea90c1259767c732eed12ce6edba
[27/33] arm64: dts: rockchip: add rk3328 crypto node
        commit: d1152bc533c941f7e267bf53d344cee510ea2808
[28/33] arm64: dts: rockchip: rk3399: add crypto node
        commit: 8c701fa6e38c43dba75282e4d919298a5cfc5b05

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
