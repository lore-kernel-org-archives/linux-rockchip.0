Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E9C0C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jan 2022 17:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmXyDtTkUavqwLbukfFg7nJfkJ2ktERGVWomJQ3lHLY=; b=5CoCIr+ApC8AvO
	71whU8y1WqfaQh4WE/ZnK6/Bnb/NqCMJyMLDbVBKZEL1BqAzf9Adg+PdPM8PdVjjSGm1tcWM1Khqv
	LCDYlCmaodTBUgimRWQaYUK7N71OiIrQF/oLrZb1tEW6glpTIqCJSSlia+j0RNaOjb4M7huTkkvSk
	wibl+qzJA3lVLYLp00pXaJ8Zm1PYgwaFgaoxEZBCSnZ1UO4xIw6DYuid16u3usH69neVy/DEe6qqz
	MSK7attndMkZP1eIgftVtg1Rw4UG95FlBsJAUUjl9N/8NuZwpp1jGh0iFYstUR5Lylf7bDo6GQdhp
	S/4TBRtf4xCADWWhS4CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDs0A-005D1B-Du; Sat, 29 Jan 2022 17:59:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDryo-005CKT-DB; Sat, 29 Jan 2022 17:57:43 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nDryj-0005eg-E7; Sat, 29 Jan 2022 18:57:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "quentin.schulz@theobroma-systems.com"
 <quentin.schulz@theobroma-systems.com>, robh+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Quentin Schulz <foss+kernel@0leil.net>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399-puma eMMC HS400 signal
 integrity
Date: Sat, 29 Jan 2022 18:57:40 +0100
Message-Id: <164347899463.1472860.17160610322270835288.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220119134948.1444965-1-quentin.schulz@theobroma-systems.com>
References: <20220119134948.1444965-1-quentin.schulz@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220129_095742_581035_FC092125 
X-CRM114-Status: UNSURE (   9.73  )
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

On Wed, 19 Jan 2022 14:49:48 +0100, quentin.schulz@theobroma-systems.com wrote:
> There are signal integrity issues running the eMMC at 200MHz on Puma
> RK3399-Q7.
> 
> Similar to the work-around found for RK3399 Gru boards, lowering the
> frequency to 100MHz made the eMMC much more stable, so let's lower the
> frequency to 100MHz.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix rk3399-puma eMMC HS400 signal integrity
      commit: 7623e16af6bac131305292eb99cea988adbf0484

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
