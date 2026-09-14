Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1515C88E50
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Sep 2026 06:51:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlsoB8V/GLSZBwocT4nc3tlwtiLTutraOkUsaakvSsk=; b=v0Vq59zMuSmzQL
	7tHZdatrd0TiTebLiu2GtPmNIip56N+AiBXUQlsSQK1icfo58G94ZN2qQAefQFjag5ykbxn+ot/t9
	NpXUqEmPHFc0WWkUIJV2Vy4pCkBSbHc97BLsi+Pa8RFxyKq9k2ZA0UIxZHhBtBG73KSRFCYMU6t9P
	H/a37UhtHJtRg46S8rec7S7TyMLvG4Yrt2uDNX8NltZC5qLDOQvsnuS9ITOzcmUQ+82HPjmoWw3ii
	xTH0G2Th/KOc2xCx0P/xKyDHhxEOVjFqbqkrOCXOy1I63aBvGIyOhUiJSf9spma34519IWLuC0lDO
	2hYfJZOuJUd734rm7IPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x60Wy-00000002Tsh-3HEk;
	Mon, 14 Sep 2026 06:51:08 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x60Wv-00000002Trz-3GB7;
	Mon, 14 Sep 2026 06:51:07 +0000
Received: from Vostro-3710.. (unknown [14.220.232.127])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4da4fe556;
	Mon, 14 Sep 2026 14:51:01 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: devnull+hystericaldragons.proton.me@kernel.org
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	diederik@cknow-tech.com,
	heiko@sntech.de,
	jensenhuang@friendlyarm.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	razor1702@gmail.com
Subject: Re: [PATCH v4 3/4] arm64: dts: rockchip: Add devicetree for the FriendlyElec NanoPi R28S
Date: Mon, 14 Sep 2026 14:50:40 +0800
Message-Id: <20260914065040.2413033-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260911-r28s-upstream-v4-3-fb6c85f226d4@proton.me>
References: <20260911-r28s-upstream-v4-3-fb6c85f226d4@proton.me>
MIME-Version: 1.0
X-HM-Tid: 0aa09eaef4f503a2kunm0a6ed9812a3691
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTEJPVh9PS01CQ09OTE9JSFYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpJTFlXWRYaDxIVHRRZQVlPS0hVSktISk
	5MTlVKS0tVSkJLS1kG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_235105_994604_8CDD2C34 
X-CRM114-Status: UNSURE (   4.75  )
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

Hi,

> +		button-user {
> +			debounce-interval = <50>;
> +			gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_LOW>;
> +			label = "USER";
> +			linux,code = <KEY_RESTART>;

This is a custom button.
linux,code = <BTN_1>;

> +	leds {
> +		led-lan {
> +		led-sys {
> +		led-wan {   

Use led-[0-9] for naming.
Two of them are the same as zero2.

> +&pinctrl {
> +	leds {
> +		led1: led1 {
> +		led2: led2 {
> +		led_sys: led-sys {

Two of them are the same as zero2.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
