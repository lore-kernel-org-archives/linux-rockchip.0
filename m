Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1324C10DCE
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 18:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoI+XSRYZDiUhcmzbIO4PCSj1TJb38nknfD7CXVPUBA=; b=Gn7zS4J0T0M7DB
	KTJ6q/zlbdRO08SWDip3BpmisdI69qNrrJK9B0c6pGwVT+sSSyx7oyQzRj+MNuYTovkIapxE0DnL7
	W19OA6eZoLWwp76S1ecUqKNrJ5rIAG6QfkqIOma+rzNAa+asWwQFnq3Ye4gu2zEpMtdW5SJN0NzWK
	S7J2CX28ivjI/0tJZB38F9A0BNdbBSpdQ33lt6hgrCzabIonl24T4yd9AMUjVDEu7oZbiUDb84DM3
	GjuDXf5tiMi6WLDFCJjR5Z+xUprOrHfOa0YbFZufbi3JjtNDrljXQwmWhVa02iFD/l5v32R4rX/04
	piCEzaGdMv+u5Topc0lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAZjz-0085oB-1m;
	Tue, 05 Dec 2023 18:01:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAZjw-0085nN-0h;
	Tue, 05 Dec 2023 18:01:49 +0000
Received: from [100.95.196.25] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: koike)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D3F3F66072EC;
	Tue,  5 Dec 2023 18:01:41 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701799307;
	bh=VwHWq49kjTDZ3UF6CffpL7rnWqXYoSvsZ2/8l2HARl4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=otLhxBWn+wz/7Hfc8AtWtVJRHG5bcDHllMU1uJjJTdQiBHYi9AY871hD/AP9jwOaT
	 3RcXR9XKK385uT6/VZq++0TvIgSCaK4+vhaecmaZzXFCtSyr2PXD1AlzM7otyZdcSK
	 OHBJKNl21TPaFg2iXjbhiw8UW51wJiEzFA2O7LxJNAoAiVGRTNgTYMpOJ8Zel6P9+J
	 Ar2ixBYuanGVjPJBBpRhnropxXrqLwMNvK/kUmnWgwKyho4g/pSTKj88kiGU7AkZ3G
	 QKM8eMXNRutHPKdX9yuQ67x3Ikebe7uXaCKVr2YK93fZhJn9smqAF3yxh1JqcpzV1f
	 jIRY+gSyCcXsg==
Message-ID: <8a773fef-c3e4-44ec-931c-de2a92d2d835@collabora.com>
Date: Tue, 5 Dec 2023 15:01:41 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 09/10] drm/doc: ci: Add IGT version details for flaky
 tests
Content-Language: en-US
To: Vignesh Raman <vignesh.raman@collabora.com>, airlied@gmail.com,
 daniel@ffwll.ch
Cc: david.heidelberg@collabora.com, sergi.blanch.torne@collabora.com,
 guilherme.gallo@collabora.com, daniels@collabora.com,
 gustavo.padovan@collabora.com, emma@anholt.net, robdclark@gmail.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 virtualization@lists.linux-foundation.org,
 linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
References: <20231129121841.253223-1-vignesh.raman@collabora.com>
 <20231129121841.253223-10-vignesh.raman@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
In-Reply-To: <20231129121841.253223-10-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_100148_387372_5ACBC196 
X-CRM114-Status: GOOD (  15.35  )
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



On 29/11/2023 09:18, Vignesh Raman wrote:
> Document the IGT version in the flaky tests reporting template.

Nice!

> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
> 
> v6:
>    - Added a new patch in the series to update drm ci documentation
> 
> ---
>   Documentation/gpu/automated_testing.rst | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/gpu/automated_testing.rst b/Documentation/gpu/automated_testing.rst
> index 240e29d5ba68..2d5a28866afe 100644
> --- a/Documentation/gpu/automated_testing.rst
> +++ b/Documentation/gpu/automated_testing.rst
> @@ -69,14 +69,15 @@ the result. They will still be run.
>   
>   Each new flake entry must be associated with a link to the email reporting the
>   bug to the author of the affected driver, the board name or Device Tree name of
> -the board, the first kernel version affected, and an approximation of the
> -failure rate.
> +the board, the first kernel version affected, the IGT version used for tests,
> +and an approximation of the failure rate.
>   
>   They should be provided under the following format::
>   
>     # Bug Report: $LORE_OR_PATCHWORK_URL
>     # Board Name: broken-board.dtb
> -  # Version: 6.6-rc1
> +  # Linux Version: 6.6-rc1
> +  # IGT Version: 1.28-gd2af13d9f
>     # Failure Rate: 100
>     flaky-test
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
