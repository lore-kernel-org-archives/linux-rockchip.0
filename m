Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F60FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FqlOninacrwHemh0f2rORSNTescdyowKDzCtIrzCIy4=; b=AXYNTJRz5yD/DdX4gWa1lvzkCj
	EWnilb75Nko99kz3zdRBTwDu075pjmO+poG+ULfQy7aOrLX5R2b5mkDAUIj4raUdXcr8wIV2vYznB
	Yl7prXPNoWyl0276fa4cz6UJjcfpD4KdGAGO0e4v2F9Tbcj9B0fIEOpPyb34yvpr+w1FPamBJ4h2x
	B0P7b8LekPwK9SgQfcsL8Ridfh/2Ux3vA7I+s2E6J7F8/N1bT/0jO6RS+o8pkptbPYhoGr7R/4Wj6
	nAWJpMdtHLID7C0wrDMaAXxPhBI1RJ4TnWcUk9zOP315FHIOhCqNbd9/HAwTO3xYQ68uOMyJgLpUJ
	POi+ZR/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDzd-00Clww-Bw; Tue, 29 Mar 2022 15:42:49 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDwY-00Ckgg-2O
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:39:39 +0000
Received: from localhost (unknown [IPv6:2a02:3030:a:f397:f6bc:b726:2678:839f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 998CA1F44125;
 Tue, 29 Mar 2022 16:39:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648568376;
 bh=RmMYegltDNam5mXaZuwSibKGEKbYr+OvryeCrWUQldI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UX1M4W77IDWQE4xDV2ibg1R5STraO8nHmsbBMjWiMmMrFz9kTSduuOp04EA3bc6X8
 ErS+VODG0CrL9iVnIcs3VYgBHd878GxiiegO229PcRp8mt4IbCtV+DWBS2g2rUvGxQ
 A5Jw4EzM+PUhzNuXG90Y93f1XHbp0L/AXnsliak2SwYl09LEjZ8HN4F4UUd4b6MSXl
 3IYlMDhAtkENZ4PxzsTo6Z930rCaKqQFed5ILPJoNy8hNCYCi9CUeMXzUeVIGb9AhI
 PTfDl3dt8NNAK2CVl18fR0AoDu6OoqwHdDpeWACoyvMxZNucIci6U9XFaiK4w2mJgm
 wqm6UMb84FCJg==
Date: Tue, 29 Mar 2022 17:39:33 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 16/24] media: rkvdec: Ensure decoded resolution fit
 coded resolution
Message-ID: <20220329153933.nrbqhayyivqskrcf@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-17-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-17-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_083938_284416_F01D9B06 
X-CRM114-Status: UNSURE (   9.16  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>From: Jonas Karlman <jonas@kwiboo.se>
>
>Ensure decoded CAPTURE buffer resolution is larger or equal to the coded
>OPTUPT buffer resolution.

s/OPTUPT/OUTPUT/

>
>Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

>---
> drivers/staging/media/rkvdec/rkvdec.c | 2 ++
> 1 file changed, 2 insertions(+)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>index 05824f1997f7..22c0382c579e 100644
>--- a/drivers/staging/media/rkvdec/rkvdec.c
>+++ b/drivers/staging/media/rkvdec/rkvdec.c
>@@ -269,6 +269,8 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
> 		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
>
> 	/* Always apply the frmsize constraint of the coded end. */

s/frmsize/framesize/
s/constraint/constraints/
s/coded end/coded format/

Greetings,
Sebastian

>+	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
>+	pix_mp->height = max(pix_mp->height, ctx->coded_fmt.fmt.pix_mp.height);
> 	v4l2_apply_frmsize_constraints(&pix_mp->width,
> 				       &pix_mp->height,
> 				       &coded_desc->frmsize);
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
