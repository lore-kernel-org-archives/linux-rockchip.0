Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B75C636CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:43:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D98796128D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 22:43:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D98796128D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mPzlol7awdRgn0gaQuj8Q4ygvxbTdbCQ+Sju4CrEPPM=; b=e3aMVEUXtCneTp
	LvV46bV2x7zEj+50VgncECGiVxVcECCeoM9Ik51iXQHwgkUZSlC5NED5zC0Sxf4rEuKdu37U+1YWU
	sCER7HEKIBKgmemi2pb31zWd7UhzjC9BXhI0gZudfKUPgJfjmrledMG0truyuwUdcprvcgNjLp09Z
	0qz7/HYXYvKFRnlrZJj1HnbGJcP0SUfhlYzKhiU804LiTv/Gf1JwtRaTghPoMBzsUWogBHG1mvmjv
	0PoxQkxdMVfS+BNpu86gx17/S2Pp/lagfSn2l51Np5JbnTNlw47Kc3zgcnwvspNFUDnrPu74fpDCC
	K4dnNJXbYx89lrecrkWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4A4N-002Unw-Uw; Thu, 15 Jul 2021 22:43:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4A4L-002UlI-Mp; Thu, 15 Jul 2021 22:43:03 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4A4H-0005t7-6u; Fri, 16 Jul 2021 00:42:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, "djw@t-chip.com.cn" <djw@t-chip.com.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Liang Chen <cl@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org,
 Michael Trimarchi <michael@amarulasolutions.com>,
 Wayne Chou <zxf@t-chip.com.cn>, David Bauer <mail@david-bauer.net>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Johan Jonker <jbx6244@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Tianling Shen <cnsztl@gmail.com>
Subject: Re: [PATCH v0 0/2] Add support for Firefly ROC-RK3328-PC
Date: Fri, 16 Jul 2021 00:42:50 +0200
Message-Id: <162638886252.651069.17368608559801468213.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210709080126.17045-1-djw@t-chip.com.cn>
References: <20210709080126.17045-1-djw@t-chip.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_154301_788116_ED71D394 
X-CRM114-Status: GOOD (  12.77  )
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

On Fri, 9 Jul 2021 16:01:24 +0800, djw@t-chip.com.cn wrote:
> 
> Hi all, this is an attemp to add Firefly ROC-RK3328-PC to the mainline
> kernel.
> 
> ROC-RK3328-PC is the board inside the portable Firefly Station M1
> Geek PC. As a redesign after the ROC-RK3328-CC, it uses TypeC as
> power input and OTG port, embedded with eMMC 5.1 storage and a
> SDIO WiFi/BT chip (RTL8723DS).
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: add doc for Firefly ROC-RK3328-PC
      commit: 773b358cb274a6cededc1f597ba70e75c0676752
[2/2] arm64: dts: rockchip: add support for Firefly ROC-RK3328-PC
      commit: ffe7ee186baafe3855d117a5d6e7183e8e77795d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
