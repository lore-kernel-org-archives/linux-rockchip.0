Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 489B1C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 17:05:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D467723A54
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 17:05:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D467723A54
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MX6gnQOB2kimIvStV30+eGopXMCBH01jV970GUztrFk=; b=PSgYge6jaHvyrZQ06vl9Tp0wv
	VSKHm7Ix+V+sOy+zeqFspfDITdkeCy8B4rhfIwuBKjQieG+BQ0qfwKSYvhUWcbtzrGtUHcf8PWtUA
	U9ave32KCxuJu2h6XoNAVrocuMLfS484g3JAHGP2kqHHKPFcrl5zpFUwkR7BYAKBCQxecibfZL/NJ
	iZcmJbb93gob5+GD2J2ebWSVKKwyeE+XC7Sny1/Wcz/GyTXHX+4HEN/1rfx+Ktuhfok05R52++ezB
	AkKfB8cNNkZ0KoiKV7QBWxOakwhXKYnVhKo8GV2tZ/8cMJF80BKIgEoUmDij3Y6sFEJ2kmBsHffy8
	CX3exT82g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2dOU-0008BK-2O; Thu, 21 Jan 2021 17:05:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2dOR-0008A1-RR
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 17:05:12 +0000
Received: from [IPv6:2804:214:8594:2ad2:6dc:ed37:185c:8a4b] (unknown
 [IPv6:2804:214:8594:2ad2:6dc:ed37:185c:8a4b])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5586A1F45F76;
 Thu, 21 Jan 2021 17:04:59 +0000 (GMT)
Subject: Re: [PATCH v8 4/6] media: rockchip: rkisp1: reduce number of
 histogram grid elements in uapi
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com,
 hverkuil@xs4all.nl, sakari.ailus@linux.intel.com, heiko@sntech.de
References: <20210121144407.9045-1-dafna.hirschfeld@collabora.com>
 <20210121144407.9045-5-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <c9d0ac1b-2cb7-a5b6-aa97-1510c44404c1@collabora.com>
Date: Thu, 21 Jan 2021 14:04:49 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210121144407.9045-5-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_120512_019317_B9974610 
X-CRM114-Status: GOOD (  19.84  )
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
Cc: mchehab@kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 dafna3@gmail.com, tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On 1/21/21 11:44 AM, Dafna Hirschfeld wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The uapi right now specifies an array size of 28 but the actual number
> of elements is only 25 with the last 3 being unused.
> 
> Reduce the array size to the correct number of elements and change
> the params code to iterate the array 25 times.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 3 ++-
>  include/uapi/linux/rkisp1-config.h                     | 3 +--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 6af4d551ffb5..021939466b24 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -589,7 +589,6 @@ static void rkisp1_hst_config(struct rkisp1_params *params,
>  		RKISP1_CIF_ISP_HIST_WEIGHT_22TO03,
>  		RKISP1_CIF_ISP_HIST_WEIGHT_13TO43,
>  		RKISP1_CIF_ISP_HIST_WEIGHT_04TO34,
> -		RKISP1_CIF_ISP_HIST_WEIGHT_44,
>  	};
>  	const u8 *weight;
>  	unsigned int i;
> @@ -622,6 +621,8 @@ static void rkisp1_hst_config(struct rkisp1_params *params,
>  							    weight[2],
>  							    weight[3]),
>  				 hist_weight_regs[i]);
> +
> +	rkisp1_write(params->rkisp1, weight[0] & 0x1F, RKISP1_CIF_ISP_HIST_WEIGHT_44);

I just noticed that the default value to arg->hist_weight was:

	memset(hst.hist_weight, 0x01, sizeof(hst.hist_weight));

Shouldn't the value be RKISP1_CIF_ISP_HIST_WEIGHT_SET(weight[0], 0x01, 0x01, 0x01) ?
Or am I missing something?

Thanks
Helen


>  }
>  
>  static void
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 24f05d6d258f..35aa82d5f6dd 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -102,8 +102,7 @@
>  /*
>   * Histogram calculation
>   */
> -/* Last 3 values unused. */
> -#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28
> +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 25
>  
>  /*
>   * Defect Pixel Cluster Correction
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
