Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79C7C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 15:26:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2430661059
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 15:26:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2430661059
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cDC5IYVtiGGWMXNAmceGbZXqsXBUxadjEeA4jqX2eSw=; b=NrJKRobTjC61BH/dUCkxMVmN9
	xBaBVAUywWjmxnfWzJS/PMxduQtkQova10ZZw7sShGVL1mXSqYpBGd09Gb0EQJG28/W87nRgiMCG2
	y1gWHZrY8lnooozr/puQFyIgSvuyHZL+dBRBAiIyXCo5YEY8aDny3O3Tg2SfxxGC6YPdmEnyB5a/J
	uC88inzWWf13cIhZFYmUWLQl3epWymOcDfzqBKIwb48n/WF1L5pyPCwBJ43TpS33OLKCmCIAutTA4
	eJTvmmuRMYiPi9HNFUJASZIxrhLQH8M/zZFstbJilonhmfZ124kJI4BoiYLut77KerXcAS35nQDxe
	DFwBr1VoQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liIeU-00CT4P-Ti; Sun, 16 May 2021 15:25:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liIeT-00CT4A-MT
 for linux-rockchip@desiato.infradead.org; Sun, 16 May 2021 15:25:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=rh3Sd0JcU9szqK55NWh6S2hsCVgwsM8f4R5lJKfXVFU=; b=f7tsNez3BqkU7PyP4rcN2y4A0R
 W67FDdBiLqMiQjn9BW4cH58BMH5SDid2vy2sKy2CFEv6MKLcyvpPGeIfOnFtiuW/l5A3WBFzF5KQ4
 FK1de881cdBko/nWAEq3qzdyL4o/YopyhPCwJrRhmtXiv1D4jJD1c/nIj6TbH0ZR7vcCsra3vuNWk
 JbhsGX2PveWsshaYTIWDRbABTrbHlE3zadDGUqmzP+VpX82nweZ+Sqf76gkmF4OrSzGAOGiHoeIBm
 OF6LDcuRzXSGLyXbtltKKCf//wqTHJdcFcNvxAQ9lBYanz2bDNF+B8ufzXhyGSyRY1lAF6Tv0ey8a
 ts2Hva4g==;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liIeQ-00D0ER-RW
 for linux-rockchip@lists.infradead.org; Sun, 16 May 2021 15:25:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1621178753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rh3Sd0JcU9szqK55NWh6S2hsCVgwsM8f4R5lJKfXVFU=;
 b=PTokL4zY/fNCfTyxAbA51awisp6ZDN55mMb7z7LkBbiinnxo0WshFAz3gFjCf/DJlOpvEm
 ITM2sR04tEOa1VDsfS52Cgdnn/oOaeW3D5S6ttGm3+vkrmH0Hmw+Zdblo5aZjVB7niKrMe
 xYJwbg6tc9e25Ia2TIxOsLUBFh3iSdQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402--Tv6tGRGOOGWuT9_oah2qg-1; Sun, 16 May 2021 11:25:51 -0400
X-MC-Unique: -Tv6tGRGOOGWuT9_oah2qg-1
Received: by mail-wr1-f70.google.com with SMTP id
 c13-20020a5d6ccd0000b029010ec741b84bso2491960wrc.23
 for <linux-rockchip@lists.infradead.org>; Sun, 16 May 2021 08:25:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rh3Sd0JcU9szqK55NWh6S2hsCVgwsM8f4R5lJKfXVFU=;
 b=YT+UHEhomTyGeiYGg2JeUUUyo7EOJihrSAXrYhbyoyJplCu0alFlcTthXpcTaKJJ22
 qYlDPVzOuNAlsbaoSpB3rRHbDprVOVypRdJ7OeSPsi/nABXVnzF5Zi5p1BqTShjXK0+1
 aErhpnth6UOPfz7a4nxPkn7+cKkrzqdn4Vy6Tq5duO6Dw6RC1ax7GjQeGGuEr7MGjVmH
 PkTWCKpHuT+TyMyrBPe+j923KDVeLUq+dz2woE2nhwRNUuvtZU5cTAJr/0KjruCNMVBj
 F5qyKwUlpRM9M/YV2wpumDeqk5obKq0Y3p4txBun8CY1jNLeDRKZxiT8TgK0yGK+ppXC
 8O9A==
X-Gm-Message-State: AOAM532JiNcA4zR7wo7brmhV+IqKs2MI/y8tr9kz20pNYuvmT2ZHtzIN
 AA1A+orbANwH4fIn4Mw8811Zqm7tbx0NuAPB5dSQbpY3fkxGRHzI0Pgwi8kYeHzQ4mAiQXRF/Ma
 PrBXG+CKdQ4Pd62eXTkAGhAgIjY3qRnon35nQAPGgejnJe/kTnmVIiMXYuN88AZdl+1+h5AzGfI
 sfaO4cjWg=
X-Received: by 2002:a5d:4b4e:: with SMTP id w14mr70258923wrs.9.1621178749902; 
 Sun, 16 May 2021 08:25:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrIeisoP1v0heRBwNPcG4ITRaoMkHe2GGAaPVT/JCNOExMusD/ggg/zsQI0GgHRlRdmJxhyA==
X-Received: by 2002:a5d:4b4e:: with SMTP id w14mr70258905wrs.9.1621178749653; 
 Sun, 16 May 2021 08:25:49 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id f8sm10609976wmg.43.2021.05.16.08.25.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 May 2021 08:25:49 -0700 (PDT)
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
Message-ID: <1b492488-3f25-fca9-e9d9-78138bed1d2c@redhat.com>
Date: Sun, 16 May 2021 17:25:47 +0200
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
X-CRM114-CacheID: sfid-20210516_082555_113101_2E6880FE 
X-CRM114-Status: GOOD (  15.18  )
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
> Ping me if no one else merges the patch.
>

Sure, I will. And thanks a lot for your review!
 
> Best regards
> Thomas
>

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
