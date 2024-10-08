Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64082CEFC2A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 16:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crFj54YNpLZ6DnhFURBGHr2fCucQEAHmraaJ2ymx0MM=; b=YkUIFgMEUnjB1dyAefWJPYEM+S
	IhZhm2IGYYFfk/1h4k3KI+sao7fK7yWaTedNV9G7pvToTpCR7ajGj8lZRGqM7T/NsM7k8YFWc/i09
	kFqxs3Y2EUFOfjsjhBQi914DObsnVqlFkL/miPfqBap6ljLjbLYDsnQJVn1brW/kqitxhSs3KS62V
	X9mn5cmiYpLNMu9aPByQjdfJh1Q0EVW4F/qd+RVMEIcoZh/iaYkKmEWNwbJZ8DWXehIFaGRrF5VKn
	98cG3bd4KjXyDw44rTtZda69NMqbtZHUjCs42bvqQO1NYCo6nfokauIzSYhaByNpe8j3wD1cRuq9P
	7OX30BgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syCx2-00000006Ttq-1iUc;
	Tue, 08 Oct 2024 16:20:44 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syCvB-00000006Te5-282Y;
	Tue, 08 Oct 2024 16:18:50 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728404327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LxQ8IxcGyXJP1zufYJ5M9jcB29xMFBanedmkDjAMRI4=;
	b=N+kX042BIyH4GAwVaT870FLMjhOz1FkC06gB6NqhrM3hfiE3WNEAvGhlmoJKq/W1Nql1/O
	Qx7RvqH0ghsBWC8EzF6Sr3F7RezkXGT/MTKKQ/5yrVjhdJ63YjictAq3Z9ai/M9jryeOcW
	SYiABf3JB0n6jdzS9PmYTwVylFx9wFlbBOw6Yp7QDPFCzog7sAQVwWivfzWxkxu5JOtJ2M
	2XARZ9Sb1XZuO6Eda7lBBFjOgdlMpwPXkalSQ7DFJOwGc50e6A3eO9Xrtm4PgEARhpcvex
	XJQT7/PiphETvSHXTlcLVcahxqnt5OHbuhdHRw794ps/Z/VikYPaUN6y1YM+Dg==
Date: Tue, 08 Oct 2024 18:18:46 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, heiko@sntech.de, gregkh@linuxfoundation.org,
 rafael@kernel.org, oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
In-Reply-To: <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
Message-ID: <e8cbbf877cc0e6838afd2d6de3b7bfa1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_091849_844977_ED8EF522 
X-CRM114-Status: GOOD (  20.12  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Mark,

I just spotted a couple of small typos, noted below, and I hope you 
won't
mind to apply the fixes by hand before applying this patch, please?

On 2024-09-29 11:21, Dragan Simic wrote:
> Some drivers can still provide their functionality to a certain extent 
> even

s/extent even/extent when/

> some of their resource acquisitions eventually fail.  In such cases, 
> emitting
> errors isn't the desired action, but warnings should be emitted 
> instead.
> 
> To solve this, introduce dev_warn_probe() as a new device probe log 
> helper,
> which behaves identically as the already existing dev_err_probe(), 
> while it
> produces warnings instead of errors.  The intended use is with the 
> resources
> that are actually optional for a particular driver.
> 
> While there, copyedit the kerneldoc for dev_err_probe() a bit, to 
> simplify
> its wording a bit, and reuse it as the kerneldoc for dev_warn_probe(), 
> with
> the necessary wording adjustments, of course.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  drivers/base/core.c        | 129 +++++++++++++++++++++++++++++--------
>  include/linux/dev_printk.h |   1 +
>  2 files changed, 102 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/base/core.c b/drivers/base/core.c
> index 8c0733d3aad8..f2e41db0c09f 100644
> --- a/drivers/base/core.c
> +++ b/drivers/base/core.c
> @@ -4982,71 +4982,144 @@ define_dev_printk_level(_dev_info, KERN_INFO);
> 
>  #endif
> 
> +static void __dev_probe_failed(const struct device *dev, int err, bool 
> fatal,
> +			       const char *fmt, va_list vargsp)
> +{
> +	struct va_format vaf;
> +	va_list vargs;
> +
> +	/*
> +	 * On x86_64 and possibly on other architectures, va_list is actually 
> a
> +	 * size-1 array containing a structure.  As a result, function 
> parameter
> +	 * vargps decays from T[1] to T*, and &vargsp has type T** rather 
> than

s/vargps decays/vargsp decays/

> +	 * T(*)[1], which is expected by its assignment to vaf.va below.
> +	 *
> +	 * One standard way to solve this mess is by creating a copy in a 
> local
> +	 * variable of type va_list and then using a pointer to that local 
> copy
> +	 * instead, which is the approach employed here.
> +	 */
> +	va_copy(vargs, vargsp);
> +
> +	vaf.fmt = fmt;
> +	vaf.va = &vargs;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
