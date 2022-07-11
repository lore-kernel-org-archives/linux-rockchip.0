Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05A59C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFehOU2qIAinlfhBST7kyknyWUkbr8/FfzjO1ehioYI=; b=hT0ELZCBr/qkCm
	xoyU6+4lVNIcQsa6zVNsl+H5imU8IdwyjuzMwAHrWISY9hBx9pWu+gK6622ILE2Vpdq7RE8pyLXPC
	ykmbNE6hF5ihWGeKNvpnKbfjSYbC/Q98QdSwbJMh3Wa93OXuSl0Ow8Nmfl1JSTIZ71e+gMMFjEZkA
	6HU8IARQY/eOf84qYHzieDPGmcIsCNeQZHLBtwXjCN1+v9eZVMbAXsGZkEP1lQcjGeFVjhf6RiRtS
	dYBGKDijJ017/dehO+h9kHsZDJ/grfKlJDbe12pdCfRl1FOekTJ5hBSrKpYdDq1e62HdnLGlP6I5E
	uSYFAIpNTu5EKOsth7mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAs9e-001HBb-HD; Mon, 11 Jul 2022 12:04:46 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAs9b-001H8D-2E
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:04:45 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 42ADA326;
	Mon, 11 Jul 2022 14:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657541077;
	bh=kohtYCBqjedD034cw6pp1EIO4lNH1yHH1Q5bUGoDebI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jIrrqEzNIw6rk82M5eEYDwc8JaHwyoKqRUqJqcmT+fUfaDWbpMnk/rVj1/7fIPFy6
	 c5sWmRufFLL4x6kWRgaSuTytVBCAXugnP4UZ5DjihgtaBM6oi5k04EgW9pPFDWNptX
	 uxzbPfV2ku2/gI16C8FnJdEkYmmOh0KsYr+CM6TY=
Date: Mon, 11 Jul 2022 15:04:10 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 46/55] media: rkisp1: debug: Add dump file in debugfs
 for MI buffer registers
Message-ID: <YswRuuTUpVSkTPm4@pendragon.ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-47-laurent.pinchart@ideasonboard.com>
 <20220711025107.xkws7mliucwxjjgn@guri>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220711025107.xkws7mliucwxjjgn@guri>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_050443_296774_711B1552 
X-CRM114-Status: GOOD (  12.50  )
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

Hi Dafna,

On Mon, Jul 11, 2022 at 05:51:07AM +0300, Dafna Hirschfeld wrote:
> On 01.07.2022 02:07, Laurent Pinchart wrote:
> >From: Paul Elder <paul.elder@ideasonboard.com>
> >
> >Add a register dump file in debugfs for some of the buffer-related
> >registers in MI, for the base address, the size, and the offset. Also
> >dump the appropriate shadow registers.
> >
> >Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> >---
> > .../platform/rockchip/rkisp1/rkisp1-debug.c   | 21 +++++++++++++++++++
> > 1 file changed, 21 insertions(+)
> >
> >diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> >index e76dc2b164b6..1a59c00fabdd 100644
> >--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> >+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> >@@ -121,6 +121,24 @@ static int rkisp1_debug_dump_rsz_regs_show(struct seq_file *m, void *p)
> > }
> > DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_rsz_regs);
> >
> >+static int rkisp1_debug_dump_mi_mp_y_offs_cnt_show(struct seq_file *m, void *p)
> >+{
> >+	static const struct rkisp1_debug_register registers[] = {
> >+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT),
> >+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_INIT2),
> >+		RKISP1_DEBUG_REG(MI_MP_Y_BASE_AD_SHD),
> >+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
> >+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_INIT),
> >+		RKISP1_DEBUG_REG(MI_MP_Y_SIZE_SHD),
> >+		RKISP1_DEBUG_REG(MI_MP_Y_OFFS_CNT_SHD),
> >+		{ /* Sentinel */ },
> >+	};
> >+	struct rkisp1_device *rkisp1 = m->private;
> >+
> >+	return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
> >+}
> >+DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp_y_offs_cnt);
> >+
> > #define RKISP1_DEBUG_DATA_COUNT_BINS	32
> > #define RKISP1_DEBUG_DATA_COUNT_STEP	(4096 / RKISP1_DEBUG_DATA_COUNT_BINS)
> >
> >@@ -214,6 +232,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> > 	debugfs_create_file("srsz", 0444, regs_dir,
> > 			    &rkisp1->resizer_devs[RKISP1_SELFPATH],
> > 			    &rkisp1_debug_dump_rsz_regs_fops);
> >+
> >+	debugfs_create_file("mi_mp_y_bufs", 0444, regs_dir, rkisp1,
> >+			    &rkisp1_debug_dump_mi_mp_y_offs_cnt_fops);
> 
> You didn't change the file name as Laurent suggested

I've fixed that locally, will be included in v3.

> > }
> >
> > void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
