Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F20ADC54EE9
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 09:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0/xfwb5V/xJprjk2iWFVyAbxMowv/Btdzhpqt92cq1U=; b=20iayXpAQw2TMd3AcD86juWmps
	oDMl4SMjHXthltkR9bTvk7VNIwMJkwbUBhzpNRS5lK9/a+OcFExXeG3YeApkMZJ0d5ST732wzyNV9
	VuzV/QT6AlQTbed2rSDH5+8gDSKop5uSobTy7PIwlj93oksHkwbi+WA7Y+PJhAyu1z1tIpS7R9nvP
	d8GcrWO04ChyjYaQjFPLZ+L4Ee3guBZ9+i2wCD1arSugyqRIewZKUTzsPwYDnZA43w9Nq1vLILqqi
	1HpDXVV7OllETx8kM4sOXrJDpeZmW0jxhVCm1/alt7SS1lcFUhAzqettbsn1xklaJvaPHI/wE1Gbs
	3+YBArHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2dy-002JXl-3m; Fri, 02 Sep 2022 09:07:18 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU2dv-002JNa-OY
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 09:07:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id B95E55C01B0;
	Fri,  2 Sep 2022 05:07:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Fri, 02 Sep 2022 05:07:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1662109629; x=1662196029; bh=MRR1YZdxaG
	AlHdlYc1EG3QgaEliVAG6nHxdD6yN/0jk=; b=ngtMb9BvnYC5NyKJG9tGh1X7HP
	LzEQP7Y9Aa681iCV1KwmnJniwZhC2XzLt3fu8mBkNj60xn079AvI/sehYWEA2mxT
	3xkA4/q2PqTXqmJ85xUfMQgHFg0es3KJ+zn7SqQIUy+16YhrGHF+v6dhmHKkx3Ym
	guXNpQMPDQ8eklouLgM1+BsZA1pSk8MunyUkWkaYS3CnwbJOXa0f6XSohOskkc1S
	f7/LmB0+S4Efc6yzsb0YBgYqRRVowZ5dY7RRBqZtBZxCiIcGOnTQj88+MPqvTs91
	K+LuS6CZR9mpaVG1V5FwWUalAaCT33dfoCDrvljcEKtsf0anSpfOPLugolTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1662109629; x=1662196029; bh=MRR1YZdxaGAlHdlYc1EG3QgaEliV
	AG6nHxdD6yN/0jk=; b=FheTf9MUrnBms8wMxV6i0TLRxQPDlUfRL/nGJhEN8UfC
	I7uZAhqLmWjFYtvHhtrM855hoeXh4lzcW9Vbg4mVDZazLm4v5WBxKAQ1sYmtDd94
	sij2zbJp6UU2aRODeuduBbhmBdZbJABAYWcFUfWaitKoYCGSx2Cj4QMo2zIj3q07
	PIVZgjGgkONRbyLY6guqBMrX7uZTaYPxhn8/rme3l0FXbLQ2aXjyf3ez1VCoaI8z
	oUQmKm0QVAnGToA7wOg/bSxmqcWRSFw2XOAF8S+1MJQIxHG5q+zS8QCPqXp032QS
	IL91C4rj3OE6EbMv11pblmeSPU7H142AMqeamj6WaQ==
X-ME-Sender: <xms:vccRY3YnapSToqeMqT6EMAlukXCrLGf50tyequ4imlq5mB5YW-ozWA>
    <xme:vccRY2btZI16nY_A5FiW6jZ4JsHr8L3JOF5eDxdlzTjJ72LrrT-p7Ln5eRNQQnwVv
    cR02Wq1KJkgOvMuw0Q>
X-ME-Received: <xmr:vccRY58Qqyab1xsRq9OOYYd1NQosq62n96ckxBPNHU3ywT6gdNoBvQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeltddgudefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeejieduveekueegfedvgfettdffgeevheeihffgteetveelhfef
    ueehgffghfelvdenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggrfhhnrgesfhgrshhtmhgr
    ihhlrdgtohhm
X-ME-Proxy: <xmx:vccRY9pZPKEMQe3Au5Z-5zwTE2VIs_lnt8m-vjUsH105Yv1ICer1fQ>
    <xmx:vccRYyrip_x32_spiiUe_07xiqRGjWiosBKjbVleILgdMbREasoCDg>
    <xmx:vccRYzSkS9QhAzaIE6WYrBac1T7cwkawFcUVbiE-riPnY23rzsQ-4A>
    <xmx:vccRY7nNCadh3QIM2C3iuxEbI-jHRrUIlPKz38Yhk1n9nERU9ws_Gg>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 2 Sep 2022 05:07:07 -0400 (EDT)
Date: Fri, 2 Sep 2022 12:07:04 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Paul Elder <paul.elder@ideasonboard.com>,
	Florian Sylvestre <fsylvestre@baylibre.com>
Subject: Re: [PATCH 0/5] media: rkisp1: Fix LSC initial configuration on
 i.MX8MP
Message-ID: <20220902090704.crddbkvmguvezyiy@guri>
References: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220817021850.20460-1-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_020715_896748_1AC2FFAF 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 17.08.2022 05:18, Laurent Pinchart wrote:
>Hello,
>
>This patch series fixes the Lens Shading Correction initial
>configuration on the i.MX8MP.
>
>The i.MX8MP integrates an ISP8000Nano v18.02, which unlike other
>versions currently supported by the driver, gates access to the LSC RAM
>with the ISP_CTRL.ISP_ENABLE bit. The initial LSC configuration being
>performed before the ISP gets enabled, the writes to the RAM are
>ignored, leading to incorrect results.
>
>The series starts with four small drive-by cleanups of the LSC code, and
>patch 5/5 then fixes the issue. I'm not totally thrilled by the code
>architecture, but I'm not sure why, and I have a feeling doing better
>would require a large refactoring of the ISP parameters handling. If
>anyone sees an option for a better implementation, please say so.
>
>The series is based on top of "[PATCH 0/7] media: rkisp1: Fix and
>improve color space support" ([1]). Reviews for that base series would
>thus be appreciated too.
>
>[1] https://lore.kernel.org/linux-media/20220815065235.23797-1-laurent.pinchart@ideasonboard.com

Hi, I see that the series is also based on "[PATCH v2 00/55] media: rkisp1: Cleanups and add support"
right? I could not apply patch 5/5 because it seems to sit on top of
'[PATCH v2 49/55] media: rkisp1: Configure gasket on i.MX8MP'
Do you have a branch you can share with all the sets?

Thanks,
Dafna

>
>Laurent Pinchart (5):
>  media: rkisp1: Clean up LSC configuration code
>  media: rkisp1: Store LSC register values in u32 variables
>  media: rkisp1: Simplify LSC x/y size and grad register macros
>  media: rkisp1: Use RKISP1_CIF_ISP_LSC_GRAD_SIZE() for gradient
>    registers
>  media: rkisp1: Configure LSC after enabling the ISP
>
> .../platform/rockchip/rkisp1/rkisp1-common.h  |  29 +-
> .../platform/rockchip/rkisp1/rkisp1-isp.c     |   9 +-
> .../platform/rockchip/rkisp1/rkisp1-params.c  | 378 ++++++++++--------
> .../platform/rockchip/rkisp1/rkisp1-regs.h    |  20 +-
> 4 files changed, 239 insertions(+), 197 deletions(-)
>
>-- 
>Regards,
>
>Laurent Pinchart
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
