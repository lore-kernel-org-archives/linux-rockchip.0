Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3285FC433E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:48:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF0F12072E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:48:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="BquDXK+v"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF0F12072E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6/ID5YbDzV5GMWXG5+3MM14F0pSpRcTcg/XktdbaTSI=; b=BquDXK+vF2iUQPZ0h4ZiLWnD1
	dNayOpIobRkioOCc2jjJfhLGFtPet1+zTRfJDEPy7TqBjOy5kaaI2QOhNLczup3y/gXF9CLDa2B5/
	PMfTWnDulv8m9KwPhuJ57CzIh50VVc1uboKDBn0lAxT0GWv0b+fcdpF4IQSw85WmNRgb17AcGwKHP
	xCzUs2YKaqK4sneAayPRVmvLvJQz96oAxcx1VzLiT7ILMPbxlVsX2MBthAu/ObtI/3feJvCiB9aoK
	DjL89URRse2QlqkJM60Sk5ILu1ZOGx2cPA1CbxCbgEImRoascdxASXI4DW9wFycqk8URGjdGfjtm4
	YN/0X+WkQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7mz0-0001kT-17; Mon, 17 Aug 2020 21:47:58 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7myy-0001je-GM
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 21:47:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 77041295BEA
Subject: Re: [PATCH v2 08/14] media: staging: rkisp1: params: set vb.sequence
 to be the isp's frame_sequence + 1
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-9-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <c6853613-0a08-44b0-6086-9805bb5ebd16@collabora.com>
Date: Mon, 17 Aug 2020 18:47:46 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200815103734.31153-9-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_174756_655904_75A5DCCA 
X-CRM114-Status: GOOD (  22.30  )
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

On 8/15/20 7:37 AM, Dafna Hirschfeld wrote:
> The params isr is called when a frame is out of the isp. The parameters
> are applied immediately since the isr updates the shadow registers.
> Therefore the params are first applied on the next frame.
> We want the vb.sequence to be the frame that the params are applied to.
> So we set vb.sequence to be the isp's frame_sequence + 1
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 134b5c9a94c1..4b4391c0a2a0 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1220,7 +1220,14 @@ void rkisp1_params_apply_params_cfg(struct rkisp1_params *params, unsigned int f
>  
>  void rkisp1_params_isr(struct rkisp1_device *rkisp1)
>  {
> -	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence);
> +	/*
> +	 * The params isr is called when a frame is out of the isp. The parameters
> +	 * are applied immediately since the isr updates the shadow registers.
> +	 * Therefore the params are first applied on the next frame.
> +	 * We want the vb.sequence to be the frame that the params are applied to.
> +	 * So we set vb.sequence to be the isp's frame_sequence + 1
> +	 */

I would just re-phrase this a bit, how about:

	This isr is called when the ISP finishes processing a frame.
	To configure the parameters, we update the shadow registers, which means
	that the next frame will already take these new configuration into consideration.
	Since frame_sequence is only updated on the vertical sync signal, we should use
	frame_sequence + 1 here to indicate to userspace which frame this parameters
	are being applied to.


Or maybe smaller:

	This isr is called when the ISP finishes processing a frame.
	Configurations performed here will be applied to the next frame.	
	Since frame_sequence is only updated on the vertical sync signal, we should use
	frame_sequence + 1 here to indicate to userspace which frame this parameters
	are being applied to.

What do you think?

With an improvement in the text (and also commit message):

Acked-by: Helen Koike <helen.koike@collabora.com>

Regards,
Helen

> +	unsigned int frame_sequence = atomic_read(&rkisp1->isp.frame_sequence) + 1;
>  	struct rkisp1_params *params = &rkisp1->params;
>  
>  	spin_lock(&params->config_lock);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
