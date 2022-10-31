Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ABF7FA3740
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9a9ZWKlIJ/FZzJB+X1g2SOCHF6RbnFIp/0W39WNeFeE=; b=nfyrA5PPaWnyzD
	D9Kfa3+T6504KcIGRrUEDHBswL8DTHb7ADR33rqi5TC12rgdkvbqyI7OEeWP80OuM8jVk1dATtmNI
	nx/K6ohdYSe9rITEgnDQzCosbaxgbHmb6t//oXwDCMCww6UPaa0xSH8toqqhfabv1JXNN+Kic81qy
	1tP6zIZ41sqnebPHZg/YsZ06DqOvFvUzvc/AnP5rGMIMxV+lpanERV6R16hsnpO+jRF45pHgWamXm
	5yasONKhdXiFpXfwo/tXj85CyX00LZdJHfmTtRZp+NuK5cO+Q0mykRJ7XW7A/5mYMhTEh4rbgO2uj
	PnX70sc9CXPnmqxqqPgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTT5-00BVWZ-En; Mon, 31 Oct 2022 12:00:39 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTSr-00BVPd-FM
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:00:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667217624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NYUZwRg+lRYohe3+hrEekpmCQsb4LiBLuZ4BzJljYVc=;
	b=VaH9J0/QiN2/JezPArWmLVSPUUYQw0GQAw8zLFwtOnNsFSgEg/QRLlS0XQfO3Yz/peKC5Z
	xmWCXWOmrj2gwls0NkmEbbp+NwnOefs5TO3wpt3+DncJUzOQYd408SujgSTwxycg0TNS/h
	AkPSDR1hENKdZkXFQ00njz64KdFaTRc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-608-w9H_scJ0O9i8LfaP4qrjzw-1; Mon, 31 Oct 2022 07:58:52 -0400
X-MC-Unique: w9H_scJ0O9i8LfaP4qrjzw-1
Received: by mail-wm1-f69.google.com with SMTP id i7-20020a1c3b07000000b003c5e6b44ebaso3360286wma.9
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 04:58:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NYUZwRg+lRYohe3+hrEekpmCQsb4LiBLuZ4BzJljYVc=;
        b=jks9lyUE1NC51JnVF6RAxuNe+0MhxBRLpLRjuRi9CLGl0aMSstpDW3P2nN9R8F0C9n
         dIi4i/SgvtBDL3HuiS8CDyKa6eL6++HuC8fPp5DAr8n87xf1NksUVGG0bznIwUwlaW0d
         UXcHg7TGig4uXM3qKLzYqEUifyVgoUyYyiWw0gxUz2tFtxZNhdcsuJ8CZDY21tBpHWte
         LPkjMVlAbQHUjG336cESkO6bdbGdjzC9kSb2B2HDcIxBhOHnq9qjj0J2fFh4rdjz48U+
         y6jXAFvmOcROgwaCAaIuDRfIJdQL26GaYvVsUmcUME0SfXMeVlluiDbGyk93dXFeRF2Z
         gN/Q==
X-Gm-Message-State: ACrzQf1oo9R2Q4Oiiyx0/FM2rFA6v65nk2dCNOj+n2SF1ECI/F5Q/kz+
	mfMrtS+Z0UsAXA8SXbldeb8EXGtcE0HSFJHWJyaX3rInm9EHE8DBhl81/B+fTMDSFNdYSPYPElS
	YrKmcv6YLAmHfPZIU9j4qt67aMZ7nCfb8
X-Received: by 2002:adf:ee46:0:b0:236:57e4:60d9 with SMTP id w6-20020adfee46000000b0023657e460d9mr7712421wro.208.1667217531297;
        Mon, 31 Oct 2022 04:58:51 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5NlG/EcNgth7sygR/Y2wmF3YkVg5o1INpxQYpcg5X49eIhA0omsq50HY00GhqtS98H3T4hUQ==
X-Received: by 2002:adf:ee46:0:b0:236:57e4:60d9 with SMTP id w6-20020adfee46000000b0023657e460d9mr7712386wro.208.1667217531117;
        Mon, 31 Oct 2022 04:58:51 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id cc14-20020a5d5c0e000000b00228d67db06esm7103664wrb.21.2022.10.31.04.58.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 04:58:50 -0700 (PDT)
Message-ID: <365e1467-7dc2-42b4-b985-53323741dea8@redhat.com>
Date: Mon, 31 Oct 2022 12:58:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 01/21] drm/komeda: Don't set struct
 drm_driver.lastclose
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
 <20221024111953.24307-2-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-2-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_050025_602325_1C9454C4 
X-CRM114-Status: UNSURE (   8.22  )
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
> Don't set struct drm_driver.lastclose. It's used to restore the
> fbdev console. But as komeda uses generic fbdev emulation, the
> console is being restored by the DRM client helpers already. See
> the call to drm_client_dev_restore() in drm_lastclose().
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
