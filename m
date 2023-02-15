Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A972EC636D4
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Feb 2023 00:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEoXimciiw0lQPaxF7lGjitE44OMKRg7mXl43eIvO2g=; b=bFwGyrBmY8Gae0
	Bhk9Ew0nhGI8PrEYoL8CIx1rjBIjAw5BRMX8FHSX4ePJpqOtrczi1tFO2aeNJNepQaP/3YNET0HMZ
	v5npREtJkFiImICxPF63HLGy/WHWV/k8IjDiCzBQxfLAfFPDEiDqP65LmXSN4/pglT3x65kBHQXE3
	U3DvqLwZVPMJ3Nb3z1Cn1K/r1j2DN4fwTRszTRbS2mP0nuu3sOFMr5VsZ+q/2R+Du6bqQvi5Vc5Gh
	bdiz/lGI2/WCK5dpT7RzIs99/DS/MQtBv2Jpk9CBNh6YCL+EOBNexa4+REm+4ddnADn5IcFMx2Am0
	N/KA87N4y+sRqemyJPPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSRk8-0082sY-0Q; Thu, 16 Feb 2023 00:03:20 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSRaH-007zg2-Ez
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 23:53:10 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 50AE410B;
	Thu, 16 Feb 2023 00:53:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1676505187;
	bh=bZKM82NTB0W1qQRclDREzcX0mQwwk4t7M3MXK1ByLoU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MaKVEQiyM41QTcFlB9xnypRpiE8jcF6h/N/N5fciwvxa+z4tSP42rBPvCNW3lWtZC
	 1mvhVPtfLpTpEZF6xg73ImL6qUR3V21IsbIiGzwpz1WHhPLQUpdBJwQCiRzrtiOic8
	 mIRePhSeoEZdLjD+b+DbbZOpfl1ZKfU5MllxfOis=
Date: Thu, 16 Feb 2023 01:53:06 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: linux-media@vger.kernel.org, Paul Elder <paul.elder@ideasonboard.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 0/3] media: rkisp1: Convert to V4L2 subdev active state
Message-ID: <Y+1wYlNTtsse2LYT@pendragon.ideasonboard.com>
References: <20230127003124.31685-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127003124.31685-1-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_155309_683308_492020DF 
X-CRM114-Status: GOOD (  13.08  )
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

Would you have time to review this series at some point ? There's still
plenty of time before v6.4, but I'd like to make sure not to miss that
version.

On Fri, Jan 27, 2023 at 02:31:21AM +0200, Laurent Pinchart wrote:
> Hello,
> 
> This small patch series converts the three subdevs of the rkisp1 (CSI,
> ISP and resizer) to use the V4L2 subdev active state. This simplifies
> the implementation of the subdevs, as well as the locking scheme. There
> isn't much else to add here, please see individual patches for details.
> 
> I have successfully tested this series on an i.MX8MP (Debix) and an
> RK3399 (Rock Pi 4).
> 
> Laurent Pinchart (3):
>   media: rkisp1: resizer: Use V4L2 subdev active state
>   media: rkisp1: isp: Use V4L2 subdev active state
>   media: rkisp1: csi: Use V4L2 subdev active state
> 
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  18 --
>  .../platform/rockchip/rkisp1/rkisp1-csi.c     | 107 +++----
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 261 +++++++-----------
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c | 184 +++++-------
>  4 files changed, 201 insertions(+), 369 deletions(-)

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
