Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD513C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Jul 2022 15:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifM0Th/Tc0ecBSE2qO5xEsOSibLzHfWrwZIq8qotZhw=; b=W+Selhgek9KaX6
	OHEe4mS6lfJ7NY3HE91OQ6D1OjtKQY9so2xGLhOvcgAaRcEwSWc+wBMNAtMBChjyWDuQZ+SfRkg7a
	y8uiAgNmK/5VrmYYdtow2qkP62dHWRQvzCtSZq30UHyiJMwG4hGf+ZW7ogCDzCKsFVvK+TP+T9A+K
	sdEFM2ItUf25j/wgfE8sDrnkbX1sRsiRS8jIIduIIivu33xmH42MOpcrObAG6n5iBw4p38daqKO+c
	/5mbc4jriXX/vA1PumBX9sDthkJTRONWkUlkSU5X3yQgaZCl0uG/6MA8nLD+94DbVAx0Cm83KYksC
	UicMQFRU4iKb3cW0eVbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Nh9-009cKj-OZ; Mon, 04 Jul 2022 15:09:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8Ngx-009cGQ-VG; Mon, 04 Jul 2022 15:08:53 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o8Ngo-0002za-3y; Mon, 04 Jul 2022 17:08:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Liang Chen <cl@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: enable hdmi tx audio on rk3568-evb1-v10
Date: Mon,  4 Jul 2022 17:08:39 +0200
Message-Id: <165694729081.1285444.1968110431454563852.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220614230354.3756364-1-michael.riesch@wolfvision.net>
References: <20220614230354.3756364-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_080852_049467_D3C9EE68 
X-CRM114-Status: UNSURE (   8.95  )
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

On Wed, 15 Jun 2022 01:03:53 +0200, Michael Riesch wrote:
> Enable the I2S0 controller and the hdmi-sound node on the Rockchip
> RK3568 EVB1.

Applied, thanks!

[1/2] arm64: dts: rockchip: enable hdmi tx audio on rk3568-evb1-v10
      commit: ea452bc0e6cc571165649d4a80300f7e8891877c
[2/2] arm64: dts: rockchip: enable hdmi tx audio on rock-3a
      commit: 9eee552fd8c45ca3628317bc458d8ff9cd670fc4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
