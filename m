Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24B68C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:35:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E68DE61184
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:35:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E68DE61184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6bcpX0OwXcH5wozq5/Ip9ASLU1wyBjyu0M8tuDh3ao=; b=0MVhnWReyhXVm1
	3B1ojvZvkSDrqnwzj4e6eNVrKoETHX3SH2TrkJZ2VZj5Q/oyZOqQHGHNFmr07QU3QP/jt9zbowE5C
	HgVu7ZoIAVIpMv//r3LDxRslrz+3wo5xJcQeLWnTZQjsXDNP+hoh9LhYNIC6lp7otGe/CP9FkWDJi
	uhomXo8Hc/8Onin7JMjVN7EaslkmD6a/WWfs+P6gayzUDSNo1In7eCD+yKXuuHGlulRYfNNtaSmXU
	xMggSJFz+ca+m1OZTf7MqYaoP3kbiS9629rxXnh0ZjVQklC0qCTOJLIxZ9qDSJjG6BCdZ27DRkddi
	qjPZKf0rLpJHqzT+ZV4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPPW-001knm-6c; Tue, 09 Nov 2021 11:35:30 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPPG-001ker-Iv
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:35:15 +0000
Received: by mail-oi1-x22e.google.com with SMTP id q124so33139786oig.3
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:35:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v2pAd4bAvLGuQHlmvNN+h2TrmSqORB/og4IefjMu/Gs=;
 b=oeBZnU3MNAghzjyLIb+fM7Irgkj3AauRHUnUS9LblIjn/HL/tpUBDV4ZYfAfSiBivY
 f2Ooq2zZvyRjQykYk2jrIrnXytZnVmx3pmJ7cP3XrQdBrqFTVMKjjm/9LROvnpeG4s6R
 ZC3XFcnEK6V2y+vFLNbGJlxgqlKt/oOrjg1pqxQn5BWklsQBh4sg+99rG5PuQ2YCb4Uj
 S+Cpvf9CPwkp32bMJe9Jk+y+lG5z5tjx2uGFGBBe/7UZU6FTzAAYks78FbC79IeVdjSG
 wjVKRCfbkDZtVon7tBp0LZBnLgm8eVTxAGO+wskKug5AJrfa9LZwzG2igXTZbgv5k6vE
 bZEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v2pAd4bAvLGuQHlmvNN+h2TrmSqORB/og4IefjMu/Gs=;
 b=a/eX2UEnjmNuHyp2vzvfT1u4F9tuXXHn+9xq7LXmfCkT5mgjYmQDjT+1J6YHoeOyHu
 F7ksIzabOIwcvyGdMRqp3J0MbfYJXW40oVNocFDn87M/1bleoYHFcFkTlMe9+TOrmsaT
 QPdPGdm61LnMNRe4Q3PSRIKreTVlMB7bqzy/fLi0cMUfpIqmzRvfraMfi25sXGPE9Rp9
 0MM4CuouJ37KPJ8MwESwK4hDfSprX3qe4ylv2wyFeyVW8GV64q3S7ogdHzzWGeJmPC88
 DQ8gonIZQSD7EcPIagssLPtj3ZS3R+uPA4BiAEByDE3J2c4FT/q2UyBTjf0yy6xy7f3u
 lUAw==
X-Gm-Message-State: AOAM531vdVK/WWVxMkAILvG60Eo1n96v67Ww21QVuEacUe/IEHY5vOFL
 pEyF6bT6FbM1Dtk3WtamwTIa+htPSbKFjlZrAWGu3Q==
X-Google-Smtp-Source: ABdhPJx4OlotCLYJPZy+X0p8zFLUTXcqcM/xCAFKp3eZ4QqsYKNx7VufYAbkVJoBzN16IyIl2/T2UCY/eqmhbavLu80=
X-Received: by 2002:a54:4791:: with SMTP id o17mr5249862oic.114.1636457713735; 
 Tue, 09 Nov 2021 03:35:13 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-19-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-19-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:35:02 +0100
Message-ID: <CACRpkda47wek7EEhs-ecaij_OX4i7EZ+nvxa=VxHH+krgVYg+g@mail.gmail.com>
Subject: Re: [PATCH v1 19/19] gpio: mockup: Switch to use kasprintf_strarray()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Bamvor Jian Zhang <bamv2005@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_033514_664532_1BD8DA52 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
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

On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:

> Since we have a generic helper, switch the module to use it.
> No functional change intended.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
