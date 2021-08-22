Return-Path: <SRS0=1QWa=NN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71334C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 21:24:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 26C2261247
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 21:24:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 26C2261247
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c7uyBGIZsiiERo3LrjNx55OuBJbbikVq8i/3guMQuAo=; b=U5xautGPRUfngKwXlaYdJy/fzJ
	9OyVpp9f6dQzNmrAAYKmT75aYd5azENHqmgGLG726LL+5c6Sb53bmyvftN1aCPQzUMi4gvM1EzR6u
	eRx4lkoWMZkVuAFEdwr41jcERasPjeh7kaaioiLfMCn/xD1Qkx3lC7pkb7GjFs0OnyU64Qj1pQnmL
	G1SdZSV8ofB1AurgdmgoAuzo54PciBXgQUdmYn0qEwstfl1CG5ZmI0U4H5ruPA5PKYGlkxViQFP+U
	I11Df8LTZ1oN8QFgwkaC6G2QnWlwEOquVZdDB5izy5hNFRjlL+oMowb/0oFo9EGMLvd4mceFDinkl
	N278sUhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHuxP-00ElrH-4U; Sun, 22 Aug 2021 21:24:43 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHuxL-00Elqu-OK; Sun, 22 Aug 2021 21:24:41 +0000
Received: by mail-wm1-x333.google.com with SMTP id
 79-20020a1c0452000000b002e6cf79e572so12725927wme.1; 
 Sun, 22 Aug 2021 14:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=2ehVnFN8NmhfsM13jcyhzZcdVCILCdcqL2zE2BLby+4=;
 b=TfRlO1DJOfYQvuQic8en7fjDDFRu/yfM6V+MYGWYhO4GtghD64sNplb+3XEjoq1qDE
 oyin8fK5eiVOtw/zCdQ3fcoWY6HAJtaM3CsDtPnIVftjT14udbd5/j+6pxMFerwKCxBH
 8ptGAqEAbYLmuZWaO3Y1g61tuw/n9lfW8vKw7irDUAad8ro1cY7lrdDq+dRS8AUI+Ypu
 /AOpn+yUleWzbbC4dtJZpjjNALI5V/h7duGyOL0cOTVPPyeYMplEK+hQ3gmCCpAUCU/k
 IRMZM1OCcsLMGS2sfjVuMYNZd7AEFOaek9J6kxsbC4UsJ3ue2L1RJPm2ejOm+vqUHHp7
 nN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2ehVnFN8NmhfsM13jcyhzZcdVCILCdcqL2zE2BLby+4=;
 b=Vsybn9+xoyso4LNz/eE+Y5MQ5PeVFQtugyYZ/U4I+5EvA9WdvevM986C1tGvQ6nMGM
 MplMoHNGFr2zWcBs3OwBF8mAzrDtcwuzSBeXr440AZxt6HXXTrruP8ld/Ycn5w/2Oz4H
 b0dSGjlv9zFImp4gBO7fndjDzSN9FZV1akcPQzgh3uHiSU6ZKSFj6mPeW6Osr1JFtxgW
 pJ55qAgdeqfysM7PBAy6vr+ajSXtcaO00tgPHYK/VT+FWh6vREhvJdD4Z9BMWA9M7xGE
 vAQjW8PBi2rWFhtE2bJg0vxv1Eenel4AJ1gHdHtY+jOF9DeLn0UcJDn8ZniXDDxYtjSE
 v+nw==
X-Gm-Message-State: AOAM531NwAeVr6SWHbUoH9SBnAA+0NsIJc6FIgEpyPgEjvfSax4AJQ2I
 ubSftRVS/YDLhRU1iymFIw==
X-Google-Smtp-Source: ABdhPJyi0DORS3LiULyroKt9yKZPorwQYLifuD0ZhgyKQQQX/rbTCZXvaCjcjn74TRaKJykPWdl9mg==
X-Received: by 2002:a1c:4e17:: with SMTP id g23mr12977142wmh.80.1629667478199; 
 Sun, 22 Aug 2021 14:24:38 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:4200:f3bc:8bd1:bbc3:e753?
 ([2a02:810b:f40:4200:f3bc:8bd1:bbc3:e753])
 by smtp.gmail.com with ESMTPSA id q17sm12771705wrr.91.2021.08.22.14.24.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Aug 2021 14:24:37 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Re-add interrupt-names for RK3399's
 vpu
To: Heiko Stuebner <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20210822115755.3171937-1-knaerzche@gmail.com>
 <CAAEAJfDLvctAk3omLgFBBbzvufFKwSW5_cQZ+MjvyN4khGOe_w@mail.gmail.com>
 <24767661.6Emhk5qWAg@phil>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <62e8d794-4125-68da-186e-80465179f506@gmail.com>
Date: Sun, 22 Aug 2021 23:24:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <24767661.6Emhk5qWAg@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_142439_862978_B5A86071 
X-CRM114-Status: GOOD (  18.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko, Hi Ezequiel,

Am 22.08.21 um 22:25 schrieb Heiko Stuebner:
> Hi,
>
> Am Sonntag, 22. August 2021, 16:37:24 CEST schrieb Ezequiel Garcia:
>> Hi Alex, Heiko,
>>
>> On Sun, 22 Aug 2021 at 08:58, Alex Bee <knaerzche@gmail.com> wrote:
>>> Commit a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
>>> intended to remove the interrupt-names property for mmu nodes, but it
>>> also removed it for the vpu node in rk3399.dtsi. That makes the driver
>>> fail probing currently.
>>> Fix this by re-adding the property for this node.
>>>
>>> Fixes: a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
>> AFAICS a728c10dd62a removed lots of interrupt-names properties
>> from devices other than IOMMU.
>>
>> Maybe it's best to revert it?
> where did you see more mistakes in it?
Yes, all the other removals in that commit are for iommu nodes.
>
> I.e. first of all, at least when grepping through my kernel history, I only see
>    commit 53a05c8f6e8e ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")

Oops, yes: I took the commit id of my local tree: could you please fix 
the commit message with the correct id, before applying?

Thanks,

Alex

> with a different hash and at least there I see a lot of iommu interrupt removals
> and this one line removing the vpu irqs in error.
>
> So from my glance at it, applying Alex' patch should solve the issue?
>
> Heiko
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
