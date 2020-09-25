Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82841C4727E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:17:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B655A21D42
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:17:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zKqC3/fU";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XRFHOqUW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B655A21D42
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nJJV5QAmuZaqjhnOelkClgOU3gQ7XEY/No4ruEchMag=; b=zKqC3/fUC9WrYB6ALXcY8UC9e
	9PREXhzHUiNXClW7tr/dsCJWvtYZdpIh6plRgg7zwIIhu4fpgtakF2jPHPeU9sRHldU0omR+kOS+B
	Ikam9qjZF2cb7mT6yLeTBGI+STzZSo296pKpjahBePyqcW4V7/98GOUoTH7moeNeC36uX4XY69QMi
	+1IARgVwDv++kWS6RefS2OHceF9wcDVcsrcnqeGrjfOOkAamYrqq772nE7crir8YqnafDYabuKcFa
	qLLPduOJjJcrZiQud0qVaMSuCvV3HBF7DLy7sHGYWSW04YKdFAeQafBRNMhUlhyz5fiDNs+h7wp94
	4B6eth/Dw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLu9G-0004gI-HD; Fri, 25 Sep 2020 20:16:54 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLu9E-0004fu-Li
 for linux-rockchip@lists.infradead.org; Fri, 25 Sep 2020 20:16:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id m6so5141084wrn.0
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2020 13:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=h3k4PJlbn3oqcZuyt17TXRTBC5y1fefCeaLF91QzcAE=;
 b=XRFHOqUW/AwpVxGjTI5QMXyPajpvVQ9qjM9fq+W3HfB+cpqB3BUrJYKivdM/b1nTNX
 KSN2JwaEPSx40cxvecjBN7DeZ1D2tEm4uXCevs2P3EFavFDroWPF9/kBrYXZ/xgM8T4F
 u11bcNoZkYT34lBlgrf62yU+7bDZgGA8ANKS0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=h3k4PJlbn3oqcZuyt17TXRTBC5y1fefCeaLF91QzcAE=;
 b=WkJxouU6eqqBcdxSDNun5B0xDAqTEakOaEOZN/0zo2t+kfH30U2johN7culL4/l9gj
 HEemypn99F51ntLnPGjLNLm0I4F8YJChbzSRugfz7gCT9zIz3P4gaqNMsDlDqeTmwxfD
 ra6bIUjDPGCnHPjRdUxbQ81djsnVBkfFPK4weCbrD0VGlbofFKPmw0r5rbssDHV4VUbH
 Y0Z5OjM5i23yVN8Azlzg6QU39tivHx+8tx1Z5+djbOEx2zRlYi5WDDk2zIvMiTwZO8Ib
 W0IAn1Pqn2uBfk6kh6fbqUxNNdfFIWfdEUbN1rdp9ysxISPbhhezUR32U5Z+R8wHs0de
 KEKQ==
X-Gm-Message-State: AOAM531tm4EAo2fW0Za4ZhVEVJIbU0TG1I2SM4SOhwfYwCFkfsC0MVPv
 rkC5+EnF7e/5RZ/W22Nun7Z0kg==
X-Google-Smtp-Source: ABdhPJxuWVrj/8ZtIym4iJUccN2IeduqFDU8+EupK+SWm4dJIVTyCOKMM500UiDK5krErbyP6VfqqA==
X-Received: by 2002:a05:6000:1c8:: with SMTP id t8mr6134776wrx.3.1601065010483; 
 Fri, 25 Sep 2020 13:16:50 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id q186sm128690wma.45.2020.09.25.13.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 13:16:49 -0700 (PDT)
Date: Fri, 25 Sep 2020 20:16:48 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 04/12] media: staging: rkisp1: params: avoid using
 buffer if params is not streaming
