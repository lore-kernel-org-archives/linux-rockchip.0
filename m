Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9688FE674B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFT9LH2xybq6nQk6HBlwM7QFlRZtjG4KplLNjQo911Y=; b=msvlyqC9blcg1N
	5hmPQr2vodNfefvrNLpp7i8AtzhQHksQqQO78w8dCtW7dPVaTPxZo8g65/XfzjU9rygxfeQV/YVRB
	T72UqCh2XybvZ/52A999h/1CbevxVGgWLwDAbSB6MO+bVb0/nxELjekaRLhGnrRTGbj7xF34qEv44
	ZqiQSzGewuDQ4GfsX3xqUwvAh+HZ1b0mgNPTceK1niF5fgZ3uWkyi7Djr9n3aSbUMrtEuWVNnG4oQ
	yU49t6HD+T0BIvxChmsgf5sjf7ka7kSyuDa167i9TnKv6v+PxRU3QKUo53Ug4BFQ1e55E966MEn8l
	m36fCywGxg1Yn4tn1Thw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgPK-0000000DqZk-1mTg;
	Mon, 22 Dec 2025 13:57:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXgPG-0000000DqYn-2luQ
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 13:57:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=KwANKK/fDIpWxZV9HLEANprowf4vF8Ghjk4Svi7KrWM=; b=rd4Qd2N0W0WmH+iVMVKh/Fps0G
	RNbSQHnWPodfzBs/Z1Ma9SP4DoDEg/p3GMrknai2E3S7BZpeK7mK09FOmmHyLpUWv9okBpPii7Ywc
	LcgsrCzirzVOPrmWDEgw/sys5ToUwieB6bbkB/l+wSfTLAzth3wikv/KFA8WsZE9VU6pzGLEaDi9k
	XfVa1t7cbAlw6x7xA8dhnZc3w1hHkgCAIz94wdtumhRAEnHgP2U4T/Nek3pPYFw+PmfH/Ji7MUWEh
	zi2G8Nue1G8sb/xBDwZ4YEkEnrQty36KC/liEb6QJcr1ujD3oOA8uv0BV/ahI1mCqk+KPgqFYtE0k
	G6sf2ZkA==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXgOn-00063E-Mx; Mon, 22 Dec 2025 14:56:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	jonas@kwiboo.se,
	kever.yang@rock-chips.com,
	inindev@gmail.com,
	michael.opdenacker@rootcommit.com,
	honyuenkwun@gmail.com,
	dsimic@manjaro.org,
	andrew@lunn.ch,
	pbrobinson@gmail.com,
	joseph.kogut@gmail.com,
	dmitriy@filchenko.org,
	shawn.lin@rock-chips.com,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 module and IO board dts
Date: Mon, 22 Dec 2025 14:56:29 +0100
Message-ID: <176641178743.1651325.16057448500999864390.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251205120703.14721-1-naoki@radxa.com>
References: <20251205120703.14721-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_055702_701259_72863418 
X-CRM114-Status: GOOD (  10.11  )
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


On Fri, 05 Dec 2025 12:07:00 +0000, FUKAUMI Naoki wrote:
> This patch series adds initial device tree support for the Radxa CM5 SoM
> and accompanying IO board.
> 
> V5 -> V6:
>   Patch (2/3)
>   - Move gmac1 (except status) from cm5-io.dts (Jimmy)
>   - Move pmic from cm5-io.dts (Dmitriy)
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
      commit: 7beae528ddadd1c3f7d5670f937d993b0f39e0ea
[2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
      commit: 36ee19ba42dcebe6a15ec6b442a7d32eb327eee4
[3/3] arm64: dts: rockchip: Add support for CM5 IO carrier
      commit: 51babf83f424a695179183204226d453c8af7dc7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
