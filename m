Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E511C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 07:39:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C8096135F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 07:39:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C8096135F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lNwbQVPY4KoPChox1iyo53gpVl9PGg5/NNagLj97YwI=; b=FzL6F1Sx6jlMzezjlmZjWTt+/J
	gjL/HKBjB1yQsTyHOd52r0J0IfmKG/aPfDiHG3AqgbeVx3MwMCD2MRYr8i2zPxXikuj94XedvZLmE
	fndpLPX7pTbGZgZ6MT2WUabWgZ0Z+cGr4a9d6cJTqIVtpImDibxpDdUNxOZDEav9Ltmi/jDkA3IF5
	uzTluWmJlr22r7/EAOkHai311ID+GwPH7Ts7RHKovQm5h/VZpbQxE1AqxnxRcTppUde2Nr+kgEt1l
	l5jJXaNF3UaDXOh/tkSGav0S8fZTPGgsfdc4I1hN4IJ7PzLgsrddi+vsTZZw8bBhNoBId5jENX0rJ
	OyzKswqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmAbz-003R9l-82; Thu, 27 May 2021 07:39:23 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmAbh-003R11-Sx
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 07:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1622101142;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tr9Om/qHWPld9nvtg7I4AilQwhNjlhgHg8Y3pfskr8o=;
 b=aIbyY4sL43zefVYba5yB7atrEgvHRxQMKwuGMBgS6rrwXQOzZYliMqFlS6JK3G3uxxe1hN
 m6yr++9kObhOA2W1ia8abVDJtwmMb3oI4X5CaMRA1Or0HJjn+5MorzM2oNrgz/dtA/XycU
 itLItwhEIu2jqzbNX8Gb+IVC2pdBdnI=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-gqMiq8AdO8mbtefsNtzapg-1; Thu, 27 May 2021 03:38:59 -0400
X-MC-Unique: gqMiq8AdO8mbtefsNtzapg-1
Received: by mail-wr1-f71.google.com with SMTP id
 v5-20020adf9e450000b029010e708f05b3so1415907wre.6
 for <linux-rockchip@lists.infradead.org>; Thu, 27 May 2021 00:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tr9Om/qHWPld9nvtg7I4AilQwhNjlhgHg8Y3pfskr8o=;
 b=OvpuLA51tuEvZK/Rhp7TYsgdyuHDNHKYZYGI1ABKHk4soqiRXNULYcDHZrt95H5/Ly
 kFBBCzcR5bKyQu811yx+dSCKeNH09pxtAawowIfEe4mOogvoUyOu4KRUHDFZmU+e3sHR
 O2E8//XkMqCRrKU2SrU963WJYb1sRkwQHjuEGIqgR7rB4fJI533XeZHDjQQb5hiRe56h
 nLTwLqEepiolzgBvSFGTym656c2xoWlsO21rWLouZVscCJ2+vUWBjVWfS6WLdckExUbr
 LAZmgswk727UAG6nnz+dzQO6yU3rRMHo4GMLK554yC4ys8PZSWNcYWXlAQsm+VSOLGEi
 eWDQ==
X-Gm-Message-State: AOAM532VhBzvtG7WVFVjPayhqZ9Erji5xkyIZCHWUQVXDXOvOc0Amvly
 gMBT7msy6odJTshaUh0TWp1XuAL/ub+X3kv/Jx10fzQJMhYUhVw6uvSxU95Cp5S5BpRtEbth5sE
 vU1Yfh9UhHEtlWzo85m/PsIu2eZPSg3T02NBBEIMwxFvwn2rJ5FV2ucOaRhrVOluwjhpwGHsaB6
 ClX8aosZo=
X-Received: by 2002:a1c:7407:: with SMTP id p7mr2052152wmc.36.1622101137854;
 Thu, 27 May 2021 00:38:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZVop6H2VW1mRjVUOgw8KEymXsvePOqGNAVjrj5q1DCCxN2zMbkp3L1Ndnzh3bt5xh50E+CQ==
X-Received: by 2002:a1c:7407:: with SMTP id p7mr2052118wmc.36.1622101137559;
 Thu, 27 May 2021 00:38:57 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id h9sm1753276wmb.35.2021.05.27.00.38.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 May 2021 00:38:57 -0700 (PDT)
Subject: Re: [PATCH v2] drm/rockchip: remove existing generic drivers to take
 over the device
To: Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20210516074833.451643-1-javierm@redhat.com>
 <ef974dd8-5619-35b7-74de-4e270033a3c3@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <1f781f88-24ff-98b8-9c86-ae4db311843f@redhat.com>
Date: Thu, 27 May 2021 09:38:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <ef974dd8-5619-35b7-74de-4e270033a3c3@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_003906_064244_77C479EC 
X-CRM114-Status: GOOD (  15.21  )
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

Hello Thomas,

On 5/16/21 12:30 PM, Thomas Zimmermann wrote:
> 
> 
> Am 16.05.21 um 09:48 schrieb Javier Martinez Canillas:
>> There are drivers that register framebuffer devices very early in the boot
>> process and make use of the existing framebuffer as setup by the firmware.
>>
>> If one of those drivers has registered a fbdev, then the fallback fbdev 
> of
>> the DRM driver won't be bound to the framebuffer console. To avoid that,
>> remove any existing generic driver and take over the graphics device.
>>
>> By doing that, the fb mapped to the console is switched correctly from the
>> early fbdev to the one registered by the rockchip DRM driver:
>>
>>      [   40.752420] fb0: switching to rockchip-drm-fb from EFI VGA
>>
>> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> 
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
>

Thanks for the ack.
 
> Ping me if no one else merges the patch.
>

I would really appreciate if you merge this patch.
 
> Best regards
> Thomas

Best regards,
-- 
Javier Martinez Canillas
Software Engineer
New Platform Technologies Enablement team
RHEL Engineering


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
