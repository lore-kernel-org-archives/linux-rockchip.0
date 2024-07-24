Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31BACC49EA1
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jul 2024 01:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkQdaOZsDPPVHLCgYobx6fqtB349BGVFYtoOxWRVQKs=; b=WwfZU7HgrQ0RBD
	pzimwvgGcRB/F4tTBtjW0xmLGZSXwDsH7HRu4mIoDbSCXRO506Vc6AKezEJyDCwIzl0cO3LJWulgE
	a7wj0qlMXqwmDTSzxoKZdsjswz4zVQqYlCTITmK4gQOGvm1RbYBb3CTnNdk5nrSjMXLvz2f75+VEn
	Xkl+Tu6pN0JGHSuLxwECqi+sdl5gXmNg7PgRIUpJySYD9qSYO10lUYXI24ceq8skhYCiG/izru7dw
	7cFw6BtVP0XVz2afIdCRAEFjGItvMOTA/m2aZL81c++fjywlv9BImq7z18k+eQbXjJzZxNitWjlqa
	D/D4eLc7TeWytTPT5xvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWR6Z-0000000E2lY-4Bf5;
	Wed, 24 Jul 2024 01:47:48 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWR6S-0000000E2eh-0Gnw;
	Wed, 24 Jul 2024 01:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721785658;
	bh=oKiy0vzmxtpMoFbrfKXC8aS7iHyuYLQXZUZy/OTXrtQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bIU1JCCo0ZjjV2oKKqf/VP10+BngWmEVEY6dYRIimvJEKWUvkip/kx+sCSCn190kb
	 R6xRhXTZjtnATnEDoBFcP1eR7yHvQ7mqXJ0eGnbXKAN3v7ZWTNTeqrd33XnXca9Zim
	 g+9ibXfb6ktIKD8SXB2ZRRbF4+Wr0xXA2iW+m/yLymTvjRevSyZVHWZIUNFI8kCX1Q
	 hcXqMlLN9u2K5ugqisxjT+mZbcPmhxqC2VZxt/aP/pjeBiLibsIHmy8AjRe5QDORvF
	 vez2LOEXgwXYj+RfWefAH3dGwJtg67gxlX8fDox7f5Ftbf9ZyfYEIX6GEE4K8FXIFu
	 KB4xsTzYDuMHA==
Received: from [10.3.2.176] (zone.collabora.co.uk [167.235.23.81])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: koike)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 1AE91378202D;
	Wed, 24 Jul 2024 01:47:32 +0000 (UTC)
Message-ID: <e0f08def-df6a-4a29-bd56-c0449d970b44@collabora.com>
Date: Tue, 23 Jul 2024 22:47:32 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 3/5] drm/ci: mediatek: add tests for powervr gpu driver
To: Vignesh Raman <vignesh.raman@collabora.com>,
 dri-devel@lists.freedesktop.org
Cc: daniels@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com,
 deborah.brouwer@collabora.com, robdclark@gmail.com,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240712091549.56635-1-vignesh.raman@collabora.com>
 <20240712091549.56635-4-vignesh.raman@collabora.com>
Content-Language: en-US
From: Helen Koike <helen.koike@collabora.com>
In-Reply-To: <20240712091549.56635-4-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_184740_362780_6B2B1981 
X-CRM114-Status: GOOD (  17.76  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 12/07/2024 06:15, Vignesh Raman wrote:
> For mediatek mt8173, the display driver is mediatek, while the
> gpu driver is powervr. Currently, in drm-ci for mt8173, only the
> display driver is tested. Add support in drm-ci to test powervr
> driver for mt8173. Powervr driver was merged in linux kernel,
> but there's no mediatek support yet. So disable the powervr:mt8173
> job which uses powervr driver.
> 
> Also update the MAINTAINERS file to include xfails for powervr driver.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v6:
>    - New patch in the series. Split powervr changes into a new commit.
> 
> v7:
>    - No changes.
> 
> ---
>   MAINTAINERS                      |  1 +
>   drivers/gpu/drm/ci/gitlab-ci.yml |  1 +
>   drivers/gpu/drm/ci/test.yml      | 14 ++++++++++++++
>   3 files changed, 16 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f3783f2269ff..05f72eaf5267 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -10778,6 +10778,7 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
>   F:	Documentation/devicetree/bindings/gpu/img,powervr-rogue.yaml
>   F:	Documentation/devicetree/bindings/gpu/img,powervr-sgx.yaml
>   F:	Documentation/gpu/imagination/
> +F:	drivers/gpu/drm/ci/xfails/powervr*
>   F:	drivers/gpu/drm/imagination/
>   F:	include/uapi/drm/pvr_drm.h
>   
> diff --git a/drivers/gpu/drm/ci/gitlab-ci.yml b/drivers/gpu/drm/ci/gitlab-ci.yml
> index 9d800f629f08..ca7f873bc2d4 100644
> --- a/drivers/gpu/drm/ci/gitlab-ci.yml
> +++ b/drivers/gpu/drm/ci/gitlab-ci.yml
> @@ -122,6 +122,7 @@ stages:
>     - meson
>     - msm
>     - panfrost
> +  - powervr
>     - rockchip
>     - software-driver
>   
> diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
> index 219eca5ef24c..86875fb96eb5 100644
> --- a/drivers/gpu/drm/ci/test.yml
> +++ b/drivers/gpu/drm/ci/test.yml
> @@ -294,6 +294,11 @@ amdgpu:stoney:
>     variables:
>       DRIVER_NAME: mediatek
>   
> +.powervr-gpu:
> +  stage: powervr
> +  variables:
> +    DRIVER_NAME: powervr
> +
>   .panfrost-gpu:
>     stage: panfrost
>     variables:
> @@ -322,6 +327,15 @@ mediatek:mt8173:
>       - .mt8173
>       - .mediatek-display
>   
> +powervr:mt8173:
> +  extends:
> +    - .mt8173
> +    - .powervr-gpu
> +  rules:
> +    # TODO: powervr driver was merged in linux kernel, but there's no mediatek support yet
> +    # Remove the rule once mediatek support is added for powervr
> +    - when: never

well, we could leave to add it later, but I don't mind adding like this 
for now.

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> +
>   mediatek:mt8183:
>     extends:
>       - .mt8183


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
