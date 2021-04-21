Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A79C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:12:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3DFDD613DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 09:12:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DFDD613DC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fKYP62IFGj0WhxVL/3Ok6znQPsv0/4As/W2opXsQ8O4=; b=jjyIFmHSgnq0wtULxMqRqj4yK
	DnInsderUd1b7GRshTkEBBO1TEhHxkP+wOiN7isNdCJhRlF0oekILobo0lFR+Xo7Md3QSUuEdCfgJ
	ttlaiQD1q1f8hnIt0B9wlGBNPuLhHZ/dzElel00y7snIg9czIw8mb3o+ALotC63/jWxLAqcEYa/tt
	ufVc/lA0crWhr9aERkYldFeBn5PKjDnP3b+gVoxpgxB7G9hile4rWnfSrTaczK+gR4BlcjR8ancIp
	Vu2hHunb8eFDjq2aUvNLGZDTvg+MEQUcGRlBYqDJtETCIh6VGhk3NMp+gikA4gbxIq1EJA5Vf3FGk
	SIDj1qySw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZ8tz-00E57e-8z; Wed, 21 Apr 2021 09:12:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8rB-00E3o0-2D; Wed, 21 Apr 2021 09:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=2Rv5piloTM9/ETrcKvWY69zW4iLvSg2MNAHXt+jk7CQ=; b=1n8qc3NEf/X+DBTlJbnr9/ziDw
 3W+IhtM3bxLYPxLcXVsZ6C0pCOcDPHBDL04J4vzzGnxFHRqlmxo21P/pCGO7JyReCgBG6iO8h4i6n
 jGgE6b9Vl849mf5HZ40VUuwyT6Puc+a4xK+qggfqKw+m74sX47JDSOWiOLfW32eVwHbO0kIfyV6gD
 1JRp44SHxT2jSur618s2h/QO2YhEPOy6KHEjtlQC03nWwWYNhRMzWUpZ2p6CmsYKbzDpoW4uAVSLv
 SBQ4QewUOvxT88BdJsKnBbMnDOGccVA2QaT2sPRdn1bfuYz/tcvEiNk/L5PbZFTi5SiPBEpUMNew7
 gEhvF0/w==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZ8r5-00Cjtg-7Z; Wed, 21 Apr 2021 09:09:11 +0000
Received: from [IPv6:2a02:810a:880:f54:c90f:3911:b88f:e044] (unknown
 [IPv6:2a02:810a:880:f54:c90f:3911:b88f:e044])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7FDFC1F42A1A;
 Wed, 21 Apr 2021 10:09:04 +0100 (BST)
Subject: Re: [PATCH v2] media: rkisp1: rkisp1-params.c: Fix typos
To: Sebastian Fricke <sebastian.fricke@posteo.net>, linux-media@vger.kernel.org
Cc: Helen Koike <helen.koike@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210420174522.9618-1-sebastian.fricke@posteo.net>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <a0c52c66-6930-7ace-e1ac-9608a7e72bfa@collabora.com>
Date: Wed, 21 Apr 2021 11:09:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210420174522.9618-1-sebastian.fricke@posteo.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_020907_432353_9E2BFCCA 
X-CRM114-Status: GOOD (  19.51  )
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
Thanks for the fix,

On 20.04.21 19:45, Sebastian Fricke wrote:
> s/when the camera active/when the camera is active/
> s/thus not isr protection/therefore there is no need to acquire a lock/
> 
> Signed-off-by: Sebastian Fricke <sebastian.fricke@posteo.net>

Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

> ---
>   drivers/media/platform/rockchip/rkisp1/rkisp1-params.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index b6beddd988d0..529c6e21815f 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1258,7 +1258,10 @@ void rkisp1_params_configure(struct rkisp1_params *params,
>   	rkisp1_params_config_parameter(params);
>   }
>   
> -/* Not called when the camera active, thus not isr protection. */
> +/*
> + * Not called when the camera is active, therefore there is no need to acquire
> + * a lock.
> + */
>   void rkisp1_params_disable(struct rkisp1_params *params)
>   {
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DPCC_MODE,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