Message-ID: <20200925201648.GF3607091@chromium.org>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-5-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922113402.12442-5-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_161652_754389_838FE94D 
X-CRM114-Status: GOOD (  34.58  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Tue, Sep 22, 2020 at 01:33:54PM +0200, Dafna Hirschfeld wrote:
> Currently, the first buffer queued in the params node is returned
> immediately to userspace and a copy of it is saved in the field
> 'cur_params'. The copy is later used for the first configuration
> when the stream is initiated by one of selfpath/mainpath capture nodes.

Thank you for the patch. Please see my comments inline.

> 
> There are 3 problems with this implementation:
> - The first params buffer is applied and returned to userspace even if
> userspace never calls to streamon on the params node.

How is this possible? VB2 doesn't call the .buf_queue callback until streaming is started.

> - If the first params buffer is queued after the stream started on the
> params node then it will return to userspace but will never be used.

Why?

> - The frame_sequence of the first buffer is set to -1 if the main/selfpath
> did not start streaming.

Indeed, this is invalid. The sequence number should correspond to the
sequence number of the frame that the parameters were applied to, i.e. the
parameter buffer A and the video buffer B dequeued from the CAPTURE node
which contains the first frame processed with the parameters from buffer A
should have the same sequence number.

> 
> A correct implementation is to apply the first params buffer when stream
> is started from mainpath/selfpath and only if params is also streaming.
> 
> The patch adds a new function 'rkisp1_params_apply_params_cfg' which takes
> a buffer from the buffers queue, apply it and returns it to userspace.
> The function is called from the irq handler and when main/selfpath stream
> starts - in the function 'rkisp1_params_config_parameter'
> 
> Also remove the fields 'cur_params', 'is_first_params' which are no
> more needed.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
> changes since v2:
> declare function 'rkisp1_params_apply_params_cfg' as static
> to fix a warning reported by 'kernel test robot <lkp@intel.com>'
> ---
>  drivers/staging/media/rkisp1/rkisp1-common.h |  4 --
>  drivers/staging/media/rkisp1/rkisp1-params.c | 50 ++++++++------------
>  2 files changed, 20 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 992d8ec4c448..232bee92d0eb 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -262,10 +262,8 @@ struct rkisp1_stats {
>   * @rkisp1:		pointer to the rkisp1 device
>   * @config_lock:	locks the buffer list 'params' and 'is_streaming'
>   * @params:		queue of rkisp1_buffer
> - * @cur_params:		the first params values from userspace
>   * @vdev_fmt:		v4l2_format of the metadata format
>   * @is_streaming:	device is streaming
> - * @is_first_params:	the first params should take effect immediately
>   * @quantization:	the quantization configured on the isp's src pad
>   * @raw_type:		the bayer pattern on the isp video sink pad
>   */
> @@ -275,10 +273,8 @@ struct rkisp1_params {
>  
>  	spinlock_t config_lock; /* locks the buffers list 'params' and 'is_streaming' */
>  	struct list_head params;
> -	struct rkisp1_params_cfg cur_params;
>  	struct v4l2_format vdev_fmt;
>  	bool is_streaming;
> -	bool is_first_params;
>  
>  	enum v4l2_quantization quantization;
>  	enum rkisp1_fmt_raw_pat_type raw_type;
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index ab2deb57b1eb..e8049a50575f 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1185,23 +1185,14 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  	}
>  }
>  
> -void rkisp1_params_isr(struct rkisp1_device *rkisp1)
> +static void rkisp1_params_apply_params_cfg(struct rkisp1_params *params,
> +					   unsigned int frame_sequence)

Should we call this _locked() since it is expected that the config_lock is
held when called?

To signify such condition, the __must_hold sparse annotation can be used.

>  {
> -	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
> -	struct rkisp1_params *params = &rkisp1->params;
>  	struct rkisp1_params_cfg *new_params;
>  	struct rkisp1_buffer *cur_buf = NULL;
>  
> -	spin_lock(&params->config_lock);
> -	if (!params->is_streaming) {
> -		spin_unlock(&params->config_lock);
> -		return;
> -	}
> -
> -	if (list_empty(&params->params)) {
> -		spin_unlock(&params->config_lock);
> +	if (list_empty(&params->params))
>  		return;
> -	}
>  
>  	cur_buf = list_first_entry(&params->params,
>  				   struct rkisp1_buffer, queue);
> @@ -1218,6 +1209,20 @@ void rkisp1_params_isr(struct rkisp1_device *rkisp1)
>  
>  	cur_buf->vb.sequence = frame_sequence;
>  	vb2_buffer_done(&cur_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> +}
> +
> +void rkisp1_params_isr(struct rkisp1_device *rkisp1)
> +{
> +	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
> +	struct rkisp1_params *params = &rkisp1->params;
> +
> +	spin_lock(&params->config_lock);
> +	if (!params->is_streaming) {

Do we need this check? Wouldn't the queue be empty if params is not
streaming?

Also, if we decide that we need the check, we could replace the private
is_streaming flag with vb2_is_streaming().

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
