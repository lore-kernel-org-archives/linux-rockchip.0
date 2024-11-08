Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D355D5C0C8
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 14:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FMgw/O/AlQxVQPjVJUDz/6SDOruApNSYAAifuGsk864=; b=GoIEAVgQCFERzX
	wSbVdkd5lqWtkjAvgPK2pXE3kWRPJynSGXvBncPjKvjdekse7MZWpHP3bdia5WPQIx9ygqTQ182r/
	RPK70OP5fbgM30/DMsMkiWX5TdY1K3XQCALmeD/i7RCA4iXxk/jJabTVSnx4Eda+oqTHWDdk97tCC
	pZXX5GWuY+hC8bOJ88nCqhshyclyNT5zWdQcG5fuAiYyGODLQwbRAjLdlPOmfmkmgenUq7npU+jM6
	wQ+crOOTuviee3luHr+VPfMMkovqHD8v+rxdVabf3LJZ2bPcpGvNhCHLO1tENKDCqKSDpL1bhAWJk
	RLnQI+oSS8K2id5T4etQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Ps9-0000000ApmW-2VH3;
	Fri, 08 Nov 2024 14:22:01 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9PR7-0000000AlcT-2bz1;
	Fri, 08 Nov 2024 13:54:07 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1731074041;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=k3Zn2bpSYjx0KdspBHLAyKP2HSBrvqQHEj0Q/hMzoJk=;
	b=bujVIQcH927mV5DqCLvbMvlG8Kcc1rhDUr244chfKffchmcgQJebhKtH6f5ajEukZ+1Z1X
	YpwG/j3iMCdCP5SF+TRY6GnVUVrZZPDG0XknzDLPgcOmF4MJ4xj6Dd4paLXjonnUGZUz3q
	ikmqsue3HJE8p5RnZSpuunABSwsn+gDnLmaxAeEJS/E131J3Q8eG8zuD3QQJLqecymiDPt
	iQztHpdQlrTw46doO+npJDfzRCY4zDabzIaxtF2h0rUwfizhBOVWdzeJT1tC/K7yc1VZtn
	KIGSHnN75JxuVtov0StSPDS18Pj+RW2+XxCaImwuoKNK6egIjMVVH+XljlXI5Q==
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Cc: heiko@sntech.de,
	hjc@rock-chips.com,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] No longer produce error messages when dphy is deferred
Date: Fri,  8 Nov 2024 14:53:56 +0100
Message-Id: <cover.1731073565.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_055405_835314_64A48F39 
X-CRM114-Status: UNSURE (   7.83  )
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

This is a small series that makes the deferred dphy no longer emit error
messages to the kernel log, which may even be repeated multiple times, to
avoid possible false impression of some issues.

This series also performs a few small, rather trivial code cleanups, to
make the code a bit easier to read and a bit more consistent.

Dragan Simic (2):
  drm/rockchip: dsi: Perform trivial code cleanups
  drm/rockchip: dsi: Don't log errors on deferred dphy

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
