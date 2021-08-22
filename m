Return-Path: <SRS0=1QWa=NN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20D6C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 14:37:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71429610A3
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 14:37:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 71429610A3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMeLqVSUse6BZ1bh7pUoqEXZVUBTfcRIh6bwINRpJdg=; b=2BnaS0tvsWwRQj
	uerB5tElNNGErbZw23R0CshsjWSDAUbIOScEQAb8DZ6na/bAjC4OdbWfZpphjJC2PhJmt6Jz90faO
	w31yn1ATQlyMfnu6WJ0gN1sMQMGJJ2Ngorxx95wleFx6ZqisWTyqgj9OS9YGF/p/jrqieNOOppP2G
	74weScBC/NGkIgKNv+p9lPKBzTk1pG4ykaWCueGkb7mmqV0YEF69EUEqvRweRljBSUPRjgpQD1JAI
	0A2f5JfCJexzltKpa+Sb1XRKCtG6IQ1POpfPhmC4NxpyEGHAxNoMPQ9WjUj7a9clsgYxH8V1J1Mbd
	z9aQmPSgnRuS3CNXWkbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHobf-00EFIB-MN; Sun, 22 Aug 2021 14:37:51 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHobR-00EFD2-MC
 for linux-rockchip@lists.infradead.org; Sun, 22 Aug 2021 14:37:38 +0000
Received: by mail-ed1-x536.google.com with SMTP id r19so21895330eds.13
 for <linux-rockchip@lists.infradead.org>; Sun, 22 Aug 2021 07:37:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FfPaT2o9ejPWoclQhHTem2PUE+dQ31fbuBiXbqF2/GI=;
 b=1lYBBWVF9iTKaRw0g2x7Ef/GnarjXuLUUwBd1DD2lwxJ5n4R03JXaXNlAJWg2gJbdQ
 RQ7K2vvei3VZdnT1MT3y6RgKLenZcXrWcWKmEdNgBtpNlQlIoUjQTxQ1KVmJa34r+Z9Q
 Aeq/ZESYm2UbKOLrqHrka6d8w+Pub9K9pWzw0FNwwcK1ywpLWvs3dnpkeuNwZLeuRrp6
 M7Gw+RXDsiJ95Vjc7+yZei9UEdmgSl2F3daV1VGtK1LiO9F/L8mNWknQmo0G6EnxIJ0P
 FNyu++YmrcPvepNWLGJvRVMxPZ2MuOpJ2vhnq08Hb8mkFP6nDZgW3qvLLYxfG7SsF0z6
 ZckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FfPaT2o9ejPWoclQhHTem2PUE+dQ31fbuBiXbqF2/GI=;
 b=LCpBo+bwXQ4MVpekHqoP20osaRjGkGyANrwbP2QAm25iY6MB347MhG+c2BmYR8+KJS
 PMItI5fuImzDLw+osO/PVkECz1yky3NSh+tD3uVd9qDkX59CsfX3LnLkk+fcYnxPb+vt
 MN99UCjj71GR6Y6Ise1C9griH69HaR8sHvq04rnT1754iBY8as7wEeT0EVjSkEc689XJ
 bRow0YMpOYvBmlLqkBlyGAEyHtfc3rP53PV0cVjY4ONI+oqB/lQNYQGBHs9RGmY6nh16
 zRBYHlkIr0VDZD9Zambag1Wnss6Os2bcuePCdLp4q5hs7t0j7YSlt5KeKHrzdZ6sg5qG
 Z21w==
X-Gm-Message-State: AOAM5315VqdtH9wSMefvnXdKeOjzE6TglsdMfQ97XGleTy6tB7P3bjM8
 eHTLAyw8P5DzZg9rYGeyYZ8AtuxabCfN7mar0EL8TA==
X-Google-Smtp-Source: ABdhPJz6igOpeceGcgr1x7CHFqZncopWDgHJVTamT1TtjkqwGes1sDKzPMFHqc3Ugyy3G58z0QA9QnCpuUuzz7/NhmI=
X-Received: by 2002:a50:a452:: with SMTP id v18mr11615212edb.17.1629643056044; 
 Sun, 22 Aug 2021 07:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210822115755.3171937-1-knaerzche@gmail.com>
In-Reply-To: <20210822115755.3171937-1-knaerzche@gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sun, 22 Aug 2021 11:37:24 -0300
Message-ID: <CAAEAJfDLvctAk3omLgFBBbzvufFKwSW5_cQZ+MjvyN4khGOe_w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Re-add interrupt-names for RK3399's
 vpu
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_073737_789516_5F58FAE9 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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

Hi Alex, Heiko,

On Sun, 22 Aug 2021 at 08:58, Alex Bee <knaerzche@gmail.com> wrote:
>
> Commit a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
> intended to remove the interrupt-names property for mmu nodes, but it
> also removed it for the vpu node in rk3399.dtsi. That makes the driver
> fail probing currently.
> Fix this by re-adding the property for this node.
>
> Fixes: a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")

AFAICS a728c10dd62a removed lots of interrupt-names properties
from devices other than IOMMU.

Maybe it's best to revert it?

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
