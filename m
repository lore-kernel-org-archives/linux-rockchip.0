Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF04CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coV92TBLwHGzbj/5i5zD2efYJ4+au6qGAn1DUrdEHGk=; b=k2yiqJw+uBjxMj
	1j/7W7yWWgEhv0tHCikPMfmMH7qoFzHJF5qYoQ96CypPRM4egVIAwH8nUyzYqqKwj99KmRR08qLL/
	OBk9q2rIhLIhiW1fv4kEdigw2Goi6IYoXkD6K9P7tfzf8S8IFqkbll5hgzkUM+UCt4kWwMFrhf+k0
	PPSVEkN+q329PViG0pX2LcPBAuw/Kf/JB3QyxBxYjDxHio8vcpvTQI4wZeUePjw7PsVRzbcRVRcvS
	99nUVs8qGchUzSNBryWy1BkrerEwxlOIDKZgCVt4Vv4S1D7b8V0jcBeRBBdYAqEmes3nafcH240Il
	7LPg4fO0IHmBOME64SgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nac16-008cBp-Ew; Sat, 02 Apr 2022 11:34:04 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nac14-008cAm-1A
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 11:34:03 +0000
Received: by mail-oa1-x33.google.com with SMTP id
 586e51a60fabf-df02f7e2c9so5395735fac.10
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 04:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=V3U+5UMiJybq7zY98DwsaSNVhzwSmjvGiJkV3X+RFBM=;
 b=24BPX8VpvHlBMEx6hIWdtAG/9S/+iyZLlr/QAmp0Z+5yWJiGHzFhq/uIQdxSKyVYCP
 enPRmYoZkbFQcW1HpQH8zrb3IRM4d0hYNTbwxbVgEBdL6AG2jt0/HSVAt9robgILFabJ
 hPkLvUch+hB8OPL87o/mqnhm3QiZhrMUfdzGNvgyVWrVhnz/AJhfBVlruRn8eWEQNGCu
 c4w8zQ0s4CUgcN34kZe+uGnqzOnVLeqA0YDWuGn26R8g+72dBvLyMw/s+cjtb5JCtN0k
 NvTn7x2fWQ5Jv/xStKL7yXif078NOV/iO9/fHaI5S9fhUpkKVvCwnsGEVqWwzqQuIz4I
 iIPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=V3U+5UMiJybq7zY98DwsaSNVhzwSmjvGiJkV3X+RFBM=;
 b=lxZFUH1rH0RizXnk9EcmtOt9gBFaziUQOfNMdyT1MQJhim5iDbNui2R8k4zxQYjf7d
 DIb0zEVKUQAVruZ3Ld61voyC/Ad0RvIXcdU20uNORId+7v0ZNRz/yWkcpC2ixRFR4RGS
 bSz+ci2qgW6qY8mCelFfbpDMnFQl1Aj1TrFTCnwO3CE/HuRraEnVjYIRX6uoMg4jyYUx
 jQQ3Hqo1HiJp1CrtjTZild4WTdAxpEpUVY4ywh9T5aLByZ/9KUYXCpkaHS7odb9Y15NR
 2W91Q3qWZkDJBkZVY9XQ1E1Oa9p5cDDq96FSx0gsA4YNr9xAgtmVgCRbR164IiMwKJ0Z
 ucqQ==
X-Gm-Message-State: AOAM530nDXOw9jAmSF9gH+80Udsge5kqYNoO2Hl0BFD8h3tHw8LHoDV8
 RVLvYCMYl7F2Wt8Wa9lN23jguw==
X-Google-Smtp-Source: ABdhPJy3rMJldwi8Tb/ncmzg6WyZ80EFa7bQd46QO9bii8Cw9gw35Jy6JhWEPjRky3sVVbphVckt4w==
X-Received: by 2002:a05:6870:3488:b0:de:eaa5:260b with SMTP id
 n8-20020a056870348800b000deeaa5260bmr6754153oah.281.1648899240576; 
 Sat, 02 Apr 2022 04:34:00 -0700 (PDT)
Received: from eze-laptop ([2803:9800:98c2:8470:9f4:8e2a:88e5:ec01])
 by smtp.gmail.com with ESMTPSA id
 p16-20020a05680811d000b002d72ec3a921sm2098566oiv.21.2022.04.02.04.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 04:34:00 -0700 (PDT)
Date: Sat, 2 Apr 2022 08:33:54 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 16/23] media: rkvdec: h264: Fix reference frame_num
 wrap for second field
Message-ID: <Ykg0oqJOb/ExafB3@eze-laptop>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
 <20220331193726.289559-17-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220331193726.289559-17-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_043402_131543_4D4F9759 
X-CRM114-Status: GOOD (  19.45  )
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

Hi Nicolas,

On Thu, Mar 31, 2022 at 03:37:18PM -0400, Nicolas Dufresne wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> When decoding the second field in a complementary field pair the second
> field is sharing the same frame_num with the first field.
> 
> Currently the frame_num for the first field is wrapped when it matches the
> field being decoded, this cause issues to decode the second field in a
> complementary field pair.
> 
> Fix this by using inclusive comparison, less than or equal.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

To complete the Signed-off-by chain, can you add your Signed-off-by: at
the bottom?

Thanks,
Ezequiel

> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index a42cf19bcc6d..730f8ebf7f58 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -773,7 +773,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>  			continue;
>  
>  		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ||
> -		    dpb[i].frame_num < dec_params->frame_num) {
> +		    dpb[i].frame_num <= dec_params->frame_num) {
>  			p[i] = dpb[i].frame_num;
>  			continue;
>  		}
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
