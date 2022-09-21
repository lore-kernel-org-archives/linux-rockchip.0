Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DC51ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Sep 2022 09:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOq8qVYXnsz2Z0K8K5ic+AkVPGvBpM91/go1INbGmsA=; b=hu7ILPAavZlTbM
	VGPHppVpoLd/gKntp0vRBR0+yko9zgVNN2bk/Rfn6oUh76iW2XMVhCvl3b5McVMaNjOXTX/AbRW4n
	rZLK8Ib4jMQRdoxXhaN5+PMf98a+25hBpkkhjgVZOwZIoknoc/0NrZAbXazwwRa7k0wIjvpLkQZTz
	jDocOWVNPJ+SBd78dulkVpUJiQTwnOFLq+B0XAaDUHhsLqj76IBlcO3cALIzrgptnARsLlYRBNSpH
	IBfBM9Q2CNF5c6BZb1mg4yNO5QZCjDMQhWXHvK6xRtGY3QfFeMM53r8zopumgEY86W3XEr4QrS7Sx
	VWpnYkmXgurhpO0XV3AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oawV7-00AgPD-93; Wed, 21 Sep 2022 09:58:41 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oawUp-00AgIh-NK; Wed, 21 Sep 2022 09:58:25 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 4BC6A3200997;
	Wed, 21 Sep 2022 05:58:17 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 21 Sep 2022 05:58:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=engestrom.ch; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; t=1663754296; x=
	1663840696; bh=eCra/b1EXsGAdvlyVpCtjB/oMgMMioXcrA1hoFjnEOk=; b=M
	0aUWi+vFc6y7/RGkB95PXAlrOeEWJ6PWHOIhNttqp3rbysLc2ao+d4H3a2oRrSRg
	qlr4hKw+m3Ugc4Ubj5mWTCZ5EFjsZZCKqYToWWQelDw4HHoY1HnJviL/URql10ip
	IP30t72kdTvJvExTTvnB4MMIvmU/NFHQufyHHo0DHFDihVwxGm6v5YL7JD1gZYMO
	mwej7mJpgZyZGSwQmSGRAfIgtsZ86C8ZTTA7regwHqakrZZxpZzEkEMXFODbPrsw
	GyeOM54UXMCH4BeH5u1C88UGFigWkwOcPxHa8kpXEteCLhwH8LznYxAIxHQSQ7T0
	ostC4oiFwX1AXHmgefwYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1663754296; x=
	1663840696; bh=eCra/b1EXsGAdvlyVpCtjB/oMgMMioXcrA1hoFjnEOk=; b=x
	vEiM+dV9ObU/xEUmL9uWg+e/JWBeKglTCzFxWdjqOXhNXmzDG1bDGNc3FzDjsncf
	NXWo9QD2EYyAQfi3NgIvcEaHhFIAhiLaeil9H24NL/Batgmg+Co2uFWQdiW28qak
	EHxV4+kY/NwYFQL3THOB6KGjge9FskcnZZpoeGdGgDDW9EF/1iZ9zl0V0+vsaTOp
	Gr+GMYUzxh7zoB9bZVwKA5/VwVHo++IH5lOMzQhPEyFO+c4ace3dWTCBUUzkVB9E
	dOozWmytOHpNzpDCJFJg5JPMbh1Ziei4BWm8e4EYs4CSb3C6XP4/WtznmFYAZlet
	bxg3KZ2afk2T0QbsqQBtg==
X-ME-Sender: <xms:N-AqY7nY1U0eL0eseG3QZ6rH2LOIIO47eDbtWXuy_rNxguCzcuL-Vg>
    <xme:N-AqY-2YRcWY8yWw6ESkAg53j2KJ51sMZWDxgDz7csbllXXClA6nNan9wgc89RHx_
    biAMAdBlJ8XshfZDxU>
