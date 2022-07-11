Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C68C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 02:51:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMCM2mFbYf8vWJ4vw/1PLrBgqUfjMKRb/02WKUQSdmA=; b=y0NRRsF4HDED95+xhzoD5OhQry
	Kij0BxEwgK4IZ0RbQsVoc5dshkwO9B86YdI3UqAPYV63f9bu11g9/40ZZ4fvA6vRIFoPPN9b+sUby
	411ygUePw/X4rjmpQSr8H5rbqxq6f424qbDcvWneYGh4XyaMxwKT8HnA8nPHcqo5C/d5/SGy/a2gE
	fbIgJV/WwoGp21Pq9CP11eoSXCE5z+v7PBOogvVLtWw6va8DNAMVEZF3AgXPApHUJbMf2PpxLJRZ4
	DXcJRKfVBpCPCIJ+V6fOLrMT+6lNNtrbmLobgLg5GoraQYKFxU3B2LKzK9U8JHz+AQ70ljY7SBHRS
	2O1SJZfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjW2-00FNBw-Kj; Mon, 11 Jul 2022 02:51:18 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAjVz-00FN9d-4V
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 02:51:16 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 8A93C3200406;
	Sun, 10 Jul 2022 22:51:13 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 10 Jul 2022 22:51:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm3; t=1657507873; x=1657594273; bh=WfedgCAne9
	Vvh18evuXxz77nYdVEdYOfWNpN6Ox40xA=; b=qR8NHwvJQ2M+XXhkNZERSsIpae
	SiBXDGMTnqXOsElsBqzNKUBADSQ1CK/aJ5U+iMto45+72ZZFOIuGj+Wqiy88i/sM
	4YJtjVFL//MSWYLuTJ6XvqY2L+O0FNf+RnfhR55Hb1DOC41Dmvm5uAg5Nh+wgatu
	SKxfguAza7gTKII+xo8SUs/3V/8R4s9uEOr9vZZiKMN651M8GhrHYvQdc2Omgyj1
	ulZAhni36t4rCzxefCVV+JmPVSksgUILJEPnt69lIpMcBP5fg7VUduSBP1cTgpGp
	vVG/vTwkMauzGkskniMDGyjH68e2X34tUcuJy5Z+9SMSYo1TtCqF/vbJKcCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
	:feedback-id:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to
	:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm3; t=1657507873; x=1657594273; bh=WfedgCAne9Vvh18evuXxz77nYdVE
	dYOfWNpN6Ox40xA=; b=UFk0xl2LSbX6m5mNFB0HK6FnKU4cvuCeDL/vOuB2eIQX
	12EOXDidDUoj1cvuD3Qgk3sGm9vX+q9YBawqWEN/JOb6WJp9Kds8FU3taVQh+I8Q
	1pRp7TPvpYkLtA7PihSoWZ7zyCnWU+5MArRFjUX/4TXCLwO6wKZgf72c95+YwoWw
	4fLDEFFnVpPnGwgq2ONyXLsy1rRPk3Gfaf7+P3IKGNHikEDQGFvhHUfcc0MW1qS1
	0be7vZT1WG4MqcLlaF91VYiNnPimRmMRSKkTz1E6CAihY6bdC9FafCmA9DSNQsN3
	alOzU75mCdWh/T3r9LNdZan2L+9cowzJV0OhBW9aFQ==
X-ME-Sender: <xms:IJDLYjOdHMCOyTkKhwfMmg5IyFj64uyZKKR7rj5EzvQ4xgf4NMzIhA>
    <xme:IJDLYt_cZO4tybiH43YCN_3x2zSYJ8lVxnpvz6r6FiaGsbK4Czh71jxi_XJzPchaS
    NQQoDE6xh2ZAHKwV4A>
X-ME-Received: <xmr:IJDLYiS9VhaoLdsguQ3CZiYxObU4DbYwTRBUx3LQ4xakYM0vXa8oJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudejvddgieehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtjeenucfhrhhomhepffgrfhhn
    rgcujfhirhhstghhfhgvlhguuceouggrfhhnrgesfhgrshhtmhgrihhlrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpeehiedvjeehvdffleekffdvjedvieehhedttefhvddtueefueek
    lefhteduudfgjeenucffohhmrghinhepihhnfhhrrgguvggrugdrohhrghenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghfnhgrsehfrghs
    thhmrghilhdrtghomh
X-ME-Proxy: <xmx:IJDLYntM8EoNwEOJr16GDXyc9R4tz3cRDS0QAJ8_OkMYqlKbInPjEQ>
    <xmx:IJDLYrfWrjTx9morvMzmn6xj7SE-ShOHwNjzPjLi0c6yWw4zuQkzxA>
    <xmx:IJDLYj1y9KYPiPWQ5nCCmveznyWQQtAQAFUrwdcNljpr3PVQwa9KZw>
    <xmx:IZDLYi7jKdhruZlYvQnWs61fBLiJenrKjHmNYtoyEFqwGI4l9rGJ8w>
Feedback-ID: i0e894699:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 10 Jul 2022 22:51:10 -0400 (EDT)
Date: Mon, 11 Jul 2022 05:51:07 +0300
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 46/55] media: rkisp1: debug: Add dump file in debugfs
 for MI buffer registers
Message-ID: <20220711025107.xkws7mliucwxjjgn@guri>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-47-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-47-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_195115_232717_30798469 
X-CRM114-Status: UNSURE (   9.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 01.07.2022 02:07, Laurent Pinchart wrote:
>From: Paul Elder <paul.elder@ideasonboard.com>
>
>Add a register dump file in debugfs for some of the buffer-related
>registers in MI, for the base address, the size, and the offset. Also
>dump the appropriate shadow registers.
>
>Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
>---
> .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++++++++
> 1 file changed, 21 insertions(+)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
>index e76dc2b164b6..1a59c00fabdd 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
>@@ -121,6 +121,24 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
> }
> DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
>
>+static int rkisp1_debug_dump_mi_mp_y_offs_cnt_show(struct seq_file *m, void *p)
>+{
>+	static const struct rkisp1_debug_register registers[] = {
>+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT),
>+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT2),
>+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_SHD),
>+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
>+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
>+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_SHD),
>+		RKISP1_DEBUG_REG(MI_MP_Y_OFFS_CNT_SHD),
>+		{ /* Sentinel */ },
>+	};
>+	struct rkisp1_device *rkisp1 = m->private;
>+
>+	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
>+}
>+DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp_y_offs_cnt);
>+
> #define RKISP1_DEBUG_DATA_COUNT_BINS	32
> #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
>
>@@ -214,6 +232,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> 	debugfs_create_file("srsz", 0444, regs_dir,
> 			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
> 			    &rkisp1_debug_dump_rsz_regs_fops);
>+
>+	debugfs_create_file("mi_mp_y_bufs", 0444, regs_dir, rkisp1,
>+			    &rkisp1_debug_dump_mi_mp_y_offs_cnt_fops);

You didn't change the file name as Laurent suggested

thanks,
Dafna

> }
>
> void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
>-- 
>Regards,
>
>Laurent Pinchart
>
>
>_______________________________________________
>Linux-rockchip mailing list
>Linux-rockchip@lists.infradead.org
>http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
