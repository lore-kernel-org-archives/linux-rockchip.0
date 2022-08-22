Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E02E6C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 00:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alAzTIgPuLSDbcioJA1gzUVT2eT/6axJLh0Xem6ytwc=; b=UvqgfJKTlI9Th3
	+y++OrOI7CPPYj4iKxXdZyy5zupJPExNyOb/TkbQDdTH+QF0xDCIiKcgFfCLolwydCcFCcX8jyRPu
	D1EkZQvm/YinZapAo7cYooU+edscRaeeU9KDram76IKdaA+Gi2GNSrxrrrgJ06t7UK/d1wkwZ03h9
	Vrnns9nqqsmPSimBn8pbBkFkpyc/LPzk86/srOipKMj+voowQ8pV+JW9unwOXVhwYQePfPB58tNnx
	ssaCJYadd3GKIEwQ9FwbF2fMun7k03RUO6e1ZuqNE0wy5vI10dYxMFT2TOtQnmazemclLv/tda0Uq
	EkROu1Nqa4f2iYPYAIVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPuvx-001hMI-U6; Mon, 22 Aug 2022 00:04:50 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPuvg-001gmu-CA; Mon, 22 Aug 2022 00:04:33 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id F3CD05C0179;
	Sun, 21 Aug 2022 20:04:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Sun, 21 Aug 2022 20:04:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1661126664; x=1661213064; bh=mPn3++NzcT
	ZNYJn9AdaHv9tQvAGSNSm562mzA+CXdyc=; b=ilFHpw8HUY3poGkFqCAHrPz6aw
	ZgN1BTG5aJJmgGVknaTTq9XZdmrj8jIHTr6/ilmi3p/FWrUNrwF6HnzvaCBtXLUW
	GiNGNBC4onqhlldQweTckLYJpNSLajxq3FetenaB1QWl+woB3elGKg5BqOCoFKHc
	Xea40SFZ//MuCMTPwK1WgsbVCag1Ygby/zxuDDkLTtY9D8bKDYIe+96dayl7ojVD
	CowK7aL5WE21b3xld+BxvC6MyAAF/Nx/P+KA6a58qOXdby9OJkl6Ks0l8DZOez5o
	9Dk370KewS+ZzTKivMVZuNgk3O6qYzKAUe+7XvKLFKSZMqPSFhwmL/69MfuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1661126664; x=
	1661213064; bh=mPn3++NzcTZNYJn9AdaHv9tQvAGSNSm562mzA+CXdyc=; b=F
	QmgyuT/RSJ4NopJmNdtp+JHYiuDOzqyhs+v+AtH1/MbHHd0gRwQUvXK6HvdSbpe0
	OgnJkKuBr2lmI7u/LJ53G+Ez4IRLBP+o7SYs9UXDS9GeFsKkyxE9/+kwHQ1N7qUg
	GniPwYh9UVattk5sfi1FgZ3H8l4eFTViUlretv0P64ZzBQB461eXRT7FZgSVTfyN
	aNcw2tf4LktvuEFXPwF72UIk4AvzM6sHo6OdGZvS+X7FWtvKTxwMg+M0jRUdR3qj
	PBjo2QcUicomyhc/aEdlDiNO0fGQe+UO4dq0tNrzbCL+bXddsdh6NiT4hZQhhNcp
	ORHCEzVOVO/j/2U55JBeQ==
X-ME-Sender: <xms:CMgCYw8RZegTH2UV70DmeaL0NztqKw4LC-Qq7BxQaFFTBb6elpPmXA>
    <xme:CMgCY4vZJcTgmRS3JyQxGseGucI0KmI4-b6Z8NeEnJRUq290jxNJQAxcLcZ409ap1
    C_l2ZwoVEOhUexuJQ>
X-ME-Received: <xmr:CMgCY2DaFJOdIXat5bXQka5i_8-3aTlUUVC1yPV2UxkgPkujullImR74MGbNd2GtV7pWSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiiedgfedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtfeejnecuhfhrohhmpefvohhm
    ucfhihhtiihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
    eqnecuggftrfgrthhtvghrnhepkeeuieejfeeuffekkeetgeelveejieetheeivddtjeei
    vddvledvffdvvddtuefgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:CMgCYwendjHYmerqjOVV4l5A79yOidGSe4Gy6prD1siSteQqwUN5CA>
    <xmx:CMgCY1MsTfKSaPshegZ9LNI5NF9BPCLZaKeksnJyK_-MLFjThhOJhQ>
    <xmx:CMgCY6kNGdi8WCTvEj466LGVVBCPUIohL2QHyk2aPiMBrOlyLnHSAw>
    <xmx:CMgCY8mxFG3gyMMX5jQ9R4gqR18e7YWILkCPfe2qdXGpMOPU4_YlRg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 21 Aug 2022 20:04:22 -0400 (EDT)
Message-ID: <da0e45e0-e1e8-35fd-53b5-142269b830b4@tom-fitzhenry.me.uk>
Date: Mon, 22 Aug 2022 10:04:21 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.3
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de
Cc: martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
 <a11bc22e-a10e-7d15-72d2-6af1d4790695@linaro.org>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <a11bc22e-a10e-7d15-72d2-6af1d4790695@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_170432_532884_165E1FDF 
X-CRM114-Status: UNSURE (   5.50  )
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

On 16/8/22 17:52, Krzysztof Kozlowski wrote:

> Still wrong.

My bad, I will fix this in v4.

> test your DTS with dtbs_check.
Will do.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