X-ME-Received: <xmr:N-AqYxpj4_3BFRWjPiftQ3aaYc5fSovQ_hcdnk6jBosSAyL93DJL1vZoS34dzdNh9o7MbMtHmcpkNA0C1omi6GmBeUZwvg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeefuddgvdefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjgesth
    ekredttddtjeenucfhrhhomhepgfhrihgtucfgnhhgvghsthhrohhmuceovghrihgtsegv
    nhhgvghsthhrohhmrdgthheqnecuggftrfgrthhtvghrnhepfeegleegudefkeeuvdefhf
    eigefhkeelteeuvdfhvedtueetfefgfeffjedvleffnecuvehluhhsthgvrhfuihiivgep
    tdenucfrrghrrghmpehmrghilhhfrhhomhepvghrihgtsegvnhhgvghsthhrohhmrdgthh
X-ME-Proxy: <xmx:N-AqYzn6tZGSPgwSVpaSVw_dwleW40gvPw3wfbUhu8j7KNclW_Xzow>
    <xmx:N-AqY52EGuDAWop-WJvl_qVmxqf9fFcIhSUlXT2fBMZ0B_VbjdmRtA>
    <xmx:N-AqYyshEiZTGUfKMd0RL6MGe3NhBX0hRksONyqI0YmI8CjveIUs-Q>
    <xmx:OOAqY14i_hrhuZ5uxNJoWkyBla1LvEYNhV9XRoNEuxMC_mfXUhtBQQ>
Feedback-ID: ieaa94438:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 21 Sep 2022 05:58:12 -0400 (EDT)
Date: Wed, 21 Sep 2022 11:58:09 +0200
From: Eric Engestrom <eric@engestrom.ch>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, zhangqing@rock-chips.com, finley.xiao@rock-chips.com,
	shawn.lin@rock-chips.com, zhengxing@rock-chips.com,
	jeffy.chen@rock-chips.com, andy.yan@rock-chips.com,
	mylene.josserand@collabora.com, nfraprado@collabora.com,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	sboyd@kernel.org, mturquette@baylibre.com,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: clock: rockchip: change
 SPDX-License-Identifier
Message-ID: <20220921095809.cr4kpqqcu7b5u76j@engestrom.ch>
References: <20c6a502-2ff5-bdb1-fb4f-0741f3a2c19c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20c6a502-2ff5-bdb1-fb4f-0741f3a2c19c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_025823_909865_8CA9935F 
X-CRM114-Status: UNSURE (   8.28  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlc2RheSwgMjAyMi0wOS0yMCAwMDoyNTowNyArMDIwMCwgSm9oYW4gSm9ua2VyIHdyb3Rl
Ogo+IENoYW5nZSBTUERYLUxpY2Vuc2UtSWRlbnRpZmllciB0byAoR1BMLTIuMCsgT1IgTUlUKQo+
IGZvciBSb2NrY2hpcCBjbG9jayBiaW5kaW5ncy4KPiAKPiBDYzogSGVpa28gU3TDvGJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KPiBDYzogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5j
b20+Cj4gQ2M6IFhpbmcgWmhlbmcgPHpoZW5neGluZ0Byb2NrLWNoaXBzLmNvbT4KPiBDYzogSmVm
ZnkgQ2hlbiA8amVmZnkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiBDYzogRmlubGV5IFhpYW8gPGZp
bmxleS54aWFvQHJvY2stY2hpcHMuY29tPgo+IENjOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1j
aGlwcy5jb20+Cj4gQ2M6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IENj
OiBFcmljIEVuZ2VzdHJvbSA8ZXJpY0Blbmdlc3Ryb20uY2g+Cj4gQ2M6IE15bMOobmUgSm9zc2Vy
YW5kIDxteWxlbmUuam9zc2VyYW5kQGNvbGxhYm9yYS5jb20+Cj4gQ2M6IE7DrWNvbGFzIEYuIFIu
IEEuIFByYWRvIDxuZnJhcHJhZG9AY29sbGFib3JhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb2hh
biBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+IC0tLQo+IAo+IFJlcXVlc3QgZm9yIGNvcHly
aWdodCBob2xkZXIgYXBwcm92YWwuCj4gUm9ja2NoaXAgcmVjZW50bHkgcmVwbGllZCBvbiBvdGhl
ciBjbG9jay1wYXRjaGVzIHRvIGR1YWwtbGljZW5zZSB0aGUKPiBiaW5kaW5nLgoKQWNrZWQtYnk6
IEVyaWMgRW5nZXN0cm9tIDxlcmljQGVuZ2VzdHJvbS5jaD4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
