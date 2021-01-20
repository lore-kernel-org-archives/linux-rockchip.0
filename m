Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1811CC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 21:32:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C24AB2242A
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 21:32:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C24AB2242A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pCa2+1/Xrz4eBMoBhilob5ACky+KkavzaRbz2JWIunA=; b=g7A4Ne8IlJYeaPblfolzNgCBK
	S/j6T2MJThvFlaRgu76r9dylFRfclrjSaZTWLqkTi/G8XL5FU4D3RdCJ+kmk10FoSGeMvITSe1ZPN
	bK0lEeOufGbF6AGPAEUcYfMqzpmuzeByU2CTpuRWc0x75thjWo3K1tkowqY1kGIY10U6TUj80Nr6A
	6N2zCYCtzkP9qGOui6TFdidTmLzZNV8nEnVL6tbrZR3kpeAUnOxU0sccJVGoC5HH3b43KVe+hC9XF
	+5btJlYj8Nrm34p4iQKbZJoLrxfNZbaB8ctU6OoyStj+ILKm/jmFYYxaiE5jDATLXj5eLOnawH6/X
	HxEkhhqoQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2L5O-0000mh-Ut; Wed, 20 Jan 2021 21:32:19 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2L5M-0000lu-AP
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 21:32:17 +0000
IronPort-SDR: 8zRJ4LN/r7HuwG5DUHVfYu34ZiIYmvPNlG5IZcjEepN9JjOmmufgiBAodceydnjmaki6/1d1sJ
 mOxRrHFoJGsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="178401049"
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; d="scan'208";a="178401049"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 13:32:13 -0800
IronPort-SDR: ClBbH19ia4QOiuyNHGqhQLNYBFvtit6Tkd2b+GPHK61WwT09kd1YA7lA3Nf7zaIoKQUhjYsz/j
 pQPw0lRJNCKg==
X-IronPort-AV: E=Sophos;i="5.79,362,1602572400"; d="scan'208";a="427043427"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 13:32:09 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 92D9B206D0; Wed, 20 Jan 2021 23:32:07 +0200 (EET)
Date: Wed, 20 Jan 2021 23:32:07 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v7 1/5] media: rkisp1: uapi: change hist_bins array type
 from __u16 to __u32
Message-ID: <20210120213207.GN11878@paasikivi.fi.intel.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
 <20210120164446.1220-2-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120164446.1220-2-dafna.hirschfeld@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_163216_499894_03DED870 
X-CRM114-Status: GOOD (  20.45  )
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
Cc: mchehab@kernel.org, heiko@sntech.de, heiko.stuebner@theobroma-systems.com,
 dafna3@gmail.com, tfiga@chromium.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, kernel@collabora.com,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

Thanks for the update.

On Wed, Jan 20, 2021 at 05:44:42PM +0100, Dafna Hirschfeld wrote:
> Each entry in the array is a 20 bits value composed of 16
> bits unsigned integer and 4 bits fractional part. So the
> type should change to __u32.
> In addition add a documentation of how the measurements
> are done.

The commit message lines wrap at 74, under 60 is not much.

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Should there be a Fixes: line? The patch is changing UAPI...

The file has been recently introduced. Should it go to fixes or to a stable
kernel, too?

> ---
>  include/uapi/linux/rkisp1-config.h | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 6e449e784260..f75f8d698fb4 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -844,13 +844,17 @@ struct rkisp1_cif_isp_af_stat {
>  /**
>   * struct rkisp1_cif_isp_hist_stat - statistics histogram data
>   *
> - * @hist_bins: measured bin counters
> + * @hist_bins: measured bin counters. Each bin is a 20 bits unsigned fixed point type.
> + *	       Bits 0-4 are the fractional part and bits 5-19 are the integer part.
>   *
> - * Measurement window divided into 25 sub-windows, set
> - * with ISP_HIST_XXX
> + * The window of the measurements area is divided to 5x5 sub-windows. The histogram
> + * is then computed for each sub-window independently and the final result is a weighted
> + * average of the histogram measurements on all sub-windows.
> + * The window of the measurements area and the weight of each sub-window are configurable
> + * using struct @rkisp1_cif_isp_hst_config.

Please wrap the lines before 80.

>   */
>  struct rkisp1_cif_isp_hist_stat {
> -	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
> +	__u32 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
>  };
>  
>  /**
> -- 
> 2.17.1
> 

-- 
Regards,

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
