Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B7AC2BA18
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 20:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fM3Vxf84Af0Ijpq1mrNdMBrrJ5EgPuqSvQkgwO/q/YQ=; b=Rz1vNop216BUYF
	LULcUhlmEiDhX3SGPd1cGanXILYcR7YZSkHKQI+xZ+J8WHm73i/kz6vlwYcaoW9u8qpTHomR4aZ4A
	4NZtJAkHoOP0fO0Je9EQGggBuJlqYEbTnYW0xPJOYm5MefBGFO8YH8k/0Vo5cGt+DjRq4jFu5uCG6
	fIAZgQdEisTzHJjHwbvx9q4YXGO5ckLtTNZhzEIH2XZEdIdCZM9wCOqGyU/aBwgxCM045VStPfbDY
	V/OQE2UQitmuXA+IEhG/r8mZkl++GJWWXwJbGePsLzW8YHeVNheInOMK0EMGS+/PYWoFM+DGWSQPo
	xNDKqu1IWKv2Uuo0Ff7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOaE-00000006e1N-3LBI;
	Thu, 20 Jun 2024 20:40:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOZp-00000006dn7-2Kkn;
	Thu, 20 Jun 2024 20:40:16 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKOZb-0001mc-Uz; Thu, 20 Jun 2024 22:40:00 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	jonas@kwiboo.se,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	didi.debian@cknow.org,
	alchark@gmail.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Prepare RK3588 SoC dtsi files for per-variant OPPs
Date: Thu, 20 Jun 2024 22:39:56 +0200
Message-Id: <171891591943.88443.4575073298967084067.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org>
References: <9ffedc0e2ca7f167d9d795b2a8f43cb9f56a653b.1717923308.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_134013_634692_3BB82F6A 
X-CRM114-Status: GOOD (  13.54  )
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

On Sun, 9 Jun 2024 10:58:19 +0200, Dragan Simic wrote:
> Rename the Rockchip RK3588 SoC dtsi files and, consequently, adjust their
> contents appropriately, to prepare them for the ability to specify different
> CPU and GPU OPPs for each of the supported RK3588 SoC variants.
> 
> As already discussed, [1][2][3][4] some of the RK3588 SoC variants require
> different OPPs, and it makes more sense to have the OPPs already defined when
> a board dts(i) file includes one of the SoC variant dtsi files (rk3588.dtsi,
> rk3588j.dtsi or rk3588s.dtsi), rather than requiring the board dts(i) file
> to also include a separate rk3588*-opp.dtsi file.  The choice of the SoC
> variant is already made by the inclusion of the SoC dtsi file into the board
> dts(i) file, and it doesn't make much sense to, effectively, allow the board
> dts(i) file to include and use an incompatible set of OPPs for the already
> selected RK3588 SoC variant.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Prepare RK3588 SoC dtsi files for per-variant OPPs
      commit: 0866aef9b478a50a4035c90428c990485e9d2d6d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
