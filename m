Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B7BC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Oct 2022 07:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mkTN9Z0ZltUXV1uBgv3Bc2kMPwt0o8nGKbqYV0QB974=; b=QfwVEN2fuRJ1IU
	rGrFZvq6FQrtHMoMY71LMRI5Ytl+gS5DNb26vee8gPT+/qNu+ixSlv/WXEejAXyj8+6pnT7akkU0F
	VZAfwjxnXNBClnMHQuDXiD0F3ilPm6vA6xJgw59oIhdghNQEwAI4R30m17cFjhto5JMZu7kYLREhH
	vHANklFzaNuTbJXk5UsfSHanI2UIhOjWLKVA3SI0+UKsKSz8QaXfAXCyClKuel3YmwclopG09TeKn
	Ux7FlK+yNLI56IvcipoGAjOQ6mDb0+r3jKE8uNCIG+h+NugSvYpyQL69fvqAf1L07GcgMWZPqovGe
	JLwAMIrlBj5hLEpQSnFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okh9W-003ruF-2a; Tue, 18 Oct 2022 07:36:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okh9I-003rpn-GY; Tue, 18 Oct 2022 07:36:29 +0000
Received: from p508fc209.dip0.t-ipconnect.de ([80.143.194.9] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okh9B-0004ms-Eq; Tue, 18 Oct 2022 09:36:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable tsadc for ROCK 4C+
Date: Tue, 18 Oct 2022 09:36:20 +0200
Message-Id: <166607857373.316367.10282376222807759812.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221018072242.2348995-1-naoki@radxa.com>
References: <20221018072242.2348995-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_003628_573392_DBB205A3 
X-CRM114-Status: UNSURE (   8.02  )
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

On Tue, 18 Oct 2022 07:22:42 +0000, FUKAUMI Naoki wrote:
> add and enable Temperature Sensor ADC for Radxa ROCK 4C+
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: enable tsadc for ROCK 4C+
      commit: 7f767e6817f5523c4d2442cd35bf9d7ca3548f56

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
