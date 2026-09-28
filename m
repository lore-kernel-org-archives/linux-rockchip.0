Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C195BCA5FA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 18:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WCD46p9wO8KVTenh1to51h/E919eFdnIAHZoHYr7Uo=; b=RZpJqraVOPmZNj
	3kZbgzi0CTPTKZust+1v8mI8F02fdjsrpeXlMwa+eNQfQKuWkh8g0/vunT9IjFmAmEcTil8OzwYGJ
	BGv6Z7qtyfgAUl1zTUcAM+KIatBIAWAEd3aCBAivLkjV81FB4O3gPfdM10JcGwZRmljSILgWD2dkF
	EY/CcpKGtpmd9hzaF+nnE+O2GQWj5Q0yEVnGsOVHqh3a93sVBvxV3akqAGwJ0P2yHJKAzMpwonRLf
	adcUdkh9OP0wCZBA3Qsn1GTLzvL4xQCgayv6WUq+KAXxgoNwJvvNWZxohnCWxuAfT1v2Q/58mbWZ6
	KTYgQ9gmeZgiHqz5Fb+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBFph-00000001Hnx-2wgI;
	Mon, 28 Sep 2026 18:12:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBFpg-00000001HnE-0ya3
	for linux-rockchip@bombadil.infradead.org;
	Mon, 28 Sep 2026 18:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Date:References:In-Reply-To:Subject:Cc:To:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=OFTht72VGYwnHy4rRuIiS5N5orHNND6LgvZVdS8G2Q0=; b=Z5mYhgFmew5NCe9bRMNjsOK8+i
	nOwwyV976rmTS6Ds9f3HC9Oz+qqVe4978JcGoE5ePbrGxI88e/WBFSoyFcpNkWDHZ6PUpecK6tsT8
	05xMSq5uFgIL/HMI9ekO6LGmPmz9WYof9LuCgbxqV4ZFDkwnF6xjz4nE06sDFJ7izhDA2HhA/tMhz
	CXgwzNeTd7gNrk9kLXhQigXeG4vwakgGkfXCTZtyrmX6SWpKr+gAHPps7lOhY/2+Kb5+yEMrQhX9X
	IJspt8toI7CW3sxbwZ68DddgvOcHzSM8eWrMf5IvLb/E7wo/5z/zEshbSw3Od/deFDS57QvKCHT2j
	1BThZ5ew==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xBFpc-00000001mMr-1S1A
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 18:12:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1790619121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OFTht72VGYwnHy4rRuIiS5N5orHNND6LgvZVdS8G2Q0=;
	b=VLC5I+2hxlnOrANjLtTlk7SYDE1xymgt/Tfqgw/1WEIz0cuXazFZTo/5G8B3RHsecGzmrQ
	WUeOy4B1dLoY2UlWr0HmoaETTkg63JfeiozsKF3ryyuxUGB/cBS6Mg/NWDb8pfCzslPv5U
	/NylUJJ7Zokc7B8RBsbomuNg7WFdW7A=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1790619121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OFTht72VGYwnHy4rRuIiS5N5orHNND6LgvZVdS8G2Q0=;
	b=VLC5I+2hxlnOrANjLtTlk7SYDE1xymgt/Tfqgw/1WEIz0cuXazFZTo/5G8B3RHsecGzmrQ
	WUeOy4B1dLoY2UlWr0HmoaETTkg63JfeiozsKF3ryyuxUGB/cBS6Mg/NWDb8pfCzslPv5U
	/NylUJJ7Zokc7B8RBsbomuNg7WFdW7A=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1790619121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OFTht72VGYwnHy4rRuIiS5N5orHNND6LgvZVdS8G2Q0=;
	b=VLC5I+2hxlnOrANjLtTlk7SYDE1xymgt/Tfqgw/1WEIz0cuXazFZTo/5G8B3RHsecGzmrQ
	WUeOy4B1dLoY2UlWr0HmoaETTkg63JfeiozsKF3ryyuxUGB/cBS6Mg/NWDb8pfCzslPv5U
	/NylUJJ7Zokc7B8RBsbomuNg7WFdW7A=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-381-NNwwv3-gPre1KisJz5eSPg-1; Mon, 28 Sep 2026 14:10:31 -0400
