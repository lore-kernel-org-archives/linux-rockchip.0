Return-Path: <SRS0=FJi+=DD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6F5C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:03:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1AA5D206D4
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:03:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="M+EgGYGD";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PNuFpmwN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1AA5D206D4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zLZF0J9Kt6E7u6O/ybwOrUnCxzTaNO5uJcbOC+nnyHk=; b=M+EgGYGDECqopddocKH9HDlTb
	mDka29AqeV51E3I4oq7C/uOs9fJ/8hGOWNiwRpCFJFVYlOf/GRpBMFsqHh9Sb9KoOyd0rEZMDC8ww
	M6/sqwSgqJENwBR1fDKoUCVmKxgC+nBJaQaxjnHGbj1L3HqzpVditVovD9C2PoH5nRVv0aqNxS1tW
	UMxbnrWVthAFRNjWuuaJkMWV2XwK04q7mweAwH81BmREjrQI+JYYUrAj7eaaF2ULYt/6uJG0JEYn+
	OzsVpWHa3rrxxxgY19XWhyX081sUbYBOrNqOfakKRAkUapZfZ0JV/DqsodxHb4E89ufzbfi6C1Dsc
	3xLzWPivw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kM9rR-0001Bg-AP; Sat, 26 Sep 2020 13:03:33 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kM9rP-0001AT-4w
 for linux-rockchip@lists.infradead.org; Sat, 26 Sep 2020 13:03:31 +0000
Received: by mail-wm1-x341.google.com with SMTP id l15so1256689wmh.1
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Sep 2020 06:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6UBlp4CWE/HNUMg46vGuXH/W4+PrU2QCjrc8dmoCqx0=;
 b=PNuFpmwNBdW/TGJSBIP0GAADCkUiJiN3BePu59PEzCMlCXYVv+OLoczXNNVfGW7GAf
 ZsIIVdoOhY0IsSg1qTLlM46HvznPpDEZgXCebWEEK1ft9+j5c+8EjUwlhkLqmSDP7mpx
 4n3h5/vGkVdPc1nUSmhrDus0L0N0Yz96r3vpw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6UBlp4CWE/HNUMg46vGuXH/W4+PrU2QCjrc8dmoCqx0=;
 b=nbq+myzyHDGK95L0IytZNpSH5YcsXYuCmyB3scn2fJzQgEGDPI581IBp5F8MzenwTz
 v4lvJRUB7VzFFr9NbbLTXTBQXdiQDds0as19WyvhywYRJ96TeuvuC0mDpZkMoV2BXnY3
 YQaR5d5GppGpQgPpZHAQhOsNyo5/eYRKSKBNjORoqwoOW5PpUXMzRnwG63bZblo/YdZ6
 ZkBiRs3jkxSz0n+SE3Czz44udRPiZEzrlCRwBs80Hb1q7wZCkIKzn/HSOYEE4KY7yASX
 YrJVS8/txZa6uiG7Miv8BuTlnLNje1hePdFnW7U2EJlRixE05k/M7HXwNbmnKzGf2pne
 MdNw==
X-Gm-Message-State: AOAM533TX4rnB4itH4gjx5/JKUfI94E+KHfYNvSiDqK/lol1gyKREIRl
 /07JNdW+5+v1zcuyUFymaCFhJIKwFIUUTzXB
X-Google-Smtp-Source: ABdhPJynIuaCTOn8KUC4rrc+W/+aEYuVm8XN6ViT/zFkUVty6k8hF7b/mtHx243jPWCjHGHQoYci3Q==
X-Received: by 2002:a1c:9c8c:: with SMTP id f134mr2541646wme.27.1601125410239; 
 Sat, 26 Sep 2020 06:03:30 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id e18sm6533467wrx.50.2020.09.26.06.03.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 06:03:29 -0700 (PDT)
Date: Sat, 26 Sep 2020 13:03:27 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v5 0/9] move Rockchip ISP bindings out of staging / add
 ISP DT nodes for RK3399
Message-ID: <20200926130327.GD3781977@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200722155533.252844-1-helen.koike@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200926_090331_226990_CA467FA7 
X-CRM114-Status: GOOD (  11.25  )
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, robin.murphy@arm.com,
 mark.rutland@arm.com, kernel@collabora.com, ezequiel@collabora.com,
 jbx6244@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Helen,

On Wed, Jul 22, 2020 at 12:55:24PM -0300, Helen Koike wrote:
> Move the bindings out of drivers/staging and place them in
> Documentation/devicetree/bindings instead.
> 
> Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
> and make ARCH=arm64 dt_binding_check.
> 
> Tested by verifying images streamed from Scarlet Chromebook
> 
> Changes in v5:
> - Drop unit addresses in dt-bindings example for simplification and fix
> errors as suggested by Rob Herring in previous version
> - Fix typos
> - Re-write clock organization with if/then schema
>

Besides one comment to patch 8/9,

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
