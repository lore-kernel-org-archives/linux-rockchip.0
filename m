Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E439CC11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 22:10:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A4E661476
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 22:10:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A4E661476
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8jf3sRPOu59lHkmgR7UkQeEhHMiPmwQkvQvnXbo0oOk=; b=sE9DWijXJhCppJBCl+wQmLMO25
	r6syjLZGOhf24CrcbQqau7mrcCdD9+B935j1Ukq1jDt6McaAabJdHhMbAJT99Q8qI2DOC60LMPBZN
	uWYwr9HPzZ0Jjfz4xRTvRRloPY9yFsAGDOfiIxuxaqlZvo0yDEW0iXz9efLwzmKEPUKEXSiMHSleC
	q2r7u8grmFq9I9U2iHdrhrRV0tLXlblKdTmzJjfyuo478LOyS/9sz9JlfBqgG2d44Uvv+4eruS+49
	DAlSrmQCUEiq3ccTY40lyF/c4NmjYk6yV1jmrbbLfiHaW2eF29keKQwzzZR+LaaAATJd3xCHAz7+A
	LOHcYryQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyiPT-00FMOj-Tr; Wed, 30 Jun 2021 22:10:19 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyiPF-00FMN1-2h
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 22:10:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625091002;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2ReCbrtMP/cxLMRe/lZJL4GXF42nMx1vpMXEPSI0hvQ=;
 b=KAkRhiD8lqEvL133a/SsRTuJ3V3X6QTJbHgZDmSbP5Fo4A9hp4Rg8tb+AximmvOuFzsUrH
 XVggwiAQVukZO+7MhQJ/1ceKftRhCprdXfPu1UecDbuC8RWTrt7HPooQ6XTcK5F5rjmohq
 haIbDGgRzphVCvhpPbVn3gi026jO7JE=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-129-pBV1I1fcP3-_QieX3x5QPA-1; Wed, 30 Jun 2021 18:10:01 -0400
X-MC-Unique: pBV1I1fcP3-_QieX3x5QPA-1
Received: by mail-wr1-f70.google.com with SMTP id
 d9-20020adffbc90000b029011a3b249b10so1601357wrs.3
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 15:10:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=2ReCbrtMP/cxLMRe/lZJL4GXF42nMx1vpMXEPSI0hvQ=;
 b=Fwg/MJtwaVWt3goxQAZPyJ+LlOltfB/PSLZu614OiIpqJTsZfYqMcuC6WPhjWX/Gki
 jmzTFSG2FDXq52Cxyn2s77Sxl2bIzERybpA2ErtwEIx8DhF2P3rloXMpDgOwyYXKmCAc
 U1JDjHhVEL2Rauc5XAO9KQTzOYj7AWwJzt2lnADpV267IjoNMdAsQkJ8ge+Lwe98Imwh
 gPeqO0X+7e1Ql9N3/n7LJiJgucbdYWogjn1mLZb8d9kiCGYEpQBuGOosFzTfwkoRnJV0
 8EXsHykQQcKlBFOYo88JG8192hz2I79/Z+U/MZH6zIiUMDL1rV2cr3yT+YDp2g+7on9r
 jGtA==
X-Gm-Message-State: AOAM531LnXUcNFPQDUQOUy+YOyQL9WEiMP/S3LyCzwg2xQCE35k0J5DS
 wCcFYEKowwrL7hdvSgz4M+ulSNobYxto2ZLacVrgxdgMxXQpJLOvTElLLJf+NeCVqWfFUprimsz
 oCGe7+IxDNXaa6cFxNdQNiaHzBrOxzxni
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr16882647wmg.117.1625091000111; 
 Wed, 30 Jun 2021 15:10:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlU5TtFXVLyohpWwUCLVR70qKXp8D+c6+g8CDe44j7e9CNHSYRynn3Hnx7Cwjxfz20NWN+Rw==
X-Received: by 2002:a7b:cf3a:: with SMTP id m26mr16882631wmg.117.1625090999901; 
 Wed, 30 Jun 2021 15:09:59 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id d17sm9611715wro.93.2021.06.30.15.09.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Jun 2021 15:09:59 -0700 (PDT)
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>, Jingoo Han <jingoohan1@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org
References: <20210630203030.GA4178852@bjorn-Precision-5520>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <51276875-658e-e6fe-5433-b5d795b253ff@redhat.com>
Date: Thu, 1 Jul 2021 00:09:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210630203030.GA4178852@bjorn-Precision-5520>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_151005_300852_D153F34A 
X-CRM114-Status: GOOD (  18.24  )
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

On 6/30/21 10:30 PM, Bjorn Helgaas wrote:
> On Wed, Jun 30, 2021 at 09:59:58PM +0200, Javier Martinez Canillas wrote:

[snip]

>>
>> But maybe you can also add a paragraph that mentions the CONFIG_DEBUG_SHIRQ
>> option and shared interrupts? That way, other driver authors could know that
>> by enabling this an underlying problem might be exposed for them to fix.
> 
> Good idea, thanks!  I added this; is it something like what you had in
> mind?
> 

Thanks a lot for doing this rewording. I just have a small nit for the text.

>     Found by enabling CONFIG_DEBUG_SHIRQ, which calls the IRQ handler when it
>     is being unregistered.  An error during the probe path might cause this
>     unregistration and IRQ handler execution before the device or data
>     structure init has finished.
> 

The IRQ handler is not called when unregistered, but it is called when another
handler for the shared IRQ is unregistered. In this particular driver, both a
"pcie-sys" and "pcie-client" handlers are registered, then an error leads to
"pcie-sys" being unregistered and the handler for "pcie-client" being called.

So maybe the following instead?

    Found by enabling CONFIG_DEBUG_SHIRQ, which calls the IRQ handlers when a
    handler for the shared IRQ is unregistered. An error during the probe path
    might cause this unregistration and handler execution before the device or
    data structure init has finished.

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
