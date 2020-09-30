Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3E8FC4727C
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 17:38:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 718D720706
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 17:38:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="a73ZbNEB";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=ragnatech-se.20150623.gappssmtp.com header.i=@ragnatech-se.20150623.gappssmtp.com header.b="XMWwh4Nz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 718D720706
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ragnatech.se
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VmpBAC1K2Q7QCc4XD3tOATuT9d9uG9ksyoqHwFZYYyU=; b=a73ZbNEB+OZiedhZ8QzbyrxTf
	9ZE1Xwtumy2196JJ86KuRRnNXTW//A7nTC/DJrtyS2+QY8XWQFkMkKueOoOjcJ2qDLFeipUDITFhi
	i1s2DD6fOl1Ie/YdPyjAwN8iJTSfRLJttR0ynbWOFkQD0nzAH6aXKPjA6CHF56kV4II0MMlTGTpAH
	+fJYhZc2YMdVAYT7OECMLLqDFGydBCGye0253KHFhBvzWdgttUa/N8lMQRHUxWz1oF/Gf5fLBWVxs
	Rp6j6V9nZ8TzJRyq/Nu2eOPUyPx5ZNSUTY+oCILFyeviGXT0ljqZPQym8+GgngCMyuj6o6FWn+B2n
	USnhDOXow==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNg37-0006tj-9D; Wed, 30 Sep 2020 17:37:53 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNg32-0006s6-IG
 for linux-rockchip@lists.infradead.org; Wed, 30 Sep 2020 17:37:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id v23so2327629ljd.1
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Sep 2020 10:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=nbODIVmtMlo+oLH9Hrd8YGZI1ZfekrJ3et3L9IP3emw=;
 b=XMWwh4Nz6o2C7++lYVkhjkwC5h4Fg1CtBXKYaVfnuMN0DhI1MS18W9JzZHWGJ190qC
 3Yn6DG46RbfYlASND+TtT+IOlnxrJmcLcxSLeHwbkQyZdViuFmTwIWAZBeD8IoS0NgJU
 9/iu6348F5EBEQr0YdW3SqexfZcYhbP+g0Ce9IocdnoKHCkTPkissYZFeY5D/HkbZaUV
 s9mlzqY4RyugivLGjSCtbpu4TEyGPKucmg/Kefjoa7DrChvJ+I+QfArOGA35WACDbwal
 gY6BbBKRqovl/O0BCwOEWFasJnokCoS90w4YSuXv4Xd+jcRUCcQt1litY3yaF4F5TaZU
 Qiug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=nbODIVmtMlo+oLH9Hrd8YGZI1ZfekrJ3et3L9IP3emw=;
 b=Wu3xv2CZ/CSZEoFaDBCo/LHqvC5aWbva1dm+uCIKSsv6aSNDEWGX5LpvEcgR3QW09g
 Qo3eHCbWRUq97Wu1g9zN1AndiPbCVbo+TPqsNge98PfPP6NqqEeBm8sw0uf7f7B8eMR2
 ekHHL0MFm2idMwUusHwC875U2e8SKHxXz+5gAxuP2agE2ZnGFN58h+J8aIdJt+tpSdut
 J+PsTNRYJtzhW+j4+G6oW12SFrttpQpKGK0ab46dbVn6uO6ZK6qsR7Bs3/cGZDcBT6N9
 GMmgcxswyWfuTRUlJsfSpufJjR+6nmGY4DH/x1MQZ+PhbhXL40BGcvX77zNhkivE695A
 q7TQ==
X-Gm-Message-State: AOAM53122EZYed6LFqOX6KQsQW18zkXbWNPCAkwvWJyTHbcG/PmKLMjr
 RsCskE0dfoMfYF/IxStINA17Ag==
X-Google-Smtp-Source: ABdhPJyqDCDXp1ZYRf9156ssXFOuXiNaysi5BzWkXQEbMYcWMwfcZgmysMuz722U1SrRArZ4ULE7OA==
X-Received: by 2002:a2e:89ca:: with SMTP id c10mr1263859ljk.223.1601487465710; 
 Wed, 30 Sep 2020 10:37:45 -0700 (PDT)
Received: from localhost (h-209-203.A463.priv.bahnhof.se. [155.4.209.203])
 by smtp.gmail.com with ESMTPSA id 77sm261464lfg.199.2020.09.30.10.37.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Sep 2020 10:37:45 -0700 (PDT)
Date: Wed, 30 Sep 2020 19:37:44 +0200
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] of: address: Work around missing device_type property
 in pcie nodes
Message-ID: <20200930173744.GG1516931@oden.dyn.berto.se>
References: <20200819094255.474565-1-maz@kernel.org>
 <20200930162722.GF1516931@oden.dyn.berto.se>
 <977f60f07a4cb5c59f0e5f8a9dfb3993@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <977f60f07a4cb5c59f0e5f8a9dfb3993@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_133748_622435_420CC0CD 
X-CRM114-Status: GOOD (  26.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 samuel@dionne-riel.com, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 kernel-team@android.com, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Marc,

On 2020-09-30 18:23:21 +0100, Marc Zyngier wrote:
> Hi Niklas,
> =

> [+ Samuel]
> =

> On 2020-09-30 17:27, Niklas S=F6derlund wrote:
> > Hi Marc,
> > =

> > I'm afraid this commit breaks booting my rk3399 device.
> > =

> > I bisected the problem to this patch merged as [1]. I'm testing on a
> > Scarlet device and I'm using the unmodified upstream
> > rk3399-gru-scarlet-inx.dtb for my tests.
> > =

> > The problem I'm experience is a black screen after the bootloader and
> > the device is none responsive over the network. I have no serial console
> > to this device so I'm afraid I can't tell you if there is anything
> > useful on to aid debugging there.
> > =

> > If I try to test one commit earlier [2] the system boots as expected and
> > everything works as it did for me in v5.8 and earlier. I have worked
> > little with this device and have no clue about what is really on the PCI
> > buss. But running from [2] I have this info about PCI if it's helpful,
> > please ask if somethings missing.
> =

> Please see the thread at [1]. The problem was reported a few weeks back
> by Samuel, and I was expecting Rob and Lorenzo to push a fix for this.

Thanks for providing a solution.

> =

> Rob, Lorenzo, any update on this?
> =

>         M.
> =

> [1]
> https://lore.kernel.org/linux-devicetree/20200829164920.7d28e01a@DUFFMAN/
> -- =

> Jazz is not dead. It just smells funny...

-- =

Regards,
Niklas S=F6derlund

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
