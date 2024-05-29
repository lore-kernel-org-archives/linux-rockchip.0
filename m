Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EFCAC25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 07:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwB7D0oYnuIlEyi5wbs2uPabn+LYKb/E1FS9zqouw3U=; b=PDzfDoE2KvJQeR
	Od2tVLTn6OeYjRWd4lH0he3TQ/ucK4mj10CdEZOHTTeFLjC6asqeqXQHmiCmwuJ4Y3T0lvLtsv97c
	7ra6Fo1cV8WrhD4IM5J21FacreCsT97R7E+0EaTAfYCqzvpt0dmr50jTd+/n4atG8CJEPI2LWyaqX
	tvVO13mBoofcLyXdOPpun+5RmOr7WID7nNNYUABqzOppaC3HdOy2TCTB+u5eZUj9Ikr5HST8U0QJR
	O7+loSwkTXslUof/+9MHbsme7baT5nOlTV/fbF5i2SAv/B79IDTk5Eo4YMuCxhuo7b1Xy+D4sJTBX
	wlU0zCfm+1+oVFiIZaXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCDzQ-00000003CD7-2AMk;
	Wed, 29 May 2024 07:44:52 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCDzL-00000003C8K-3Mzu
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 07:44:49 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2e9819a6327so20696591fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 May 2024 00:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716968685; x=1717573485; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=S1XyMvug7w7dhtxZdl8ZlGvff2YgfxxUHgfNNPJEirc=;
        b=qeAuhxtLQf3IGRqUpRGdLEFUQn2lQ5R8F97dw+wddye71g7Rb91pzXX85eZ4iF6/nk
         ZgduyBXCfMpj8TLiYowjWFib39yv/v0FzfALw18NmgcuT5vm+Bx3t7Zjt8o84NM9QxrI
         WN/8x0FOfAUB/4uq4+h+1jXYFKCpyOk/V0Y4auBnvNsskm/VV8QA/+0KMLfZ/a8d3KKH
         c588euE6nf2qCHMj2VQ1Lwp8N0DkqIeH0KSF1bY5xO8jWURe/m3Y4sYZQbKJOEXUa4jB
         Yfq5GmSNR34Ckw3ClJFver6hyPKGD8+tUTuxp/AVCrtguGwrkgfo/4KwIgSP2JK8Lz6D
         yuYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716968685; x=1717573485;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S1XyMvug7w7dhtxZdl8ZlGvff2YgfxxUHgfNNPJEirc=;
        b=XDJv+BgWz8wJZCWtvDxlQPt/KjzW3AgGJG+lBoM5HscSggBu7kogFfFWBcgwxFVtt/
         TIJCf8IYO3rn3BVC2U61hjQMmzx/D1wO49Y7MY+aaZyIymjpiqqT87HARpSfMlsuoxfx
         V0AoeSTHhbjApriTRGlLGPwtX5yAhRQHuOmR6RoTUYYrREIwwBTclw9eta6x/An0cnaG
         wSgQL+sxtYMIyRGR+Ke1mISRc06UH+BvjNW+aTgwVJgNGUcppzSVMfM4MaOrBZ3JCC7T
         xysVVfIxVcK7xAEWH307LNWUeu3QbB+b8bYkmShk8LqH1thV51bCGVy5U85buek7zYvZ
         R14w==
X-Forwarded-Encrypted: i=1; AJvYcCUamQ9gSb6wxos7C3EIGBeIOUoMYqc3DI7UKba2Wh60MuxypBmW/+sMGGZZN0JuyCuYUnvHddXmI1KWr3nXgS4qpIJgApchSqMj6mcW6VqpwS3D
X-Gm-Message-State: AOJu0YwB2V1CxCMbaFiu8pRx806fr9/miIhU4M5wa8Fv3I/QxqHP4z9P
	tS404HwoOuhoSITdN2G48lRkyUeEVjAomp2DHsFwdL0u7QBahp6r2pxuf9CO9vk=
X-Google-Smtp-Source: AGHT+IHWA2lvLG0B0kntbUD/V5owakoa3EW0tQI6tq3UwCSFqELYaCxoJok/0cawUBov1/1KRXreEw==
X-Received: by 2002:a2e:b05a:0:b0:2e7:c29:dadc with SMTP id 38308e7fff4ca-2e95b24e06amr72686241fa.34.1716968684582;
        Wed, 29 May 2024 00:44:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e9816943d2sm6297271fa.61.2024.05.29.00.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 00:44:44 -0700 (PDT)
Date: Wed, 29 May 2024 10:44:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	david.heidelberg@collabora.com, guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] drm/ci: generate testlist from build
Message-ID: <nsamdoevg6fhop3otikwsmu4ga6ysyrg2ogxbqhw3sqg2nbqq2@n5xbqid7ltiw>
References: <20240529024049.356327-1-vignesh.raman@collabora.com>
 <20240529024049.356327-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529024049.356327-4-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_004447_902959_DF2652DB 
X-CRM114-Status: GOOD (  11.71  )
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

On Wed, May 29, 2024 at 08:10:46AM +0530, Vignesh Raman wrote:
> Stop vendoring the testlist into the kernel. Instead, use the
> testlist from the IGT build to ensure we do not miss renamed
> or newly added tests.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - Fix testlist generation for arm and arm64 builds.
> 
> v3:
>   - Rename generated testlist file to ci-testlist.
> 
> ---
>  drivers/gpu/drm/ci/build-igt.sh  |   35 +
>  drivers/gpu/drm/ci/igt_runner.sh |    9 +-
>  drivers/gpu/drm/ci/testlist.txt  | 2761 ------------------------------
>  3 files changed, 40 insertions(+), 2765 deletions(-)
>  delete mode 100644 drivers/gpu/drm/ci/testlist.txt
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
