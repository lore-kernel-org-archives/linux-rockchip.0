Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1DDCC04FFE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 May 2024 11:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVjT6cyax9vWdidLA4M/BfOXRym0r40rEIzysB0J3Y8=; b=4yobCbfHi9+i+b
	e2esZEOFgqC9FKw1qBLeQd3w5vXfKsDUMSSoAhh5bUm5LYRNTl/wnl+aeG7lDAjIG8juvUXd9hFSg
	qOjbjRfmmwGMjMM7Qmpj/+mE/A1Q37JlperI9NnC9r8QAr/ZqOtQSRR/90piChDe91OboOXYyXuAV
	u9iYdvsOKc3Rd/EhnbMvUfRNRIYRYclxf6T8SRTWZyue6i86o9Mlo7H656XTrS4vAIFrFDysEh24U
	nbvGkn6Nmy5XAneNoT/AQ3rybVX8J6X7txH9dXrtEMg/6G7N45nFku9CrRMSBtAmalC80t8xl/dyl
	WW+2bZjLvo6DjTUo4+oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90nU-0000000EEUb-0VJn;
	Mon, 20 May 2024 11:03:16 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s90nR-0000000EESl-03z7
	for linux-rockchip@lists.infradead.org;
	Mon, 20 May 2024 11:03:14 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-51ffff16400so6609366e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2024 04:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716202991; x=1716807791; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gDt5zL9HqHL0LNTVxzu6RK9k/3ub+zUe1M1krBVr+UI=;
        b=bmHpPXdUSwJ6cBQ5LYw9062E5m4tONJNOP+8WyCY9lMj2tTa/5BSy1GxIVnWkW2qPw
         pY5we+ekpPcKqXZOKv7J+pX1F5ifyNFWFxLGV0PErRCgQ6yZ/vt4vSOE6kuPumxTne5K
         7AOU8iGoT4zuUlS1X5ZGkWjXqfR6mYCwBGfBgqdf4xWKz/FnfMgx+T2GF6J/PLNgcEgp
         6X/+Mpo4k6NdR5+t1N+kSAU7JZ348wr15JO4OwGCkRI2qzUNzrWVUzF1iqd/TOxNkFtF
         g240WPuB4eqtn4UKK/ZuowHQbtncIx3wxkq/64jkhwUlIJkOe7Of3kaYuQQGTA+3raC2
         gVgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716202991; x=1716807791;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gDt5zL9HqHL0LNTVxzu6RK9k/3ub+zUe1M1krBVr+UI=;
        b=q9ZPdyaWna1ard2Gu7zi1dgvwrzfaS2iQKAHUzVKLG7NVWmol66VrZSf2y5TIwjnQs
         1SJzbzZVKy4cbYLT9Wpx/5O+PYC9dwHB5UlLUXBXyPk0jGOLVWROmlUk952/ecnQJ61T
         8g05tyVGy5Dt4ZdHGioJUePM1AOlDKi2B1/ebjXJEKVBqRY77d6S5FiZimVOuzx9ioKK
         Fl2xOaMKFLQl0dYFh7GY6V6mWASlX9kI1pdKHMAy0Toqs3gfuGbuZoBTbHgU+JIYeXnC
         W3h6OqXVkPINidaG/RiSYPwrBPXqDY3SsQVn4v+MKNm+v1WHG1+6dN+QUMXO7p3lc/u7
         6eVA==
X-Forwarded-Encrypted: i=1; AJvYcCXR7tj0Y1whNUOvCPldp4PJ703XDUwBhSlVnxLXH+YurQzxofENUv5vxJO90lqbqJpwoFoq0k7f0TfX1uZuUNz1BvLgU0U+tNdEkJNKZ7mgO6dn
X-Gm-Message-State: AOJu0YyCc3QI3NcE62vqvYHE0z7H7Na0qUSmZTQ3Nh2hn6Lk0fYNXJPQ
	QqjjQfXRdKOZjCjU9jsuMcC13ct5CE0AtE3Y3IX2dUiJi99VH9bj13/CY0dpVbg=
X-Google-Smtp-Source: AGHT+IEACx6wIZ/owZMa9fgLdIORVLGiIVgPJ5CApXgwF8B9qZycal7wPuLLAhEdV381KLhAEa79fg==
X-Received: by 2002:a05:6512:33cf:b0:51d:9291:6945 with SMTP id 2adb3069b0e04-522102785abmr29386158e87.44.1716202991332;
        Mon, 20 May 2024 04:03:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5225132505csm3241339e87.116.2024.05.20.04.03.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 May 2024 04:03:10 -0700 (PDT)
Date: Mon, 20 May 2024 14:03:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/6] drm/ci: uprev IGT
Message-ID: <4hnd6bznqsp3ve7dh6uhz3ygs7yyapqcrainnqlhfejomcdbvo@htlnfpqb3jg3>
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-5-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240517092502.647420-5-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_040313_068645_1A555359 
X-CRM114-Status: GOOD (  10.30  )
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

On Fri, May 17, 2024 at 02:55:00PM +0530, Vignesh Raman wrote:
> test-list.txt and test-list-full.txt are not generated for
> cross-builds and they are required by drm-ci for testing
> arm32 targets.
> 
> This is fixed in igt-gpu-tools. So uprev IGT to include the
> commit which fixes this issue. Disable building xe driver
> tests for non-intel platforms.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - Split IGT uprev to seperate patch.
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
