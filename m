Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA42AC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 10:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EA88uE1Swebxl7nyEyDhorEPJN1ATQnFEWQGwGjlpak=; b=4cJTBgE/RFrcAD
	2vp7iikISwyLM9zLLp934P1/1hC6LoM6nVdaiD7cA4QxFID8NhhVaRyvNVe31jcezlcygtuv4GUmO
	lBdV8A6rIMAPvH3tJiuTLHfFVpkvwpY3Y+guwasq/Fi0Xjf4orilnI0T6kl7zggXb+kicfXr5Fs9S
	DAtZdAwSRXdu1T9m0pS/nhcJQ9GLDFkULLd9Ha9b9N8RqVdfXn8hUASeys4eGmpxHnWaPew4BEB/q
	vssVt3io7ED6eQlZovKsgJLpN6xQCZy0F94ltMpt3dUXjjgKfu4JDrdpEOjVB4NsznEfW3GeWUDZK
	oNnNhNk/9s/fNcbjwCKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAa6-00AQ5e-9e; Wed, 02 Nov 2022 10:02:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqAZv-00AQ0N-Je
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 10:02:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667383354;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lYDm2f88uo7N+T5CuGh2kGVIDaWbYMjQLaRZ3nU/m+Y=;
	b=Mwcfz5L0ulLeIm+Y2T2sVMkrbMzYnXrEZSPdikrHgMjcrwcQG3fACvszbCufoJjXQoYs7u
	dZbA2GEOnEn8MNhLyf6j3YAcxL1DV6xPfJ7EefGLtV001lrH/mEnJToVjvJcoQkvJl7sVU
	aucY35Pybi1KoSpJbjjiiolK8+Z7EVw=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-197-Ee9crgNyO02BO3sGtMwPdQ-1; Wed, 02 Nov 2022 06:02:31 -0400
X-MC-Unique: Ee9crgNyO02BO3sGtMwPdQ-1
Received: by mail-wm1-f72.google.com with SMTP id f62-20020a1c3841000000b003cf6d9aacbbso3545630wma.8
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 03:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lYDm2f88uo7N+T5CuGh2kGVIDaWbYMjQLaRZ3nU/m+Y=;
        b=ojlKFLeSXYeQRYylTrF1zdOHiZlPGQteQspgMDn2KQ4P9hHH0BV96OOivn53GF9PmC
         MAuOT2Bp148Vj97SkO6n2Sz2YdrZ/BpHHLRLcdFfFKiMYFZ8hGDv10sU6/0dTEl6apsu
         998XSDiv2iVrLchQZFEjFjzjf9Gu0CoxPcXqVLELCXT8MVSDYNTxGweteCo2wK1kIfFj
         uJ2CNRae8RaKOnWIyrdkqXitCzVdSxF7JWbTxaPBhnBqeQOKxur8O0TKfPLBlGUvE0jo
         uN6Hqn0Yv3YQyK9HxaDQlXGGs5iVaLCq0BmUAnzaHILuirokdZlm/N1eMEWhIl5tjUJW
         Kfwg==
X-Gm-Message-State: ACrzQf0qLj9XbXQjpnqMblAyaY2jL7ZGaTI5bQ6uKbKPbzy9NA2HItgL
	BwPi644kyR4LTWFZ8FLEg96r0bxEr/fT+AGH4rDMU0tfpNfDejjd9ld1EyGXRTLW+sWetZBcGGq
	GwsdhuWo3piaqKL4VkhyZaTStneWyhn3t
X-Received: by 2002:adf:f9cf:0:b0:236:6a26:c055 with SMTP id w15-20020adff9cf000000b002366a26c055mr14584881wrr.195.1667383350615;
        Wed, 02 Nov 2022 03:02:30 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6OHHkFmpcUlQhLx4VZSF/FNGP0hsrmpEExWtKIxFg2Jf6dmbAckk/gQVQTytU8dXpfU2B04w==
X-Received: by 2002:adf:f9cf:0:b0:236:6a26:c055 with SMTP id w15-20020adff9cf000000b002366a26c055mr14584846wrr.195.1667383350420;
        Wed, 02 Nov 2022 03:02:30 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id fn13-20020a05600c688d00b003a3170a7af9sm1564836wmb.4.2022.11.02.03.02.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 03:02:30 -0700 (PDT)
Message-ID: <68309442-ad39-36da-b1ec-680dd4129a7f@redhat.com>
Date: Wed, 2 Nov 2022 11:02:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 21/21] drm/fb-helper: Remove unnecessary include
 statements
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
 <20221024111953.24307-22-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-22-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_030235_730908_0EF81557 
X-CRM114-Status: UNSURE (   8.46  )
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
> Remove include statements for <drm/drm_fb_helper.h> where it is not
> required (i.e., most of them). In a few places include other header
> files that are required by the source code.
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
