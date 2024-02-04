Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C040C48297
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Feb 2024 11:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2brxMBpKbOVoLgDyoie4GbOILNQ1AhoTVMjXVytthAw=; b=f/9MZQWYAp+sq/
	Me0Gl3tufEPu+FZFNql1ed0JqmaD7lO17TWC7qLpvpRRc/8uXv5HQeI2l28rWM4dW5h+XS15zIKJj
	LYOtv/a9V4wk+g/sxzZ2F26JAZDeG8ixPV3/dXoRaT86ONmd9ZfhandLHCqnK38QESkCCzlmNdYvm
	QXdtuw7G5VggXiPzr/4ICUdVrBQBo58BrduSfA1DIwnmVXIBfr92CTPVQS+jWOXWlZTCdSm/DbvMf
	XqGWGej51hJdey0JlJkxkr1OVf8AB0pO9TtWmDtNQ4ndebXgVwO4GCo/6knXH7wCWQKqVp5j66xjU
	5S514RV8LjhhXlwpa//g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaV0-00000000e6v-20K1;
	Sun, 04 Feb 2024 11:17:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaUw-00000000e4K-3cw6;
	Sun, 04 Feb 2024 11:17:20 +0000
Received: from [185.175.219.2] (helo=phil.fosdem.net)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rWaUp-00051V-1q; Sun, 04 Feb 2024 12:17:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi 4B
Date: Sun,  4 Feb 2024 12:17:05 +0100
Message-Id: <170704542189.2517832.10645480852416416649.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240201121106.1471301-1-andyshrk@163.com>
References: <20240201121106.1471301-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_031718_938663_6F908ED2 
X-CRM114-Status: UNSURE (   8.57  )
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

On Thu, 1 Feb 2024 20:11:03 +0800, Andy Yan wrote:
> Follow others rk3588 based boards, and u-boot only use mmc0/1
> as mmc boot targets, so aliase sdmmc as mmc1.
> 
> 

Applied, thanks!

[1/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi 4B
      commit: a41f91b4da1490b90ae5859f3464e94d418fea2c
[2/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi CM5 EVB
      commit: cebda3dd36bebb11d3e6df4d1944a1cdcf3cd4cf
[3/4] arm64: dts: rockchip: rename vcc5v0_usb30_host regulator for Cool Pi CM5 EVB
      commit: c7e8dbb3bc12f389d617e6c0e9537f11a1fa6eb1
[4/4] arm64: dts: rockchip: Fix the num-lanes of pcie3x4 on Cool Pi CM5 EVB
      commit: 5556a8c3af8b4ee648b0fd4cdb4a1356d92de07b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
