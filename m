Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC959C678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 23:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JYIqlAG2IYM72i9OtQSADZCx9NsqWg7ENumGrIyvHTs=; b=Qd9bh8l5h2Hz1m
	vzEby2kkAe85+js0CDaHINK8wQ0DwMBjRGctHCW4Ao04alXfpVyDqC2D2xeSvQcmLt+zGYD2D2MnL
	ZMymrOnMXHt3OQfovU6tr5FtVa8yfm7bSy9SmFfVBOgwpw9SgdsXIWGc5CBp8ECGIeM//EVw9TPCS
	kbqIFme8apBoq/ZJN7XG86mM40/vd6zW4VxFwHv+It/h05YdB8JBGVawWD8GnWETd+brjdU8w2ga9
	q3VCHmGk9gBl2RFJIklpUT9NtldJ5tQLCZtTju5cq5UbyjTk27dEguNrzp6oks3dn/lrtENVIO3vr
	SxPlH1ooscAzulO34kVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqe-002tEM-9o; Tue, 07 Mar 2023 23:36:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqT-002t9s-KK; Tue, 07 Mar 2023 23:35:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZgqO-00025h-Ky; Wed, 08 Mar 2023 00:35:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	inux-kernel@vger.kernel.org,
	linux-amarula@amarulasolutions.com
Subject: Re: [PATCH] arm64: dts: rockchip: rk3566: Enable USB OTG for Radxa CM3
Date: Wed,  8 Mar 2023 00:35:33 +0100
Message-Id: <167823207788.205469.17479198529851037907.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230223135929.630787-1-abbaraju.manojsai@amarulasolutions.com>
References: <20230223135929.630787-1-abbaraju.manojsai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_153549_695805_BFE23CA8 
X-CRM114-Status: UNSURE (   9.85  )
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

On Thu, 23 Feb 2023 19:29:29 +0530, Manoj Sai wrote:
> Enable USB OTG support for Radxa Compute Module 3 IO Board
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3566: Enable USB OTG for Radxa CM3
      commit: 477ed3ade6a46e445b4e2348b710c51df4f6f4b1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
