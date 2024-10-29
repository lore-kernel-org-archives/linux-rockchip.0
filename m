Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B7ED3A66B
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Oct 2024 15:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJzlnB3xmAnxlZFsz7VuFuss3qG8nHKPYs4e0VuVMyU=; b=j1FhC1I35rf5n+
	NYzvLWQpRxYHDJL9vbk1GyHDArFukwvo9OP76f0yt9VjdHjo7w/Zci4GofpIlxspeUgLh4pdy8gQ7
	AYwji91N0T3nlz+278VwWJfbQVieBp9Qn3tIwUEqE/6FtzG/z5CRbmosBCL4PXxboXkKyXdkdsEQ9
	H8a6UhzUMrZwhlUWeYBnctIyrhn7VYnIGO1iU9zbDCloBPUmyGPeks4CS+WKKjaneexycevQJdlBN
	Saz9ZWeokuyetB2feqR7AS3fM4GjC33CPcx9ays9y6nUKaWS67Jp8dY9cDnHZff3V7LJYzSDpHG8R
	XBTwPKrAI8NXWtnuuTag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5nnL-0000000Eono-0Bhy;
	Tue, 29 Oct 2024 15:06:07 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5nb8-0000000En7h-0PmS
	for linux-rockchip@lists.infradead.org;
	Tue, 29 Oct 2024 14:53:31 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a9a19bf0a1dso68579866b.1
        for <linux-rockchip@lists.infradead.org>; Tue, 29 Oct 2024 07:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730213607; x=1730818407; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=b7H64C/J9e8GCD1HkGwsMKQrPcurnGJ6w4i8btUxmUo=;
        b=RUxtDslZlVg0S4/6+zjLpO4mSacRykJ7qZ25zSiFxJQDjC8619bwWXhDCspLksFXXh
         0zkvphQfDJJdt54xzsa4dIgOrcqv/pbI+f43To5OWFiuMasfAEIlu9SvJ697LIcTLGCA
         bT6f6uVdQNinK+VRm28yqWNfWPqOrt/kscC+XtKUxyPWKdAtUs89WLVc7CHcfa+uSlzr
         59xQLgG1Em4t3e29yjO4Wy34lcR7eh0uttplNiesoY+pq7wF8Mqosvz7busoMLLOD6de
         LKgycagc4vu3Hqp85pGeyfP1o3gg4VwJlwegnu+vbygiMdhirF/7sLHrtnPe3iz3nv/7
         isfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730213607; x=1730818407;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b7H64C/J9e8GCD1HkGwsMKQrPcurnGJ6w4i8btUxmUo=;
        b=cEV2zIrZbQfugJJFvB6wT8LyoykaYMcTIlfHtvPcHuiuSCWqfKiFZhGh0Jz8bpzc4w
         Qm0bmdvkQb6m5r0y386SqagxWuKXKi2JXHKNIcFg23piPZJYnyk4O2Jo3d5j0kpDz3e6
         m+oWfEV27aD+cgTL+SEVod1xhFgTccCzp9cD9h0T7ml0578Yw2kI4C/i44mP7Zj5TepB
         W/b7wrHfalyda/kuiZy7WGgTXrTWLDtN4JCmjg2oKJ8cx3P/w61oOTr3e0QpKPV18l9R
         FjVJcaSdy4IESQBGFQiEhUHcahdQ/pjA3pxoL/s0zNr3Fs1+7YvLKSIk+N4PYpKalJK8
         bRNw==
X-Forwarded-Encrypted: i=1; AJvYcCWn6/aboQxp91lk4rguWyIHbOl3st4A5L1oT9M8E8gUnOtar044Ji/LJcOhVvywEAKtFJPuHBkFL1AcPp1CGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5CBzviZpVCCdJTFyuTkiXzJInNpP08VuJs4ec0niK4FUNuOi2
	+2pMw5ZUJR5msZ7QsF12iQUcmKWwg07rRUhL8AzjEAN6e1WAB33P
X-Google-Smtp-Source: AGHT+IGHyWendIeeMVLYSDpNkQYgJQ01EFCXgFqz8SyS42c5j0kvV8cl2qOVXH9XZ7KSxvHFYFf3eQ==
X-Received: by 2002:a17:907:6d24:b0:a7a:a33e:47cd with SMTP id a640c23a62f3a-a9de5fa6a7bmr550235466b.8.1730213607266;
        Tue, 29 Oct 2024 07:53:27 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? ([2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9b3a0834a6sm479602166b.191.2024.10.29.07.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 07:53:26 -0700 (PDT)
Message-ID: <f147c6c4-30e8-40cc-8a01-dc8df3913421@gmail.com>
Date: Tue, 29 Oct 2024 15:53:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] ethernet: arc: fix the device for
 dma_map_single/dma_unmap_single
To: Andrew Lunn <andrew@lunn.ch>, andy.yan@rock-chips.com
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, david.wu@rock-chips.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <dcb70a05-2607-47dd-8abd-f6cf1b012c51@gmail.com>
 <86192630-e09f-4392-9aca-9cc7e577107f@lunn.ch>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <86192630-e09f-4392-9aca-9cc7e577107f@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241029_075330_175203_8527A500 
X-CRM114-Status: GOOD (  18.33  )
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



On 10/28/24 14:03, Andrew Lunn wrote:
> On Sun, Oct 27, 2024 at 10:41:48AM +0100, Johan Jonker wrote:
>> The ndev->dev and pdev->dev aren't the same device, use ndev->dev.parent
>> which has dma_mask, ndev->dev.parent is just pdev->dev.
>> Or it would cause the following issue:
>>
>> [   39.933526] ------------[ cut here ]------------
>> [   39.938414] WARNING: CPU: 1 PID: 501 at kernel/dma/mapping.c:149 dma_map_page_attrs+0x90/0x1f8
>>
>> Signed-off-by: David Wu <david.wu@rock-chips.com>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> A few process issues:
> 
> For a patch set please add a patch 0/X which explains the big picture
> of what the patchset does. For a single patch, you don't need one.
> 
> Please read:
> 
> https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html
> 

> It is not clear which tree you intend these patches to be applied
> to. This one looks like it should be to net, but needs a Fixes:
> tag. The MDIO patch might be for net-next? 

Hi Andrew, Andy,

My desktop setup has a problem compiling older kernels for rk3066 MK808 to verify.

Are you able to bisect/compile for rk3036 before this one:

====
commit bc0e610a6eb0d46e4123fafdbe5e6141d9fff3be (HEAD -> test1)
Author: Jianglei Nie <niejianglei2021@163.com>
Date:   Wed Mar 9 20:18:24 2022 +0800

    net: arc_emac: Fix use after free in arc_mdio_probe()

====
This is the oldest EMAC related checkout I can compile.
At that patch it still gives this warnings in the kernel log.

[   16.678988] ------------[ cut here ]------------
[   16.684189] WARNING: CPU: 0 PID: 809 at kernel/dma/mapping.c:151 dma_map_page_attrs+0x2b4/0x358

The driver was maintained on auto pilot recent years without a check by Rockchip users somehow.
Currently I don't know where and when this was introduced.
Please advise how to move forward. Should we just mark it net-next?

Johan

> 
>     Andrew
> 
> ---
> pw-bot: cr
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
