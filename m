Return-Path: <SRS0=ZuRO=LC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF34EC4743E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jun 2021 08:03:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86EA061285
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jun 2021 08:03:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 86EA061285
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TKgaQRJAahHKaYcaaacAF7XVI4fUWbp2sU6a0xk60Vg=; b=wfRYV0jdEcJbQCx3w7OJNkbRm3
	/Ef/7D0R1gFJDjaarN6sQKSa4tZ46B9Sa+d9mUC3CQEP3GHdDFWCcNiG9xxh3v4EbeKry9x+9eUQf
	Okmii5btf3aoOQoigGLSvleON5giVOLMAB9DrkYX0NJXxEW5d5VTQpJkxHywnFqhdiUV2pEQkpsov
	aAlZXPuTrGQ23LrWWB2vyEZG6X/q5DOK3AtDRUi7BBTAKKshqCepfuop+RIOQPJlcLwOfbqbzw8Tz
	WTZty5hKVq6r50nn2+pZJYxi7YZSHC1Nari44Pa/Q2t86/IRSsni+AWHrqx2eHomyumrYytVugc9B
	Ky3C6xoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqWhO-006vm4-E4; Tue, 08 Jun 2021 08:02:58 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqWh7-006vgE-M0
 for linux-rockchip@lists.infradead.org; Tue, 08 Jun 2021 08:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623139360;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nKpNGaQCUEHHfd7MT/ExHFw1fhpDia+6aX46sXXLlDs=;
 b=NqxtvT9QUpZHX+GFOpiG0JKTjQPiTHGPEQAgSDIrvkXSRnRzSWbR1DcxPv2WNbwQ5kXpKw
 ew/5BGlmqQOT5KZqVyBjn0lpLvXDlzZqMbS8GlOee8GpIxDivfsbBP4SrqgHB8gnI+yllR
 zkR6Rx+9tdRQ8cnwqkErhY5P853TmQw=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-596-iW47jkKRO4SouOwKSNSxRQ-1; Tue, 08 Jun 2021 04:02:37 -0400
X-MC-Unique: iW47jkKRO4SouOwKSNSxRQ-1
Received: by mail-wr1-f70.google.com with SMTP id
 r17-20020a5d52d10000b0290119976473fcso6871310wrv.15
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Jun 2021 01:02:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nKpNGaQCUEHHfd7MT/ExHFw1fhpDia+6aX46sXXLlDs=;
 b=nawfX7QuUOsk7795BOU2wnHga9D2mCbyt+zFqWIdkrvMXMkF4NqkE162592clWxI3Q
 gEwTDk6K1nLD26192ltwfGrX9v1ZG45NHgUHSDYnvx5mH/Y52Cqx2ZhQ13jeZdmNiTex
 HIJetGr+5eD9D/zd7hAba2QjXXtyiCYk0HMODrMvN1f/AfvImAyw6vHu8AEJRBVWju1C
 AAVT4jMtYtDv3iv2Af7RbpXxV/dH74ZpjIcDnjWbJS5HooGffxL/k+9O5bOZDGGQa3yg
 bpC0vYiSXXwrR7avpkUCVPnoxisqSJd7/gUzUzfg8Gqr2GL85vRL9LaIbDce8QoAcdhg
 69mA==
X-Gm-Message-State: AOAM532W8HqpOW8zLWlEXrC9grGM7Urrtwfygtwd4wzbvRNgzlSimKs1
 T8R3yvZzNUelBl42Y/14KjgG9oF7LF2XjZhW2AxlM9EBl3NT4cVAM/daJJm5v5QqGuUoeB4wU8h
 3hGVSHmUFc2xWqxUbbq5TdWXatGG6RfcK
X-Received: by 2002:adf:ded0:: with SMTP id i16mr21414762wrn.30.1623139356091; 
 Tue, 08 Jun 2021 01:02:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzYrfpKlnATy0WFWItLlG9XWgy/bAHikZyJwX4kOJpLKQCbfPOgnNUWOVssDtv6XqK4j3LEnQ==
X-Received: by 2002:adf:ded0:: with SMTP id i16mr21414737wrn.30.1623139355894; 
 Tue, 08 Jun 2021 01:02:35 -0700 (PDT)
Received: from [192.168.1.101] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id h9sm2039560wmm.33.2021.06.08.01.02.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Jun 2021 01:02:35 -0700 (PDT)
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_PCI=3a_rockchip=3a_Avoid_accessing_PCIe?=
 =?UTF-8?B?IHJlZ2lzdGVycyB3aXRoIGNsb2NrcyBnYXRlZOOAkOivt+azqOaEj++8jOmCrg==?=
 =?UTF-8?Q?=e4=bb=b6=e7=94=b1linux-rockchip-bounces+shawn=2elin=3drock-chips?=
 =?UTF-8?B?LmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Peter Robinson <pbrobinson@gmail.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring
 <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20210607213328.1711570-1-javierm@redhat.com>
 <c3f49fe5-edbe-2889-bd59-92891adc807b@rock-chips.com>
From: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <805741e9-b814-32a5-38ce-bc13df6efb0c@redhat.com>
Date: Tue, 8 Jun 2021 10:02:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <c3f49fe5-edbe-2889-bd59-92891adc807b@rock-chips.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210608_010241_806412_FDCDE921 
X-CRM114-Status: GOOD (  10.33  )
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

On 6/8/21 8:48 AM, Shawn Lin wrote:
> On 2021/6/8 5:33, Javier Martinez Canillas wrote:

[snip]

>>
>> So let's just move all the IRQ init before the pci_host_probe() call, that
>> will prevent issues like this and seems to be the correct thing to do too.
>>
> 
> Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
>

Thanks a lot for the ack!

Peter Robinson noticed a missing word in the changelog, I'll send a v2 now.
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
