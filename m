Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A55D2C55B
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 14:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgEJT8WE0TxXm+Hq5mTfMd7OsOPplDbP3Xs9d8g3ouw=; b=ojcWMjVVOpN6tP
	S7AG+0t6vFjTwyCTtpue0MOprM8Qd01omRqxF0G0jXoSTAE51U9FCRTYfTL3ypA4JBr7wvk/B8dmS
	lIQDRGN6w+Vmp6CuBhQ/WLpZRKuQAYnili8o55sL/8vBLRMTkZlagC2lICxgFBVe7xyRJ82E0cxQE
	/fMpg8zhcyjRIG2kgxmQl77U1XIfRNOYylcVbVG3tvCN0DlL9B9ojmugWZU8DyS/NvWJAL0lj5SGV
	UE09OzbcUK1y7KrCxxMTriUvDSeQt8BkxOTelAV87lOEMIrJBOnqtuRoovo1MqpSft6N3Y2m7RiJe
	PhuQLI38n2UvhJv5m+5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3FeJ-0000000B48E-2bKx;
	Tue, 22 Oct 2024 14:14:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Fcm-0000000B3o5-2FoQ;
	Tue, 22 Oct 2024 14:12:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=AtDTx7gh226L3gyLWuov/P6JpdQOVKyrZd5OdMDGECQ=; b=wioUGu6KhNdPAfcj59KOc6TF2D
	k+Cf/zRLRMvyLB8jvxUYyrRJtCgN7aFf+et4zaUrgni5tXYtwQUcWxT1gfZPerHzNGBTUIAAXTc8O
	5ugTdnsrhDJ7qN6+ntaDrZAX9htoyyueUCdsIjfXQJsd9Fg9ziFB3LeGJMT9IYDIhRVMHAVAvP73d
	8viI+pjHZjaqfu7/OUVTFV0ZY3n4rbBaQewMu5bkSSX0ygTDolxY1Ic2ylNtswo6bMz/n4N6Zgcgv
	bgog+JhdsyB+PhWegf2LiV0iiUE+aYuQ66xWu+YDb9sKqCJ6kGIVzD+Dt6g7JqcRtPhiSH7YNfkVk
	gmzLVoCA==;
Received: from [213.70.40.217] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t3Fcl-0005eb-6D; Tue, 22 Oct 2024 16:12:39 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add dtsi file for RK3399S SoC variant
Date: Tue, 22 Oct 2024 16:12:27 +0200
Message-ID: <172960632904.1476617.9930861128544928291.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <c32622e4a6897378d9df81c8c3eda1bdb9211e0b.1728632052.git.dsimic@manjaro.org>
References: <c32622e4a6897378d9df81c8c3eda1bdb9211e0b.1728632052.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_071240_597222_6F076D17 
X-CRM114-Status: GOOD (  10.98  )
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

On Fri, 11 Oct 2024 09:40:51 +0200, Dragan Simic wrote:
> Following the hierarchical representation of the SoC data that's been already
> established in the commit 296602b8e5f7 ("arm64: dts: rockchip: Move RK3399
> OPPs to dtsi files for SoC variants"), add new SoC dtsi file for the Rockchip
> RK3399S SoC, which is yet another variant of the Rockchip RK3399 SoC.
> 
> The only perceivable differences between the RK3399S and the RK3399 are in
> the supported CPU DVFS OPPs, which result from the RK3399S being binned for
> lower maximum CPU frequencies than the regular RK3399 variant.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add dtsi file for RK3399S SoC variant
      commit: f7f8ec7d8cef4cf62ee13b526d59438c23bbb34f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
