Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 634F8FA3740
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G6hVClkIXA+HQBh1gMOWsFeybWbN9GskAtfT9lSe7us=; b=ya5yyuO8hwh3Xi
	p2k6RigU7cgbkuB/aTuPrD7NWJXHvlIwA2iQVCxRIe/X2NyljRbGEe4Bnt6uAN0MClbKnoPYD1jWO
	c7NpoOzV9GsBJcgAuZvlKRJRXfBdyL6LyL/0/w/IdH7nyY24bDm7DW39GRDGkykDASNZ3q8I/ZVh4
	QeNyWxlDQz12NYkz5mK4/XZYkqARgmBKbqgvbhZWYnhyCGytm03b51TRpbT/3fddiQomvwjNXdpg5
	zCBEiriJbeFVsSq0y9BeVz5ZQcJtxDKxff6yPdcPfkOfa4n19/nlij6DXMI4YwwKiQKqV9D+T2SSh
	drnCjN4KdEIMyb16swGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTlB-00Bays-0p; Mon, 31 Oct 2022 12:19:21 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTl6-00Bauo-Sf
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:19:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667218755;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=riNVOBu8e2pIZERXBmAvmwAOPdhd6MsYxn78jTBB4dE=;
	b=gg/2ByygGDcxSRKLai8PDQjiZkz98rsLxalrp94fobkRrs4kRiUscU+vquloOnrNPerIR2
	RTt+ugFZ6DdXE+yEDnSTJwVfWSyCctVUWQ8gl7qhPRHT4+q7DFYXQwT5D4O9zYK2ce1GXL
	nU03p8BID21g9Hh0oanZuYSSb3Sd1NA=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-402-3w_IfvXoMPmgRZ-mTMURiA-1; Mon, 31 Oct 2022 08:19:14 -0400
X-MC-Unique: 3w_IfvXoMPmgRZ-mTMURiA-1
Received: by mail-wm1-f72.google.com with SMTP id f62-20020a1c3841000000b003cf6d9aacbbso1024023wma.8
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 05:19:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=riNVOBu8e2pIZERXBmAvmwAOPdhd6MsYxn78jTBB4dE=;
        b=kXg4IhN4ZQBStHWmvQgPwxFP7YkTKK1Pszbf9goI2q2ZDPdKepylw2Mwrsy2VX9QfD
         LgsmoxPzKTdIwnS4r7FCbuM/l81bVbLe2blamVbK3M/GJt0zkqEpiStlxGAQ2oCilQLg
         XxDf3WOI3j+edRRwleRFuOTVKyRdwFDJf9ePMeeMmMO3sl9lV5oqyVcs8NWIoUL/R6BD
         ovcb2VfAcMkYBIgFr/84yDnPMOFyqeNDmSnjzkmKX3nqLKrXB06Umkp3GPCEF2TlUZlh
         9O5FOPuD4nr0Rbqza3KVugJTzolvHxv8wEXidLPwMVOYQALa9lMcP1ivpRbGXTST1Esi
         Mx3Q==
X-Gm-Message-State: ACrzQf3leDSk1Aa0CIcsnZvd0VxWQ+kVvcG1k62qpdMJdoUMKWML7PYw
	DjUUDyScTjnElQKSsxVVigR9BLV3vAGjjS2g9Gtx7ldCTxf8LC1U2F+EaiBueII9/7J38ERh9fY
	TZq44WCDckFgAC+DrCXMstodfZ/ReBWxF
X-Received: by 2002:a1c:7405:0:b0:3cf:55ea:6520 with SMTP id p5-20020a1c7405000000b003cf55ea6520mr7948726wmc.46.1667218753687;
        Mon, 31 Oct 2022 05:19:13 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4oPDcyHgSUP9i1GOihR+fx3MXqkZeIX2xB6yE7P9f9dsxB6V14E0IWVQPIhFCjpfp7XUuGLg==
X-Received: by 2002:a1c:7405:0:b0:3cf:55ea:6520 with SMTP id p5-20020a1c7405000000b003cf55ea6520mr7948695wmc.46.1667218753455;
        Mon, 31 Oct 2022 05:19:13 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id x11-20020adff0cb000000b0023660f6cecfsm7060089wro.80.2022.10.31.05.19.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 05:19:13 -0700 (PDT)
Message-ID: <01f85874-6beb-c325-8b94-7a7aeec30d5a@redhat.com>
Date: Mon, 31 Oct 2022 13:19:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 08/21] drm/rockchip: Don't set struct
 drm_driver.output_poll_changed
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
 <20221024111953.24307-9-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-9-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_051917_060974_9C874A04 
X-CRM114-Status: UNSURE (   8.65  )
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
> Don't set struct drm_driver.output_poll_changed. It's used to restore
> the fbdev console. But as rockchip uses generic fbdev emulation, the
> console is being restored by the DRM client helpers already. See the
> functions drm_kms_helper_hotplug_event() and
> drm_kms_helper_connector_hotplug_event() in drm_probe_helper.c.
> 
> v2:
> 	* fix commit description (Christian)
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
