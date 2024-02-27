Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C17C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 12:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AAwggyswuxa9uDxyucD4IzUB+j7Symi1x6Q/A0AYA4=; b=Yf1cwDR1DouwHn
	9UnUIVMvDIkU4YVNOVELa7ttitf6rKq57AFfRDYAY0svvmPgIX5D4Ra90Y6hFezChLOXkkWJtjRD7
	sD6rkU0SmzhU/8fDvR1ZFX82xQ10jC/etlCKpIu2rnr9YEljgHmuxld0djdYOXmREkm4YUr5m+DF2
	nF1/qt2SHzZl0NXJbxZ83oH45mLbxKeeqjYV0iTLZDmJLarS1WQaV+CHsN/sGfo+VbszIBGjH+zu/
	tndvRh7wQZpMWgmdWkA5A+zkp9Cv7tPkTvyspn1kBiVOh/MRhaq1i1iy4VM+0LHZRlArTaaIAkmmV
	zi0JkH+NrGhgOOwXX7gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewuQ-00000005G7e-29fF;
	Tue, 27 Feb 2024 12:50:10 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewuN-00000005G6r-0yIT;
	Tue, 27 Feb 2024 12:50:08 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3c18fb3265cso688310b6e.1;
        Tue, 27 Feb 2024 04:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709038205; x=1709643005; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F/8TLN5kAmVzuWnrwCPlCAhzdNiyKR8NIwFU1ivGP6Q=;
        b=KS/KHLqMrqmoNvnb/kc1aN3XuXU7BvTD6vf+PPT93MVWpj0fm8+zbsokR7GdV02zoq
         BlzLOxYXZlHaiuwfvPUfXr+LJx8nnnyH9+9/VNxIRrFlCgnSChmSTrIrEJYUDquZ0nq7
         7lhS/N2/XXuu/4ovgFvKkeB9wQWvoNF/QM8y9QTJLWeBezJ1Bqvk8ADCW/H8wVIz+OEE
         TcHmZDhzl3QbAZOMza8yhsKasx/PBHLzYdqvmQHiw49i9gvC+3hfMpoJQnDXWQ+BCkP+
         usy1q7deptQidocSG8PQsj9SXJvH13w7WqGcp12/8PICLKyHm+ThPYuW8ArsE8ut1MdX
         cY6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709038205; x=1709643005;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F/8TLN5kAmVzuWnrwCPlCAhzdNiyKR8NIwFU1ivGP6Q=;
        b=CH17Amax4LD9pXzAzeclrVa342EGdZS7qoXOUws650T3AXM+zI+9n6T78J7UrURwBu
         aRLpxs+Ma0O1JlJu6rzpwDqs7FY/IU9IfmLYLuYGv/aosAB+5kWhxT/l0CPP/iljedml
         RuPqSjaBynqCTiMXEejE0aeCywa61doP56Dznmy8IQnEVGZUFAWcuh1qEFPKH1HrC/UK
         fPeMQIeBe1LrqtjgH6Ww4/EL7l4jkRLZpLo1anhokyiiHmI/0Uvsygjcvu4m9cs/1zI9
         V2uYsEg73L6+rT1L5lh6m0bW5VsRSugJ1gmaqO+QcZIMcOdeC3a49yunzenE5H8v91xY
         wOeA==
X-Forwarded-Encrypted: i=1; AJvYcCX8IdNNbL1DDMFdBXUzmWSj1MdetY8pazekh1LiNVcb339R+pqmUJXggujPGiIeZKlmTj6oUNvBiQDL9RA+/jWY2DM4quR6VZ8077YpEMs9BWPqto9ehzbE9SN/icRtPthLL9GNu8ocHpryDvriu/IpQxRTCzr7Fa0=
X-Gm-Message-State: AOJu0YwigM+VhpCnzqW6KJfeM6II9OUYQgddr46vhI7YNh+Ciluq2rKl
	zy7Uca3GwCcKV+kWm3FCUb4YmBu2BWU4y279/E0bloanj7pDqu01nHczidn6EssRrH9UMSw92s7
	3QC7i0cJQKafkjf7VOgiN1JNWeiU=
X-Google-Smtp-Source: AGHT+IFpf3fUm6FcmrIThs6BXQtgpJXTn3AU43946pENs6vOHlERSeU5iODtj2rnFktpgmREMTo4xF5qQjXehS/m7ew=
X-Received: by 2002:a05:6808:274b:b0:3c1:9422:8953 with SMTP id
 eh11-20020a056808274b00b003c194228953mr684685oib.25.1709038205105; Tue, 27
 Feb 2024 04:50:05 -0800 (PST)
MIME-Version: 1.0
References: <20240226182310.4032-1-linux.amoon@gmail.com> <8ceea100f2ef7cce296943ce1397161a@manjaro.org>
In-Reply-To: <8ceea100f2ef7cce296943ce1397161a@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 27 Feb 2024 18:19:48 +0530
Message-ID: <CANAwSgQnoBx+th6s254sML+Zw+RZQC6WU9TjfMoWgHxmCqbDcw@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add cache information to the
 Rockchip RK3566 and RK3568 SoC
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_045007_305524_3AB617D2 
X-CRM114-Status: GOOD (  21.18  )
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

Hi Dragan

On Tue, 27 Feb 2024 at 00:39, Dragan Simic <dsimic@manjaro.org> wrote:
>
> Hello Anand,
>
> On 2024-02-26 19:23, Anand Moon wrote:
> > As per RK3568 Datasheet and TRM add missing cache information to
> > the Rockchip RK3566 and RK3568 SoC.
> >
> > - Each Cortex-A55 core has 32KB of L1 instruction cache available and
> >       32KB of L1 data cache available with ECC.
> > - Along with 512KB Unified L3 cache with ECC.
> >
> > With adding instruction cache and data cache and a write buffer to
> > reduce the effect of main memory bandwidth and latency on data
> > access performance.
> >
> > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>
> I was about to send my own patch that adds the same missing cache
> information, so please allow me to describe the proposed way to move
> forward.
>
> The way I see it, your commit summary and description need a rather
> complete rewrite, to be more readable, more accurate, and to avoid
> including an irrelevant (and slightly misleading) description of the
> general role of caches.
>
> Also, the changes to the dtsi file would benefit from small touch-ups
> here and there, for improved consistency, etc.
>
> With all that in mind, I propose that you withdraw your patch and let
> me send my patch that will addresses all these issues, of course with
> a proper tag that lists you as a co-developer.  I think that would
> save us a fair amount of time going back and forth.
>
> I hope you agree.
>

I have no issue with this,.If you have a better version plz share this.

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