X-MC-Unique: NNwwv3-gPre1KisJz5eSPg-1
X-Mimecast-MFC-AGG-ID: NNwwv3-gPre1KisJz5eSPg_1790619030
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-49e635a6002so39972385e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Sep 2026 11:10:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790619030; x=1791223830;
        h=content-type:mime-version:message-id:date:references:in-reply-to
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OFTht72VGYwnHy4rRuIiS5N5orHNND6LgvZVdS8G2Q0=;
        b=eUc4KqRZ80kODq0xeFk6UtPUmvzINNDKVfcdSQrj6Jr6E8JTIboJ6WeLgUkNN7TKBG
         HjEZO5QRYhEfklC9MpgxtyHwhj4NlQMStzy8IE1rNXUIEQPnjpMNI25PWlQESenv8fWa
         BFxC07KN8A6tkaTLZkBXzUHX8oo1KlyhOoa+rkvASxIe6emQqpc8E7SJNNvn+swS0vtn
         Z4h2k3nP+8+30f0XWwUK9ky3NG6xtFYePuilClWEafpJr/WC0e21+CrS/qXLM1UGbhod
         L0K6VlQ4h74m/mcEqKBvsgU8yRrwz1hkuhLyTnyTh5Js6ykucsau5aG+kWj2BUYor2PV
         PkJg==
X-Forwarded-Encrypted: i=1; AKwUvBxQj9/SxFFGjEznqz+67GUSrvTQxqGHXLVHwvauOmMdLa+2K8msILemNHizQteo7mtDZBiH0znnaUO7FanriQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nODtuvvoXqfvBEjf4gR1LtZYztEFCOJ9TkEN9/JDNCQah6cQm2
	tge+ETD9UFrdJiIHFocb6h563LJXZy5s/0kX7uxn/P8+9s75FkOVWrnlFHBVAGIcVeEeYxNfAGF
	9yInRRohuUBEZhxd2P6+WxLDOB6JZY01VV4Iz/Z/FJwJu4Bq08TzEnevNtwkPOyEQu/rau6zSyg
	==
X-Gm-Gg: AYBFou1BiqINc3Tx9jcD9MZuch/IdW6nhi3xHHX5PASKfjRJTWRyD9xXJEiDx2r7EEO
	6Kk0bb+yTAVNqLRgT/nO4fo0xaxE+ns4yxLKodGjRBajN4QvvsUiH7C2gK6FwM6yARh59fT6fh2
	y3eJ3P0bfRg0b1qQ/H/gTwp14KENSzfpQxAJt1grTDKmGme6W4NSiob1oPB+20d8kn+bSiyTVPx
	8rKH1T883tg0864lbePHjd6bvDfveJDL3Xu09ZaFaH6SUk1VJaGSz2/HUhBMb1qK32/4os0dKl0
	8dQt+1kNjSI7jGq44YiZeTSzf3CXif1OQjgdhi5WmAdyqhWaOIzVcq8XGwg7XclTkRzJZQO0RBy
	uQ2FZbLpBQBzR38Tx7iH9kg1jjnW2Rsfl8OlFvOrhFizXGg3z7K5iuXDix9nqGR+ehA==
X-Received: by 2002:a05:600c:4f44:b0:4a0:23f:8b0d with SMTP id 5b1f17b1804b1-4a0023f8d93mr91712375e9.2.1790619030020;
        Mon, 28 Sep 2026 11:10:30 -0700 (PDT)
X-Received: by 2002:a05:600c:4f44:b0:4a0:23f:8b0d with SMTP id 5b1f17b1804b1-4a0023f8d93mr91712165e9.2.1790619029624;
        Mon, 28 Sep 2026 11:10:29 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a00cfe16a2sm9652415e9.4.2026.09.28.11.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 11:10:28 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, jfalempe@redhat.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch, jani.nikula@linux.intel.com, Alexander.Deucher@amd.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-tegra@vger.kernel.org, sashiko-reviews@lists.linux.dev, Thomas
 Zimmermann <tzimmermann@suse.de>, Alex Deucher
 <alexander.deucher@amd.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v4 2/2] drm/fbdev: Move fbdev helpers into client library
In-Reply-To: <20260928080323.23909-3-tzimmermann@suse.de>
References: <20260928080323.23909-1-tzimmermann@suse.de>
 <20260928080323.23909-3-tzimmermann@suse.de>
Date: Mon, 28 Sep 2026 20:10:27 +0200
Message-ID: <xlv1zex1dz70.fsf@fmartine-thinkpadx1carbongen12.rmtes.csb>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0qkGxt7CYyx_-Eidgd1LcSB_83li0IqkwKYlPEgmAlY_1790619030
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_191204_562338_AD7E0925 
X-CRM114-Status: GOOD (  12.00  )
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

Thomas Zimmermann <tzimmermann@suse.de> writes:

> DRM's fbdev helpers are for the fbdev-emulation clients. Move them
> into the client-library module. Fix include statements throughout
> DRM drivers.
>
> While at it, rename the files from drm_fb_helper to drm_fbdev_helper.
> The old name was too reminiscent of DRM's framebuffer code.
>
> The GEM support code for fbdev remains part of DRM's memory managers.
>
> v4:
> - fix the depedendencies from v3
> v3:
> - remove obsolete dependencies from Kconfig
> v2:
> - update armada und docs
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Reviewed-by: Alex Deucher <alexander.deucher@amd.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
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
