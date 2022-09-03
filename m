Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58A10ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Sep 2022 13:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9oJGL6lqQO6H0Um1EqNCDncHgJf/X4ErpiRlL5NjxbI=; b=GUEGchQlR5j5pNmRJfBtHMdrFa
	9trEqGQEIpq0bUGyDJNF0nNJ7/uF44Zd0p0UuUWPurOZW96rg43h+gsj8azW6/PyuOmuiY3iKXk8X
	dTHUN533wJXK7zaj73TVddmFxEIYaAWl2IxoFA5Nou5WXKi2xKu67sUe+DQZgbQqol9QlMGtQaL/T
	f6RKwGPZddGfPUBpFOf40Btf8NU/zQsEaXrxyQbSCEh04Xv7Ack3xdgo+5q5oD82U5XI3v8GNV3jT
	By2+5WYtS9vl19a+JrQ1/oF5DIPY7Nbh1tWCuksXoXDY9kqEC1FP28j4bI8S/QZu+1YXmkvmELfHp
	UZrDbwFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUTMU-00Bqfd-8H; Sat, 03 Sep 2022 13:39:02 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUTMI-00BqK9-V9; Sat, 03 Sep 2022 13:38:52 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id E78FE3200564;
	Sat,  3 Sep 2022 09:38:38 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sat, 03 Sep 2022 09:38:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1662212318; x=
	1662298718; bh=Tw9iM29JVXAAF7Othcl+TL+b6fxAKApvQt80+NZTFOE=; b=L
	SP//Dm7OEHbO67NnFPFM+vC3oGQcVlOvTBoh+HsPJoSyQYR4S4FYAdnQMJTzjVtS
	z8bk3w0B6yqAOIFh7j1wMl2kCg7fz8arDnKot3xg9VNOuk0OAWSjMEj8EjhH03N0
	mZXWve7OJ7LHYE5vy3L/1prNgZ94KiKOX2WpB4Ebeh642RUVvfuScdakjXpE+OxN
	pzwkhZgDpqS1c73iZPWL4dXl3v9iCKAZreg35e3fzhAmjM1xu79Vq8FZGYRRZERe
	QjLGSF91SmFnCt4LhgBQOQKjz9bvP3e2vOUTzkbN34gUkso4V+gtDtJtbj8Uravu
	yn5Ahif1HeBVbMuavt4dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1662212318; x=
	1662298718; bh=Tw9iM29JVXAAF7Othcl+TL+b6fxAKApvQt80+NZTFOE=; b=A
	EIAesrryWEGyHobgL255e5n+z6GRTEogqcn+7R1sQiKES2fINewK+OhTDuUGYUVH
	sbNBbG57NxDPUCxvm09360HTO+PnxrtAbqWxvImf0XYSeXRst1aQad7XoyROtIDa
	2SADG4Fj+2E+C5CATDaywTvcMFQJs5mJr9i+ozMtP6k1WyD8AFZvN68YPpUS2i3X
	Y9pVwsa+WbFNvU5ih+hZjV+7B5IQmTApFj6VEqSdAhCeGrBtY/8kkou9j8sWIxMJ
	5Mu25Qwkv4xyIZZ4+wGBgE2lc362Zk4WQXKZnxbgvjsxvYRSGgWseOnSL7YWiht9
	j9o8N4MZyIz5dbjPLs/rA==
X-ME-Sender: <xms:3VgTYzv7p9jY5z0Xu7Ua707s367WXjOaG38VPxMUC4owOpFs0YTQSw>
    <xme:3VgTY0cWlzcu8cYJDG8YzsvwJ6qMuAac691f6LWzoqajrosHQFOUQUKgG_8ak3OLt
    LVdHl7PiDOHTkr1jg>
X-ME-Received: <xmr:3VgTY2yeLHytvSNAGgoBVyCDbXkay1pIyCTCHYZYhBa4H_m7UrhesdNOzjmSC7_1ZvVz-QWWI7L2JBopFXj01L8kJCRCum4B3LdBqQkhP9N100ju7hfg83xTbQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdelvddgieelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepuffvvehfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpefftdevkedvgeekueeutefgteffieelvedukeeuhfehledvhfei
    tdehudfhudehhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:3VgTYyPox-38QOvAU_iNQ_5Yi1rMUOQ9KVZgBTa33_ukSGmTRJNGVQ>
    <xmx:3VgTYz8NNW-_uV12sYVjWlseiicqq6CtxTOXl_QGBu8J1wOKatII5A>
    <xmx:3VgTYyXad1x6MUa25zBTWT3_IiGkxKGPpIaKeoUAo98O5p6FDhEHZA>
    <xmx:3lgTY_T5L2HxBVCZ3BSZP1GX9lMCpJyTVj7-kwixdl28PIIU8cUX0g>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 3 Sep 2022 09:38:37 -0400 (EDT)
Subject: Re: [PATCH v4] phy: rockchip-inno-usb2: Return zero after otg sync
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: Markus Reichl <m.reichl@fivetechno.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220902184543.1234835-1-pgwipeout@gmail.com>
From: Samuel Holland <samuel@sholland.org>
Message-ID: <9a2d493f-d4af-0880-d593-50120cfd3328@sholland.org>
Date: Sat, 3 Sep 2022 08:38:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20220902184543.1234835-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220903_063851_627735_BC5A00E3 
X-CRM114-Status: UNSURE (   9.17  )
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

On 9/2/22 1:45 PM, Peter Geis wrote:
> The otg sync state patch reuses the ret variable, but fails to set it to
> zero after use. This leads to a situation when the otg port is in
> peripheral mode where the otg phy aborts halfway through setup.  It also
> fails to account for a failure to register the extcon notifier. Fix this
> by using our own variable and skipping otg sync in case of failure.
> 
> Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
> Reported-by: Markus Reichl <m.reichl@fivetechno.de>
> Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Tested-by: Markus Reichl <m.reichl@fivetechno.de>

Reviewed-by: Samuel Holland <samuel@sholland.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
