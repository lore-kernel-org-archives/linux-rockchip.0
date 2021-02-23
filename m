Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC224C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 00:34:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 692C664E07
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 00:34:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 692C664E07
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bV48tXfShK3UKL5tKXeMoDenNmPsCy+Bjg37zLB90/g=; b=WBdJDgTQAY7TVCN8qikNqfNFG
	xRKbsAtqFdVavLFSqGpk4L9BKZ+foqgK6E3NuWhxiKSEp2grP+v5NHkiEX9zVTmuedvun6q8KeyVa
	Uo/KHDXmbSNhTFxMb75swQZtcwqDJKfxMv+E4S92ABlmU3+KNQzRZV+5I0vpJdq0qwJs2q1WNTQ9T
	d0me/h5HYDmiHwDyiF7yjJ1koxrBJh3rp1/69yU6hyPCmE0Bd2yUAagALRbpjxRKuXW5m+Tg5fWJF
	jaOTSQwOM/wQl/RAlJHKpWuMcABvAn3SVR7xyUqLi2Titv5fJOeBBUU77XFmCRXUwsvM37lE4qvh1
	ILFsLks0g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lELf7-00069J-As; Tue, 23 Feb 2021 00:34:49 +0000
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lELf5-00068d-K7; Tue, 23 Feb 2021 00:34:48 +0000
Received: by mail-ot1-f44.google.com with SMTP id c16so13980088otp.0;
 Mon, 22 Feb 2021 16:34:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lyivJb9f8wPCa/lD4YB1UDD8vooV05Tees3O5Wb+cLw=;
 b=H2HusLRASuqhX0grsTYQGivajaJ+9asNh0rniHiVGi2OOhrNXSxWKZOv+7Ha5HUn0n
 bQF91134oW5lELd1KV3AGZAspkf3Y2uYwHnOmAh3fmMD8kV6ntDEMSfn4g3Hgz+tgHxL
 0o3KIMQ44wG2J+DDI/VvUwlS7eBSc8MSCwx/EB7j96arF99i80+QgbBJKZhOMPZN/dYn
 XRRWGngoPBII6QoLRMFXQqzyJBklZILupcm44V+kuOSxZ0vZOSCOfJWG/AuJXG7zo46F
 RAnC18Y1LtlMROaRDheYsdo4N0X2KZsdUowegLCaeKyNbCoz/occFNbMh/1QhTh0RyyA
 +uUw==
X-Gm-Message-State: AOAM531S1rac5wtfcSoImr1AbhJXIWXZvnQtktJKLajjphVuYfitwLzT
 i8loVswkumP6kimAcJRguw==
X-Google-Smtp-Source: ABdhPJx6i286DEQbq/GZ3Ul1huDMj1I7vyETL5vk9U6RLjl8/FuVzm0xigHBLix9OEtaxy4LDFdbQg==
X-Received: by 2002:a9d:42c:: with SMTP id 41mr4093792otc.108.1614040484864;
 Mon, 22 Feb 2021 16:34:44 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r13sm3901863oot.41.2021.02.22.16.34.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Feb 2021 16:34:44 -0800 (PST)
Received: (nullmailer pid 2517303 invoked by uid 1000);
 Tue, 23 Feb 2021 00:34:42 -0000
Date: Mon, 22 Feb 2021 18:34:42 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 8/9] dt-bindings: media: nxp,imx8mq-vpu: Update bindings
Message-ID: <20210223003442.GA2516123@robh.at.kernel.org>
References: <20210222122406.41782-1-benjamin.gaignard@collabora.com>
 <20210222122406.41782-9-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222122406.41782-9-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_193447_737999_29B05D76 
X-CRM114-Status: GOOD (  13.40  )
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
Cc: peng.fan@nxp.com, kernel@collabora.com, festevam@gmail.com,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 dan.carpenter@oracle.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Feb 22, 2021 at 01:24:05PM +0100, Benjamin Gaignard wrote:
> The current bindings seem to make the assumption that the
> two VPUs hardware blocks (G1 and G2) are only one set of
> registers.
> After implementing the VPU reset driver and G2 decoder driver
> it shows that all the VPUs are independent and don't need to
> know about the registers of the other blocks.
> Remove from the bindings the need to set all blocks register
> but keep reg-names property because removing it from the driver
> may affect other variants.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 2:
> - be more verbose about why I change the bindings
> Keep in mind that series comes after: https://www.spinics.net/lists/arm-kernel/msg875766.html
> without that review and ack it won't work

Better, but you've still mentioned nothing about breaking compatibility.
Why is that okay?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
