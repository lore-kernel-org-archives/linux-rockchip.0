Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7FACCE7B1E
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 15:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RlWkuG50tZqq57fcasrxJ99osEoEYcJpBKzpDuM2m6E=; b=xQAxhIThL8WHBn
	SMoiOVo3NdAGZMPt+I2Vi2Thdk/WuhVN11aAPyrPvLByGhVVVHoX/B6jBG1kwj+JwhPmvMq0zwCuX
	ISr2gTu6tr7CwsbgXr5XRXL5W/3T8HBnaMwhMfnksOB6Vlwkt8Ueh5OYIBPy8beYhzB9np4rC76J9
	qmYVdM8t8RfABiu97GP6gISv0+mrUIenR8WFA5O0l42XwjpW7DcfSk/09QQc9+bdFSJgxT4hYqbhE
	IXXg5iGWvS4dm9R+BVlo7C0VgaFTv9ZDvV3129sS6z1OB1+ucnLvAUI1apc2N+Qk/p2a0f9wrCxsX
	iz8BzCHebJ3JQBkYXhRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smaZB-0000000Ch6l-2TDz;
	Fri, 06 Sep 2024 15:08:05 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smaV5-0000000Cf0C-1vLB;
	Fri, 06 Sep 2024 15:03:52 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id F10221BF206;
	Fri,  6 Sep 2024 15:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1725635029;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=b8ODKZaCniGTHW6OkRl9tVAEUv9GIxZiiZmZyth8g8g=;
	b=Vg4M17S0ts0e61e+Vye/efUQ1IIDQhnk6EdDJDu89ir9Pu5Y737hcF9pXu1NLMK2PEC4a7
	NgTDWV9F3FKJX9LxL+M/+S9ZQ8/mP+T8IN5fOwRKtWlLpAdCcHdS5KWz/qY00/1+Vi12y8
	THdSw45/vQW+CeaApXaPfGH8f9RFKLDjV4rbA7Lh+0bb+Uqv57plcCWHuputbDJKxDoBSg
	IVEEfOHCmCtNK9t5txrASCVVXg9NNDdrN38ZjwliS3O5YvNykCR8nFDGclDB4RguZkBoTG
	0jh1yABAwDhXgY7mCgW6WuiUg6FDzPmpgHX8S8RTmOOYhUAWtzO4z5BRVNNbNQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Jinjie Ruan <ruanjinjie@huawei.com>,
	miquel.raynal@bootlin.com,
	michal.simek@amd.com,
	richard@nod.at,
	vigneshr@ti.com,
	liang.yang@amlogic.com,
	neil.armstrong@linaro.org,
	khilman@baylibre.com,
	jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	heiko@sntech.de,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	wens@csie.org,
	jernej.skrabec@gmail.com,
	samuel@sholland.org,
	kees@kernel.org,
	gustavoars@kernel.org,
	linux@treblig.org,
	robh@kernel.org,
	u.kleine-koenig@pengutronix.de,
	erick.archer@gmx.com,
	christophe.jaillet@wanadoo.fr,
	val@packett.cool,
	christophe.kerello@foss.st.com,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	krzk@kernel.org,
	jic23@kernel.org
Subject: Re: [PATCH -next RESEND 06/10] mtd: rawnand: meson: Use for_each_child_of_node_scoped()
Date: Fri,  6 Sep 2024 17:03:46 +0200
Message-ID: <20240906150346.734628-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826094328.2991664-7-ruanjinjie@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'ee06c7821d0426d0f998593cbc442757247e7cd6'
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_080351_650437_BB3BAD03 
X-CRM114-Status: UNSURE (   4.62  )
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

On Mon, 2024-08-26 at 09:43:24 UTC, Jinjie Ruan wrote:
> Avoids the need for manual cleanup of_node_put() in early exits
> from the loop.
> 
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
