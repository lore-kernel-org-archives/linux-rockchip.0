Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF73CCAC598
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 12:56:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qlmVWV/4RuOA5luvgWsK0sbW1KQZs/Pn4hNLwAnCfLE=; b=ak+mtymTjwa0zz
	iNgy5GBSB1h4oDLbLMr/BxW3oFNWVxQ/nIXnFUgyx9okOELB3I2q397A6Jc0Rzn5NvKb5uzFBXb9G
	9CUBwCpJD0g3YxyuSs0RiQG2Dy9alN0VBi5U2skdjZywNO6SnO8MD+xxGl7Ne+nodUZB7POFYs3g9
	rRtyVMXGPVCZ+J5OkKVHNJSHW9Lo0qBkM8F1TNqp0/pcKbsP8H1x2j4EUjlDk1XqVfvVq4l///JbC
	WyjiLBSce6uX2LDyBCl0yoBIjv6VAn2frmyCXHw7uw0VhKkzZ2NGph5bQQvmSF7VZfIG/IDURi7u3
	DSrOy7pPULOJxeznq7KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVEM-00000007qPL-2QdD;
	Tue, 16 Sep 2025 12:56:22 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyVEJ-00000007qNu-2bWq;
	Tue, 16 Sep 2025 12:56:20 +0000
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8B802C6F;
	Tue, 16 Sep 2025 14:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1758027297;
	bh=Pj2YVYTr06wygdiUW7bh8cdApHVt9jxfnh+u+lUkHZM=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=YZUGGlYc3UGZtXKJYr4A5vR2uDMBDG9a+QVVsHOJZRtqsVmIS/Tu/gQo0ZipUrrFp
	 JeWW3txLez23b/HeEuzyPWP5vVq/iGaf+citCh3ncluxZ1PlTK9k5AofH5i8yMEzuc
	 Tr4Myj7OHxK4R2PifgUWNrW2hxriMBy/PxgV6LmY=
MIME-Version: 1.0
In-Reply-To: <20250829101425.95442-1-tarang.raval@siliconsignals.io>
References: <20250829101425.95442-1-tarang.raval@siliconsignals.io>
Subject: Re: [PATCH] media: rkisp1: Fix enum_framesizes accepting invalid pixel formats
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Tarang Raval <tarang.raval@siliconsignals.io>, Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Tarang Raval <tarang.raval@siliconsignals.io>, laurent.pinchart@ideasonboard.com
Date: Tue, 16 Sep 2025 13:56:12 +0100
Message-ID: <175802737238.1246375.11921455447379092868@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_055619_794851_42F1A3B0 
X-CRM114-Status: GOOD (  12.08  )
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

Quoting Tarang Raval (2025-08-29 11:14:24)
> Reject unsupported pixel formats in rkisp1_enum_framesizes() to
> fix v4l2-compliance failure.
> 
> v4l2-compliance test failure:
> 
> fail: ../utils/v4l2-compliance/v4l2-test-formats.cpp(403): Accepted framesize for invalid format
> test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: FAIL
> 
> Tested on: Debix i.MX8MP Model A

Tested here also on a debix board running v4l2-compliance before and
after.

Tested-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> Kernel version: v6.17-rc3
> v4l2-compliance: 1.31.0-5387
> 
> Signed-off-by: Tarang Raval <tarang.raval@siliconsignals.io>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 6dcefd144d5a..107937b77153 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1383,6 +1383,9 @@ static int rkisp1_enum_framesizes(struct file *file, void *fh,
>         };
>         struct rkisp1_capture *cap = video_drvdata(file);
>  
> +       if (!rkisp1_find_fmt_cfg(cap, fsize->pixel_format))
> +               return -EINVAL;
> +
>         if (fsize->index != 0)
>                 return -EINVAL;
>  
> -- 
> 2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
