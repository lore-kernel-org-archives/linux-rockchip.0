Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 372E3C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 16:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C5fI9IHk7R4REZFR6SaQUOARIXm1wx6U/avKG6nB79I=; b=f3pWuzhgAPn7l0
	RFUm89Vr9G6wHlREp5aBQ10ibnxZ52wXhgbT7O/vVbWfXONkNL1qKDOeFG9t04EFJaRT0ChWMIN11
	aiCSUQ8gVF2CljGFLvlkFn3WxUYQLCQWHRWbDrJ514TgQx69B8/varyNwpEhFLI9mHvIH6Ubm3NVq
	0rUjU0gq3oI5YhDqUvjl2nhBEKneey8fpMgKlrck0HtRdz+t0/mMiMV9oHfGX4JGMLmbDsEzUyR1U
	b+YXY+4QJ7YWLBmP2UcB+664rqccRappwKMCpkfpccjM29Swq4dC02cHcVl8b15/S+G9gB719+ecA
	3e+4+Oi+RT7XOQOx5j3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHTqC-00Exzi-Gx; Tue, 08 Feb 2022 16:59:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHTpx-00ExqI-9U; Tue, 08 Feb 2022 16:59:31 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHTpp-0002ya-Ce; Tue, 08 Feb 2022 17:59:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Frank Wunderlich <linux@fw-web.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, linux-kernel@vger.kernel.org,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/2] Add BananaPi R2 Pro board
Date: Tue,  8 Feb 2022 17:59:16 +0100
Message-Id: <164433936977.231183.11805289547188504542.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220123135116.136846-1-linux@fw-web.de>
References: <20220123135116.136846-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_085929_353861_1A075043 
X-CRM114-Status: GOOD (  10.80  )
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

On Sun, 23 Jan 2022 14:51:14 +0100, Frank Wunderlich wrote:
> This Series adds RK3568 based Bananapi R2 Board.
> 
> changes in v2:
> - rebase on 5.17-rc1
> - dropped patch for fixing dtbs_check (sent separately)
> - verified pins on gpio-header (con2) and changed pinctrl where needed
> - changed led part
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: rockchip: Add BananaPi R2 Pro Board
[2/2] arm64: dts: rockchip: Add Bananapi R2 Pro

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
