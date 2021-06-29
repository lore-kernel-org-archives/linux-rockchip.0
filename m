Return-Path: <SRS0=3Wd+=LX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A54C11F66
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 06:17:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6E75F61DA6
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jun 2021 06:17:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6E75F61DA6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DJH6eS7/1SFe4kFdXUPFkJ4vBLZajd3mhFcPrsGkrp0=; b=IOChc4Zo1uVGai7+QVdkm6pgfL
	j0av5ntALGFf7WBJiRhTJSgTsCR72KlZ052TvdAy6W+9MrLZpZzDuG5UnyULg40tlxMDfsPIp9v4Y
	9/zRq8YYegWEfK0n+LB79QGgwYpKGvqpfvBvwXkXg3a/OW+NHVmrfphi4P2SKPv6unDkGAgCXudTv
	Ox1mXcOIJceMbN6jEu0pAgLtfzOjrlNwIhs3ouWZUsOiD3iwZKy+GMNXBqadC+sKUi9jNAllwLGb8
	OHdLG4ldxFAh7e/t93jQY3EI9P+mLonCUcWd8fhrwJA/+x8FuDSBBBJqbkn6p6kt1cB7bYf7eaIJx
	K2BLdFuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ly73u-009uKr-GW; Tue, 29 Jun 2021 06:17:34 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ly73Z-009uES-He
 for linux-rockchip@lists.infradead.org; Tue, 29 Jun 2021 06:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624947430;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=r5rtMzus3P+lVYlXRaQspruCr0CNxzJODyOUb0KYDic=;
 b=cpoeMezfnoENfhmSzCbsIGF0lv5GS95ymaJaFkDN9O3WvO8glBl+bYxkzMK+pH1VaJZcMO
 R8hv3Z4B+uhwJog2hTCgzU8rF/p1sNfJ7jltEV5OsIqlZqw9Fg1nMadyhUnAFHnG1pHZkP
 fg8pbXH0YoQn+v97qGCyQJgQcNTFdvc=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-PXPgRkufOGiCin3ScAYWUA-1; Tue, 29 Jun 2021 02:17:06 -0400
X-MC-Unique: PXPgRkufOGiCin3ScAYWUA-1
Received: by mail-wm1-f71.google.com with SMTP id
 h14-20020a05600c350eb02901dfc071c176so1148672wmq.3
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Jun 2021 23:17:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=r5rtMzus3P+lVYlXRaQspruCr0CNxzJODyOUb0KYDic=;
 b=B8VdMsAU6DQDt4sAJ2ykYjSbiVx8IVy9wPxYnbwB0o6IfHAv/IP8MsHZNDO9iTcwQp
 pp3yME0EEth2YCoZQTROdxqHON8WWm4bJkHvfYUWD4SkhMGUty+CvBEAzrvLNqYPEfuE
 JjKBGekw/WcSDD3BGlT6GxZZnbT5DLoFSmZqQjnjZSXsnXE0mvNwwuHBhAPYPaxBQIrL
 BkoJ8sTmQ38Efity0k/LBVgPePCp9UzVIj5fTj+X32xP17PrSSQx9Mhp+mxCgAj6SMvf
 jmt9WHcjvj5Gklx07PnzxJGauoSjPnItdab7gXe7bYOJ3fnsYwGeogyWUXrAoNQvgppN
 wmPw==
X-Gm-Message-State: AOAM532e7CooGq1ca7GsR/OtXybvfJtIH6j+vkvGufe4E/BtVjhsW/QA
 57peiFIW0xcJzGMETpqsB6JFLSf6WU1eiGemlMWkWfbcJWh2sHwdLSiHx5+3Qc+YXpmYit/vQWB
 s3MPUNA6+gDtVp0uW3wyDT5JjVinPzXD9
X-Received: by 2002:a1c:9884:: with SMTP id a126mr9898370wme.59.1624947425586; 
 Mon, 28 Jun 2021 23:17:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwENZ0HLqQb4ZwkvvzpA0iQ3ffLbLA5shQGhTj0xUToPMfioID+ETv8jiuPJgiveOwkf+pTyA==
X-Received: by 2002:a1c:9884:: with SMTP id a126mr9898344wme.59.1624947425375; 
 Mon, 28 Jun 2021 23:17:05 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id h8sm1801392wrt.85.2021.06.28.23.17.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Jun 2021 23:17:04 -0700 (PDT)
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-kernel@vger.kernel.org, Peter Robinson <pbrobinson@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>, Ley Foon Tan
 <ley.foon.tan@intel.com>, rfi@lists.rocketboards.org,
 Jingoo Han <jingoohan1@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org
References: <20210629003829.GA3978248@bjorn-Precision-5520>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <2317a4bc-bd4d-53a7-7fa6-87728d5393cd@redhat.com>
Date: Tue, 29 Jun 2021 08:17:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210629003829.GA3978248@bjorn-Precision-5520>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_231713_895715_7CF866E2 
X-CRM114-Status: GOOD (  22.23  )
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

On 6/29/21 2:38 AM, Bjorn Helgaas wrote:
> On Thu, Jun 24, 2021 at 05:40:40PM -0500, Bjorn Helgaas wrote:

[snip]

>>>
>>> So let's just move all the IRQ init before the pci_host_probe() call, that
>>> will prevent issues like this and seems to be the correct thing to do too.
>>
>> Previously we registered rockchip_pcie_subsys_irq_handler() and
>> rockchip_pcie_client_irq_handler() before the PCIe clocks were
>> enabled.  That's a problem because they depend on those clocks being
>> enabled, and your patch fixes that.
>>
>> rockchip_pcie_legacy_int_handler() depends on rockchip->irq_domain,
>> which isn't initialized until rockchip_pcie_init_irq_domain().
>> Previously we registered rockchip_pcie_legacy_int_handler() as the
>> handler for the "legacy" IRQ before rockchip_pcie_init_irq_domain().
>>
>> I think your patch *also* fixes that problem, right?
> 
> The lack of consistency in how we use
> irq_set_chained_handler_and_data() really bugs me.
> 
> Your patch fixes the ordering issue where we installed
> rockchip_pcie_legacy_int_handler() before initializing data
> (rockchip->irq_domain) that it depends on.
> 
> But AFAICT, rockchip still has the problem that we don't *unregister*
> rockchip_pcie_legacy_int_handler() when the rockchip-pcie module is
> removed.  Doesn't this mean that if we unload the module, then receive 
> an interrupt from the device, we'll try to call a function that is no
> longer present?
> 

Good question, I don't to be honest. I'll have to dig deeper on this but
my experience is that the module removal (and device unbind) is not that
well tested on ARM device drivers in general.

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
