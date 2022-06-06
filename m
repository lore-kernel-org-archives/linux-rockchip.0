Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CCD2C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 17:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uHZIjJTpeqB8ZBo0TvsIrxdoEhpZnMI3XDfI1KKLIMY=; b=lYsnHG0ugONZMD
	tHnVpiy7L9ZTryDLRkGPYuLsvHO0DgJD7XItxc3JRZkdTFkUdpszugPqYG4VBwaYHawiz1JVhQ0Hd
	yEiwi6BlP5MQq5cvZz5BsF5lYz3MjHFBZv3kwXYErnzgBFaoNkh9t3+7sK5VcVR2l7ENLxhMLdXyO
	j1cqPhMRHhG4/nSzAI8RjzsADJMlL1gITVctMrvMiqPbes8KOnuHo0zK6RKsGAPsHvAMo3fWNljwm
	ZRsKQHJeJIFvzwFuwdU0N6JUCSPoCR4z2/etW+gxYTkpzRAZ0WuUukKxBVLr6IqFe2wXOKud2cwDz
	2XTZFTeMQBZmqGNOM9Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDS-002Aay-KZ; Mon, 06 Jun 2022 17:08:34 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDO-002AYa-Da
	for linux-rockchip@lists.infradead.org; Mon, 06 Jun 2022 17:08:33 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id BCED6604D4;
	Mon,  6 Jun 2022 17:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654535292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=mpt5bJjaYsZm/6sBWqAQZrsONEwZVnzemEQKz3f7coU=;
	b=e8HIgNC2QL2CiFHloQBWsGxZecDfL7c9JbDbz/g8zAKojlCUu6RbKjegd+dqJOSjmt1he8
	FNu5a/YX7saav5JJo860ZDTCsApvH42HBhHWZx2UxrlvRiyjFvwzrcfsGx5fJHjRv4arDI
	Hiz468UzIPL41cEUOHvoR+2Hs1sXms8=
Received: from frank-G5.. (fttx-pool-217.61.151.134.bambit.de [217.61.151.134])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 44E73100274;
	Mon,  6 Jun 2022 17:08:12 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 0/5] Add hdmi Support for BPI-R2-Pro
Date: Mon,  6 Jun 2022 19:07:58 +0200
Message-Id: <20220606170803.478082-1-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mail-ID: 53506eea-aa63-4d74-a485-3714c78868e0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_100830_721946_80B57311 
X-CRM114-Status: UNSURE (   6.25  )
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

From: Frank Wunderlich <frank-w@public-files.de>

This Series adds changes to device tree for Bananapi-R2-Pro to support
HDMI output.

v2:
- explain why always-on regulators currently needed
- splitted gpu patch to have thermal shutdown config in separate patch
- added hdmi audio patch
  - needs this patch/series before:
    https://patchwork.kernel.org/project/linux-rockchip/patch/20211125100836.423808-2-frattaroli.nicolas@gmail.com/
Frank Wunderlich (5):
  arm64: dts: rockchip: set display regulators to always-on on
    BPI-R2-Pro
  arm64: dts: rockchip: enable vop2 and hdmi tx on BPI-R2-Pro
  arm64: dts: rockchip: Enable HDMI audio on BPI R2 Pro
  arm64: dts: rockchip: configure thermal shutdown for BPI-R2-Pro
  arm64: dts: rockchip: enable the gpu on BPI-R2-Pro

 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
