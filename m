Return-Path: <SRS0=yKcj=B5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 206E4C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2020 22:30:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E1F64207DE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2020 22:30:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="s904UxiU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E1F64207DE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1S/csxgg4ezHl6eOAdlLpCelghvmmOQvZsXP7k+0bBc=; b=s904UxiUifCDnfbwCwdOWfQVM
	0y2XTxN3uWe8zIdJvXItL1I8pWfROFzJPDkvPX/aXOvgRZ0Oub8be93nztiu+WbohUNSe96WefWHq
	9U4/Ft5/m4JegD3P69j+jYXv5OyhNnoVWRPmNx9O0bf3plAuD+bktt/6cGvNc+B7vOqqlqgyPsSfU
	T0HAk21GaLjBwVBIzg7PSdbSHXM8Tn45wP/Ihvs7k0TCWtvX+Z3hACq6mtrFoToRYbXGQozlkqP+K
	vZyha2jLLn+RvQh+oCjqFg2FhITIjd6ApVygAaebkN032yHOg6VG8vgiZdqu5oaJZsg0qBgMXue/d
	7y3fd5PBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8WbO-0001iA-Bb; Wed, 19 Aug 2020 22:30:38 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8WbL-0001hV-N5; Wed, 19 Aug 2020 22:30:36 +0000
Received: by mail-io1-f65.google.com with SMTP id q75so407511iod.1;
 Wed, 19 Aug 2020 15:30:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TPAgoF6CS6LHb79mBEQMdU6QynqQNT4ADYnbP9+wi74=;
 b=nR+TuRxBiwQ0POjjDHLhex7/BjQocRzhrvmZ61lkKicy1vudgETKNX4e425r6Vp+6K
 QtHeRdkz6XO+qbbmQqdWvqu6f09r3onT/WApoQp477xHfGu2OFyA7gru7nols2YvgrVT
 SRXd9pKvQifD51yefEQ4vAfcIdhlVyTOqMvZFWgVplYw7yryvVbTvcLS/mrTXP1q88Re
 0RPQVs97aJZ0sLB4KYfDR0ZVOl0YC2rH59+d0EX1NoU4n4y6MlND+pYAj8gN7lQ74DOz
 YkyKD78OOgNjTfndx+IBd7pbxvhaFL5KATBA7yzXVzza+Qd/AnvgHvjYvY8F0X2nFOmt
 KN6A==
X-Gm-Message-State: AOAM531tVGJ/tDcmtWChZ2oEYHFf0zG9yYzQ51Wc3DCK6HPvlc7KeteK
 MUIjp6gFBuw/35+4po1avQ==
X-Google-Smtp-Source: ABdhPJzOVbOE3td6fQsaX3GtZOf+rgr1VvqINzVc5EPIlkHCXVE0LtV3YFDHep9Apf5exI1W+VesoQ==
X-Received: by 2002:a02:8806:: with SMTP id r6mr533184jai.88.1597876234835;
 Wed, 19 Aug 2020 15:30:34 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
 by smtp.gmail.com with ESMTPSA id z26sm243083ilf.60.2020.08.19.15.30.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 15:30:34 -0700 (PDT)
Received: (nullmailer pid 2077672 invoked by uid 1000);
 Wed, 19 Aug 2020 22:30:32 -0000
Date: Wed, 19 Aug 2020 16:30:31 -0600
From: Rob Herring <robh@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH v2] of: address: Work around missing device_type property
 in pcie nodes
Message-ID: <20200819223031.GA2077542@bogus>
References: <20200819094255.474565-1-maz@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819094255.474565-1-maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200819_183035_813096_441BC873 
X-CRM114-Status: GOOD (  18.05  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, kernel-team@android.com,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-kernel@vger.kernel.org,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 19 Aug 2020 10:42:55 +0100, Marc Zyngier wrote:
> Recent changes to the DT PCI bus parsing made it mandatory for
> device tree nodes describing a PCI controller to have the
> 'device_type = "pci"' property for the node to be matched.
> 
> Although this follows the letter of the specification, it
> breaks existing device-trees that have been working fine
> for years.  Rockchip rk3399-based systems are a prime example
> of such collateral damage, and have stopped discovering their
> PCI bus.
> 
> In order to paper over it, let's add a workaround to the code
> matching the device type, and accept as PCI any node that is
> named "pcie",
> 
> A warning will hopefully nudge the user into updating their
> DT to a fixed version if they can, but the incentive is
> obviously pretty small.
> 
> Fixes: 2f96593ecc37 ("of_address: Add bus type match for pci ranges parser")
> Suggested-by: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  drivers/of/address.c | 16 +++++++++++++++-
>  1 file changed, 15 insertions(+), 1 deletion(-)
> 

Applied, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
