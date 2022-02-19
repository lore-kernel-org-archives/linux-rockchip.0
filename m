Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34AC1C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Feb 2022 00:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNlrsIBIGVlL3RUR4xTOs6QYrmrF3SCwdeM79OjGDM8=; b=n1BGoyQZseprQq
	2DdvCfBUWDgq9ViVwNwkVBuEAf7FlRjCZEcoAKvZOfxqCu8qGyguB6U+QuY0G/J8+o3Oy/TiYnjod
	WH0QpjTZKuCEVfI7DEfYT4zWfjV8OGozgeJNi1A0yR7C8Oysn8MI3JNJrqfOMS0wXkfifjIB70h1r
	iDAOH+ny+cSMCWuCzu7dejXEDEl5rjytcsQqnfHV44YnFRViORBTZz9REbfDOLjD+ctE0OlSvcMUm
	SGr78lFC5PGGdJz7xMIUdX6ju0Ta5Lgp8gJvPU3w22aThCVCYDDrIoIPpOnRO7hE65LcLFX/fO+y/
	fCdFft8+9anUrLqu6Gpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLDEu-00FwPz-Qa; Sat, 19 Feb 2022 00:04:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLDEs-00FwPO-9q; Sat, 19 Feb 2022 00:04:39 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nLDEp-0007aF-5r; Sat, 19 Feb 2022 01:04:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: define vdd_log on rk3399-puma
Date: Sat, 19 Feb 2022 01:04:33 +0100
Message-Id: <164522906298.1180040.15131004978039486374.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211227234529.1970281-1-heiko@sntech.de>
References: <20211227234529.1970281-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_160438_365978_5DCAB5A4 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, 28 Dec 2021 00:45:28 +0100, Heiko Stuebner wrote:
> vdd_log supplied a lot of the logic parts of the soc and is
> supplied through pwm2.

Applied, thanks!

[1/2] arm64: dts: rockchip: define vdd_log on rk3399-puma
      commit: e6bbf0d53ae1060ee6403bafcc4d1fd25d088e40
[2/2] arm64: dts: rockchip: fix supplies for pwm regulators
      commit: dc570e8e1a7036eaaeede71b55e14739710ea0a4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
