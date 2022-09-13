Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3648ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 23:20:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZyTjzbsPJjEQuuWwv+FPwq2V9mGXInvQWDYMPGJRCY=; b=yHJjmlh1oHpFYL
	uoyQQbNWbVdYjF1aPfiXhNJoZBinN0qrtIaSVBPuql/J1LoZwqLl+IcCjv3opbRU8LXaYyWHtTtsO
	3aNmDHiBRQbkzoKlzIoG6Jsz+Ho1atvz5IYqpnkVjfDN/ScpAVJGI2zqdK8v5m3G7RZzmCghE5kwN
	fqFrzwSw9kGNp0kR76GM8lmAD6m4hyVoAcyPb8J9MX8ReVZhr9dlUzXTGjxYhmR67ZxgDt+iu0giI
	KtQghFQJuyoZVTZHO58cH70WdHQYeQ+ETuOlqR+WDyU2mqLE8KZjdeyL2/wxBcAT8y6LLcLpHc8SV
	9dD1fxnVwACXE/2rPOjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYFCx-001KFt-SK; Tue, 13 Sep 2022 23:20:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYFCi-001Jym-Sl; Tue, 13 Sep 2022 23:20:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 7881CB8110A;
	Tue, 13 Sep 2022 23:20:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90208C433D6;
	Tue, 13 Sep 2022 23:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663111230;
	bh=OkP3AB4BNr1hUTAE2knTD/oF21cHVgadoi0HWaJ0SLU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RaG8wFr0Psffi9JspzPru/GXaGT31Tfy0p63bSRRqfCwuyyhTBkvV3TfOMHLio4Yh
	 FONjnotfc5J+UDhI/D8W4zMvyvLL4yDn62ng5yothHBqic01UQAPxbaFbuwhTsNugx
	 sbWkYYeNEbC5wgzXf/TVe+jVIIiOnkcUYSe7ZJIbplTSlV3F/yuiO1a1bphlDTyooE
	 DoNtdvWoQwzV+wbBI8K9lavbO4IDr6F0G//6qdG1L7W6ORdWS1+wXSECCeUtiQ93PT
	 g1m3sqxpQdSrYVhd/nJattv5U4sARnRjlPFalr6A2+u4eh/N/zZG13j5+lSA5PuLIA
	 SznubJmBFyvKA==
Date: Tue, 13 Sep 2022 16:20:27 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nathan Huckleberry <nhuck@google.com>
Cc: Dan Carpenter <error27@gmail.com>, llvm@lists.linux.dev,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Fix return type of
 cdn_dp_connector_mode_valid
Message-ID: <YyEQOztVBGl9D3u1@dev-arch.thelio-3990X>
References: <20220913205555.155149-1-nhuck@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220913205555.155149-1-nhuck@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_162033_560491_8BE6E934 
X-CRM114-Status: GOOD (  20.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

On Tue, Sep 13, 2022 at 01:55:55PM -0700, Nathan Huckleberry wrote:
> The mode_valid field in drm_connector_helper_funcs is expected to be of
> type:
> enum drm_mode_status (* mode_valid) (struct drm_connector *connector,
> 				     struct drm_display_mode *mode);
> 
> The mismatched return type breaks forward edge kCFI since the underlying
> function definition does not match the function hook definition.
> 
> The return type of cdn_dp_connector_mode_valid should be changed from
> int to enum drm_mode_status.
> 
> Reported-by: Dan Carpenter <error27@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1703
> Cc: llvm@lists.linux.dev
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  drivers/gpu/drm/rockchip/cdn-dp-core.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> index c204e9b95c1f..518ee13b1d6f 100644
> --- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
> +++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
> @@ -283,8 +283,9 @@ static int cdn_dp_connector_get_modes(struct drm_connector *connector)
>  	return ret;
>  }
>  
> -static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
> -				       struct drm_display_mode *mode)
> +static enum drm_mode_status
> +cdn_dp_connector_mode_valid(struct drm_connector *connector,
> +			    struct drm_display_mode *mode)
>  {
>  	struct cdn_dp_device *dp = connector_to_dp(connector);
>  	struct drm_display_info *display_info = &dp->connector.display_info;
> -- 
> 2.37.2.789.g6183377224-goog
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
