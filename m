Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 258DEC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 09:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lh2h9v68KkTBZhCvLglBVZNI3KoqZq3VVb8yhTU6xY8=; b=4Q/Go3Qq7vOk/4
	+6ian+6mET+wX4e4rphi6AmlB8Cx7wFog6OmaEqiZvXkOE0O2h6ZkiKhkYiiTuGw0Zf9TtftLGIWH
	ev97SEvnJ5R2ccscy3y5Do8X+mmo+O3cCQLqWELZ+ldX1Ifo8erFk6k9NATBKnqh7FsuF0g2DCit2
	ppcdrKBuCmmmePJBaUr8ye6tAl0av5uW0x7ZMFSPXM+IwQWpC17VGl4Twg1nhoByYVn636vzXXAkE
	8KNC2AO/pEx56XfLCHhGUjSl7C1t/YVk3zz6zLk4XGhxbPaIgaCMBW1UCeZgcoaQXa9XrvDlCTcfH
	1abv+cKD8IY34R8FzwKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDfd-000000040en-04CV;
	Thu, 02 Jul 2026 09:25:21 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfDfZ-000000040dg-47b6
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 09:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1782984316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=4zTpKuSZrhsxPxzQIZfaOOpTGT1+k7Nb+QD5Zs9kC3Q=;
	b=dq6TKe1tmJPNYt93CyYypKbmUo1wecTp37NGsCDX4tR8DgCBvKuWLBiDXvth4h+R+zzJBu
	p6agMB227/JKimXugX3coSMnqGlDBCdypN7Rk8ep/PSNCl7fUCsDjPQ9bOL+oF7k3ToHdo
	d7D4jxXwNoH9/LGK9lrxZKjYln5l+bI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-682-nWzySX7ZNKuu0zxtHYm58w-1; Thu, 02 Jul 2026 05:23:45 -0400
X-MC-Unique: nWzySX7ZNKuu0zxtHYm58w-1
X-Mimecast-MFC-AGG-ID: nWzySX7ZNKuu0zxtHYm58w_1782984225
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-49260d6eaadso10405075e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 02:23:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782984225; x=1783589025;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4zTpKuSZrhsxPxzQIZfaOOpTGT1+k7Nb+QD5Zs9kC3Q=;
        b=g26Z6ymxZBjbhAsA/h2TzjanVjWRsvWclTT48tC9JeHvd1Od6TXHxolCDZGujLFHOX
         wqA2AOi71KxaqiSJc9zIxDGMWV9SGxoF9u9IProRxOjumer5Ps7K0h+99rrdrSh7rFfh
         n2BVS4UDIch25m73wNhtFwcGi5xrE1Vr1KELQ3Xjrsc7A469IDVCmp3Vao3YQqBkZQlq
         oHQVA2x4byTtYYN040riVf8CjDrBLBc5gx9TNuwZfIJkE9TVFmuZGybnboucki5d0E60
         p0NI3TJfOhnyKqZydioaKVW+fGvtLS6XjPKaj9FREajT4vy+oscVhc9yJvEqpmsklYyv
         EirQ==
X-Forwarded-Encrypted: i=1; AFNElJ/Ni85HGZWZkqfgicb3Vj5xh+CQaJIuE9Mjik/lnNEHRAJvhuU5ZDzbziYLNC+hn9lqvGkGTg9S3USjjuYXAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwvbXIcsNh8oCBpRYbUknSr3+jX02f9BIIVJn/HoQwvGNEzkJvp
	AEiuN1P5lAkNStL3xGPnyUMJ4llfg3MunPFAPew3rXuggm0w3WGPdv8wAJlXko9JL2aEYXEtBQZ
	JjLqy83FPBJGKEzisTpHMNWQvzu3EVuRalXxlidc2Anzq0c4d2f1UGUgdmorkq09dq90DIrTO4Q
	==
X-Gm-Gg: AfdE7cl57USWly+43rNiN9JvkpQTeGhB3EPj65elnEUMhFbMw6weja18F+lEikiZXaI
	8P/O/dJbmKhD4Lun0CeqEj7S8ixhRtn5HGiS9VInLphU5YzzbbiVIKRKNvinAanp6rvOY835mn0
	wPD5Xgil+FkKPko1hytI9Rhh/uaXXXRtMA8AFYIbpvbRvbCES1WgLKsjyfZbv7xPiR3PueBzeNK
	f2T+HVjfHSS0ZWX8AJ7iUZ9feAHJZJWU0gIEUi7ZNJ9Ymyu6MDvbP2nPLF5aIF80rZMPbuXFg3A
	kmb/yXqC5zBvacFmNmQS4UJ7iGf3qwFtRx37OwiICMqxNXir9YOThw2IXxp3hHtrUmepHkyBIg8
	5clDiWVqpXcbWMowR9A9ahzUGOItLh/F0r/lUT+dZmHY/QfBjNUmU0935R96O4l9lTiN6wQ==
X-Received: by 2002:a7b:cd83:0:b0:492:3e44:214b with SMTP id 5b1f17b1804b1-493c2b4fff8mr50363645e9.13.1782984224684;
        Thu, 02 Jul 2026 02:23:44 -0700 (PDT)
X-Received: by 2002:a7b:cd83:0:b0:492:3e44:214b with SMTP id 5b1f17b1804b1-493c2b4fff8mr50363325e9.13.1782984224177;
        Thu, 02 Jul 2026 02:23:44 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493c6368f89sm30642055e9.8.2026.07.02.02.23.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 02:23:43 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Diogo Silva <diogompaissilva@gmail.com>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan
 <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David
 Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Diogo
 Silva <diogompaissilva@gmail.com>
Subject: Re: [PATCH v3] drm/rockchip: Remove dependency on DRM simple helpers
In-Reply-To: <20260608124018.480365-2-diogompaissilva@gmail.com>
References: <20260608124018.480365-2-diogompaissilva@gmail.com>
Date: Thu, 02 Jul 2026 11:23:41 +0200
Message-ID: <8733y1d9sy.fsf@ocarina.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: nRExkA4w0gfKq9qCtLA_OOiNa1cVo_vzsPMgma9r1_M_1782984225
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_022518_087950_65887565 
X-CRM114-Status: GOOD (  11.51  )
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

Diogo Silva <diogompaissilva@gmail.com> writes:

Hello Diogo,

> Simple KMS helper are deprecated since they only add an intermediate
> layer between drivers and the atomic modesetting.
> This patch removes the dependency on drm simple helpers from rockchip
> DRM drivers.
>

I think that would be more informative to say something like following:

This patch removes the drm_simple_encoder_init() helper usage in the
rockchip drivers, by open coding it and using the encoder atomic helpers
directly. This is a step to eventually get rid of this simple KMS helper,
once all drivers that use it have been converted.

> Signed-off-by: Diogo Silva <diogompaissilva@gmail.com>
> ---

The changes look good to me:

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
