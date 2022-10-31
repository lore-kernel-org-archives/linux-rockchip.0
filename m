Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5B59C38A02
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnYdjoI5YZ5XHkMi+LPnmxw7QCR8HEx5Z2bXN09hNUI=; b=W4CcEQO+xswlvq
	nBzv0Q5qKcfGjniUO1i60u9nHvyNwF+fh45lhDEkm1EsWJR4QEgcQpEsvH650y1qY75weiAkOk1Xu
	EMq+RMuwpBRg49LtkF2CYDNpMJscZLbfgRh/5G5oFB1ZQ9uw83BuEGnZZ+5QT9BQX4hbjt0+zop7q
	pUw1iKlUBjrCQzPHYGbL9+Rq1weQX2ntWSpAk7VZxZde5iTDZ9l4qvZBLc8ptvhhgxDoFwrLSDqYg
	f8KRUH5qsY7MI+aq+Kpr89TZdV6YZUAX8vOc6Sh1I+8qs6DkwCiaze5gKArFh7BPHZH0gKZKcjDx9
	RbnIfawnHkacqRdZpDsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTt4-00BftX-1Q; Mon, 31 Oct 2022 12:27:30 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTsU-00Bff1-Iu
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667219213;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/x9mAjb8LNYXXK+HVNHKFir+j3ZwIeSko/dKjp9YLmY=;
	b=ix4UqSivrS+3TmrqJngh9Wuy634vIPxWfegr8De06urmRh+KC3BLz1wWEK/BkB3iCqc8vu
	gtJJslchTxUYX/NdMMgXTJY5Dra78y9v0nXWDc6qPST27b5qmQw7h4hhHH0//sMLSO55mx
	Th9w6Zml9uDn8PlgN6zFTXW/0St4z44=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-218-UlmMvbnnOWuXTABblrgvOw-1; Mon, 31 Oct 2022 08:26:50 -0400
X-MC-Unique: UlmMvbnnOWuXTABblrgvOw-1
Received: by mail-wm1-f71.google.com with SMTP id m34-20020a05600c3b2200b003cf549cb32bso6177197wms.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 05:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/x9mAjb8LNYXXK+HVNHKFir+j3ZwIeSko/dKjp9YLmY=;
        b=hi7oI2dcd9HM+nKZIWVBKcKYc+qr3D3TNiDh/paCErMMsWiGFW45B1FgG56qLLyJjr
         XLDnZ6x84ogq1Q8bS49xPYIbExZrfDGmIPybJgvEGnaMcHtbLjomXNGmz5MC5LeupW+Z
         1RzWznx33pClLW/Mf0eoXpGyddfCRhVtgtSem0dv8UfyFcsbBDI0+aUA49UQaYPd6mNl
         fJDSQGm8NpSPINIuAXy0vBYFRK6N3lIwAlc3fAJgfOweqp4/DJo6eE4gz49Efein4OtS
         6vfL3iKCrGZrz7Cu/PRpWZxSygWeTcUwYGk5W9mz0+XhO7BsyFaT+w/7If+9ShOVwSct
         MVYA==
X-Gm-Message-State: ACrzQf1XvdEeJtWwaLxdMZTLaL3+FLZWhfP6rkvIG/9YGkpwf62dlQug
	hW+NqL/O8BE9bEaHDMvpN9DmqB6aADNpWH71za9EbPcqBqyjxB3Xz6A6y+9kmtIGZPYEBFPGtLB
	HxnpAZqrAPn9aHkmVlXEgSiN+uiXiRRU7
X-Received: by 2002:a05:600c:4f10:b0:3c6:dcc6:51d7 with SMTP id l16-20020a05600c4f1000b003c6dcc651d7mr7887416wmq.91.1667219208973;
        Mon, 31 Oct 2022 05:26:48 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4eCY6FaPESRi0FBsuwSJAU0ypknopcItEy1BimghpIISJ8Db9xrgTY3spCPjOXKZ6zCgaGzA==
X-Received: by 2002:a05:600c:4f10:b0:3c6:dcc6:51d7 with SMTP id l16-20020a05600c4f1000b003c6dcc651d7mr7887399wmq.91.1667219208796;
        Mon, 31 Oct 2022 05:26:48 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id q1-20020a1ce901000000b003b476cabf1csm4889352wmc.26.2022.10.31.05.26.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 05:26:48 -0700 (PDT)
Message-ID: <0d2250e4-dc26-2fc9-e429-0d43ef280e5b@redhat.com>
Date: Mon, 31 Oct 2022 13:26:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 13/21] drm/fb-helper: Rename drm_fb_helper_alloc_fbi()
 to use _info postfix
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 etnaviv@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org,
 spice-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, xen-devel@lists.xenproject.org
References: <20221024111953.24307-1-tzimmermann@suse.de>
 <20221024111953.24307-14-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-14-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_052654_718368_EC9BF135 
X-CRM114-Status: UNSURE (   7.31  )
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

On 10/24/22 13:19, Thomas Zimmermann wrote:
> Rename drm_fb_helper_alloc_fbi() to drm_fb_helper_alloc_info() as
> part of unifying the naming within fbdev helpers. Adapt drivers. No
> functional changes.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
