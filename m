Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25336C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:25:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6ACB761354
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:25:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6ACB761354
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PkmcqgfQStqzh+Fs/DVEeFxZvaMAskeSdWeb6EQuJeQ=; b=AeAJKB0MvLJ8dIfxmGW+ba5tM
	8i5ikmmIneMjUQ2UadX97aT2/tv5nCz6eyGMLSaZ/5SRHUXPzYwmf4lEr0FfKuizRqxSmOf1SYt49
	QXDtmRec2byE699UA+1y9gKfiPFth7kLqQ5EgfRsRxD5v5KrEZjDcQVnvB4u5tJ8AJIGExOY/TGPS
	70M+OAjW9sTQhA3RVIzh2YXjYGLVmgv29PtsVQoYf+zNKFOB/fiNFeU4PSClaNkqsn/vwN9ulNr7h
	sUzfqVrshknAYBpGmI64u9EtSGmTDJEeZsVO4xpBtr2vovUSPa2//pHXyjY9pSXI3UeU7aKmffL8x
	XYfloGDvg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYmdO-00Bjbp-2i; Tue, 20 Apr 2021 09:25:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmcC-00BjIm-EF; Tue, 20 Apr 2021 09:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=xQ1o6aVRSOuEJ1VS7oCUQLXHCXrw8PkrH94OtEEFVLU=; b=hXsH0nnEHOmKjCzXY1/PFawiPL
 PujtKQ8jZSSiJes/lP9zEi/d0SwhtGtIcIriJpE41TRjML02i1PXAGDB3D/t+grWI+TsWwjDb8Wu0
 VhXKHhSkxznXhXQhlysXCXF68wO4c11arrGWaU0PLgbmGOJBNfR70j6pPGnCkBi8625cNofNhcEdy
 B6RL+OCoBIVxXcOvd2xPxnRX7Rk45Klw0csUksM9TJOzshxBeWZtLzYqqje1CjeSjqcQh8Nq2t1Hy
 25E7ha0j+5A6hD4Vr7Lg8B7ExmTU083LSkCD+mJVtro1st2IPSx918jRMSqnsEBeSHqlGHpszWsSP
 lew/aFew==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmc9-00ByXB-G6; Tue, 20 Apr 2021 09:24:15 +0000
Received: from [IPv6:2a02:810a:880:f54:f1d0:e988:975e:70e9] (unknown
 [IPv6:2a02:810a:880:f54:f1d0:e988:975e:70e9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 984801F42746;
 Tue, 20 Apr 2021 10:24:10 +0100 (BST)
Subject: Re: [PATCH] media: rkisp1: rksip1-capture.c: Improve comments and fix
 typos
To: Sebastian Fricke <sebastian.fricke@posteo.net>, linux-media@vger.kernel.org
Cc: Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210418103425.45525-1-sebastian.fricke@posteo.net>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <0b5feeb7-44e6-f25d-cc03-37aba628be14@collabora.com>
Date: Tue, 20 Apr 2021 11:24:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210418103425.45525-1-sebastian.fricke@posteo.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_022413_705233_28EAD535 
X-CRM114-Status: GOOD (  29.45  )
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

Hi,
Thanks for the fixes

On 18.04.21 12:34, Sebastian Fricke wrote:
> Improve the wording of the function description to increase readability.
> 
> Fix three typos:
> s/during processing a frame/while processing a frame/
> s/it also update/it also updates/
> s/there's not buf in shadow/there's no buffer in a shadow register/
> 
> Replace the abbreviation 'buf' with the full word buffer, the
> abbreviation 'config' with the verb configure, and 'regs' with registers.
> The goal of this change is to ease the reading flow of the comment.
> 
> Signed-off-by: Sebastian Fricke <sebastian.fricke@posteo.net>
> ---
> Side-note:
> I also believe there should be a description for the abbreviation FE, as
> it is not described anywhere. I think it means frame end, right?.

yes, this is Frame End. You can send a patch replacing "FE" with frame end if you like.

Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

> ---
>   .../platform/rockchip/rkisp1/rkisp1-capture.c    | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 5f6c9d1623e4..9643bdd05b7b 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -830,8 +830,8 @@ static void rkisp1_return_all_buffers(struct rkisp1_capture *cap,
>   }
>   
>   /*
> - * Most of registers inside rockchip ISP1 have shadow register since
> - * they must be not be changed during processing a frame.
> + * Most registers inside the rockchip ISP1 have shadow register since
> + * they must not be changed while processing a frame.
>    * Usually, each sub-module updates its shadow register after
>    * processing the last pixel of a frame.
>    */
> @@ -847,14 +847,14 @@ static void rkisp1_cap_stream_enable(struct rkisp1_capture *cap)
>   	spin_lock_irq(&cap->buf.lock);
>   	rkisp1_set_next_buf(cap);
>   	cap->ops->enable(cap);
> -	/* It's safe to config ACTIVE and SHADOW regs for the
> +	/* It's safe to configure ACTIVE and SHADOW registers for the
>   	 * first stream. While when the second is starting, do NOT
> -	 * force update because it also update the first one.
> +	 * force update because it also updates the first one.
>   	 *
> -	 * The latter case would drop one more buf(that is 2) since
> -	 * there's not buf in shadow when the second FE received. This's
> -	 * also required because the second FE maybe corrupt especially
> -	 * when run at 120fps.
> +	 * The latter case would drop one more buffer(that is 2) since
> +	 * there's no buffer in a shadow register when the second FE received.
> +	 * This's also required because the second FE maybe corrupt
> +	 * especially when run at 120fps.
>   	 */
>   	if (!other->is_streaming) {
>   		/* force cfg update */
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
