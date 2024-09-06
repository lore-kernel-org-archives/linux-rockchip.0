Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7498CE7B1D
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 15:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BxzTksVZQAVIn0WUFE9VF5N6T5hnfl5UlGBC8sbGXU0=; b=il0jylFcAW+6vr
	2DZ6tQJ3QdQOfBCGAXz5n/ZeJg4XizOko5AgWzpXU0nS0l6asKFUhVG7yERVLoKdv2kAQS5NHcIlr
	fGCo5WI9Iq6JlHC78yfEuZs+N+wzenxkzFZ+gU4Naz5L472L8rwACTyZS61rehpLPDM7XSynTCIHQ
	At3A4ZM6D9fi0MAUNY+fphxQZK3T6jRh4CvY1yFj1y+cdbNO5VRjd7u5MqO+YNoDFMm+JEV0yO0DX
	T/OGap2LgsDo1DjGTf0TzOedIIz7ROHO+QCbHkaYHuiahBW+Xn1k96D1fyMdp08l/+ugyF9Ms5EYK
	Tlk8C/gldeiNwMgGY0Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smaZM-0000000ChEG-05FX;
	Fri, 06 Sep 2024 15:08:16 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smaVA-0000000Cf2k-2S7W;
	Fri, 06 Sep 2024 15:03:58 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 32D6E60009;
	Fri,  6 Sep 2024 15:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1725635034;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KCE2Aeig1Xtcqxsj6OCesMJmx0Bzx3NcYdEg1kOU9Wc=;
	b=PunlC78BePp6i3CMkcel19x4PHIcMkhAoQtwHCtPb3f/8vgyKhRc4njyM1R8yUlHP5IadP
	4sOrUMZ86RJ2cXmTOITw+HIRlggZDpVCzT1VfBUqZ0dsb3MfwlpJjo/M8jDPUYN8Gont70
	AGNqpJRGxlaEzQCk6b+C1UTPQOwqsylksrCZyxc7QEQov8J9L8XwvpD9TAcgqkefj5o3Fl
	8pUErSqOrREkixPF39G2m0nTzGI8PwKQZDMPVfFVuKfwEYv4Fp6hWOpYUfnhClb4mglzrU
	+5co91phMXuldBvfqhxTKq44tpZqr82YMIlNc35Ul7+vcL1gK92/acbVnNnVOw==
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
Subject: Re: [PATCH -next RESEND 05/10] mtd: rawnand: rockchip: Use for_each_child_of_node_scoped()
Date: Fri,  6 Sep 2024 17:03:51 +0200
Message-ID: <20240906150351.734658-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826094328.2991664-6-ruanjinjie@huawei.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'0d5c32b5c877d61afc954c760dc58f3b8626ec04'
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_080356_827918_8001D57E 
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

On Mon, 2024-08-26 at 09:43:23 UTC, Jinjie Ruan wrote:
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
