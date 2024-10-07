Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6D05CFB441
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 13:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MPO1COpC/vj6+DkwUxd3E4jyvs9vYdznDWARORWR6UE=; b=QzO2UJjR2xeh9Yf/Lx8B1H/UAs
	Jnbw9S7qJMf536mW+Y/nU9YqN4EzW9pUXMI7M/HpfSb7Ve0vuyqWwEoaZzSndI/zjbQg7msD7WFvK
	OEHyZUubWJM1dW1VJRwaNqGzaTmhwpumSXm3R+us3fg9+UL2QVhs0azoh8Efx5VeIo4xEt15SNx7w
	Loc74fI5cDlwTSsNPT1DGg0YyHCQw/nQcfTFES3Vyjc+uZbMrgOy3rhWlOzigtGb60dZ61ePCOdaa
	9ANtuj8YICdc4a9J7ithzNDnG7szzLAH6OsBFhGLOupeXgqGoMPPJvF8rD0HzcpqLM0oyjMGoizYS
	inWMOzRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxnh9-00000002Ufj-0Uro;
	Mon, 07 Oct 2024 13:22:39 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxnJ0-00000002QIw-3BbV
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 12:57:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1728305855; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Q2JZ4rPrXzEL7lAKiLZmmBDPbjV+oLD8hZ1MMbOuioerpNpbEPYVcQ78XtthzydM1UCiJ6f+QSXO+7d/m9UwvxA3V7s/lMLVl10ZkldpURSMUyj8lpW2mjTk96rXV/gwy4EYK0tWS8Yfnjq+9EsrW7WuEv3c94Lqi+QT2hd9HmY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1728305855; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NYoc0B5Hgz71zyrV+GxibMAOQMz3cx6fVveDGcEwky8=; 
	b=lAiBCygwBJD+3IvfpxD3oFrZl8G9ZVH3KPNAJ93deSJxt5hznhih6662/31e5a+VakcuXy/udH7ZlGMjBNmtnGVl/E/Ju9V3NgX3CGr06Qb1IqoTrnY1XEPG7raRd8YZQCt616UZe5THwATOpjaQ4Il0dPYfOnJS83kasJ/VmfM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.fricke@collabora.com;
	dmarc=pass header.from=<sebastian.fricke@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1728305855;
	s=zohomail; d=collabora.com; i=sebastian.fricke@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=NYoc0B5Hgz71zyrV+GxibMAOQMz3cx6fVveDGcEwky8=;
	b=adCQUYAMHoB/yhqB04lUnU2yW/a0U9XV/QG6L9ZbN0cjz05mQ0nvNv3RMS4jX8pW
	Xog/QsTkeCsyywxh5N7guSlxehKV/cG3QrUT8D03Nz7ZZU/PuMP9Yxu9actWtqOd4dP
	ph+gqqVm673fqbQWeHFj2LEuq7u8gbWavLF6wG3I=
Received: by mx.zohomail.com with SMTPS id 1728305854622500.54968941240656;
	Mon, 7 Oct 2024 05:57:34 -0700 (PDT)
Date: Mon, 7 Oct 2024 14:57:30 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-media@vger.kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ROCKCHIP ISP V1 DRIVER" <linux-rockchip@lists.infradead.org>,
	Adam Pigg <adam@piggz.co.uk>
Subject: Re: [PATCH] media: rkisp1: Reduce min_queued_buffers to 1
Message-ID: <20241007125730.yn6xinehhm73yqob@basti-XPS-13-9310>
References: <20241007124225.63463-1-jacopo.mondi@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007124225.63463-1-jacopo.mondi@ideasonboard.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_055742_876317_C9EC63AD 
X-CRM114-Status: GOOD (  13.82  )
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

Hey Jacopo,

On 07.10.2024 14:42, Jacopo Mondi wrote:
>There apparently is no reason to require 3 queued buffers to call
>streamon() for the RkISP1 as the driver operates with a scratch buffer
>where frames can be directed to if there's no available buffer provided
>by userspace.
>
>Reduce the number of required buffers to 1 to allow applications to
>operate with a single queued buffer.
>
>Tested with libcamera, by operating with a single capture a request. The
>same request (and associated capture buffer) gets recycled once
>completed. This of course causes a frame rate drop but doesn't hinder
>operations.
>
>Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
>---
>
>Adam,
>   a few months ago you were exercizing your pinhole app with a single capture
>request for StillCapture operations and you got the video device to hang because
>no enough buffers where provided.
>
>This small change should be enough to unblock you. Could you maybe give it a
>spin if you're still working on this ?
>
>Thanks
>   j
>---
>
> drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 4 +---
> 1 file changed, 1 insertion(+), 3 deletions(-)
>
>diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>index 2bddb4fa8a5c..34adaecdee54 100644
>--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
>@@ -35,8 +35,6 @@
> #define RKISP1_SP_DEV_NAME	RKISP1_DRIVER_NAME "_selfpath"
> #define RKISP1_MP_DEV_NAME	RKISP1_DRIVER_NAME "_mainpath"
>
>-#define RKISP1_MIN_BUFFERS_NEEDED 3
>-
> enum rkisp1_plane {
> 	RKISP1_PLANE_Y	= 0,
> 	RKISP1_PLANE_CB	= 1,
>@@ -1563,7 +1561,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
> 	q->ops = &rkisp1_vb2_ops;
> 	q->mem_ops = &vb2_dma_contig_memops;
> 	q->buf_struct_size = sizeof(struct rkisp1_buffer);
>-	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;

It looks like RKISP1_MIN_BUFFERS_NEEDED is used only here, so can you
remove the define as well?

rg 'RKISP1_MIN_BUFFERS_NEEDED' 
drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
38:#define RKISP1_MIN_BUFFERS_NEEDED 3
1566:	q->min_queued_buffers = RKISP1_MIN_BUFFERS_NEEDED;

Or maybe just change the value, but I am not sure whether this can be
considered a magic value.

Regards,
Sebastian Fricke

>+	q->min_queued_buffers = 1;
> 	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
> 	q->lock = &node->vlock;
> 	q->dev = cap->rkisp1->dev;
>--
>2.46.1
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
