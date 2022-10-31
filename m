Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35465FA3740
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 12:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Wm+8mHiVGQ1IHbi9wLstWbbRjTUNg14Wwt+3xbHWPk=; b=FYYHgmHipe8CYw
	RpHU0oxv78W8iZT+ONDbe03EF6kdq/qfCCuf16HafapaniUTugbwDVdBiFYly5xMliLQUuB8SsLKx
	t6l354zyEpw0YD+AiYlEgubc4u07azwRkvsUfAPi6LpjffXyNJaZGXaI5MWyENhdxE5toEPWVhqtE
	dUskfJbFYsiQbrG6N2yK1Bl9P6UZxC28p/zbrpFwiCDHolZAw4I6iomDywEIy1u1/66714MTtXco/
	RQfHjX9SqCHoBBRjc9yHUoVcPNJtbYp339LCDwMCWVPNxpt0sEXf2zAfC1C+eND6dSfECK06J9AOG
	7ZZnjfedk1U/VcRinVpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTnl-00BcnT-9i; Mon, 31 Oct 2022 12:22:01 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opTnd-00Bcio-Mo
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 12:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667218912;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Sz8PAZx0cLc5RAaRO0sQR4MZQyCy7VtrjJT7yq4jHuw=;
	b=dtQVGo+IZpIyUJY4zXXEG/jalqF9M1pfn2IdTmrz7mYYRpF87IBrQkBlR5B3RpuR3G+aTI
	k40MuyKuCdqnmW1jG7fFCXifOR3s3Ok4Quh2y1JHM0a5/wUppWpI1Ut0YG88m5KLySqOoG
	LhUFfBKyizj5dA8s/Vl8MiAhsJnE5hc=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-198-QlU9HnwjNtW97s7NMRRpKg-1; Mon, 31 Oct 2022 08:21:51 -0400
X-MC-Unique: QlU9HnwjNtW97s7NMRRpKg-1
Received: by mail-wm1-f69.google.com with SMTP id h204-20020a1c21d5000000b003cf4e055442so5237086wmh.1
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Oct 2022 05:21:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sz8PAZx0cLc5RAaRO0sQR4MZQyCy7VtrjJT7yq4jHuw=;
        b=lRY5QdBU7K3jo/jWBhfdTJnQKHu4LPaNg84Dqam+LAGlrUXcOqMyYcDYIHCQ+usvT5
         7fJYt202T25P4MJWWmm4DT0DGjbSsbkGSzZD/fUp5KxCVxvagQ4Lbo4bytntlQ/SIxYk
         MzJs7C9CG/9HkoHm5JcB7ChOdYLeZvpg4YAgYpnOsw3KXHJNbEhkOfbCHciFe6ypXpcW
         iesFjvhYY340Cu5oipgJ/UMLFB1kCik+mHj+/dIN8+UVcLqGGBNQU7Tr1xYALEyn0hoR
         kr+O82cApQ2lw4P4+jtzD0ro3RTXHpcRzxPQ1APiQ3/nvYuMIqFWDBJjCg4g10FiAweM
         EDnw==
X-Gm-Message-State: ACrzQf2uqJLPHNEJNfQ8SIcw/MZ7a39QBuRdCUtJ42FwOBshYnTEf/OQ
	Au50stM+xHsFOyvYAXK/VnZK2jzGfpy8cmsQxy47XmDWT0WgL4jAzvMNLmA1qDBtr21AI3zAXHc
	Nb3ZFEa+PIW3VJdk/FSwNc/8TZ5gJpi2p
X-Received: by 2002:a05:600c:3c8e:b0:3b4:d224:ae27 with SMTP id bg14-20020a05600c3c8e00b003b4d224ae27mr7935988wmb.187.1667218910339;
        Mon, 31 Oct 2022 05:21:50 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7kQh5/EvsJvI9K3W2EFLXezwgTMZr8BgFr4Dt+IxgUiTtboeKKAu1FK4Es/7ETyez8XSTV6g==
X-Received: by 2002:a05:600c:3c8e:b0:3b4:d224:ae27 with SMTP id bg14-20020a05600c3c8e00b003b4d224ae27mr7935971wmb.187.1667218910155;
        Mon, 31 Oct 2022 05:21:50 -0700 (PDT)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i4-20020a05600c354400b003cf4c1e211fsm7421692wmq.38.2022.10.31.05.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 05:21:49 -0700 (PDT)
Message-ID: <e9192382-f04c-4ebd-ca1c-b2fceaa29f86@redhat.com>
Date: Mon, 31 Oct 2022 13:21:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v2 09/21] drm/panel-ili9341: Include <linux/backlight.h>
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
 <20221024111953.24307-10-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221024111953.24307-10-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_052153_866453_F76F4CC8 
X-CRM114-Status: UNSURE (   6.57  )
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
> Include <linux/backlight.h> for devm_of_find_backlight().
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
