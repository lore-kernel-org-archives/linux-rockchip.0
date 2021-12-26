Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DBFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Dec 2021 16:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILFb3CP7b0RMKfnMVGa3O33WExlFTn75j1WYQAM0IRA=; b=M8mEOoojnAmKKe
	Mz6cxY5vxpRWlWgRNSp2FAHk7u9Pukml9LwK6NiIopgN95HHkAz7vYRCVMbDBxY5isidpCXZ9LtVr
	FTjSv2H63tYWRjVSiJ0uB5S9v5+YdvBp2ddlyRVgnvBRkKxm9ohZ88LNf3E4XXb5zDHYtsuoI/RvK
	fng4bDfd28wD1EEUFQ6lfoxsUmg4j6zHTsPcfG5O+xORaVA4PiqNJcSQHzfkBb/uVBi4Dpa/URboD
	DJVYggi9nfn3Ja00OlL+5UbKdAb0mxpg9nJ7h/Lp4ttuiGPpuv4+nJTs4VQnqXVt6/TUEYoKoEUvn
	gDuZ+jT6HMA7UGY1bG5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n1WTB-00FgRD-J9; Sun, 26 Dec 2021 16:34:01 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n1WT8-00FgQU-1j
 for linux-rockchip@lists.infradead.org; Sun, 26 Dec 2021 16:33:59 +0000
Received: by mail-qt1-x830.google.com with SMTP id z9so11717943qtj.9
 for <linux-rockchip@lists.infradead.org>; Sun, 26 Dec 2021 08:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zZoHskxxN8uGpMitWoUyROPhaBv9eU7NFpts0SGB6Y4=;
 b=YjiWxTyTeVTzSWi9xioHbeV4aonLvky5fZsBeFJ7XqtO8AxT7G6aHoDy3lEFWWvclD
 YVbdkTJTepFtIOWLwQmnMt+EwE3L6UaruTdHohDIiqhxDi0PJ2sxY6MF+0rQLClPU9Lp
 cGdKXP47OBxstkiHz6rgp1Mv9nEcKebhLtXOPww8yQKbh10GPSwY2wv2sDWmDEnDHG7S
 sKrMoJRnH5kkCFkzJGYAUb4i54Y9C/ruxL5uu8G2YKtQRHPuCen1XCoby4mNKETVN+Fl
 Uum3ZW1kiIaGw9rPgX97Td5sd0lMEhIY5mgYMCyqls3ZpvoS+txBVNddcJfRy/ukDxze
 ax4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zZoHskxxN8uGpMitWoUyROPhaBv9eU7NFpts0SGB6Y4=;
 b=04qkgS6BTJRWdVB2Jb6iI6+T6spROOOp9F7qtAYmNtBkFlfIp1ORZ4+7f157xnY/sY
 hVRsdDG0n3DQaAUtA/3kL+e0dpFKOcA/+U4iLLFPQdDd/7XxV6zvrNSt6+/nizM1RlQE
 AzxQqGlbxuEE2qVxm/f7jqzHiy/TZmC+rifrCjQD8lUIyiAl9su2u6rm04oTdrxgy/xZ
 ZTrcBA8rpBSykuYGD9i1HDHkWfAqpKtJP26H2DlKt9krttVJprjeyADVqfn4nclZj8d3
 Whst/WR+Oraj39gpHkGxv8W7wbn6Ob/PwK+0mNQylsZg+N1ntoMV/m/zkybtD/LZO+8J
 1XkA==
X-Gm-Message-State: AOAM5335NI/Q4WKOXkMSbSZUalM4tGEfVJkp9JBn86lsD4qqrTrK2Ymz
 HtF7eXQcqZg29y7PqqoXDQzEAA==
X-Google-Smtp-Source: ABdhPJwVVrktToZ/gNMXR1o9FvXwu8OdTH/Hk6BcQOE58abV4vSun5eteZNn+gSjKbtT0zBdzdiE6g==
X-Received: by 2002:ac8:5f4e:: with SMTP id y14mr12219600qta.620.1640536435884; 
 Sun, 26 Dec 2021 08:33:55 -0800 (PST)
