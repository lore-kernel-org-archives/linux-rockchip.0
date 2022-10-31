Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F2FDC38A02
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qc+lF9JtI8bGLZCnADyt9np5c4BdxJylMqChDY6HmpM=; b=wD4W2YFo3iejIc
	sOkQPvxynX3qLRbNstWk+sOx+Vu/faYHXBHfTy215QtfuVGIRT+CedoDmsEPvTMy8lP8L1h1427wp
	npEd4o7P4FBcmX8poDqXU+1z23v4/KxPiAjIwrWTxNilGAgZxNn04L2R8rdgkTpVAh2cPD7bfeCr2
	KuwSu+t1oNMXvJByCeMJuThnreoEV2wBRdwu1uTiX37Ug8lO0Vd+Wn3Ogz68oQb5bQ+r7fEc8yV3V
	8Aed9JRkJpWoXA1vuKxefdLHiKCVhQpBLPpfEF3TOKPIl06dO7rtMp7HVcUlMuCP/pfKNxFIhCGAK
	UezCqwofdwq/g7CEt5/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTjP-00Ba7n-0S; Mon, 31 Oct 2022 12:17:31 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTj8-00BZuy-TL
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:17:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667218634;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Z23uByta1RO7RusYzzGag4IvKSimSY8jEax7dgozF+A=;
	b=Wki74xth3H3FhtyZk5sw0JKwEJrGPqm+zyACffzefkZHAiSGgT4iGn63PZb3kPY9UMKBON
	z7+WMtfvUSSscZoRXf0zOb1J5bll/lSFE4Q+QQwK7Xg/OPoxGkK5j7c6gQaqgQKrstfh9F
	vTkdl9DNydx66Sx+fMIogrHWEdJwAmM=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-208-iCoWOwXhMqGyl0wSIj0Jyg-1; Mon, 31 Oct 2022 08:17:10 -0400
X-MC-Unique: iCoWOwXhMqGyl0wSIj0Jyg-1
Received: by mail-wr1-f70.google.com with SMTP id s11-20020adfbc0b000000b0023659af24a8so3007735wrg.14
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 05:17:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z23uByta1RO7RusYzzGag4IvKSimSY8jEax7dgozF+A=;
        b=GnzPVnk+IFl4GQ+n73WGpsSPwyemwmorrH+PNGNPDS4+b88aBsxLQLbQCoo3ZDnQlV
         Xjbx+9oG1/EU4OM3O/OZhpmkpQqKQS++BDLwZ0GBENLZQY5C9FqTWzkhyqRn6uwo0793
         4SzSMozsK95u0sBmuF0jSzgrtMhf3RvyL6CQbZ8N1zbx2dH7s1JzxpWtKNHoTAT6cFeQ
         HE7HXdbR7bS22xY/NgTaLysJaOmaCrbTg+lk4nO3wH/fGqipuazQMEAHXV8R2gkoilY1
         Qi+dM5GcGx+QvoDCM9lBUrYV/Kr7rEq6NRm1Kdn6jEHdxvBdJpbPUiZARnhwMnuccpk2
         UiTw==
X-Gm-Message-State: ACrzQf23U2VCgopdC5OZHKrEXtEEBw8JE+C1EoMVhWKipf6lEHmwOPS5
	whh9bpKKVtDpgY6uFB6EywP4v+EzGclh7ZcHEfkS5gj2bU9EeGKTSGx+4TIaur56SxBLnCbbaKX
	ThKP5f6LogFtg34ZgFoJjdgY+dpweCdQD
X-Received: by 2002:a5d:6da2:0:b0:236:7916:a9b2 with SMTP id u2-20020a5d6da2000000b002367916a9b2mr7921517wrs.393.1667218629384;
        Mon, 31 Oct 2022 05:17:09 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM67BGVEVFx5kckaS0oDiow+E3wYJXdivRHIvOOROl9hHnAsaKyVcMk8ZYE1a2HK4LSTJkXvEg==
X-Received: by 2002:a5d:6da2:0:b0:236:7916:a9b2 with SMTP id u2-20020a5d6da2000000b002367916a9b2mr7921473wrs.393.1667218629159;
        Mon, 31 Oct 2022 05:17:09 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id cc6-20020a5d5c06000000b002364835caacsm7133274wrb.112.2022.10.31.05.17.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 05:17:08 -0700 (PDT)
Message-ID: <efe0c7bd-0b14-b829-cc41-fda316952a51@redhat.com>
Date: Mon, 31 Oct 2022 13:17:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 06/21] drm/ingenic: Don't set struct
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
 <20221024111953.24307-7-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-7-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_051715_035836_D8DF29E1 
X-CRM114-Status: UNSURE (   8.54  )
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
> the fbdev console. But as ingenic uses generic fbdev emulation, the
> console is being restored by the DRM client helpers already. See the
> functions drm_kms_helper_hotplug_event() and
> drm_kms_helper_connector_hotplug_event() in drm_probe_helper.c.
> 
> v2:
> 	* fix commit description (Christian, Sergey)
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
