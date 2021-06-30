Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3404C11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 20:00:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B079C61429
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 20:00:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B079C61429
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gfULJZ00pdtlH+0ysajGHkFa4EToLBfjiaKxi46/5eU=; b=1m1OewnC3eF1R74wfGEM3LkvOX
	5zuq+jf24LyJYb9wI5vwjrVoeVOuKD92x//GbAzJzDM7NH/wME+FIEJaDTs83pCQS4JBtIyBjq4jP
	elO2D9IMOKEanhyT6lKxrr6IxeFR46htwP81KSU78X44Z3CS+HaPFZkISjam0oaclH52HMEaI6+li
	8RKgraOPh+3Sk8nPhCiojYR8f3xyJo4ahYtpWqEwLnY+ND+ZhfZn3+hubDyiTsB2vC4ElEi7/h7C+
	nxMhP0Z3SaWmh3wREPbowzOxon6uSoq/hQMURoE0G31Crc+LQH8XLNuQaAQ+H1l5QExObR/vYdzEu
	jO8MutFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lygNW-00FAOg-SI; Wed, 30 Jun 2021 20:00:10 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lygNU-00FAN0-KY
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 20:00:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625083203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kpbCmymIfNMu/sLXKm+zPCIGsHXk+XoDrOjYWyu1pFU=;
 b=ZHv2dqBscC+oHisACQT3MD44gZu/m6weRc7eRyxwz5W7i+Rz2xnhNxdC/drM1QVYyV8gnM
 apRlLnubDIPiSjBJogJONcpvzFfGc+Oyr7u1iUoPZ8+W4PnA5afrblZtYPT4O8lD+wxvsl
 IPuQVjCr8M07QfPPBkjofEokSFR1ZWA=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-515-8t9crwLyN8ui-O_HGblE9g-1; Wed, 30 Jun 2021 16:00:02 -0400
X-MC-Unique: 8t9crwLyN8ui-O_HGblE9g-1
Received: by mail-wr1-f70.google.com with SMTP id
 p6-20020a5d45860000b02901258b6ae8a5so1465661wrq.15
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 13:00:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kpbCmymIfNMu/sLXKm+zPCIGsHXk+XoDrOjYWyu1pFU=;
 b=tmYqAb6ZNss+k66z3/D+Tasm6Bo/N+s1YCbpHHazG6iOCvKfjEigw40LT0B0WK7dEa
 z3sHEuBJKxDBhEKtORs9rH0SJjEo8gzjooBhaXXF12X4+4xTOV2cgblJTd3b9Lf3Tm4K
 /ePRZEZjljGxXC6PwAgoQEeVYxoDtJFdxuTyuoFMSlHXmVjPSW/X7kEBimQcvBewW1Nk
 /iVrBCAR/4POKXQBtx4jUoZPRN8nT4WlUy7vuAPLot4Gweg112iAEelTH1swqMgzm2v0
 YDTOOMd3C7mnLtmPznaj9ZqnKpQjWPmnF5lHXfIQyDMT9t1GkRTyP1bhNLqFLEGZwAPW
 V0mA==
X-Gm-Message-State: AOAM530v290gJ6A5obT6cwC49g1UOj9hl7mXyZqZ4az2VNNBUohQi0no
 2fcXLsTi6d+vqxkMh51goAXCkvD573KY4MymjLJnutMYdgznM4L89XA3VJl5WCNxXOtLimklVhJ
 r1LEhb3SLkTl8jVWVMlsLljXTJiBb2c19
X-Received: by 2002:adf:8061:: with SMTP id 88mr41122168wrk.233.1625083200868; 
 Wed, 30 Jun 2021 13:00:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxbZIKlGNykgS5LTjJzUuKd9t2lLDnL4kgF750pVyY2IVUV5P2R2ti+aPzbVcp/wpfbkYiwhA==
X-Received: by 2002:adf:8061:: with SMTP id 88mr41122158wrk.233.1625083200692; 
 Wed, 30 Jun 2021 13:00:00 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id o14sm25399wmq.1.2021.06.30.12.59.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Jun 2021 13:00:00 -0700 (PDT)
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
References: <20210630185922.GA4170992@bjorn-Precision-5520>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <e7f3bd28-8e5e-362d-11a9-43a60ff79dd2@redhat.com>
Date: Wed, 30 Jun 2021 21:59:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210630185922.GA4170992@bjorn-Precision-5520>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_130008_819442_1C49839D 
X-CRM114-Status: GOOD (  23.33  )
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

On 6/30/21 8:59 PM, Bjorn Helgaas wrote:
> [+cc Michal, Jingoo, Thierry, Jonathan]

[snip]

> 
> I think the above commit log is perfectly accurate, but all the
> details might suggest that this is something specific to rockchip or
> CONFIG_DEBUG_SHIRQ, which it isn't, and they might obscure the
> fundamental problem, which is actually very simple: we registered IRQ
> handlers before we were ready for them to be called.
> 
> I propose the following commit log in the hope that it would help
> other driver authors to make similar fixes:
>
>     PCI: rockchip: Register IRQ handlers after device and data are ready
> 
>     An IRQ handler may be called at any time after it is registered, so
>     anything it relies on must be ready before registration.
> 
>     rockchip_pcie_subsys_irq_handler() and rockchip_pcie_client_irq_handler()
>     read registers in the PCIe controller, but we registered them before
>     turning on clocks to the controller.  If either is called before the clocks
>     are turned on, the register reads fail and the machine hangs.
> 
>     Similarly, rockchip_pcie_legacy_int_handler() uses rockchip->irq_domain,
>     but we installed it before initializing irq_domain.
> 
>     Register IRQ handlers after their data structures are initialized and
>     clocks are enabled.
> 
> If this is inaccurate or omits something important, let me know.  I
> can make any updates locally.
>

I think your description is accurate and agree that the commit message may
be misleading. As you said, this is a general problem and the fact that an
IRQ is shared and CONFIG_DEBUG_SHIRQ fires a spurious interrupt just make
the assumptions in the driver to fall apart.

But maybe you can also add a paragraph that mentions the CONFIG_DEBUG_SHIRQ
option and shared interrupts? That way, other driver authors could know that
by enabling this an underlying problem might be exposed for them to fix.

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
