Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA040C25B4E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 17:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSBFmMRPVAzyaqd8ClaEBIK4y3dl+bbND9C5ML3U9fE=; b=w1TF4AhOXA0+z8
	Bc6dLiTejS1vItdm3QreJXt2tEC3H3b/CMJXqIHvP8NJEHnKOmRgnHz4Mp0w0pHJcL10ap0V5jDuW
	OrDdWZvosTDMElvXhWOjyhPWe8SJmbx/Mk3VZkNI48IX/nZI3rKB7gOHYzl/96omUXk2jF2UWckvJ
	REuqChBRHVC6BMvm1ZeWufLggaiuRKykjQXy+JLSZbBi5wU5m0xFmjyJPdXGO2yjgqHpPQeTT8iG9
	IMxFMdM/aDSOUXGO1EpQW/Y/w6g0xLexWkgtxZ1tuNTXFg3lSyasUU0DcZjE6naASMg4PjPQyhVVc
	H1ZhsFfcSNCH+O1Kay5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKMl9-004lvR-C5; Tue, 24 Jan 2023 17:06:59 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKMl6-004lrF-F4
	for linux-rockchip@lists.infradead.org; Tue, 24 Jan 2023 17:06:58 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id DFD8C5C030C;
	Tue, 24 Jan 2023 12:06:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Tue, 24 Jan 2023 12:06:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm1; t=1674580013; x=
	1674666413; bh=YtX0AywM+WbMQVqKSAFHmwvjTwXS2Ip8eGMj6mruLJk=; b=Y
	DOGsOq1zncdqkjXr8jVSjyqZXVnkQ9UGx2V/F8vQc2VEs/8nMzA0ea3DAys4wHG2
	XCI9uH+olWFj59VwjpkaCGRUq3rppZollcb3qAAFC0DDDdqKiGRryfSoQnNvcJCk
	3FvCXA1UfHSk5aB89KdyGveOMTlzhEldr95/sa/iq9AVEsKadYY7WE/qTqIRNyRO
	XblrbjdLuUvFYKVF84qJfdCTIWDsSmCrC66OLeFeBFtYyMj5iBlqyZIOqV3Uhkyj
	RCfYLHcdrg+v/lCybNPeE79N7mJqu5JYSvMoA0DckSpctxYKmo3c7UYONwFQZvBc
	3brdKljWeBUtdKH/dlT4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1674580013; x=
	1674666413; bh=YtX0AywM+WbMQVqKSAFHmwvjTwXS2Ip8eGMj6mruLJk=; b=m
	/dvJklh3HAi3RJhm3deKbLM4RlyAX4dXGHM5Z+AT/7qldOUhzdRDlcpzCdHACowN
	En+5uPbfDe21xL1TW0F/GyEJwsR52GqecS+2yyVCSt2TDhKRCUYXIxakfc+uD7Fg
	FL41jUqNp/CJewCWVS5d4Yb0x8BvkY8DxSj9j3/2vclSFMX2MH8+Cyt9cWpAYhkW
	OsbeXYd8O9QJPtQSUSV5B0cuV6qxakmiJ70OjQrraaKLwXAhL8mhj77nJkAv5F1y
	ZX62cr3alXxQtFDT1Qeyf9LlQ2pLjw0yGUqzXJk1UCFr1SPAKASs1ESbR4YcPZs0
	OZTkJWd52lDZS74buXYtA==
X-ME-Sender: <xms:LRDQY2eu-IsjARj9N5aRkjHO_x53v2TAat5Scv1upJFoNPjuZSUA0g>
    <xme:LRDQYwPofGbdtA-NpR7cWvxhO-Jf10BOXz39K_Mv60emz8g9AJYZdLodY5-pecfWa
    Dw47az262EtztJcn1I>
X-ME-Received: <xmr:LRDQY3jTxU8ys2qY2PXk0mRi0N-AtVMi0gCak1f8oHqnIAEUvito1nKVANSUDywebV1qvA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddvtddgleefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggugfgjsehtqhertddttddvnecuhfhrohhmpeforgig
    ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
    grthhtvghrnheptefgleeggfegkeekgffgleduieduffejffegveevkeejudektdduueet
    feetfefgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:LRDQYz9GvPqLcbkDgBCnJtUvjwOaGkMyboE9v-tvYIbemaLmNYzAyw>
    <xmx:LRDQYytHnomW2gssmzU3f02aabNLgMl6R4wC8Pd6xeytz5yAoxF0wQ>
    <xmx:LRDQY6GL3zKP9wk_fBZ76EYX1nio7xHUXvl_UAyePfJzadb98kDNfA>
    <xmx:LRDQYy5BBgNxq3w8koMIfLfjtgbbwAoB1k8SyRVty8mgHmsbYqlKpQ>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 24 Jan 2023 12:06:52 -0500 (EST)
Date: Tue, 24 Jan 2023 18:06:51 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	thierry.reding@gmail.com, linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH V12 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <20230124170651.z7mam6lherlsony6@houat>
References: <20230123154603.1315112-1-macroalpha82@gmail.com>
 <20230123154603.1315112-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230123154603.1315112-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_090656_892714_3C351B96 
X-CRM114-Status: UNSURE (   6.52  )
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

On Mon, Jan 23, 2023 at 09:46:00AM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
> 
> Co-developed-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Maxime Ripard <maxime@cerno.tech>

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
