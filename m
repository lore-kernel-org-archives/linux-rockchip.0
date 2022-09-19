Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DBF6ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 18:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asA4rF9WMc3Ry64tDDZOdAC0P2l5bBPtKec0wK5SD3A=; b=IIt0sC+e4SDx35
	OMYh0MAEfhGqq0uN4SDic/G4Qt0DckY9HXVfMQ3rnCqLchOwaCSlcz8NJ8/2qESxc1UUUiGHdXuGy
	XHm5siMczXq+qNXIkydd7GgITtD/3oCvhpfzcnMZl6V32KazYma3z+xRtXNWr8ngblUITW6VRER1s
	AQg3fK0aKM8RtxF+x72c/KLDgipVLK3GjbwRI0NwpXDzq/usBeH+28uuhk/cBfx7IT0EsaK/L9Nij
	crI8po8YawhKZ9jhSJkSabo2nS3I2Zn0I8kSEI2qLwRfBSyP8cpP+Niw2wLG3AranvVaGYycRLUBO
	hiNauXbPHfpNl87ONGoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaLyL-00E0NO-BK; Mon, 19 Sep 2022 18:58:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaLyB-00E0IG-GQ; Mon, 19 Sep 2022 18:58:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D567B611A7;
	Mon, 19 Sep 2022 18:58:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 989C1C433D6;
	Mon, 19 Sep 2022 18:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663613894;
	bh=e66b2uQnaC4+5BG8+ZrFCQhRMwPA0fSmIpCCQsV1mkY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Goh8Zi7Q65rrxP63D7sY5xY4+lE6K8goou+SD+BxqMCkOMeAqZYjT+iJrCIdoR1J3
	 pnEpWRh/X1yEyuSIRg2FMjaCL/nE/ZQqh36r3O+kSgys0CBp+yclXbUVQhs3CMJfvP
	 JXAfwszYOuyY58sMUiXsOHeHC2UhNM7NUPUBWay6Sa04toKcdUScrL8VAY/+DctDu8
	 rfzAejF32aFJqUjccBOQv71aTSmTUhteaLTXUWCSi1ErCuDAWFio1r1xur5YGm3zwl
	 xqFFnN06glwhSbDx3at75/jOyvLnpHuvrgQX7p4iKzRDamDgdhjJ9mroQ0DM1A/eXe
	 PwDphK358GdBA==
Date: Mon, 19 Sep 2022 11:58:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Anand Moon <anand@edgeble.ai>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 David Wu <david.wu@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [v2 1/2] dt-bindings: net: rockchip-dwmac: add rv1126
 compatible
Message-ID: <20220919115812.6cc61a8e@kernel.org>
In-Reply-To: <20220907210649.12447-1-anand@edgeble.ai>
References: <20220907210649.12447-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_115815_614080_5CCF35E9 
X-CRM114-Status: GOOD (  11.50  )
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

On Wed,  7 Sep 2022 21:06:45 +0000 Anand Moon wrote:
> Add compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.

Hi, these patches don't seem to apply cleanly to net-next, a 3-way
merge is needed. Please rebase and repost. Please put [PATCH net-next
v3] in the subject as you expect them to be applied to the networking
trees.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
