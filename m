Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6297C3064D
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 16:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfuVRtYl6PprfQRFqHrn/ObXClp5OVH23FoYV6LGHHM=; b=bpGbeW1sDVwXUp
	5aGpMErmo/5ftIBWjr3PQ0vGutz7UtfS75m2YaBg8nTCCTz/roW7vnPGdVYb2rxvKYBRjRpbXh9/E
	JN+uEaBjgZbQwa/HHS6lS12JbiWFl4wNWpYHu1whHzc70L+sHGWPLjwa5ZmEOceBrKvLV0/WWxIwb
	mc9zqhRejXXZSkQWi6/GFlZ1hUakzSkn6y5mMNvqybkzfYn7q2iGBb5lNYoKwB7EHLFkEWcnD2POv
	7c9Sp2niF0XnMkYJFS61QB+O+P9zjOjrxgQYZbHqbSoLY3oSx9jd4Su2nCrQ7jeN+hSe2E/YYBzzJ
	6rJVz6IaDJfZDj7PygOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmRT-0000000HT9D-0x8c;
	Mon, 24 Jun 2024 16:21:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLmQp-0000000HSfQ-0Ymq;
	Mon, 24 Jun 2024 16:20:41 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQZ-0001wn-CQ; Mon, 24 Jun 2024 18:20:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	didi.debian@cknow.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi 4B
Date: Mon, 24 Jun 2024 18:20:13 +0200
Message-Id: <171924573796.612064.8146729525708691271.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623115526.2154645-1-andyshrk@163.com>
References: <20240623115526.2154645-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_092039_294534_1B81AA1A 
X-CRM114-Status: UNSURE (   9.79  )
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

On Sun, 23 Jun 2024 19:55:26 +0800, Andy Yan wrote:
> According to the hardware design, the i2c address of audio codec es8316
> on Cool Pi 4B is 0x10.
> 
> This fix the read/write error like bellow:
> es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x0000000c] -6
> es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x00000003] -6
> es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
> es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi 4B
      commit: 5d101df8fc3261607bd946a222248dd193956a0a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
