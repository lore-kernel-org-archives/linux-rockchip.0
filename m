Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E07ADE6FE41
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Sep 2023 15:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOnMouEyN1dLrXeB0ijZ04Ul9JGYAAZqUH98+iza1nU=; b=Y241lta1ZiWenJ
	qe50lknUs9JSJcqxoPjVfD66UuZePAuiVBHkPlMA/aschdYL9iPnzuhPq9kFIic2QKARU/Cdd3XIB
	9pD32OmgaFJMMf9EWUopzos/eRPiE9F3BsX9W4w7H0XF9QU0NA9p294fILtCLkwNzJfVzRIwnabdt
	W9LkG1G9zeTO1wIYbYnxT3D8svL+a6oDx7G5KFw2OewYS2BhIPVTUFCIjdAIZ0V5N8xV7ZQY/7vU+
	+uMI6vs5NoaJvQ4Jml8Dbdz/F2CCWNT27FaEjriljuj5MQoD0Nsw5hRzH5aOPDK2+9r62nkQOKTlf
	OTVRJoZDFMX/o/b7w6qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjhvf-009Ih2-2I;
	Fri, 22 Sep 2023 15:18:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjhvb-009Icj-39;
	Fri, 22 Sep 2023 15:18:49 +0000
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 04FE5968;
	Fri, 22 Sep 2023 17:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1695395808;
	bh=2J9SlBU+ytt0y3KvMFmzHUbWbCAyEXh4/rzIlFpUB0w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ct7MuQZ/eQBmDokZWM1/hhuJFkZMWrbUO5xFmdhrmhCaxW1seVYTzX/OLB4sj4aVS
	 xIw1Fa8XJ7OYNKIviYH9lf91nEnJk23dfvEDtzC8Gj8gjIlZ2HpCGyFj0YAzDM40jJ
	 +Az23dSDP0ZyqhxCsO2maTWGxd2oOT3XWV+RsVVQ=
Date: Fri, 22 Sep 2023 18:18:38 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Martijn Braam <martijn@brixit.nl>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: Promote link validation error to dev_err
Message-ID: <20230922151838.GA22696@pendragon.ideasonboard.com>
References: <20230719145534.9812-1-martijn@brixit.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230719145534.9812-1-martijn@brixit.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230922_081848_180954_AE4DA188 
X-CRM114-Status: GOOD (  16.14  )
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

Hi Martijn,

Thank you for the patch.

On Wed, Jul 19, 2023 at 04:55:33PM +0200, Martijn Braam wrote:
> Show an error when the pipeline cannot start due to an invalid link
> instead of hiding it behind the debugging system.

While this can help debugging issues in applications, allowing
unpriviledged applications to control messages being printed to the
kernel log is frowned upon, is it could flood the log. This is why these
messages use dev_dbg() and not dev_err().

> Signed-off-by: Martijn Braam <martijn@brixit.nl>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 8f3cba319762..9361b9086f6b 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1340,7 +1340,7 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  	if (sd_fmt.format.height != cap->pix.fmt.height ||
>  	    sd_fmt.format.width != cap->pix.fmt.width ||
>  	    sd_fmt.format.code != fmt->mbus) {
> -		dev_dbg(cap->rkisp1->dev,
> +		dev_err(cap->rkisp1->dev,
>  			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u\n",
>  			link->source->entity->name, link->source->index,
>  			link->sink->entity->name, link->sink->index,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
