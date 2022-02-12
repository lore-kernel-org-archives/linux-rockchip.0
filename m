Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB0C4C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Feb 2022 00:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8/3a3NlCoVBdajnYAxbUAsopWJIhxrB+dTIxZ0+Tjc=; b=q/EdhikrsyI7aL
	9qoGsz9RatIQ3Eqv0FO8dxJUl5pIHms559MkZGbC+IelnM5qPuJ9vCqh8WNea65jr5DyOqRJpd4zy
	d6Q5V+g0AyX9K4ZcsDU3dwIg3VB8sLznZwqXDUJHQOXD1lLmlRI7UNBrpHpQr12xbK/J3hQEg7gqL
	2nj0HkXkhQNY8LI3fPc5SH8iW2fnP/wAava4o7f8RBB9heDNXekppkbI+Obnp/SxETBHaZXUopUso
	cOYdu6rfEhY3Fklm3B0arapaQWGmLZiXki73ECctsXDUPod4BuIziXL5OnDgpgot2HzeB0QrEU418
	Ia+Aq2SQkG9R3xw5pwXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIgD4-0099t4-ND; Sat, 12 Feb 2022 00:24:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIgD2-0099qP-2R; Sat, 12 Feb 2022 00:24:17 +0000
Received: from p508fd6ee.dip0.t-ipconnect.de ([80.143.214.238]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nIgCQ-0003C9-1p; Sat, 12 Feb 2022 01:23:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Samuel Holland <samuel@sholland.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Tianling Shen <cnsztl@gmail.com>,
 Levin Du <djw@t-chip.com.cn>, linux-rockchip@lists.infradead.org,
 Alex Bee <knaerzche@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Liang Chen <cl@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm: rockchip: Add Pine64 PineNote board
Date: Sat, 12 Feb 2022 01:23:36 +0100
Message-Id: <164462530187.853991.5366752507698485779.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220130053803.43660-1-samuel@sholland.org>
References: <20220130053803.43660-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_162416_121201_807E9FD9 
X-CRM114-Status: GOOD (  10.82  )
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

On Sat, 29 Jan 2022 23:38:01 -0600, Samuel Holland wrote:
> The PineNote is a tablet from Pine64 based on the RK3566 SoC. There are
> two existing variants of the board. v1.1 was contained in some early
> samples, and v1.2 was sold as the "PineNote Developer Edition".

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Pine64 PineNote board
      commit: a7c9013216f399791ca354cc2e0f4a444837fe39
[2/3] arm64: dts: rockchip: rk356x: Add pdm node
      commit: 79c5f0e52d29a688a951fc818394b529e7e77e3e

-> change ordering for pinctrl properties, as suggested by Michael

[3/3] arm64: dts: rockchip: Add Pine64 PineNote board
      commit: d449121e5e8addcee654250cec298c887ecafb32

-> folded in Johan's review comments
   Though mmc0 can stay at sdhci. I don't think we _need_
   aliases for all, but fixing mmc0 for the internal emmc makes
   a lot of sense.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
