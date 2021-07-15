Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B15AC636C9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 17:13:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C3C6613E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 17:13:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C3C6613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ofKVlXZ8XhT3UWVUMsGMrHEsgeXoc6ovgMEF+UUQ4oA=; b=nE0JrzQ/tAZbm2
	rZiwthQrq5vs6f1cqUMrBwNdvogMbqPw1rPvwtnHGzKJR+n7Z6IiE2/JtYlm9ek3VhUsC3HeZwPTT
	sfBA2WQ0b/zfGhu5zaqcwBfdFTi9J4sUUpfXB/Km4x1UErZV5PVb1wEikwzQ7MArOZb9P3rbrRjko
	J/fC7nRv/l7kS5ctKfpFNnzUPLCsUoZp1EUs/KcDZ77tXphvw3SQL/7dbWlayIeQ0IvUQ7JFHxgB1
	0RNWt7SENDp25OcuWsYeIedblhPHFR8H0tcG4+HqjmwUokm+qdzD1tvrTPaaw0bH6e7reSLNLekh4
	JxHs6dJXRZ1w4OQPhvkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m44vn-001dK6-7x; Thu, 15 Jul 2021 17:13:51 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m44bA-001W1w-Qv; Thu, 15 Jul 2021 16:52:34 +0000
Received: by mail-pf1-x42b.google.com with SMTP id 21so6040842pfp.3;
 Thu, 15 Jul 2021 09:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5mUlg+XLAlWs2OpGsm7v1Fxu/dScyzw5iATM/EAu2yA=;
 b=Usx8MphYIkqlfCMOPrXG6SMy8C3xTpgMSgFEPeWJ6KRIWjauV5XzBe6Bs2gVK+jcn2
 jQ5mq6lx18Q14GQpc7DuCL6zEeyy0u7DNix1bdscl+GSRS38NkGhd+8BxktMTbBcqaPI
 My0xt93eB9/MRbSwiGorYyuOJa0FXGHikM8MZIV9+za6QrORyrR++BuxY5pSIgU0EuH+
 wgM44M4LEfn4DAr/72Xyk/C55oZHZSKRVaFdv6NFRoqIWvmp9EfRm8xEHDl4TfMsi21s
 NzXtoIARIWcRZW79iX53qHbE5AncBusdCdeNMtGJ7z/CwfX7cSlB8AhysekFiwcEMM/E
 W3Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5mUlg+XLAlWs2OpGsm7v1Fxu/dScyzw5iATM/EAu2yA=;
 b=mrCGOl6qs3VdDAYsN2lFCz5wSLBrQGpogHqhToe472jdVxldrEsLMrP8httXAKD2em
 kazdpRpXyqFBYoRkrApJOY0FVzMYPdlJMFXzP9QHkydqZV8m1K0VoAYhaU8Ewi1gUIHH
 1MJwDU3BBidb8nYItwfreTDMHASObsG0B5Q32uFphbMR0KWx963HixAa+VLqzw6usDow
 HnSFukSw3qbBaOAXhz83o+3KowFCVyN/6a0+MjqlrYsIEfpDKVUaQYoANfXz75hfTbOm
 yR8/mz08UhUhEy9gj5JNLnBCows/magpgQoFVOI2v/R9CBsNFVP7BC1Xz3NVGKv/mI0F
 wPTQ==
X-Gm-Message-State: AOAM531Y3TQ+mNyaP3F1dgJn7g2UqnEdTzrYOGNtIhk0bZjKkJNqEmW3
 atSH65G38TDpfGRERydNdRwW3jxHf0m5jpOpJtA=
X-Google-Smtp-Source: ABdhPJxbxh9MntYcaLyvO5NKj1X9Jd024SE3i4PphFkTofHotG9CHRDsLmrs+8TpoEP0WCtgUHxu9XuSS2x3Z/nMqZg=
X-Received: by 2002:a05:6a00:a1e:b029:2e2:89d8:5c87 with SMTP id
 p30-20020a056a000a1eb02902e289d85c87mr5462920pfh.73.1626367951167; Thu, 15
 Jul 2021 09:52:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210715120752.29174-1-andriy.shevchenko@linux.intel.com>
 <202107152356.7gQSC0vc-lkp@intel.com>
In-Reply-To: <202107152356.7gQSC0vc-lkp@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 15 Jul 2021 19:51:51 +0300
Message-ID: <CAHp75VcxP6QSoATProqjqJ_kmjXr4FfjijohCyumrw_gmj904w@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] clk: fractional-divider: Export approximation algo
 to the CCF users
To: kernel test robot <lkp@intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Stephen Boyd <sboyd@kernel.org>, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 kbuild-all@lists.01.org, Michael Turquette <mturquette@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_095232_930307_526417DF 
X-CRM114-Status: GOOD (  11.64  )
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

On Thu, Jul 15, 2021 at 7:49 PM kernel test robot <lkp@intel.com> wrote:
> I love your patch! Yet something to improve:

Definitely!

> All errors (new ones prefixed by >>):
>
> >> drivers/clk/rockchip/clk.c:27:10: fatal error: clk-fractional-divider.h: No such file or directory
>       27 | #include "clk-fractional-divider.h"
>          |          ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    compilation terminated.

Indeed. No idea how to compile-test this on x86.
Let me see what I can do to avoid other issues.


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
