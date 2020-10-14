Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D040C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:40:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A2282207C3
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:40:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VrjAR1Dd"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A2282207C3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NF/ZmoFuyqR0iBfGIwUPEOdyJXTW9RMBiCxXimNP/uk=; b=VrjAR1DdLKAZLekJyWgfJJYGs
	cO7iZeus0o2kaeiEHiD3Ov0Hco2qPs1PDU4wDeK/3BxCo3exkVmbLkCDYz6XMYsY85cLAN63sJVP4
	j/z6ooGpIXa3JaJG6PqR4GmBvraeaE2COfJ8wnpICJanfsrSlBH3/poyk6AzWD0S0CLpi3zHURhWa
	kjoiWhH2xiKQkht3Yclugwv2mV/ELNmaxzgnNaSxJNrYVBHhtU49W0rBShlYBsC6xF6QagAXWx88e
	MelbreurLOSKsNNP9IYXowKLsBbw/PFf3pqpU2ntYyLUd6uiEl4cbDfl8Vy8S88YSFG/gyn5M5kAx
	hXmRyooBw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSnZY-0001H3-BI; Wed, 14 Oct 2020 20:40:32 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSnZW-0001GG-3T
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 20:40:30 +0000
Received: from [IPv6:2804:14c:483:7f66::1004] (unknown
 [IPv6:2804:14c:483:7f66::1004])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B937C1F4582E;
 Wed, 14 Oct 2020 21:40:26 +0100 (BST)
Subject: Re: [PATCH 1/2] meida: uapi: add MEDIA_BUS_FMT_METADATA_FIXED media
 bus format.
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200922165813.19378-1-dafna.hirschfeld@collabora.com>
 <20200922165813.19378-2-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <efddfad8-1908-745e-5b7f-7acb42b531ca@collabora.com>
Date: Wed, 14 Oct 2020 17:40:21 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20200922165813.19378-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_164030_224139_25AF4610 
X-CRM114-Status: GOOD (  18.98  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 9/22/20 1:58 PM, Dafna Hirschfeld wrote:
> MEDIA_BUS_FMT_METADATA_FIXED should be used when
> the same driver handles both sides of the link and
> the bus format is a fixed metadata format that is
> not configurable from userspace.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  include/uapi/linux/media-bus-format.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/include/uapi/linux/media-bus-format.h b/include/uapi/linux/media-bus-format.h
> index 84fa53ffb13f..847b45fb546b 100644
> --- a/include/uapi/linux/media-bus-format.h
> +++ b/include/uapi/linux/media-bus-format.h
> @@ -156,4 +156,12 @@
>  /* HSV - next is	0x6002 */
>  #define MEDIA_BUS_FMT_AHSV8888_1X32		0x6001
>  
> +/*
> + * This format should be used when the same driver handles
> + * both sides of the link and the bus format is a fixed
> + * metadata format that is not configurable from userspace.
> + * This format may have 0 height and width.
> + */
> +#define MEDIA_BUS_FMT_METADATA_FIXED		0x7001
> +
>  #endif /* __LINUX_MEDIA_BUS_FORMAT_H */
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
