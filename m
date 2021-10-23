Return-Path: <SRS0=ze0D=PL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C5CC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Oct 2021 18:34:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6940560F46
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Oct 2021 18:34:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6940560F46
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=svmhdvn.name
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRu0nDl5L/nFUzTCEMvsaGVkv1r4Mv4HO4D8T3Wqa28=; b=G2O48DvRSp9Eo8
	HCdEqaM+DlZ2vQD7DgJJ48kfOUkcM5hN1JnAEnHC6BQ/zGoyhVffxv8PwTW/SfB+Veaah/97iW684
	hKEIQ5NKVucyFgmwciY7Fvzdw+rqrsWto+u85Xi2+S+MAh+XozroeTGTT2VzhE02k1TL0uhfT9Brh
	O4uG9hGvRhztxKJ9E5WXZ7AOEJ5I1oePhIJlXzyq3xTd5HOoimP3Ko+K57q9ODRbnwT7ZtcNbmaj4
	MinBd+YH45MZqsGsneM6b3G//j/s2MUbpYmo0JZCziab4DApPUSPReahQrqfR5frDJesAFg3o+mpD
	8jSEBcJmIxu+2BQNkvGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meLq6-00D4h3-Ik; Sat, 23 Oct 2021 18:33:54 +0000
Received: from out1.migadu.com ([2001:41d0:2:863f::])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meLpu-00D4fR-R0; Sat, 23 Oct 2021 18:33:44 +0000
Date: Sat, 23 Oct 2021 14:34:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svmhdvn.name;
 s=key1; t=1635014015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=JXI5zMzn4ZCVC7NxCdK+DQvmhL2s3QnW1bF9OqxDGAw=;
 b=Omi6a7AQfgZmu9BDEEbRmDEF5SrhszAA4NmExL8zUw52f9vuIrnX1p1Czi/HhvnDLbo9E+
 ofPP/JO/VchGwBgJGbfv98vDV5ZFuj3uymy8hYuFOXtUCw1nAimxx67T/uK/sSd9nGZXVu
 pOPu6OIaVSZhCQoNCnUkVcCUcXxoOx8=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Siva Mahadevan <me@svmhdvn.name>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 "matthias.bgg@kernel.org" <matthias.bgg@kernel.org>
Cc: devicetree@vger.kernel.org, Simon South <simon@simonsouth.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Guillaume Gardet <guillaume.gardet@arm.com>,
 linux-rockchip@lists.infradead.org, Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Disable CDN DP on Pinebook Pro
Message-ID: <YXRVrY9LYU9aD3Vp@think.localdomain>
References: <20210715164101.11486-1-matthias.bgg@kernel.org>
 <162655869103.853863.17662789602843984386.b4-ty@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162655869103.853863.17662789602843984386.b4-ty@sntech.de>
X-Migadu-Flow: FLOW_OUT
X-Migadu-Auth-User: mbsync-msmtp@svmhdvn.name
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211023_113343_058859_C18D462C 
X-CRM114-Status: GOOD (  11.06  )
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

Heiko Stuebner wrote:
> On Thu, 15 Jul 2021 18:41:01 +0200, matthias.bgg@kernel.org wrote:
> > The CDN DP needs a PHY and a extcon to work correctly. But no extcon is
> > provided by the device-tree, which leads to an error:
> > cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
> > cdn-dp: probe of fec00000.dp failed with error -22
> > 
> > Disable the CDN DP to make graphic work on the Pinebook Pro.
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Disable CDN DP on Pinebook Pro
>       commit: 714b35da2b6eace13bfe23ae02330e3b6a2ea4e7
> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>

Will this patch be submitted to mainline? I can confirm on my pinebook
pro that this solves the issue.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
