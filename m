Return-Path: <SRS0=X3cf=PG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84F57C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 15:21:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4791F60720
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Oct 2021 15:21:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4791F60720
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8ZUS326Rh63UGCI3e4IKszitps897n4dc5lUGCAXQE=; b=x0NNCGmPhNaJn6
	LeJryubwg0omD9muo4fZepFJBzjH4cYBuRI11A2cs8KDwVTm54veQhYj+P0qqiHSpgZl8OMFpu0Dn
	8XJ2vYJd834F+T5yQkAwCuKjUYsy/fUNlJsMT/URRqkdYexaki7H+kcVM3QNhpcieFXfHEdYjVXfp
	Z9Ewu/RQRP/Z1AmzDlESTQY8rBhyqL1oXhrqZlbRPU6YUM8DOisAxAoZdRnhJZfvb0zcyt6qmTvNO
	lOkdKcY2DX5u//RVkAKzIpuXsZ1aRPFj5J3z4Uhly3WGYJfkOIsYw2aRn9wPNSYe+Y35ywTyxXOM/
	nrx7g5aOC7w6FK5S0A+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcUSC-00GHdH-RA; Mon, 18 Oct 2021 15:21:32 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcUS0-00GHag-7R; Mon, 18 Oct 2021 15:21:21 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5BBA3580B22;
 Mon, 18 Oct 2021 11:21:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Mon, 18 Oct 2021 11:21:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-type:content-transfer-encoding; s=fm1; bh=
 CGCHnQh8YfsDbNmhWqbZpULcIeaSOSKYfULNXySwmlk=; b=faJlnAxBWFPKhHS0
 FOLGZX6QFb7LE/iIHc9Vwie9La5cfIHcjzGnty1lxbfkJbwvEGi229gvVkztyQn7
 EtZ9UlVZjmGKuM9daN+I1wdxjHkujzgMr2VHmzx97MdkiMX4RPZK5uIQRqxwe2Yz
 U8SPfNXDm7O8KVw63ZV8VBsIv/4Hbio9D/xj1WIezh6Gng5W5hXPiZ68E1g8TCiE
 ehMzdo38VoRtbAB775MLVTTw3LCzc+Uo2Peb1qOGdWIyONqXpBNKbp7HU6aYbyZc
 6ZEkwd8mD5n1vz1/uNXh8i3+LOV90r4asZ9YaYICDwE+qLNSwGgcc/iPlViaP5QQ
 u5lx9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:content-type
 :date:from:in-reply-to:message-id:mime-version:references
 :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; bh=CGCHnQh8YfsDbNmhWqbZpULcIeaSOSKYfULNXySwm
 lk=; b=EJXXByRwYNJKyuZp8Fv1JrVK0kbg8+koFVIewVimO2jjO9pkPhuFzygQz
 5PxuL2DI8YYT3fkVn9mMpP58MHW5nxnsnwlopmdBNH19jq8V718VAQL1qLXzxM4S
 +omS+SIZWK6Yjw20zM8DR3lq0UswVE6Pq/966ODWNRgQz7Om1vOamTAZs1PAaBag
 rpv2f4ITVmfg4KKhw5hNkwXmmLB+As6ZUWzAx63cSjULOdGQE2gJCX6l00SEmd3T
 qIJS5jN93OCh1F72y+75JOKTRGqGOpnf1yT9iVJ2ryZR8BrnLx9hUe7UokZRun3M
 Ae3LooVBP9v7fnY479BLFzZifi+Bg==
X-ME-Sender: <xms:6pBtYc54dO3NJRE5nNjAfZs8FjKpm0aK18j9rgS38YsWIPq5y4hZDQ>
 <xme:6pBtYd6f_giIuzB_Qv6PmMJyKKBc-gG6ATWqmsz9EDjxfiT1di8mFpQBmgRIb3X1O
 hb0gGerLn69Icf3ySI>
X-ME-Received: <xmr:6pBtYbfdE3T88CMPoA3TaHGpBkEYofDpH-SS9VWbp1HnCKGFGBIkEy6JqWVKgbkbz1LDw60fz-hVYYqXzpnITNtTuTEMRRlRqHiixOCr>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrvddvtddgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeejuefggeekfffgueevtddvudffhfejffejjedvvdduudethefhfefhfeeg
 ieekkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:6pBtYRI9P6GXidggW157octoSwj5AXLhP05YWq10_TDxKwDKr1vi9g>
 <xmx:6pBtYQLxpp08AfCEp31VSH_90uxpKxg9XNMW7tWyVAa0u9dEDSejKA>
 <xmx:6pBtYSwGW4dnCXd-Xc_faVs53Y2VgyWnRoA0Mdc4bkkZxaIixNNvkw>
 <xmx:7JBtYfUAnag_ZqFjB8_cDQ8ZRd7q8mX2wC9y9fgVN7X8s2vC1tE79g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Oct 2021 11:21:13 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: linux-kernel@vger.kernel.org,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Cc: Maxime Ripard <maxime@cerno.tech>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>,	linux-arm-msm@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>,	Brian Norris <briannorris@chromium.org>,
 Shawn Guo <shawnguo@kernel.org>,	Dan Johansen <strit@manjaro.org>,
 devicetree@vger.kernel.org,	Fabio Estevam <festevam@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>,	Eddie Cai <eddie.cai.linux@gmail.com>,
 Martin Kepplinger <martink@posteo.de>,	Lucas Stach <dev@lynxeye.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>,	linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>,	Angus Ainslie <angus@akkea.ca>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Maxime Ripard <mripard@kernel.org>,	linux-sunxi@lists.linux.dev,
 Matthias Brugger <mbrugger@suse.com>,
 linux-arm-kernel@lists.infradead.org,	Simon South <simon@simonsouth.net>,
 Guido Gunther <agx@sigxcpu.org>
Subject: Re: (subset) [PATCH 1/4] arm64: dts: allwinner: add 'chassis-type'
 property
Date: Mon, 18 Oct 2021 17:21:11 +0200
Message-Id: <163457046206.219378.2737975440418368271.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211016102025.23346-2-arnaud.ferraris@collabora.com>
References: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
 <20211016102025.23346-2-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_082120_358564_E652B693 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
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

On Sat, 16 Oct 2021 12:20:22 +0200, Arnaud Ferraris wrote:
> A new 'chassis-type' root node property has recently been approved for
> the device-tree specification, in order to provide a simple way for
> userspace to detect the device form factor and adjust their behavior
> accordingly.
> 
> This patch fills in this property for end-user devices (such as laptops,
> smartphones and tablets) based on Allwinner ARM64 processors.
> 
> [...]

Applied to local tree (sunxi/dt-for-5.17).

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
