Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C942C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 10:08:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 31516229C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 10:08:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 31516229C9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=blreIMFIHO8jm5bO+hxn2bswL8Da9KKM/PlpMs1IOU0=; b=uLTRbtwDqZqmfcayI4oOzPk+I
	S1wOCMITf5ghhNbju19FGN9W+74Fq+F9/N3IMi5tMmMYyiyh3bb1kPO5dioEiWzuTT2NQwm8zvs+F
	oUqahxilhdsA00NGGso7X6TXopkASFQQ/nvmrsDf0oymtBWlFxVcBP3sY6kWt4C7sK448UAp68pCS
	0QRmryarM8ZcprSyikdXue/jQsnFA66IE6blQpjP6si18vntB2n/OVNjIsN9UHycB6zFYo+M75qrG
	Oir85vz6dcFnvhLtEjPtzKZVkmIhsVmS8OfRSc3TSQLRyv5nWIZzkXbgxYyVG36DnIPVOkzABjwKk
	/xsuLDRGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2Wsp-0001lO-Bn; Thu, 21 Jan 2021 10:08:07 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Wsl-0001kI-OJ
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 10:08:05 +0000
Received: by mail-ej1-x629.google.com with SMTP id g12so1766726ejf.8
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Jan 2021 02:08:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hr8G9ZRt7jscYO8CLUhH5Ds1WbiUzFjHZWuqOSMKHdU=;
 b=GvEUJalzniaiCCa2+ngQnbp8snJ8jc68JNc2fkb9RdUdyjz1evsvu63fQ07IxVoc9R
 nJroc34QzqHexVPgOQoLntzHs7TdgM1fV2/NDhT/0e9AhZZmtxWBVqiNivNKPhKSDnqz
 4PMcOGWf4jG5aa6XoWiF4r/vfplWAzWKhpvRQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hr8G9ZRt7jscYO8CLUhH5Ds1WbiUzFjHZWuqOSMKHdU=;
 b=Pv28jIJe5nkLiUg1+3mT8Aier/sOG+XHd1J/cyD4H0hxBL7U2uTlu91F7YbVenCPJt
 FG/XSstYob6Z8eu9XRAaZ1K3KRloNrke96DoIAQpL7MLeZtNM67402l3S+BN04sCGj3M
 CRJkZD86wKfN5rZ46ZeqplJyskUQt1DSR+akJxmkm6ER2TClkwclu6n8pLnF121it5F4
 csX3W7DeMXid6B+w7E9eJoAekFltspKvnaBt+RotGdlmzk58vGUFI8Xoaec7Ls5KPhW3
 T9cHZTBQVZ4Bb8ZA9mG0kJi919WIyxYL3O2WOAbqxUEJfMuySG/Skq9n6f+5cMjHfBG4
 X8sw==
X-Gm-Message-State: AOAM533SUtVBh/QmN6JSaIwGm5hyo5L9oCLtw0fPyG9WwiZHaxMEScPm
 miSvwOgKYVHR3kvfXQlSwCNx/lEt2ijA+A==
X-Google-Smtp-Source: ABdhPJx0gOeL3vg6/KW5MQtP5hoBtSy9pWJDj/sWhVyxuzEDPNHCEs+WYJK04zbq4UwJMsp4i6XBmw==
X-Received: by 2002:a17:906:17c3:: with SMTP id
 u3mr8410977eje.304.1611223679770; 
 Thu, 21 Jan 2021 02:07:59 -0800 (PST)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com.
 [209.85.218.41])
 by smtp.gmail.com with ESMTPSA id w18sm2030299ejq.59.2021.01.21.02.07.56
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 Jan 2021 02:07:57 -0800 (PST)
Received: by mail-ej1-f41.google.com with SMTP id g12so1766465ejf.8
 for <linux-rockchip@lists.infradead.org>; Thu, 21 Jan 2021 02:07:56 -0800 (PST)
X-Received: by 2002:a17:906:aad1:: with SMTP id
 kt17mr8868059ejb.116.1611223676379; 
 Thu, 21 Jan 2021 02:07:56 -0800 (PST)
MIME-Version: 1.0
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
 <20210120164446.1220-3-dafna.hirschfeld@collabora.com>
In-Reply-To: <20210120164446.1220-3-dafna.hirschfeld@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 21 Jan 2021 19:07:44 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AyE87V7u6heJp24VUXVBMzqrQ6nUVa-mVr0JUADSVq=g@mail.gmail.com>
Message-ID: <CAAFQd5AyE87V7u6heJp24VUXVBMzqrQ6nUVa-mVr0JUADSVq=g@mail.gmail.com>
Subject: Re: [PATCH v7 2/5] media: rkisp1: stats: remove a wrong cast to u8
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_050803_819650_2CDE25A6 
X-CRM114-Status: GOOD (  17.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Dafna Hirschfeld <dafna3@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Thu, Jan 21, 2021 at 1:45 AM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> hist_bins is an array of type __u32. Each entry represent
> a 20 bit fixed point value as documented inline.
> The cast to u8 when setting the values is wrong. Remove it.

Thanks for the patch. See my comment inline.

>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index 3ddab8fa8f2d..4cdb180fa64d 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -235,8 +235,7 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
>         pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
>         for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
>                 pbuf->params.hist.hist_bins[i] =
> -                       (u8)rkisp1_read(rkisp1,
> -                                       RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
> +                       rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);

Is the register guaranteed to return 0 for the upper unused 12 bits?
Should we mask them instead?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
