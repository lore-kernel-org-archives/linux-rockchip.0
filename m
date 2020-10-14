Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CFDDC433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:28:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC4C420757
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 20:28:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MmQBZyfs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC4C420757
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JznLUXYIHUBxwSn6HKJFIM+YnSF5KpYSVmA4KYOFL+c=; b=MmQBZyfsyYimHrHfK5H/Rq1pz
	NOg2/JHgfUEt/t9eteBszUx3aLWc7nASc2qIzDbM5D4jk6cmKs3Qy1k19ILaOj4gKFO6YRd1S5wTs
	yFv146Ft9W/DGNgBZ+uvC9AvXws8J8up5JHasdKJ6wcGBGajS2Yu0P8jRLS2uOCON00XOFDCUl+xD
	ip3tHBY24MmjgBFCOmTDTLd7gKyD4AD35nTcrECe8k3eRsSdsSarcvImAWPRNA68WbjpdBB+SHo7V
	3Za/gaWgnAtkCsoyJanjxRwsItnUMvmHgPEs88/NuG+mKRBlzz6E+ocCPx0ETzBFiqhKCzNaMpRcH
	/EN1axZzg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSnNg-0000F4-IU; Wed, 14 Oct 2020 20:28:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSnNY-0000BN-Sj
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 20:28:10 +0000
Received: from [IPv6:2804:14c:483:7f66::1004] (unknown
 [IPv6:2804:14c:483:7f66::1004])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id ABC1A1F45832;
 Wed, 14 Oct 2020 21:27:56 +0100 (BST)
Subject: Re: [PATCH 5/6] media: staging: rkisp1: params: add '__must_hold' to
 rkisp1_params_apply_params_cfg
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201002184222.7094-1-dafna.hirschfeld@collabora.com>
 <20201002184222.7094-6-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <2f1cf2ba-2557-db59-d8e9-5a2c02edd008@collabora.com>
Date: Wed, 14 Oct 2020 17:27:52 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201002184222.7094-6-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_162809_456609_7D40F92F 
X-CRM114-Status: GOOD (  18.70  )
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

Hi Dafna,

On 10/2/20 3:42 PM, Dafna Hirschfeld wrote:
> The function rkisp1_params_apply_params_cfg must be under the
> the lock of params->config_lock. Add the __must_hold annotation
> to indicate it.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 3afbc24ca05e..aa18a113245b 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1187,6 +1187,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  
>  static void rkisp1_params_apply_params_cfg(struct rkisp1_params *params,
>  					   unsigned int frame_sequence)
> +	__must_hold(&params->config_lock)
>  {
>  	struct rkisp1_params_cfg *new_params;
>  	struct rkisp1_buffer *cur_buf = NULL;
> 

Instead of adding __must_hold, why no to lock inside this function?
It seems there are only two places that call it, and they don't do anything else
in the critical section.

Regards,
Helen

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
