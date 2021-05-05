Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29CC2C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:24:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1C79613BA
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:24:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D1C79613BA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X+QSiJ1f0n84AAZ9By6bdnkzi/oJElcNlbZMSBdTz+Y=; b=XvEZ2hsQ+tl/BuedWsc+C6AK7P
	TFGhUCBn7T2UxCbqGSKjs7p7UdhfaCotXLD5v77zcp0I5PQbXyWuVwe/cJtQZmG7DQ96J6ITGTkO1
	jqeqJRjwxaZNGvPTh3Rsx7Khs5SclmE5qSMfA665XnhWGp2/tOOvUt0F4KTXP8XWS3AJJoiQ6mRKI
	ZzdgOACPhFa7nLXOOOMJ4EOkc1m+dOw7fvGfxDvFptibT4kxssMu9Tx9FZbIx1Wi5VQZ+SdwW3wjY
	DvuktwHr6ldAPHJYsfuFy54Zs5howMpeImG09xaO4YlXCTO+Y9EZpJjR5hSzxen7VUKKshLAme7Yw
	loOv+6eg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leGZv-001B8c-5C; Wed, 05 May 2021 12:24:35 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGZT-001B4S-UO; Wed, 05 May 2021 12:24:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=8xuyGZLKd7Hb4kHiK3Zb1usYwV1F2aKrscMd/E8aIoE=; b=oChYzUxBTq0qjyvXio7l3+WYgV
 D5HCOd7/9vbURelQorLfJ2cnEEpv5P2yZMK5KMtuwirhe9Z/XU5hm18jiio/T4sa+3Pka1oSjGhzU
 BNx/nKzH0/aSre+Cm5QftrktANcNK1FrpNlELlPIYHpfzUuj+Av6KRYBHe0YyucQ5NDsjc5qq3W5i
 6s2q6A+mPdqBzY6GQDcenCZMQusGITA3AiuUnneE6n3M00qBFxlVvQU2+CybyPcEKkefZQiahvklf
 gzVxMDD7NG6wJufqbm5/vlBEYxfy07h423PkCwXq0/pIcAGR+2Jrcv+Hnrezuf6bIXaTAnCvs8ovc
 ppup6YmA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGZR-004jpQ-Fm; Wed, 05 May 2021 12:24:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 57ED41F42E68
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, kernel@collabora.com
Subject: [PATCHv2 0/3] Fix .buf_prepare
Date: Wed,  5 May 2021 14:23:44 +0200
Message-Id: <20210505122347.7576-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <58791717-b7a9-d057-a998-a4440fcbe783@collabora.com>
References: <58791717-b7a9-d057-a998-a4440fcbe783@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_052405_676686_CB1124E3 
X-CRM114-Status: UNSURE (   7.52  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Drivers should only set the payload on .buf_prepare if the
buffer is CAPTURE type. If an OUTPUT buffer has a zero bytesused
set by userspace then v4l2-core will set it to buffer length.

If we overwrite bytesused for OUTPUT buffers, too, then
vb2_get_plane_payload() will return incorrect value which might be then
written to hw registers by the driver.

Andrzej Pietrasiewicz (2):
  media: hantro: Fix .buf_prepare
  media: cedrus: Fix .buf_prepare

Ezequiel Garcia (1):
  media: rkvdec: Fix .buf_prepare

 drivers/staging/media/hantro/hantro_v4l2.c        |  9 ++++++++-
 drivers/staging/media/rkvdec/rkvdec.c             | 10 +++++++++-
 drivers/staging/media/sunxi/cedrus/cedrus_video.c |  8 +++++++-
 3 files changed, 24 insertions(+), 3 deletions(-)


base-commit: 0b276e470a4d43e1365d3eb53c608a3d208cabd4
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
