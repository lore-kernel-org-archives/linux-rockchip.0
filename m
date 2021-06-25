Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7BD8C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 18:34:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6F9416191B
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 18:34:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6F9416191B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HN1AlH0Urah8noa/IgP2UJk4xq5cX2qNN7hGvuqiHRw=; b=h99zUZExoaFEOj2o2SnFQwIXAp
	M2yC//0JCsEakyO4et32W9wAJ0/vkpbaBnRxp5wf1/SiI3HobPmO8K4ZODX82MkbAEhK1FnmQ6S6/
	QDXyBx7tLi1xJcORePDmwCAZJaQxUwE8R0mNzkI+ImWb4CY9TRVoR4LyeyHSfu3kP3mC6P1HkEwds
	WbFneXId/llxUgwXrzG4TFpEHhQdlDuqjKescRTQ+eQ5HULuXd7PZoGCZryY5C5yDLhJq3gSOzWh+
	ETCm+AXQ2QWdsd+XQ3JVopN7nqwhvqAKEnEibOt8muKJrk7XDRFYgeLORwoYlyOCv57/sbCbuD8at
	uNizynDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwqf8-002aXe-N6; Fri, 25 Jun 2021 18:34:46 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwqf6-002aWm-H9
 for linux-rockchip@lists.infradead.org; Fri, 25 Jun 2021 18:34:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624646082;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w3d5QmgQTedbMfqNV9W2ZCvpWHRikHJ8lDKHWRxFQVI=;
 b=RKn1ebVoFNeri2oe1l2Ua/M0xw3Yo4SoFjGu07Q9Pq7cXkavzo6Hd6UVMik+0rdX4LSmJ3
 8G3mi0rJrR9QnGRtEH1rcRn/DQfN+pP9CbHJeGn1F2d0seP+Jd5wfoxLkULacJq55b3vcF
 65+U/23yjX1iz/kLi13ia8ucKbuWTac=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-399-tMbfa-XwOIGBo5Xe-zzL6Q-1; Fri, 25 Jun 2021 14:34:41 -0400
X-MC-Unique: tMbfa-XwOIGBo5Xe-zzL6Q-1
Received: by mail-wm1-f70.google.com with SMTP id
 j18-20020a05600c1c12b02901dce930b374so3023701wms.2
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Jun 2021 11:34:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w3d5QmgQTedbMfqNV9W2ZCvpWHRikHJ8lDKHWRxFQVI=;
 b=nWUKXlmKO0QcZuEkx4SV7BZf4IQHRElC9QvqNYFoQTCdWa9go3sAjUQGferuoX3TTF
 BgVW0UNF9SVzUjFks+hwMVRcG2dY4nr6q+hvJxEAO+iBrBkozFU7/XFxiI2nhpJxsgNX
 iLP3eeFBoek3msOgaTOopwepVBWwA8TCe9agPOtD9W1tpWJr0yQ57rrKx+TKKiRYXqZA
 nNGWHc8hOnWa+ijvcXOEN3rtxPpf+XjL2Sik4O4QKg+mnKyGfwFYfMxntPwwBfl/EYdL
 vKU2DlKQdEYSwjJkvKoNF/XpUj09lD4Pw+bLxe7ymom3JV199Ae5l2/wGC4rtr6yPgXk
 dTOQ==
X-Gm-Message-State: AOAM530NrcLhkaavMypEq2KGixKZ9wYECuQkdsxODO+pZxlV8kSP1tr2
 rFaapHgzm7lOVkh98RRb1MvIbPvjFLPgqfDLndVyE64kU9qmZh1PqViaeZAXx1rCD7PRHztyS08
 Mu76l2BHHx31A6EaCndQ5QdOJW1TgeCpX
X-Received: by 2002:a5d:6646:: with SMTP id f6mr12558766wrw.399.1624646080370; 
 Fri, 25 Jun 2021 11:34:40 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyxv71Y5qNrtRBtagkA7o6lXh3Ty2kHfWVl115v2RJg/5J5ugMGjArkWAQ76YYJB8G51G3pgA==
X-Received: by 2002:a5d:6646:: with SMTP id f6mr12558747wrw.399.1624646080189; 
 Fri, 25 Jun 2021 11:34:40 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id z4sm6834597wrs.56.2021.06.25.11.34.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 25 Jun 2021 11:34:39 -0700 (PDT)
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
References: <20210625143235.GA3624355@bjorn-Precision-5520>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <fa7ee574-89a7-330c-40ae-717142924cfa@redhat.com>
Date: Fri, 25 Jun 2021 20:34:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210625143235.GA3624355@bjorn-Precision-5520>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_113444_712567_031CBAE7 
X-CRM114-Status: GOOD (  20.92  )
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

On 6/25/21 4:32 PM, Bjorn Helgaas wrote:
> On Fri, Jun 25, 2021 at 09:09:36AM +0200, Javier Martinez Canillas wrote:
>> On 6/25/21 12:40 AM, Bjorn Helgaas wrote:
> 
>>> I think this is also an issue with the following other drivers.  They all
>>> set the handler to something that uses an IRQ domain before they
>>> actually initialize the domain:
>>
>> Yes, I agreed with your assessment and also noticed that others drivers have
>> similar issues. I just don't have any of those platforms to try to reproduce
>> the bugs and test a fix.
> 
> Even if you don't have other platforms for testing, I'm thrilled when
> folks point out issues with them and (given time and inclination) post
> patches for them.
> 
> I'd much rather fix *all* instances of the problem than just one, even
> if we can't test them all.  Frequently driver maintainers will review
> and test patches for their hardware even if we can't.
>

Ok. I'll try to make some time next week to look at these drivers then
and post at least RFC/RFT patches for people with available hardware to
test the changes.

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
