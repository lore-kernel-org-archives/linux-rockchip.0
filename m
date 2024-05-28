Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4993FC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 01:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAteQmoVHygNW2JLnE+n+CW5SNHGSvCS00ZRYyWnNFI=; b=46KxizB6dUGqpw
	67lU6RvKzaIPof/wbyKjKXifF6lzRtBTAasPu+W4g2BMTsRK7RCgQPwiAy7SOHdKi0T2E35X1v/Zx
	XWNimMwszKVclCQszgEfB82ybCUatGk1W2AWiUATTFpIEHq6Jcq3t4QArT6Y6381K23xa6PN4gMGl
	KREhbX3/449AhZCqvWdoWiQ1fgAZOwFGOv71LWUNsd/Wq4UnTjGfp+GUep5gqSbqRYGjgQvtnwR/a
	1IVgvPr2MS5N2rblROVqFElullTyas1vgcaOLdEnmO2nCpazWLh3Q4hmi+kwew/JDEN6gPHbelm7X
	lVtZzHjiZ4t/8TDsUHCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlEH-0000000GknK-08lj;
	Tue, 28 May 2024 01:02:17 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBlEE-0000000GkjI-1NBW
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 01:02:15 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-5295eb47b48so359191e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 May 2024 18:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716858127; x=1717462927; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YyAxoHilgrk8yTu5a6z1lAdisdBZ34CZ+2kOXUlJDWg=;
        b=Ruo4BzcpVFyUSmWxksRhIxeSwOdj5e1yKGUiI3SXsmc75UgOOjfKzArPA/ph1HiGqS
         ooKlbvawppff+qdffaBr4k81mwYTqGHaODu2amfUcZ4XganGL1TO0hQLArUGiRlFO/r/
         MAQ4S0VpK4kjniQaVYUUMLlKRf4pCNNuvRiFFbqzQ4feJidLkE48vRzbEs0S8WRYg1Pj
         NldCfwkB9VvfdGsga1opArcKMbsvIXkFLG0i/C/SKcicHMtNMGRUABl3Y1SlIau916Eo
         cAdNlRafrsK3FoaQALqQFxl5QSFCJ+gvTx+pWOWOVA63ApMbFjA8N0lHLFvIXMcPYOoJ
         weuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716858127; x=1717462927;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YyAxoHilgrk8yTu5a6z1lAdisdBZ34CZ+2kOXUlJDWg=;
        b=hKFBeVXQJqJisx6MuyLzYIXP/41//JQJZQgwZVt9vMFhO3eLP6skn+jxO4MVtVhWOd
         DAl2nl77nOskkhwRn4En7wkaCkf3XC/vVxE3YIAVg5CLxq7wFU7ojwrUprwoA5nC34/r
         lHQ6ATYaE+bZoYi2StXQTVh6be5zybK/oGbA6wmKi3HOHxR6GtZJw0iDkx9la5ZEYxji
         D7Xh8G04QRQ2GmyG0tL//TeCD/+VyVii1UGOXAZbrSWQ5DoHE60UdhXDv8XKCt4uZTW8
         x8Apw7BMRVSTgRfXWirAx3u7jSGoCLb1jdTN3Fw/KYpcMU2OlCxHisEX/VYCl9cbMc7i
         27vg==
X-Forwarded-Encrypted: i=1; AJvYcCUyyMKQ1r4A0urQORt65m8RylQ2qRVIp/9tMzcZqNdi0J7jBzPpRuw7VhBmv4nCrNfh1gT36I1J7JYBDwm9fXpPtDLXBYsOUHJdegnMNjkZ8CQb
X-Gm-Message-State: AOJu0YzYHqmyR5fVmdtQy+ZJ2kEys5dgGiIKLw5obtevOruWJIbpNQXU
	6T4DX7gKxhcV2crX8TNHC6r8OWPIrXI5Hrs86c1aTG/1l4MsKZZZPeXKViuOyIk=
X-Google-Smtp-Source: AGHT+IEQ1go2DE2vSmAmNQguv151cKtPHWKixqKjqFT5FdpVV7xbcj5tzLUBy3oX+M3iCDABhJj8OA==
X-Received: by 2002:a19:2d56:0:b0:51f:452f:927b with SMTP id 2adb3069b0e04-52966ca6423mr6095364e87.45.1716858126970;
        Mon, 27 May 2024 18:02:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296e887a56sm819467e87.23.2024.05.27.18.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 18:02:06 -0700 (PDT)
Date: Tue, 28 May 2024 04:02:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [PATCH v15 17/29] drm/doc: Remove unused Broadcast RGB Property
Message-ID: <pybexd4vummb2mgn3kgfc52hcbsk7nb6eumizsoschfbevgevd@4i53cplvtbtq>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
 <20240527-kms-hdmi-connector-state-v15-17-c5af16c3aae2@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-17-c5af16c3aae2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_180214_443179_EBFE0AB3 
X-CRM114-Status: GOOD (  27.07  )
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

On Mon, May 27, 2024 at 03:58:06PM +0200, Maxime Ripard wrote:
> The Broadcast RGB property has been documented as three separate entries
> so far, each with a different set of values.
> 
> The first one is pretty much the generic one: it's used by i915 and vc4,
> and is the one used by all the compositors.
> 
> The second one is used by the gma500 driver, and is a subset of the
> first one: it can have the values "Full" or "Limited 16:235", but lack
> the "Automatic" value.
> 
> The third one however isn't used by any driver and documents the values
> "off", "auto" and "on".
> 
> It's unclear where the last one comes from. It was first documented in
> commit 6c6a3996f2c5 ("Documentation: drm: describing drm properties
> exposed by various drivers") which adds a number of properties used by
> drivers, but without mentioning which driver was using what property.
> 
> Grepping at the 6c6a3996f2c5 commit however, it looks like no driver is
> actually using it, and a quick look at the entire kernel history doesn't
> show any match either.
> 
> At the time though, gma500 had an "audio" property used right next to
> Broadcast RGB that did have the "off", "auto" and "on" values in the
> same order.
> 
> As such, it was probably a copy/paste or scripting error back then, and
> there's never been such property used in the kernel.
> 
> Either way, it certainly hasn't been used in a decade or two so we can
> just get rid of it.
> 
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  Documentation/gpu/kms-properties.csv | 1 -
>  1 file changed, 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
