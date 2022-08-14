Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34965C25B06
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Aug 2022 22:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1QW+FMnn4loc6vhloFQAxEAnxHdO/BpWJ2ZDuXPwWQ=; b=jwK0W4LuOzORDf
	mJsT7iQWvuw4eKl3usccmfBDPliPPYTmx7snDOLE24ADVdyJ6fhQ7uqYlSW102PKg7aBdQQ6CYKME
	DmL+hm05mLEcWE/em/k0w2EsahNM5ASFlat1vql0HzqwwRQfLgyeS/Dzk6xRgj6r4H3ppP942GvWJ
	fN16TxsGTb6JxXT6nKs63nV59tyfL6jSNasFlDaKJP3Oxhk3GZPK9YiWP/n5J/VsfgHQ71plBtUMP
	u2K5QsSH+BrDpWZ5vOtJg3ginm4pIohZ8wuvNN8HnKHP0zsSfwAYDBOpPBOjMBRkOyGHtQ+E5eNX5
	DKo00pKfYaufo66lcvJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNLg7-009Oep-0e; Sun, 14 Aug 2022 22:01:51 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNLfv-009Oat-NZ; Sun, 14 Aug 2022 22:01:41 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 5540D5C0039;
	Sun, 14 Aug 2022 18:01:36 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 14 Aug 2022 18:01:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=undef.tools; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1660514496; x=
	1660600896; bh=/N3ZJwMAuJKQJaLlb+5nhdHUlf08GWvC6v41/Xejl+U=; b=x
	lK5hEAvRjyvkoTXfINnBahnjIYJHP+GfNL0MaIZxCfWpEegPDjesCrG4oETdCh2T
	JpxLIWJh11b28A0E3qpAcdHzp5ng8BlJsPNF9zg/LIAC3JuSBfZOcVBPdxN/ALSZ
	JQLHpTH7nHHG6pD5kQO45vqgHj7BlVTf9CBIjGOVP56qfEdkz9OyWJSSJYjtgrJP
	67ZAi59dU4sJX8z9EKTAgvNnA5Q8VCVOx6Hy5WBJ/pRZ30bhAC1bJivfIbDy2BVh
	QIsZItddkgpeY3Tj1V14QZgl+qes/mwCek38q/9NHWhvB5x6fc7Ho1nyNRMYYO32
	VjZnrH3yc1VSoXc2SCQxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1660514496; x=
	1660600896; bh=/N3ZJwMAuJKQJaLlb+5nhdHUlf08GWvC6v41/Xejl+U=; b=J
	NQaUkm4Fe/AlZMS5GBleTwq4sC7yCbf0SqagIxbXqpe1CXbbEkk/WBfeDz8bIQVp
	x4SgQD/pjUnvd2X0V5959jefvXqSkU/kiUyCjDBNJcKSJzQWYDVqLms0dXmP2a/I
	PZqaqyMRW1fvFYSlkBuRxWU/h8uwECfcuwzUYPZj7VnKnsieSi+zjyratj3qBlsz
	axPRn8Fzj/kI5Hg1wzGRJ5vHvZiNWW6nrGqQRQnEHR2FgXKXy8B80nO7bCZnmZQR
	Msjys/sU5YDzi8TobV8WXB8jCNHFXHoxgbqf7foeIog1s/SqCwufY1EVQPP1hiPe
	gsiZMveKvFlTmRFFY1pWA==
X-ME-Sender: <xms:vnD5YsV1vQ3t6ALRWjpPp33qCgjgTKbRYQQ_O2d98f3lCRQ0Qjca7A>
    <xme:vnD5Ygk_DMGmx__aEbWR0z7dCYMjGf38XDgsVqbNTwMgE0BqKp370G_jvfujoOtv5
    fs063N9h6MdYwmMC_U>
X-ME-Received: <xmr:vnD5YgZFhRS0qPf4xt93VxKcOatQuGXL-zAEtWe3cSTduvh6GDOuslRdclOtVpNl2oH_8rB6fG6oalSRhP756kJjrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdehuddgtdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtfeejnecuhfhrohhmpeflrghr
    rhgrhhcuifhoshgsvghllhcuoehkvghrnhgvlhesuhhnuggvfhdrthhoohhlsheqnecugg
    ftrfgrthhtvghrnhepvedtgeffledtjeegkeevfeegieevgffhveeuteduleeileetffel
    hfduheevhffgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepkhgvrhhnvghlsehunhguvghfrdhtohholhhs
X-ME-Proxy: <xmx:vnD5YrUzLZOhvg1AQ4ACTDahXthnJVg1Q2f8HipwqI4rPYT3cUuVfA>
    <xmx:vnD5Ymlm0yNblouP4Nc17d3aBbdNXyrGfQAKHDcIhL4IQ95gk-jnCg>
    <xmx:vnD5YgeNtyZLKZ21XaVsz-LZs8VXPwDo24fa8iC5MXbcWvi3PQhe2g>
    <xmx:wHD5Yrir-iNt9pquSWGrIzaAPRu8b4qZxo-ndXRFG-1Q4ShX6-OfmQ>
Feedback-ID: id76147eb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 14 Aug 2022 18:01:30 -0400 (EDT)
Message-ID: <821647de-be45-557a-e1eb-2e70e186f2d8@undef.tools>
Date: Mon, 15 Aug 2022 08:01:52 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] media: rockchip: rga: Fix probe rga_parse_dt bugs
Content-Language: en-AU
To: Peter Geis <pgwipeout@gmail.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Linux Media Mailing List <linux-media@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 phone-devel@vger.kernel.org, Ondrej Jirman <megi@xff.cz>
References: <20220814040806.7523-1-kernel@undef.tools>
 <CAMdYzYoD9kM_RNs0t=7qc9Tyt9j-cD0DEQD0sR5cEkkGifFSSA@mail.gmail.com>
From: Jarrah Gosbell <kernel@undef.tools>
In-Reply-To: <CAMdYzYoD9kM_RNs0t=7qc9Tyt9j-cD0DEQD0sR5cEkkGifFSSA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_150140_027879_15E8E1F4 
X-CRM114-Status: UNSURE (   9.20  )
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


On 8/14/22 23:12, Peter Geis wrote:
>>          ret = rga_parse_dt(rga);
>> -       if (ret)
>> +       if (ret) {
>>                  dev_err(&pdev->dev, "Unable to parse OF data\n");
> If this can return EPROBE_DEFER, shouldn't this be dev_err_probe
> instead of dev_err?


Looking into it that does make more sense. I suspect it wasn't done this 
way originally because dev_err_probe isn't used elsewhere in rga.c. I'll 
send a v2 with that change shortly.


Thanks for the review.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
