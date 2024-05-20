Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D073C25B78
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 May 2024 11:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERi7chQWG0Gi3oiN3oOQw9cnBgGx//sIIAExihcEhP4=; b=e0HHcLeTLijh6I
	ND5Jkp1/5k2iWWfajtuhmKjITOX/O7Xk7DptnHj6CeXDs6YY3JJBBDYMms0wVLUj1Nn5QyzQYq3J7
	Mufgpra2b1msQyJQKi4l9lw6rYXOFRXk8C9/+3McC/1rMId2s4xZphyQfYwWjT0fraCCcqzh4U4rL
	q4af8eH+1BdAqSo63ql1ancKgxi20mDTVhdd8D3AyvV/P/UQbNCS+hEJ60xZlozhupy9VHKNQbuwZ
	ySZi84U4BTepa579JmjprPHDHoCgboAwH0Xz+0aVlPD53erQV6WbzDMTA8zX+CXvV7UQbc8VH7tZd
	bVS2GjHwRvcOF/EFiIKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90oH-0000000EElB-0Ezk;
	Mon, 20 May 2024 11:04:05 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90oB-0000000EEfh-1z0s
	for linux-rockchip@lists.infradead.org;
	Mon, 20 May 2024 11:04:02 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2e3efa18e6aso24423581fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2024 04:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716203031; x=1716807831; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TrnpWE7dPEJmYiT/RDr1bXYldnFvFFfi6hz3R8sA0hI=;
        b=DtdKg7zZcN0qEyrqTOpPFL5ybjFYjIfPoIX1HbgcSqafDpaK9Xnl/218l/iWwRmVbD
         FZTHryg6PFJjK+YSTa9sxCw6FGIdYuBy6aFgm73HgVHd2D5bupwBDBpVbBj5mCq3QN6N
         IljaTWlzf7NswvjaJPhXiJt+UysTb3J/HoPi2R8CEp2bT1ySgzfQfkFLgSqOT0bwxGLC
         uCelGNTpn60swXF5E6q0eXCS/ETHOKSuXWr7NlGkDEw/TnU7u585DysFifST6ESsf2Gh
         EWNFX17GmvA2+K7uLKqv0lOMYbQKEvC3gj36kG+ewPZ/mY6uOCx1AU5rit7sRPYYibPS
         hQeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716203031; x=1716807831;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TrnpWE7dPEJmYiT/RDr1bXYldnFvFFfi6hz3R8sA0hI=;
        b=Oh8VKgKMdsBGEIDuiQwNEW1/kHj0ye9twFkss5GTCboJlqidk/o0s5OoyqhkOifdej
         aXXi0vlkGbfb9pE2Mr5zGeATN0S+QsoTGZN5ys0LVuiJXp9bJqo/KIudOAgsUCI/8+hc
         1Od3TcL6bbq/DhEwFTKeTJaJanw/cPWxfPx9KSFkyM877dsDOSbFfEDGlD/Ca9cbyzco
         BpqYnOQnZhY5h8lZTusGTY4dyKk4mGZkDr8QwyI55dP7rBXrA1IL2Fps7R+N+Bn9z2xj
         eDlVjXizLlNoc2EKLC/JfM6NkumqjiS41/HV5KTOhRjSisAtv0mvz5ie/hJtT957p4fV
         tHzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXiYq7ocB2J7kEEL9HZXN+P3kA3DCfI3sGO5idOhMszEzgSgGt/oWpGibZJ4gNX+ZpLYdEbDWEslaSdK0FIcDSRQx6ocpnThWnTpFY0qd3W5eqc
X-Gm-Message-State: AOJu0YxObQ6ZKO3PSoxQzFFAuUJuMDotOT2+DsWnoXKT+xjfI5odOOj6
	oaVMOcv37U88jAmF1wA/eklQrY4gF9SPj/XKSGHWG/UQXCriPo3zlMcTAfsMVjs=
X-Google-Smtp-Source: AGHT+IHrPX1EE5HJbqIWKfZcM1kS0oKboB5I8XtzpfJrKSrhX0xiWZVBV8AXw8xry+E6Y03ekdH7bw==
X-Received: by 2002:a2e:9d8a:0:b0:2d8:611c:228a with SMTP id 38308e7fff4ca-2e71714cb85mr17078161fa.8.1716203031220;
        Mon, 20 May 2024 04:03:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e4d0ce30e1sm34354131fa.38.2024.05.20.04.03.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 04:03:50 -0700 (PDT)
Date: Mon, 20 May 2024 14:03:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 5/6] drm/ci: skip driver specific tests
Message-ID: <mxolwwmi5rjaevuwi7qy6rm5n62rhnpbi7hz4n7xbshmi2hoqq@5uzamkipouek>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-6-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240517092502.647420-6-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_040359_517322_0B5F2D9D 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
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

On Fri, May 17, 2024 at 02:55:01PM +0530, Vignesh Raman wrote:
> Skip driver specific tests and skip kms tests for
> panfrost driver since it is not a kms driver.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---

I didn't perform a through check, but generally looks good.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
