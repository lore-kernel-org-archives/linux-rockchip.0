Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 565E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 23:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DwWYGK7pKLC0pN09X4NYDhbjjP8WlnUEgYjCxPP/iE=; b=SHFerifF0xEbdY
	9iT8sXPdAIb9RwA4693y4V4XplQfioyEfZ5xN7Tu06ksCEabqN3/Mo79Z7/22jIG6VQK9dbHHPCXa
	jZvLr3UjYMnK4DgsBqcJZYH9GvBRn6XEQsGw6WvATot6xxLk9vEkSky1ljjxF8b6j4zjxg3GZBZGv
	/kNnkxXxzqMSRlzthmiOok2Mm38cwJ+rMsqUe6lGI8Q4mZKQdgycVrPL4a0DYUaSXnbIIGVNB9N5f
	nUkdfYHnVnuPKpdhug8BrCqvcDeQQtp8IDfuGAQg3gjbCRoDzQ9u8YRJCBvrkbdGtqG5ufP3rcZzq
	PKzjfirl983hD79Qztqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2LBG-009ZBi-B9; Fri, 17 Jun 2022 23:15:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2LBC-009ZAl-Pu
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 23:15:08 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 44190383;
	Sat, 18 Jun 2022 01:15:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655507705;
	bh=2n3ALDFlvoHMdw9w95WQCuY0GmjWJ6auY7Iv7AAuQYU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P6KxT538bjwQOtilo7gmsunKTH0/5mfuFZxp8tXIlz3xbIFlcRHZHl9BP6pNPgzSL
	 +lpdxKfqv+YooY9VwHn5n4Gpf+FtB9PJ34GrA18ykxjNKnFuKTxdZ3qj7CtS5/emBJ
	 feJZCKOK1NKMXmru4OTUCVbvqHtp6F0g2C6JcQuQ=
Date: Sat, 18 Jun 2022 02:14:53 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 47/55] dt-bindings: media: rkisp1: Add i.MX8MP ISP to
 compatible
Message-ID: <Yq0K7TZB3jWsOa2q@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-48-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-48-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_161507_044387_C1C77B60 
X-CRM114-Status: GOOD (  15.10  )
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

Hi Paul,

Thank you for the patch.

On Wed, Jun 15, 2022 at 04:11:19AM +0900, Paul Elder wrote:
> The i.MX8MP ISP is compatbile with the rkisp1 driver. Add it to the list
> of compatible strings. While at it, expand on the description of the
> clocks to make it clear which clock in the i.MX8MP ISP they map to,
> based on the names from the datasheet (which are confusing).
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  Documentation/devicetree/bindings/media/rockchip-isp1.yaml | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index b3661d7d4357..95cf945f7ac5 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -16,6 +16,7 @@ description: |
>  properties:
>    compatible:
>      enum:
> +      - fsl,imx8mp-isp
>        - rockchip,px30-cif-isp
>        - rockchip,rk3399-cif-isp
>  
> @@ -36,9 +37,9 @@ properties:
>      minItems: 3
>      items:
>        # isp0 and isp1
> -      - description: ISP clock
> -      - description: ISP AXI clock
> -      - description: ISP AHB clock
> +      - description: ISP clock (for imx8mp, clk)
> +      - description: ISP AXI clock (for imx8mp, m_hclk)
> +      - description: ISP AHB clock (for imx8mp, hclk)
>        # only for isp1
>        - description: ISP Pixel clock
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
