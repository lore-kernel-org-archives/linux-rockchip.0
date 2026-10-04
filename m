Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF76BCA5FFC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2026 21:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXFBUGC6Mre3QLBdAF3LAF71w0mChdlt7UMYtqSM/EA=; b=t4RmSsh+GoAt6b
	+CYSjH5av+laQzt44G4pF9SaTCQLhfgw79G6BBQjmJ3BWilCz5653lOIwTP9/RhMquHIsmqDb4bMn
	DamrAFSrD61nMDSlMrM4iHmKj+em5c8PIVHFilVJerws5JlPIpBXymp4OdVE77iVJwWmocncY/bGb
	m8rFuiMkdHjDk6LdanReLqiWDahuWdZZ6ArJIt8oQwjl6NWJ6D6ATavM9D2EjDsg9ySAqG7rpdYMT
	ML4Y1kjMuhyrwbcquhl635o5Q5GYXRbu57sNOoy4KwFoGHLJmCC7Ej5+QEDRWDRQ2usqQ7HWdRkig
	MbvlqDnMsYhrsD57Zddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDTaU-0000000FLBL-2Cro;
	Sun, 04 Oct 2026 21:17:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDTaO-0000000FL2l-2H3u;
	Sun, 04 Oct 2026 21:17:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BSrSEy6BPEM2RoLO/qLhbirfzAUyl0yRgOXrJ2c63w8=; b=RsaxnTHGcrufUsvMhlUiTTYy2v
	WuKXgRUo+IWkkbkfl7LSgw9xTGXM8nre8G1o5y1UEQOtJ6aKCP5cfv6SJoqhqBChXzj1PHWNeTy1m
	O7JJR3LeFf83pq7pxAx7LoHvFPoPstkZ+JpiMNI9u9a/sVW/Cxua1RlUm6YYMh6mwpX8bDGPqIkUm
	qEJlxcWlsZnhWOLkEle3et2UVpMcSGo4wnIXGKAOe74zC3zOjVLMBLumgE1ay956ftix6M9weP0/8
	tGKTgPKXsUv6kkNFZXo0GnPVDySxYep2NzIqm7lfgOYTp4CmjX1wVITMCZuWngcsjkH5IxTGn5XEB
	DAEn+JVA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	damon.ding@rock-chips.com
Subject: Re: [PATCH v6 0/2] Add RK3588 Tiger DisplayPort carrier
Date: Sun,  4 Oct 2026 23:17:22 +0200
Message-ID: <179114864092.3283966.12301760233252454837.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002140330.2904616-1-heiko@sntech.de>
References: <20261002140330.2904616-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_141732_605738_AD5445CF 
X-CRM114-Status: UNSURE (   9.34  )
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


On Fri, 02 Oct 2026 16:03:28 +0200, Heiko Stuebner wrote:
> A board that allows easy testing of the Analogix eDP controller on the
> RK3588. Requires Damon's recent work on hotplugging the eDP controller
> displays [0].
> 
> Concerning displays, my current setup is
> 
>   DP-carrier -> DP-port -> DP-to-eDP converter from Aliexpress -> eDP panel
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: add RK3588 DP carrier from Theobroma Systems
      commit: 3789de522b6902dba9285d69fb22bf2700e9ca4e
[2/2] arm64: dts: rockchip: add RK3588 DP carrier from Theobroma Systems
      commit: 24ce4253f5f6e65e9faa3f63712cf0aa82d52349

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
