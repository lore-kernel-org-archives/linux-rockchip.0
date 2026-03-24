Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F6AAFEC10C
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 19:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HRqeDv0G03AqX+0N1MDNQJBHfK9nGB8jsMwIicZ3FVw=; b=K47qCjH3UapDCb
	PgH9/v+qEypcW+im07+U11kvFHlOiSIbupNC/s6/o6WDWw3DM29CExc3H3L+clquwt+p+aGFmdMiO
	alHnAT//5JV/x6/ToOJ5B5sskXcKygJtNaKFmEFuRkjXesBcR+6E3mbVTCu5/ghR6tE3a8EByLQAA
	M5e5E6+grEOekWMzAERN1VElKq0zl8TudAacjxZDiPh3bGVzOT6nBvgtCnaBB8rXCxAlMnZtLenLx
	lSOQm9g6HJyJaoLBHSBNtIy1+15OlmorAz6qM/FyhMk8Cwzt5LXsBdfZxxTQ6x6jh1FmrBs2z2O/E
	h2FdIRGqjRRy79q8Sq0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57pg-00000002BG2-2jsK;
	Tue, 24 Mar 2026 19:54:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w57pM-00000002B5t-48Ne;
	Tue, 24 Mar 2026 19:54:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dl4I20khcnPtNiwIO0FoSOod5kTJzQ8CNj323iUPvp0=; b=jWLfHngN8P9DFmaJcfaWOIaxga
	HfjqYFOuMkFYHp7n4o3R+WPs1GdYMYLzXn1Iw4+DtLatHcStX0ZfaMoXocjzohmUy/qd+p2OgWZ7m
	Jccvq6lxzJ+c2/KiExS0ESO6EfdAqzAu+pS9GmjqviUn/FfjelTkv+5m6bXP5u8nxnO6VSxIS1gkb
	KMGh+/bp4ZWLIQgODZyKppiTbl5x0PaFy0hW+6oKlRERicZ3ULqGQsG5PCcBiNvGiNeWjJ2PLW91Z
	6Vlt3FS3oS4pfWIZelEltL06Ozpe80v7dTTSWoK+U7XzO5AK96iMKIWJB3ko7+53rnXNfJh2kGHua
	WS3BLLqg==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Gray Huang <gray.huang@wesion.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	naoki@radxa.com,
	jonas@kwiboo.se,
	chaoyi.chen@rock-chips.com,
	i@chainsx.cn,
	michael.opdenacker@rootcommit.com,
	inindev@gmail.com,
	quentin.schulz@cherry.de,
	andrew@lunn.ch,
	alchark@gmail.com,
	pbrobinson@gmail.com,
	nick@khadas.com
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add initial support for Khadas Edge 2L
Date: Tue, 24 Mar 2026 20:53:52 +0100
Message-ID: <177438200679.818857.10509162196522852647.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260317090731.600787-1-gray.huang@wesion.com>
References: <20260317090731.600787-1-gray.huang@wesion.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_125413_026571_56E3BA93 
X-CRM114-Status: GOOD (  10.21  )
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


On Tue, 17 Mar 2026 17:07:29 +0800, Gray Huang wrote:
> This patch series adds initial basic support for the Khadas Edge 2L board,
> which is based on the Rockchip RK3576 SoC.
> 
> To keep the initial review process simple and easy, this series only
> enables the bare minimum peripherals required to boot the board to a shell:
> - UART (for serial console)
> - eMMC (for root filesystem)
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Khadas Edge 2L board
      commit: b1a9b33cff4f58f2507e930d2c5805877928c6f7
[2/2] arm64: dts: rockchip: Add Khadas Edge 2L board
      commit: 254c6ae9c5014497e840a6fb8520f70caef31097

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