Received: from eze-laptop ([186.122.18.30])
 by smtp.gmail.com with ESMTPSA id f12sm11132002qtj.93.2021.12.26.08.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Dec 2021 08:33:52 -0800 (PST)
Date: Sun, 26 Dec 2021 13:33:43 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tomasz Figa <tfiga@chromium.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT 5/7] media: hantro: jpeg: Add COM segment to JPEG
 header to align image scan
Message-ID: <YciZZ2hA4uMveN2l@eze-laptop>
References: <20211224084248.3070568-1-wenst@chromium.org>
 <20211224084248.3070568-6-wenst@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211224084248.3070568-6-wenst@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211226_083358_321674_4E4A31D7 
X-CRM114-Status: GOOD (  21.62  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Fri, Dec 24, 2021 at 04:42:46PM +0800, Chen-Yu Tsai wrote:
> The JPEG header size is not 64-bit aligned. This makes the driver
> require a bounce buffer for the encoded JPEG image scan output.
> 
> Add a COM (comment) segment to the JPEG header so that the header size
> is a multiple of 64 bits. This will then allow dropping the use of the
> bounce buffer, and instead have the hardware write out to the capture
> buffer directly.
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  drivers/staging/media/hantro/hantro_jpeg.c | 3 +++
>  drivers/staging/media/hantro/hantro_jpeg.h | 2 +-
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
> index 7d4018bd6876..51e67e5cf86f 100644
> --- a/drivers/staging/media/hantro/hantro_jpeg.c
> +++ b/drivers/staging/media/hantro/hantro_jpeg.c
> @@ -247,6 +247,9 @@ static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
>  	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
>  	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
>  
> +	/* COM */
> +	0xff, 0xfe, 0x00, 0x03, 0x00,
> +
>  	/* SOS */
>  	0xff, 0xda, 0x00, 0x0c, 0x03, 0x01, 0x00, 0x02,
>  	0x11, 0x03, 0x11, 0x00, 0x3f, 0x00,
> diff --git a/drivers/staging/media/hantro/hantro_jpeg.h b/drivers/staging/media/hantro/hantro_jpeg.h
> index f33c492134e4..0b49d0b82caa 100644
> --- a/drivers/staging/media/hantro/hantro_jpeg.h
> +++ b/drivers/staging/media/hantro/hantro_jpeg.h
> @@ -1,6 +1,6 @@
>  /* SPDX-License-Identifier: GPL-2.0+ */
>  
> -#define JPEG_HEADER_SIZE	619
> +#define JPEG_HEADER_SIZE	624

Can we add some compile-time check for the 8-byte alignment,
so this is always enforced?

Perhaps getting rid of the JPEG_HEADER_SIZE macro,
something like this....


@@ -140,7 +140,7 @@ static const unsigned char chroma_ac_table[] = {
  * and we'll use fixed offsets to change the width, height
  * quantization tables, etc.
  */
-static const unsigned char hantro_jpeg_header[JPEG_HEADER_SIZE] = {
+static const unsigned char hantro_jpeg_header[] = {
        /* SOI */
        0xff, 0xd8,

@@ -304,8 +304,13 @@ void hantro_jpeg_header_assemble(struct hantro_jpeg_ctx *ctx)
 {
        char *buf = ctx->buffer;

-       memcpy(buf, hantro_jpeg_header,
-              sizeof(hantro_jpeg_header));
+       /*
+        * THE JPEG buffer is prepended with the JPEG header,
+        * so 64-bit alignment is needed for DMA.
+        */
+       BUILD_BUG_ON(!IS_ALIGNED(sizeof(hantro_jpeg_header), 8));
+
+       memcpy(buf, hantro_jpeg_header, sizeof(hantro_jpeg_header));

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
