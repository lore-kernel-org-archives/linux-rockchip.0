Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77AB5EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 11:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaKW4C+K1bKceuE33SrAPBSHzrVzH9Uog9K1R1h2IWc=; b=rX73v3Mhbn1IN3
	IHeDL7t7MmZE/afmJdSmPTZk1T5KWo/0Isqp38doJ6Nc7WIwtUNZ94cqGy8SNYL2fZdAzw/1+DE3y
	wl0TK2YkrFG8cbQqk0eJ+/tzNxnD+Xct3319fkzbgou2QVHr5EWdAStgWA1KpqXfd6tOii7ER04Ap
	2cc5kabbkInkqCusE6Ym5DqbY0Y3bO1gQl7m/cdoe1ZkAhsBD/68SEQ9wTgACeU9xWXupSDhtb040
	W3PYwuVWU5YV1YZhisA1OlMigeXMAsYGqvMaTWFp5eggkrWlgbSXdA488yKUelpXybRTZm9N1+Wpo
	w1B0YEuW6pS1Ae+9+cwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAU6j-003UJL-2U;
	Sat, 17 Jun 2023 11:28:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAU6f-003UIL-2Z;
	Sat, 17 Jun 2023 11:28:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8F21D60B4C;
	Sat, 17 Jun 2023 11:28:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD764C433C8;
	Sat, 17 Jun 2023 11:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687001316;
	bh=PcbO/2SK/McapUVZKPcV28kGK5+fwM83lr3JyMuxhUY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qMF3Jr57Q1efC/czw02kDtR3p2AWQ4TUKhTgva49vQW1oXmjoemwjNSfEndcd4B0B
	 1KHDTlFxl/FQtNkozkO5VbcoHVsV7tuxDBQv4XYUHcqMiAxsYgZFh70IR43ueNFVHn
	 PSmj1uGMaQmMg4peU/2EQnRYR4bccI8TKcCbgP/WnFWj/hk9puYHjbaYS7e1G+qY9U
	 YPqwUoYJXuj681paMGBc097SY3NXbs+yrXL/fnINB00eGTjMK/XejBU644I6OkqBZ3
	 PXXh+yldDxlAaTy5pQcoYPy8UmW1RDOb1UcLBac1HobTBrTVkfiwp3GOa83yZqv1ve
	 R5F43SYflG+KQ==
Message-ID: <a837f089-afaa-0ff8-73d6-6f370ba63f52@kernel.org>
Date: Sat, 17 Jun 2023 13:28:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add dts for Firefly Station P2
 aka rk3568-roc-pc
Content-Language: en-US
To: Furkan Kardame <f.kardame@manjaro.org>, pgwipeout@gmail.com
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <b62a188d-fa47-2f7f-7c99-90e5f729c227@kernel.org>
 <1687000758103.681646360.380124875@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <1687000758103.681646360.380124875@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_042838_269970_597E8218 
X-CRM114-Status: GOOD (  14.98  )
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

On 17/06/2023 13:26, Furkan Kardame wrote:
> 
> Hello  Krzysztof,
> Thank you for spending your precious time on reviewing this patch. 
> 
> My apologies for the silly mistakes, Thank you for the detailed review. 
> I will fix the patch and send as version-2 to all the latest maintainer.
> It have been used in manjaro kernel since long time and some of the users 
> are already using the device with this patch.
> 
Please don't top-post.


> It will be better if it can be tested by more developers and reviewed 
> before it gets merged.
> 
> Recently I fixed the warning before sending the patches, Build log can be 
> found here:
> https://gitlab.manjaro.org/manjaro-arm/packages/core/linux-rc/-/jobs/12638/raw

I don't see there dtbs_check, only dtbs W=1.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
