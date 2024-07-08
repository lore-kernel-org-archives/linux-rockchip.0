Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA4E2C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 14:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgl5eLIEU/guG64R/BH0qthwj96LGpVRDs0DYgCZ8BM=; b=hB8a9em1ZyNGO/
	+CotMkO3bkyLQcTbi7bfkctBAehVihdw9Ero/A11iVhl/wHrJqyKyAC63zLuCqG0RCJLFo9ULUFPh
	/VhzhzCzFMqEwKwV6CuntK0K8qeIGjMytP8YEqYWdnkahcmkRmwSbY0VThM7/GsergNZxkEa1DD8v
	ICwOiV5B9ZW6KNWdtmAN/9UOC0kKaD81mnz7NIOzSdOP7CIRS4fxxNrqMpdnpzFTF9q5GXlmAixaT
	xpZUgTEWP949scnZOAEI9cPsWvpt5vCJI7ft8S6f/TjggrtXiVy7u9hOuKYkweYmjLvXBnSP6lgju
	1sR5lofkat+iZtGk43iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQpMD-000000044WO-3Rev;
	Mon, 08 Jul 2024 14:28:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQpM0-000000044PX-0wVl;
	Mon, 08 Jul 2024 14:28:33 +0000
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQpLa-0001Jx-Oe; Mon, 08 Jul 2024 16:28:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>,
	Shengyu Qu <wiagn233@outlook.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	devicetree@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-arm-kernel@lists.infradead.org,
	Maximilian Weigand <mweigand@mweigand.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dma-names to uart1 on Pine64 rk3566 devices
Date: Mon,  8 Jul 2024 16:28:03 +0200
Message-Id: <172044883546.1350787.6142628097865856135.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240705163004.29678-4-didi.debian@cknow.org>
References: <20240705163004.29678-2-didi.debian@cknow.org> <20240705163004.29678-4-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_072832_282460_1F8431CF 
X-CRM114-Status: UNSURE (   9.40  )
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

On Fri, 5 Jul 2024 18:22:14 +0200, Diederik de Haas wrote:
> Similar to bf6f26deb0e8 ("arm64: dts: rockchip: Add dma-names to uart1
> on quartz64-b") also add the dma-names property to the other rk3566
> devices from Pine64 with bluetooth functionality.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add dma-names to uart1 on Pine64 rk3566 devices
      commit: 3087576e1c706bcd3623b48478ea8c9b23173107

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
