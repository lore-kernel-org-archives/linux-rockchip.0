Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26E69C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Mar 2022 12:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73WJRMUTv0Y14MylAnjmuyjXdbp8FB7HN5BIwb9pWKY=; b=CVMz5uDrLbJKfn
	CTTKlimkjc3mzLPrk/TtbUyxF8XBe4PqhkQNOLWkPKrM6S7dS0VPOgC+dvO+CEwfj9nh+WqXiV9yB
	fOLtRWtf9v83NAGLGlLqPIZ1a7s5koY5PzbUjZTvEF31l30+m24y9IYHRTVfSm/RCKZ2hLLyPZOkH
	PWqqdZ9Xs2MCndxejk87QmMXGbF+ZThM9NtWCBus6howQ6O7EE6I4pJuQLQ6eKZUhNiq3LjaJrhnp
	QpiRCJAMScEqwxW2z2Vmt/7rB2cj9ibXJrbNWZG1ojNOYciTejf/Sao9PZMd2rfexSH8zLzQYlBZf
	ceh2/5oB7ER/KCI8Pq5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVuqT-005Es3-W2; Sun, 20 Mar 2022 12:39:42 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVuqQ-005EqP-JJ
 for Linux-rockchip@lists.infradead.org; Sun, 20 Mar 2022 12:39:40 +0000
Received: by mail-oi1-x229.google.com with SMTP id j83so13714759oih.6
 for <Linux-rockchip@lists.infradead.org>; Sun, 20 Mar 2022 05:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VXZQ9cDhHIRkiRYLKMsYJJMv5OJo8ExgGi/KH8XAfZc=;
 b=oNRh+7kdfH0XJdH7+TkgJ1N1Mt+B6Zdqf5Ip5o7qkmevPOzfXLHD8LkkDpz0ixkRIF
 3vIjZBvVzlbcXbe5BclnNubn3Pn+HXPEc1anB27w6/TnbPNB3yWG3Aka3DmQzi4eNjRY
 5Zp9Lcnj3TDQhGXXRTu0b2iN7UVDkm7kQRWrKuv2z2+wtGu5hqL+r9wR2vL1ihlPe1MZ
 h3zO+nRUUR8kY5gwo1QqNdZqphH1yysr6z2XT/gUwrMlR0TH5kvK2ojSj1GXw8FgBCU+
 1Rox6yg3eLIM4Mt095ObKwlhu4VrgciFOR74MM5+oBKw5hwpgVAEGYCQf0V3JL52yQlM
 6Tvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VXZQ9cDhHIRkiRYLKMsYJJMv5OJo8ExgGi/KH8XAfZc=;
 b=LWYyfuG6otuh6AFyfCiFk7VSbnrPSIdEuCJn4I++rJov/cKkuZC8xMdYbxY+DyjCgI
 EsebU7LYlN0MdVK0zk0n1WpWymGffBKeCT/VyMYJsVwD3IJlNKKgUHV5fLso9+jn+3jN
 xYZeXyknJtlW0CBReNZxSFJpEeUMzCG5kVXwuZVQ/sUT3u+KvxOFDLJ6O6hWbgD/IJyn
 7KI3TzayIrR5vJRZhtwdqD9HPEofVwNOQxfOYMf2qNNYdLgAHsiA9At53VV6xZIXm+Zg
 SV0UBg0drsAfTiYMOAYxXRJRt5IWl2n1Fi7hvGyLka9ooSnESdCuaEVE2dIlqchPfRUD
 C2eg==
X-Gm-Message-State: AOAM5321xF4YHtWaFiu7560QdOW6O6Gpxrn1Cq8J7xWsdL5JZs/TpUOe
 BVQ/mHj4ewvRoKNoOJNlN7+HiQ==
X-Google-Smtp-Source: ABdhPJxZsRRfxgsibtCeV2kzOvAi8AUF3QtWGNroi4KM85J3+ZnZqUkCW7njnF8sqpLhanofO6L/xA==
X-Received: by 2002:aca:ad15:0:b0:2da:692e:fe97 with SMTP id
 w21-20020acaad15000000b002da692efe97mr11772950oie.26.1647779972622; 
 Sun, 20 Mar 2022 05:39:32 -0700 (PDT)
Received: from eze-laptop ([186.122.18.6]) by smtp.gmail.com with ESMTPSA id
 v24-20020a9d5a18000000b005ad458facbdsm6329043oth.27.2022.03.20.05.39.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 20 Mar 2022 05:39:32 -0700 (PDT)
Date: Sun, 20 Mar 2022 09:39:26 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-media@vger.kernel.org, Linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, hverkuil@xs4all.nl
Subject: Re: [PATCH v2 3/3] dt-bindings: media: rockchip-vpu: Add RK3568
 compatible
Message-ID: <YjcgflUuQlFbVM/1@eze-laptop>
References: <20220214212955.1178947-1-piotr.oniszczuk@gmail.com>
 <20220214212955.1178947-3-piotr.oniszczuk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220214212955.1178947-3-piotr.oniszczuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220320_053938_646358_662C0381 
X-CRM114-Status: GOOD (  13.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Piotr,

On Mon, Feb 14, 2022 at 10:29:55PM +0100, Piotr Oniszczuk wrote:
> From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
> 
> RK356x has Hantro G1 video decoder capable to decode MPEG2/H.264/VP8
> video formats.
> 
> This patch adds RK3568 compatible in rockchip-vpu dt-bindings.
> 
> Tested on [1] with FFmpeg v4l2_request code taken from [2]
> with MPEG2, H.642 and VP8 samples with results [3].
> 
> [1] https://github.com/warpme/minimyth2
> [2] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch
> [3] https://github.com/warpme/minimyth2/blob/master/video-test-summary.txt
> 
> Signed-off-by: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

This dt-binding change looks trivial, so I guess it's fine
taking it directly via the media tree?

Thanks,
Ezequiel

> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> index bacb60a34989..6cc4d3e5a61d 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> @@ -23,6 +23,7 @@ properties:
>            - rockchip,rk3328-vpu
>            - rockchip,rk3399-vpu
>            - rockchip,px30-vpu
> +          - rockchip,rk3568-vpu
>        - items:
>            - const: rockchip,rk3188-vpu
>            - const: rockchip,rk3066-vpu
> -- 
> 2.29.2
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
