Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14BD5C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 20:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Xd38QgZABQf2yEJXtHP5PUo0/3DOt/qsuugvgGcn7A=; b=fG2exQXHK8GNLO
	VKTTVrX/emAJZe/I0/TCkz9T/NQydPomOzjk3onYy+mLSDZWa9CCL8nGyXRwCGZC2UwcjF25FZp3n
	++/yeFr7VOEsoQAw2N898eJbAAUjfCNhY/1qwU5jeR5hxDuhHf93juuqTGS7psFqipA2lYCaizt7z
	GaN/qKNHxwwHaZrFoKVAPW/rZE7qlCkIEwg8YbujWvluGlLUKkVDdO37WG7ivoKZTV5o9E7pgTnV7
	cflyTzb96HHV6YttfxaAIRroCFNVtF9VjfMkR+tzYhhGZ6X11gDUduhcO9pjja2m0ro0PjVvVygX0
	9VwQYeqIMWHJ0z2sPkFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9B6-00Cg89-0y;
	Tue, 12 Dec 2023 20:16:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD9B2-00Cg6u-1a;
	Tue, 12 Dec 2023 20:16:26 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9Az-0006LK-C5; Tue, 12 Dec 2023 21:16:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add ethernet0 aliases to the dts files for RK3566 and RK3588(S) boards
Date: Tue, 12 Dec 2023 21:16:16 +0100
Message-Id: <170241214697.534713.13455667285782606746.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1702368023.git.dsimic@manjaro.org>
References: <cover.1702368023.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_121624_523015_539F502D 
X-CRM114-Status: GOOD (  11.61  )
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

On Tue, 12 Dec 2023 09:01:38 +0100, Dragan Simic wrote:
> To complete the process started with the migration of the ethernet0 aliases
> from the SoC dtsi files to the board/device dts(i) files, started in [1],
> let's add ethernet0 aliases to the board dts files that had it missing.
> See also [2] for a related discussion.
> 
> At the same time, let's remove the ethernet0 alias from one SoM dtsi file,
> which doesn't enable the GMAC, and add the same alias back to the dependent
> board dts files, which actually enable the GMAC.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 boards
      commit: 8a5f97b061432f72002b8aa158e372f1b10a079e
[2/2] arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3588(S) boards
      commit: a40d30460dda56c6ad308cb338e240bc4a625faa

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
