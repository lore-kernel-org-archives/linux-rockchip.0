Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A37C4727E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:51:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 782A12086A
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:51:39 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ZTKksoFN";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="az43cNIG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 782A12086A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YmBdtizMEdOcA0RaC5pyK4j3XKgl1PxLPUEMETxH//c=; b=ZTKksoFN4pCycTjwR1imBWf3F
	zQVVK+iUgd8XDHunNe7unX21sK6HROGb8Vj2TP7xn0R8bBODrBs0dlY0ri5YD2MdyzxUJe2OizUWu
	T9DjWpPuSq+7/3L2q/Gole0XBwxCfhptxSB8zHrEwwjlkz/EIMgknATjCPWpFa6Cok9VZ7Do/la37
	UzXq6brJrfbEtqQZoT779/5Bh2fguJwN+62lS8UKJ1IKI6qigiLFC7KKm5xMk6yS/X/3/ZIPZpt+V
	CDfblXXcYHi5ggG9A4pXUjjMIXEgbutOqQdoSKr7CGcBBuZt54A9CCq//uSIMvBD/Ke/IRbXX1q5p
	B2CCsMRwg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLugp-0000IT-Ax; Fri, 25 Sep 2020 20:51:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLugm-0000Hk-W2
 for linux-rockchip@lists.infradead.org; Fri, 25 Sep 2020 20:51:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id y15so523523wmi.0
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2020 13:51:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6Z8BhxippfUZtNdFWughgH1+PbNc8MO7lSd+o3iCM/c=;
 b=az43cNIGArpsiSG7XArxrcjynb+/3qdG+QhjsePPT3YYAqZ27Akk8mwp+GB/ngAWOx
 pYVxv3K1i3Swfguyz4MetZrG4YnJIrLv/S/QGBX+1MO5T24OcvXzkyjRXCL1dHj8rG7Y
 0sQgxghsAT2MkyZtzxfhfx/uA4rkuPiPPv8Rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6Z8BhxippfUZtNdFWughgH1+PbNc8MO7lSd+o3iCM/c=;
 b=JoriBA3oVp4NHfq8QEItQTGkAyRtIBSwL8Nr4Cvz1afywUpQpzkgrWSj93k2YMOVR+
 Jg//vFIYIHgsJXjrBuR6+OkpsiwRhspHsxj6bqKr4yBnH7YYWh3axksChxAnxdNRluWo
 LTi1oTyDDyXLiYgQQBJxIXX9CH7nymrikYHwLCI6UIiF/xHpdNlWS2BZm9RS48Bdn0Zr
 Qu18A8pOQFvTzsL3R7Qkd+rMSsI43fZ/0wtI1jXf2UmrL1gYgpHmQqsL6xqy+w/b9N7Z
 RJ/WsbqC9fPTiWOdEIul6XP9c6za98Bmq/N24KL2uFppXjAI7hA4Hv0oJ6PoCfB8bIch
 5rUQ==
X-Gm-Message-State: AOAM530odlUwyADzUx3FpO7mSZzFUJ5WP8iR2IvHr3awIrmd1LEMn9iZ
 m5AXarry6v/KxAmQFsIXW0q1DQ==
X-Google-Smtp-Source: ABdhPJzYUznBEdWLTjkDwuAoMOIGVJulf4/Elk/DYZsm4boK+w9JCf6nqJanlLuh6gjwyoU54cTg1Q==
X-Received: by 2002:a7b:ce89:: with SMTP id q9mr381308wmj.65.1601067091972;
 Fri, 25 Sep 2020 13:51:31 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id t6sm4632341wre.30.2020.09.25.13.51.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 13:51:31 -0700 (PDT)
Date: Fri, 25 Sep 2020 20:51:30 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 11/12] media: staging: rkisp1: use the right variants
 of spin_lock
Message-ID: <20200925205130.GI3607091@chromium.org>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-12-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922113402.12442-12-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_165133_041208_4CE7E543 
X-CRM114-Status: GOOD (  13.27  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Tue, Sep 22, 2020 at 01:34:01PM +0200, Dafna Hirschfeld wrote:
> When locking, use either 'spin_lock' or 'spin_lock_irq'
> according to the context. There is nowhere need to
> use 'spin_lock_irqsave'.
> Outside of irq context, always use 'spin_lock_irq'
> to be on the safe side.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 15 ++++++--------
>  drivers/staging/media/rkisp1/rkisp1-params.c  | 20 ++++++++-----------
>  2 files changed, 14 insertions(+), 21 deletions(-)
>

I'd prefer to keep the irqsave variant, as it doesn't hurt, is more
consistent (all the calls on the same spinlock use the same variant) and
makes it possible to refactor the code easier in the future.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
