Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 441F5C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 23:11:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05363611C1
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 23:11:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 05363611C1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7buX6TEsrPOcjMeB/tPQccvohW2qE5CBjNURC6RnY/Y=; b=n1xzTeS2kqxTb1
	L8/pJRHeF63r04tUPqWo6Jw66sH88xTKpjOaw4fETdsuEURdtxFCIDNmtERzYbqZNIwz6p4LLjHOG
	sK6BAj2jqPy2YTN9PsTMmcvIwqbmDADHM/hAuTKzUoBUUcakV+CUSIMk573+kedX6hsm979B/cvwK
	t4viLvSVoUVCqiGDTs9xXdhRfUyc9TX5rk5zI3GSpIJbD/E0xrQB/UwEonr6kRpWECNIViPlnFYX4
	PjLThxwJhJt181lyfFrcHcXVK8NpJtiIRLZDhvCDYQ3FMesnLFSUrK/u59my7mXcUPZz9MnWClU3/
	lqH28/XYlAbAmoRzE2QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mj8Mo-00CRTB-Di; Fri, 05 Nov 2021 23:11:26 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mj8Mm-00CRSd-3S
 for linux-rockchip@lists.infradead.org; Fri, 05 Nov 2021 23:11:25 +0000
Received: by mail-pf1-x430.google.com with SMTP id k2so10129717pff.11
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Nov 2021 16:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fe30gTf1JSH+qni1elDo831NVGG1lJluzq3OLW/dWIM=;
 b=p5sJJOrDEYqV2YTQNzrstft63jCJWAaO8A+cosJrR/IlYDqk32+qiBb8ydvv9Sf/u6
 ztJ+Zv8n16UP7+B1acBMOC36VXH3xt5G9G4ePa2+gxgDVbK593fo3+vwUdkR6xGuVOD5
 pkVsFhBeVvMRFm3rAzAHuZYUDPIhzGKsjYrLn69dvTa9TeHgRomfF6sIljreV+xUTAqh
 ivqy2YdZA5VwG93YrS3mG4HK9tTAwo5HeygmnUA4GlgBklx0TsR2hVxtMC+ClzvWZz6Y
 IkZAy8wrUw0WstgzVJ/I0U7naYXGjdloseWwDUcIZoshEo1ceW3nOA7FWx+jIIgpLBnt
 7Fzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fe30gTf1JSH+qni1elDo831NVGG1lJluzq3OLW/dWIM=;
 b=z8yOICYwHrPiJ0kvk5l1EZe8ijb22b+ScR4Etl0zSkPyoKctE/JrBEzU3cUBwiLz1i
 B32R0JX9KLa5Tv2UgXwxmxzw8uMRjtpOpshNVhmR4MfvMY+PY1GpemVEHYoxrT9aDeBt
 LKTdtiqAgeORJKD78Z9LJKOP6aJjPyJwZOfMgRNg+Wp+ZLsYQftMLJOAjyCLTBU/Ov/9
 Z6aS/LOLC8V2fPBGuM4ncUs44l11xyGZ4GMJCaduhQVGrnvN42Dma9tc/8NiMSrxhyI3
 39x+5JRxFFhdpb/MBuzLTw++t6Mycq2bsquznZjh6NIeWr9NlGjOnfQPnfCgCikZ1OK7
 C3Ew==
X-Gm-Message-State: AOAM532qL46pJ6ky4R+yE9jHrzv673LqglbpHZXANlaNqrxTeaOElrSw
 S+jTiovrXUsVSlntiSrXuXq5GiQ86wc=
X-Google-Smtp-Source: ABdhPJxHEL9UfKqPpufsLjZ2IJT4l8QtchzUvFFL1+WAcE+uvhlq2IyLoqu4RJJf9RwCHrHW6clN+g==
X-Received: by 2002:a63:b957:: with SMTP id v23mr45380131pgo.74.1636153882737; 
 Fri, 05 Nov 2021 16:11:22 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:837c:e765:475f:22d3])
 by smtp.gmail.com with ESMTPSA id c3sm8479607pfv.25.2021.11.05.16.11.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Nov 2021 16:11:21 -0700 (PDT)
Date: Fri, 5 Nov 2021 16:11:19 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Doug Anderson <dianders@chromium.org>,
 Rob Clark <robdclark@chromium.org>, Rob Clark <robdclark@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <YYW6FwSeNMK25ENm@google.com>
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_161124_191702_BE887581 
X-CRM114-Status: GOOD (  18.03  )
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

On Wed, Nov 03, 2021 at 04:40:17PM -0700, Brian Norris wrote:
> A variety of applications have found it useful to listen to
> user-initiated input events to make decisions within a DRM driver, given
> that input events are often the first sign that we're going to start
> doing latency-sensitive activities:
> 
>  * Panel self-refresh: software-directed self-refresh (e.g., with
>    Rockchip eDP) is especially latency sensitive. In some cases, it can
>    take 10s of milliseconds for a panel to exit self-refresh, which can
>    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
>    with an input_handler boost, that preemptively exits self-refresh
>    whenever there is input activity.
> 
>  * GPU drivers: on GPU-accelerated desktop systems, we may need to
>    render new frames immediately after user activity. Powering up the
>    GPU can take enough time that it is worthwhile to start this process
>    as soon as there is input activity. Many Chrome OS systems also ship
>    with an input_handler boost that powers up the GPU.
> 
> This patch provides a small helper library that abstracts some of the
> input-subsystem details around picking which devices to listen to, and
> some other boilerplate. This will be used in the next patch to implement
> the first bullet: preemptive exit for panel self-refresh.
> 
> Bits of this are adapted from code the Android and/or Chrome OS kernels
> have been carrying for a while.

If this is acceptable to DRM folks I am OK with this from input POV. The
only think I would call out that the callback is executed in atomic
context with interrupts disabled.

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
