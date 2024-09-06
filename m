Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D914CE7B0C
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lT37pGcq2SwaOGRs89JPs2BTpNk003nfrSFpV1IAxqo=; b=LtVyyH5c4A16vD
	qi0HEuA91oEEVZZ3NsdQcGdhmRlFMwIITWuhaUIC4TDMoyeCXjONKs2f2sOtgtQvg50goYHgrgqU9
	F4rlPdvvuQcbVzjdOQvf0gItxe1xJw9ASTdX2aljuyWaY/MqK2KU4H93z/eeUH6Dwelf/SCE71ql0
	xNLjSLQyAG7qgTFtpivPGemehdjjz59V8dG5jQAYgTDAmaV2eIu+8gU7MR79/I/Y/pAaFRzt3NamN
	8eMDT4Z6alX9IoT73ttG9m1jVfUSeDtNOOOuud5Fnejauen+7w7NYzFxs7kCRr9LhhJOkT1ltaS47
	MdXG8JcU5epVIoGkVK1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smbdF-0000000CvLp-05Cj;
	Fri, 06 Sep 2024 16:16:21 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smaUh-0000000CerN-0nvo;
	Fri, 06 Sep 2024 15:03:28 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6F20960002;
	Fri,  6 Sep 2024 15:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1725635004;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UpOgnp/4T9ohFqRf5TWdDn4NXwlnS6KaHAvMaKzDSL0=;
	b=Zw8fgBGtR6i1G0kB/MTOleD+0SZ2QUoTBptfP2K8dOHvufA2dpQwSe1P5TYX2TI8OTRiQx
	qHKF1SvIRChobRTssJgKzPUPLu1yT/1yXwZ3DuaaG/6jDeZZgzYaQLvCPSpC3dBfwJ2hCr
	PB+Xjq9Spt3zv0gt1dUTSYAl+HQ0H8PJNsepgIlj7bJHXz9n9ZqSEgEWnJoXr7wkAeFfh+
	f6A9F4I0PAVA4hzXvUTxw6UM4rskzkuKRFadnRlsj+8bHS4VPL8KJMKzSiV9coWlcbtSpP
	HSz+9amkrnSGES7TpDMh5UMC9LELrvnwN+jZttaWkiOv+C/6ZwcO6W+RuDefpw==
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
Subject: Re: [PATCH -next RESEND 10/10] mtd: rawnand: sunxi: Use for_each_child_of_node_scoped()
Date: Fri,  6 Sep 2024 17:03:20 +0200
Message-ID: <20240906150320.734507-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826094328.2991664-11-ruanjinjie@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'b59fdc7f38812fa811a1f8d63ca2d42c9728c09c'
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_080327_393357_6940112E 
X-CRM114-Status: UNSURE (   4.53  )
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

On Mon, 2024-08-26 at 09:43:28 UTC, Jinjie Ruan wrote:
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
