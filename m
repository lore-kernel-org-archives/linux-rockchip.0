Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 145EFC61DA3
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Feb 2023 13:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LGgDnFb/QqnB0kFod2PitbiupwkU+tEj88L97dNUlA=; b=TYET9iq9YLnAuV
	ZNauGUT6lHJ7JTE+uJ3EaTLK7wO1AWAJbwPvubR2ZolX5fs4M7zP/Ia1bLt341NMpIXL7T3i7xwa7
	4/V4+f3zPoWAlYDaZFSPCdbRZYqEARAIGYPbmmCWoQKZwwAUZGgr2KYZ7ZJYGVrR7iQhCat/Y3fl5
	Igxlwa6Cisa+R58po0o2sJLq9UHNP7ajTs0Dr//32RqDOeU8owWmRcT1wBh5MDRpK6de3ta+C7jUQ
	z2AIbNwfitZP6Dt0/UR4NOZubLyDJFnNPCxl7AQI4iIgPLhGcCDc4hCFRW5Zhmr7IxaAGzkEs0TGf
	Tc8Ziz9dlztwU4xmx9HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUT9S-008OLs-OR; Tue, 21 Feb 2023 13:57:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUT9J-008OIL-5g; Tue, 21 Feb 2023 13:57:42 +0000
Received: from ideasonboard.com (host-87-16-53-160.retail.telecomitalia.it [87.16.53.160])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2EA61519;
	Tue, 21 Feb 2023 14:57:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1676987853;
	bh=jpHQRZlW4o49GCucGmzwL3i5f+RGD1N3eNLklO3dM30=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YSeB7qlTK6/ypFDpsNffIpRKZZPgzlXRnQ9kzKubtuIjylKlAI33RX93Z2nxCPQKV
	 yOfR/mEEa5e6DL8VIADtHan6aGv4RnZdXel6hA185qBKbbYWKhEwAETZXI+XlBn6re
	 kXhJuEyVg8FV8SxFLv8r6l3h77XgZf6MNna/CI7A=
Date: Tue, 21 Feb 2023 14:57:30 +0100
From: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] media: rkisp1: Miscellaneous improvements
Message-ID: <20230221135730.zyfg3ainjg7btfzv@uno.localdomain>
References: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221117084217.3892680-1-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_055741_399408_F1B40C3F 
X-CRM114-Status: GOOD (  15.49  )
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

Hello

On Thu, Nov 17, 2022 at 05:42:14PM +0900, Paul Elder wrote:
> This patch series adds small improvements to the rkisp1 driver:
> - Add NV16M and NV61M output
> - Implement ENUM_FRAMESIZES
>
> As well as a small code cleanup.
>
> These patches have been sent before individually, so really this is a
> resend, which also bunches them together.
>
> Laurent Pinchart (1):
>   media: rkisp1: Make local immutable array variables static const
>
> Paul Elder (2):
>   media: rkisp1: Add NV16M and NV61M to output formats
>   media: rkisp1: Implement ENUM_FRAMESIZES

Has this series fell into cracks ? Support for VIDIOC_ENUM_FRAMESIZES
in particular is a relevant feature and seems not controversial at all...

>
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 64 +++++++++++++++++--
>  1 file changed, 60 insertions(+), 4 deletions(-)
>
> --
> 2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
