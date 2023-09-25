Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D13AECE7A89
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 06:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EuNf6iOJofbX98jesw5wFIESfqUd/CHs9stmdvrdd30=; b=gdB+CBl+/boGxD
	64mMkp1wXYaU2McJc+pv/w4ldPxuQiJsSDg7h2dtVlxcj8APrc08CsiZ7P1LXMepM+PCpe55971ZD
	NpI3fL+gA36gwiD7IUbd6Vj8PVUK//ZxpqEbKShRba5USd3E8Gvn5wy2b8dKaBnGIoTazs6kDEoA+
	Xc+ryrdmLo34iCqK7htQj/zxAhtGY+pj/Az+R21SuPX8HkP5YoRYJYf3qvo5vWhfwLl1DJeM0qgCE
	Dt4hxsXdecM2tcobo9xemqBqni3GIEJr7mZJm5HB0T5Wi4FKfc8JrOiC4BwabU/Kw7u4GEyOiAY5r
	qUzCCnrOd3CE6/pHI4aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkfBb-00DSj2-2b;
	Mon, 25 Sep 2023 06:35:15 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkfBY-00DSiU-2y
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Sep 2023 06:35:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E7ACDCE0E54;
	Mon, 25 Sep 2023 06:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50A44C433C8;
	Mon, 25 Sep 2023 06:35:07 +0000 (UTC)
Message-ID: <ac9dec4a-54d0-433f-869a-2e7a522a83a6@xs4all.nl>
Date: Mon, 25 Sep 2023 08:35:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] MAINTAINERS: Add co-maintainer for the rkisp1
 driver
Content-Language: en-US, nl
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
 Paul Elder <paul.elder@ideasonboard.com>, linux-rockchip@lists.infradead.org
References: <20230925004112.22797-1-laurent.pinchart@ideasonboard.com>
 <20230925004112.22797-2-laurent.pinchart@ideasonboard.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230925004112.22797-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230924_233513_205989_A18FF668 
X-CRM114-Status: GOOD (  11.80  )
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

On 25/09/2023 02:40, Laurent Pinchart wrote:
> As I'm actively working on the rkisp1 driver, I would like to volunteer
> as a co-maintainer, mostly to make sure I get CC on patches.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index bf0f54c24f81..9ce0d128410c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -18512,6 +18512,7 @@ F:	sound/soc/rockchip/rockchip_i2s_tdm.*
>  
>  ROCKCHIP ISP V1 DRIVER
>  M:	Dafna Hirschfeld <dafna@fastmail.com>
> +M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
>  L:	linux-media@vger.kernel.org
>  L:	linux-rockchip@lists.infradead.org
>  S:	Maintained

Acked-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
