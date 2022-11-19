Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14842C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Nov 2022 10:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yNUigVpF30Q9vzSQf1bbQYc0ODwqLs86sostjQJ6NEo=; b=I8Ez5H48VixHdS9TD4SDw/cHxa
	K0/JYZqhciduyPjiAiXD73i7inR5MsKzw11NHWUCPOVgbKfZMRNCApvK6SE2ms1nVa0myY16GLsT2
	ZUAOVqy0JYIxACQOsOeBJMDEpXswJmG7QbQhvT3tso/ZVCiOYd7j8WE8GUjI3SOsNarjA6e1ECrOP
	sOkMPnc3Jr+JN7RkJFWKjhAbB7thjEHJ6XI0nTOdSK3zS3CeG+K/9CwSKl+e4urZrJpadd5Et4B98
	u9UY4cQ4jjwXBAcEmL9wJqQna7stEXoBR3y8YA9fZuQFgnYa97DFg62A2uUoAEGeBhCMXJg6BvwE9
	0yryJu/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owLVc-00DApf-S7; Sat, 19 Nov 2022 10:55:40 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1owLVO-00DAV6-AA; Sat, 19 Nov 2022 10:55:27 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 1ED415C0112;
	Sat, 19 Nov 2022 05:55:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sat, 19 Nov 2022 05:55:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1668855318; x=1668941718; bh=CIwr77lYrj
	EiDjN+lfmJBa8qTpOY2sqozIVlYRnXdhU=; b=Hmk/n8p3OvZWDV2jFpZZq2IZbG
	uVhTVcq1s+BL0vWBjOBJ9SoJ+74Xq2YeZAR4wGmsYj+UOSnFisapOunmqqYUIH7G
	k7EWWJDtLZWT66MaGKcTeVRvKZXBGc+s/ORIyn60H2ksXqBIfT81yHud0KtC7LcI
	tJzerUVlEoNx76CKuOvehncGS7gPDuO/L5ozWtJjNtnfi6MpSGFxOpKhYV2RqKVX
	mKaw6qipy7aCNSpEkPb6l0DNpye7QTcmA3mSoTS8yugKAGpLCqQI/RSDntOy/sMM
	x95HxmIi/D7b6MTtPloNvBh5NpxJWi2GiDJwxq36/9o+Jsyg9jlfBgwpNmRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; t=1668855318; x=1668941718; bh=CIwr77lYrjEiDjN+lfmJBa8qTpOY
	2sqozIVlYRnXdhU=; b=lNwUjvTWpmRNUVzK2Y2i31Wapj29V0azTxZPkj3TH3Xj
	IeNLDBlOhvo6AHPaLoWMuzMvo0qPuAurb2ieg0AdXbTIfGnOMKZDthY6utk12jEO
	Oz4m+gkvLTQ3OY+64JJUK0ZD6TJEAhauSK8yYb3JwI2iopARxKQ8RhwOB96rwUhR
	PUueNyRQmva5OmAIFnPqUVEWeIRV4IObYqBbw3bNs7wPtngTi5Kr+3M8UxSNZW9o
	sGoz7zalfjBudGyDfVm/zuxlD/X44DpA/bWxp4Bg8dUO1S2DfLFW78dT1Cr/B7SJ
	Dlf+xdxHQw58iq+ITrPpqzAToJ3XgeWImi0kL6YtgA==
X-ME-Sender: <xms:FbZ4Y579I-XB7wSjbSt-U0qwvOR5XkO9w3kiOhTh04el7yL3MHpjlA>
    <xme:FbZ4Y24Mzf_TWOZh72i8-J_pjUAJnSS908O8v1APKsJSLgR6soKzh9iw1OGGbaU7N
    Q3EfD60yJtc6Bh181M>
X-ME-Received: <xmr:FbZ4Ywd3QfTbjriFPRI6AC7lgneacQjr1AcTQIrNPq4mPKA3hjbnug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrhedvgddvvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
    ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
    ftrfgrthhtvghrnhepvdehtdeludekgeevleefuedvudejieetheekvdfhteekffdujefh
    fedtudehvdeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:FbZ4YyJkJ-KjVecGPdMMxNYNtg9ogFvUjwh1ioLPQCSGPmYOlkvuAQ>
    <xmx:FbZ4Y9LyV7aUYOGKTJj1iT4g4QNpc1r6TNvHFIHzN6rxeCdNOhGi3w>
    <xmx:FbZ4Y7yrGR6YfkyYdphJHOT79cgKXmHfnC4kdjsXej4AoodGZceYLA>
    <xmx:FrZ4Y18GJE1wkYTEPgztTjgA3yeFt_OEcORBYvcRqJR04bfgJU4iOA>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 19 Nov 2022 05:55:15 -0500 (EST)
Date: Sat, 19 Nov 2022 12:55:10 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Colin Ian King <colin.i.king@gmail.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: make const arrays ae_wnd_num and
 hist_wnd_num static
Message-ID: <20221119105510.26n7jk6tc4anu3f3@guri>
References: <20221102155117.144570-1-colin.i.king@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221102155117.144570-1-colin.i.king@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221119_025526_463753_66677C29 
X-CRM114-Status: UNSURE (   8.90  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 02.11.2022 15:51, Colin Ian King wrote:
>Don't populate the const arrays on the stack, instead make them
>static. Also makes the object code smaller.
>
>Signed-off-by: Colin Ian King <colin.i.king@gmail.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

>---
> drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>index d8731ebbf479..3482f7d707b7 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
>@@ -715,7 +715,7 @@ static void rkisp1_aec_config_v12(struct rkisp1_params *params,
> 	u32 exp_ctrl;
> 	u32 block_hsize, block_vsize;
> 	u32 wnd_num_idx = 1;
>-	const u32 ae_wnd_num[] = { 5, 9, 15, 15 };
>+	static const u32 ae_wnd_num[] = { 5, 9, 15, 15 };
>
> 	/* avoid to override the old enable value */
> 	exp_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_EXP_CTRL);
>@@ -822,7 +822,7 @@ static void rkisp1_hst_config_v12(struct rkisp1_params *params,
> 	u32 block_hsize, block_vsize;
> 	u32 wnd_num_idx, hist_weight_num, hist_ctrl, value;
> 	u8 weight15x15[RKISP1_CIF_ISP_HIST_WEIGHT_REG_SIZE_V12];
>-	const u32 hist_wnd_num[] = { 5, 9, 15, 15 };
>+	static const u32 hist_wnd_num[] = { 5, 9, 15, 15 };
>
> 	/* now we just support 9x9 window */
> 	wnd_num_idx = 1;
>-- 
>2.37.3
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
