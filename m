Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F4B5CD5BDE
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 May 2026 08:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yJB07PhqsC3Znk1/XmOpEqIcLoKEReplMZDk6bES1Ys=; b=FmcU26prqzbmSRiwhvG5oPno+X
	4CaKVtDvi57/zUmyDXxw7Kg2eYvcNx6UR3O2SMOEswNPcjy4qVVZP1ICvlFxie0voFxhngR5Cema9
	V6i8vzsteP49diPOozmnzWXnXrJ7PIVqQ2+UzAxIiPqjuCMEpIrQSSpRSXr+xOMR7mn7UupNFR1gD
	Dibd/izmfVSZ09rwE23LrNlfkplfkv0zMJMYRZWjoOPUQIcx+RCP3BSTbp4V/YJBmwx+tJnaa4bIr
	KEe2sqnjFmeSahdL4rBto0X5r9LBY5T924Tc4SHZ9DU/YNMLpR5b5pk+y3qAXVtbS9f6zq1bHG08a
	y8855ljw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9Nw-00000003Wcb-16Aa;
	Wed, 27 May 2026 08:13:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wS9Nt-00000003WbZ-29i9
	for linux-rockchip@lists.infradead.org;
	Wed, 27 May 2026 08:13:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CC1D14453D
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:12:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AFCBA1F00A3F
	for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 08:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779869578;
	bh=Jh2My/4PVMTyrzVKY1/X4qz5ahSG+REoamijQn1whwA=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=ftnF4fhA2HYjSyeCQJmmgUYVt46QoseJlLvYe+tEnTi7PAsGwi0RWsDOnTfzClziT
	 KiGjm4SaKCfHKKmP/tCYIxyzbZvP4k+QzOviAWYc+yaCFG9AfrCXYFmWI3lP3SKwDr
	 UyzRbk7VDJCOwRH1U98M4fPz5r9Be8bhLWHyXJyBWvj1UNy1WnLa4Db8VI0NU6Lzfq
	 c8n+/6ZTBriwDTG5tb8MbnSlhDKwBbi0GDPer8vRbpwPID8TVJ2BrWiQ5to0Re6iOy
	 SnTmy+jimZigEJmksEekHzqkyp0YdlR0k35KqzviVfG7b0xYX4z44awmrQ8g/Tfs5+
	 /0ANeRFXELnEA==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3939d2bd7ecso95900471fa.0
        for <linux-rockchip@lists.infradead.org>; Wed, 27 May 2026 01:12:58 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8tH87ETkJlR43bXexLhgoYG/4dadpGd5i+5OGZhWCt70WaAQWJwiYZrnozp1s3IrHpee4ZbktsYlQny+A9kQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy14bQbaNSNh70SnfF56XfKs8PoCodSOzEItL95/mFJIM/uG6o1
	/AcbVIzyDdrbHSW5DfAIWjHmw9LgxIehHY9R8THpu4tAwl6y1Ch2hu2J8vZ0YUc2AfRf8WTeZNc
	JUBX4BHgFQja4jj0Kup5D2ySU6SLIWK3BdXrlU4pEWA==
X-Received: by 2002:a2e:bea0:0:b0:38e:866c:4340 with SMTP id
 38308e7fff4ca-395d8e1ac2fmr70867421fa.6.1779869577440; Wed, 27 May 2026
 01:12:57 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 May 2026 04:12:55 -0400
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 May 2026 04:12:55 -0400
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <CAMRc=Mdid6eE0_Vy4WBBz5OQuNg6fOmBGjjGHpWW_mXrcSMA9w@mail.gmail.com>
MIME-Version: 1.0
References: <CAMRc=Mfk9tP091DN=5kjb8fvFhj1=MiBZSq4NJ7+k5LNCVy9bw@mail.gmail.com>
 <20260526171050.12785-1-scardracs@disroot.org> <CAMRc=Mdid6eE0_Vy4WBBz5OQuNg6fOmBGjjGHpWW_mXrcSMA9w@mail.gmail.com>
Date: Wed, 27 May 2026 04:12:55 -0400
X-Gmail-Original-Message-ID: <CAMRc=Mer5Ped1G+6xcuUhnzBoK_KLWjgD6VP6W9F=M6=U7sjkw@mail.gmail.com>
X-Gm-Features: AVHnY4IPDrzwDPTV0moNh90kVcpKP4hnCVac7KNo_swmvzfdOXrfSiJb0NLgTYY
Message-ID: <CAMRc=Mer5Ped1G+6xcuUhnzBoK_KLWjgD6VP6W9F=M6=U7sjkw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] gpio: rockchip: fix resource leaks and teardown bugs
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: heiko@sntech.de, linusw@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Marco Scardovi <scardracs@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_011301_607737_20CBDB6F 
X-CRM114-Status: GOOD (  15.06  )
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

On Wed, 27 May 2026 10:10:23 +0200, Bartosz Golaszewski <brgl@kernel.org> said:
> On Tue, 26 May 2026 19:02:44 +0200, Marco Scardovi <scardracs@disroot.org> said:
>> Hi Bartosz,
>> thank you for the review on the first version of this series.
>>
>> TL;DR: There's no clock-names property in the DTBs for the GPIO banks,
>>        and they don't expose a separate debounce clock in hardware.
>>
>> Regarding your question: existing DTBs currently do not provide clock-names
>> for these GPIO nodes and instead rely on positional clock ordering.
>>
>> While we could extend the binding to optionally support clock-names going
>> forward, the driver still needs to remain compatible with existing DTBs, so
>> it cannot rely on name-based lookup here.
>>
>> For this reason, keeping the index-based of_clk_get(..., 1) lookup together
>> with devm_add_action_or_reset() for cleanup seemed like the safest option.
>>
>> A good example can be gpio1 in rk3399-base.dtsi, where the clocks property
>> is defined as:
>>
>>   clocks = <&pmucru PCLK_GPIO1_PMU>;
>>
>> If we switched to name-based lookup via devm_clk_get(dev, "db"), it would
>> fail for existing DTBs because they do not define the corresponding
>> clock-names property.
>>
>> Additionally, PMU banks such as gpio1 do not expose a separate debounce
>> clock in hardware, so there would not be a matching entry anyway.
>>
>> Therefore, using of_clk_get(..., 1) is currently the only approach that
>> preserves compatibility with existing DTBs while avoiding regressions.
>>
>
> I see. Can you please reverse the order of the patches? The fix should go into
> v7.1 and stable branches, patch 1/2 is a new feature so it'll go into v7.2.
>
> Bart
>

Ah, nevermind my comment, I see patch 1/2 is a fix as well. I'll queue these
and fix the dev_err_probe() thing in tree.

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
