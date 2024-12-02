Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410B1D78333
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 16:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FIpyh4oV5/8XDAyKvHGcTBWo59RATqn8BGdhKJF6Zo=; b=EtPTkGlhC1PQF4
	vkQKg3NV1UvErSL0zPNG9wGnc4HLxlKJDm2eV4Bn2KHqvysYOTDECXM8GeXK39z736Z6lS1i4J49X
	RUKTOWUBacrguqLG6b7OGycoyR3rJq85yIdeONEgMI44aHhCAKbSecCUAELvZe/omZRD9xCv3tBeW
	TEgERz0Rf7LVZFp+529R1nSv8PEB0dRj57cstNXxGqwqNRMteKodUyRO0SdHWTsP2SkJJ3Hv6x/v8
	5vXgdRoQI2S/FuobA66OPljIQY0549T19p8qGhHlugil6BhIWGA0jzvrvOlx83RWfOJc178BtF3a0
	86Gk2SCUashYKhX03zTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI98S-00000006ooF-0aLC;
	Mon, 02 Dec 2024 16:18:56 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI8rs-00000006lU9-03X0;
	Mon, 02 Dec 2024 16:01:49 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-aa5366d3b47so718595966b.0;
        Mon, 02 Dec 2024 08:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733155306; x=1733760106; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KcIwgDwhH0r2JEAbp50oSCByWlOCYMPyzaBWedWcxxE=;
        b=BenBxHKtWpHdDSVMHdooT14R3MNQo0/zKoGDlWx45rtz2B/NtfRi7ak+//BWFvy+ZC
         8b2+WSunq97TfCDxhwtlyZ6xx5of043qOKeYxxyO8GlokosZvU5CSzS4DFOvZ3oZwgYp
         iLERrGu0RP78hRTIAZsTYm3Fr55zbJhZDW6ZhpaixJMheiv9w6ItF3i2WUYFi4NGc4vL
         M9lFDJvmPwZ1yD0+2gT4MDnj4/LB9qNpHzmekMJGwzv5L2y79X8Kybt5+wht9JXLDzfc
         l3Psn4OMWg3oBF7/q7L/hsHVnc66R+NvLcrPBInupIfshd0PwVc14z5cKQEWDxfz8Pq9
         JEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733155306; x=1733760106;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KcIwgDwhH0r2JEAbp50oSCByWlOCYMPyzaBWedWcxxE=;
        b=pSYeJB21oXWAKHTC65y/2/YN+wlAHK/lEZWv7SyiUpzeDAQ1PQgGvadwEUBQ7mXV8Q
         8pVIltV8KGEZjpUeUBkqonOqaMzP7IhucYaAKl5qtr2pM/QhP5v8WPKjG1Rl/xHh9amt
         AV+mIvtO8sV6lxZkpXzBhdOqXvW3J7a4wN05qvS6R4D3kPf01V7M2fEM4hvM+wqxI84O
         KJD4FyctGCxIriR2Cau6vVaPOvTaAWHn8FYtM0hNcY6Bv6ucwLjQu0q/fvh5UwCCHszP
         Tx6CUpROUAVezvsiFqWiN6SQraPz85paVCg0roDkIN48311nkQzwnqluA1mj2ESGQBNW
         mzDg==
X-Forwarded-Encrypted: i=1; AJvYcCUsMKhl9KNS9nSLHbKiLoMnpwhktvcEgt7oZLiew8/CMRSDGSU4V8QAZUHzGmXbQ7MaycEFLsWScZp9KAchHn0=@lists.infradead.org, AJvYcCW5mSIO8NPy1/hyQJdqd6Q3oGtv5WUa1wfWNnpkaJtIxtrV4/HzuKSiJah3mTwAWuyA2RW/ARQtwgIc@lists.infradead.org, AJvYcCX/i6qfExZMyceWepnwCN6nZL6oCv4O37B+jcmnOVap0NCD0fVA1tK1JrZ6cm9seQ9LIyWOWWMrnKMW5Sxx0Y9L@lists.infradead.org
X-Gm-Message-State: AOJu0YwZPjy6CwRzJV4YeHfDUYC1wzNsAZp8axAqn8Z/CNwCsSLf0yDt
	B0TbeJ049yvP/Ds60EJDHiSYNrF/VTnYyzQBPcupR0SDc5ResvRrKCmo1e962llVmu4zBBVqLeM
	0obfW3bdVkCzqC9UQKR6QE0b/rxQ=
X-Gm-Gg: ASbGncv2AnW7L0GGFD2OLaFjXubr6RssRchCZffZQ0SSY9Ku6fBiOAdZERH4VDwbImp
	SIzkJPWTh8gtNAiGiVFBe5qOP0/cfPZ4X
X-Google-Smtp-Source: AGHT+IGFABNZQaOPRburPWloYkSi4CpGPxba8eF7BykGzMmRWWY/MWtNoKOUl7owa7F4QGuaqVaPpnIxNrEo8kH/2NE=
X-Received: by 2002:a17:906:846c:b0:aa5:2a71:1646 with SMTP id
 a640c23a62f3a-aa580f56a7fmr1829897466b.33.1733155303815; Mon, 02 Dec 2024
 08:01:43 -0800 (PST)
MIME-Version: 1.0
References: <20241012071919.3726-1-linux.amoon@gmail.com>
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 2 Dec 2024 21:31:26 +0530
Message-ID: <CANAwSgSusXfr73LNySLJVnYPDNsyYmK_=2+YXAwm6bLE+NsWdQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/6] RK3399: PCie Phy using new helper function
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	"open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
Cc: Dan Carpenter <dan.carpenter@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_080148_051314_FDC2DCF1 
X-CRM114-Status: GOOD (  14.39  )
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

Hi All,

On Sat, 12 Oct 2024 at 12:49, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Few clean of the phy change and Using guard notation makes the code
> more compact and error handling for mutex_lock/mutex_unlock.
>
> Plz review te code changes, I tend to do silly mistake.
>
> v1:
> [1] https://lore.kernel.org/all/20240901183221.240361-5-linux.amoon@gmail.com/
> v2: Fix some typo in the subjects.
> [2] https://lore.kernel.org/all/20241006182445.3713-1-linux.amoon@gmail.com/
>

Do you have any device comments on these code changes?

> Thanks
> -Anand
>
Thank
-Anand

> Anand Moon (6):
>   phy: rockchip-pcie: Simplify error handling with dev_err_probe()
>   phy: rockchip-pcie: Use devm_clk_get_enabled() helper
>   phy: rockchip-pcie: Use regmap_read_poll_timeout() for PCIe reference
>     clk PLL status
>   phy: rockchip-pcie: Refactor mutex handling in
>     rockchip_pcie_phy_power_off()
>   phy: rockchip-pcie: Refactor mutex handling in
>     rockchip_pcie_phy_power_on()
>   phy: rockchip-pcie: Use guard notation when acquiring mutex
>
>  drivers/phy/rockchip/phy-rockchip-pcie.c | 148 +++++++----------------
>  1 file changed, 47 insertions(+), 101 deletions(-)
>
>
> base-commit: 09f6b0c8904bfaa1e0601bc102e1b6aa6de8c98f
> --
> 2.44.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
