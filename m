Return-Path: <SRS0=ms/I=IN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB70FC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 15:32:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4E08C64D99
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Mar 2021 15:32:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4E08C64D99
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HZTkvqpK8gHTRHfQ6ogSO34jVP/ndlL2B/aLNcZ8WTM=; b=AACAuEJlVvoneC0kgWX5gzMSo
	F6zgiJU0Gj0SMgEX201oy0BsZV7kgF/Fn6mecALWmFIufu4WgXBGzkZgCkyqIHmnJ4C69VHeHC5Pp
	XgYrPDPYZC/z3O/F4KEGbzaQtYdua9n/jFTP2NUhkoG9NgK75xa7B8Ob9YB0eOqtq0TtORF5QcUuo
	irCFCSmiy19k1aBkcIJAlFBnGCaHmj6rDHZtGzJYsIzyeY1c9maotSLvwrLMbClI0wdKptkdkFW1b
	/P56IMm5tA4OWf22u4dFtJ8n4rVgbkBrcaVAsL6LL7AJJBn3GmfObXJO7pltvh8h1qeY0VzPCIACU
	nAiRAAFCg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLpD9-00GGsy-9g; Mon, 15 Mar 2021 15:32:51 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLpD5-00GGsL-2M
 for linux-rockchip@lists.infradead.org; Mon, 15 Mar 2021 15:32:49 +0000
Received: by mail-lj1-x22e.google.com with SMTP id y1so16753912ljm.10
 for <linux-rockchip@lists.infradead.org>; Mon, 15 Mar 2021 08:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u4mfgg1DIUGlXI6xo6QY7f2Figp4+tXtMVg/4l0zfRQ=;
 b=BlZKt2JOJ3qgNgj0raT2+uZA/qUkIWMlqrm2M+aX6bHHfX3i11JrEg14J+LmgyfKlm
 hlv5qWWIppwBes/z3o8TRayhMEDfoRD7wDs/s/70xXzU0Fp2VRToNojrk7W/Xegn0ZFx
 XVRSgCYezE3pnaKTYGWDxS8JIfp8IPRrjv6Fs8roOe6g1Btkp5h00wT27asoxCp5hoKF
 V7ZFDy997e6i61sDg4XS5CNeSgHlhg29kM24P0LkEfJubU+L+3r9bsAHykmIk6RqD6LP
 9s99JD2sokPfM8m4ZAZMgyMqoAkwC/WCC0JGwqfqkCoEaCfrJeOOuUHFJjwCfC8nWCdk
 m5Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u4mfgg1DIUGlXI6xo6QY7f2Figp4+tXtMVg/4l0zfRQ=;
 b=kcMIlEKUsUN50TYfhAt0fGEyw+SSelL/E/dw0cqGh0sZBFNyuBKHLlI3QjJ5q1jDoM
 qj5/uHzn957MJMWw2hcMvPuk9yITrDpzYLXvetMg679XXq4NdsWXljwsrkystFQVypO9
 0vhSQJcYu1K8CKIC8Phy9DPGzTphJ05qTIAhIpkfnE1WWtGezeQb/WVGuI9iZrUPqcy+
 TZF4KsgbNjo7P7rUXUSEtJnphFr1zgr1vJ6KyvXzoHf2yWoRXgq13M3ZyCYay9oYA7NR
 MJv9rpGGqHVfigtY3Go6gcbRvWWUw/B9LP9cXR97lYVtQ+nqd7INfU4oOIBLkWI4aleb
 xyhA==
X-Gm-Message-State: AOAM530ZV14Qk1qrk+xLVxBDH+ie/eNk//h9PIWd4DjHqeTnI8fn0oCu
 KL0eb9VUPFxYhAsjB052vWkhUjvHV8iTfrAoBI5tyg==
X-Google-Smtp-Source: ABdhPJx7bQdMlV7qNayDIZJ4LIK/NhHoHaOaRFmne1Lui34RFwaVgtIahs6g02YLw46XTH+5paM8kjQz2UswgbyTke0=
X-Received: by 2002:a2e:1649:: with SMTP id 9mr11340184ljw.74.1615822366345;
 Mon, 15 Mar 2021 08:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210305003907.1692515-1-jay.xu@rock-chips.com>
In-Reply-To: <20210305003907.1692515-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 15 Mar 2021 16:32:35 +0100
Message-ID: <CACRpkdaAL4U_ymEJTnP9SFV4P0EVLkRGsyVNY9PPqNPFPVxf+A@mail.gmail.com>
Subject: Re: [PATCH 0/2] make rockchip pinctrl module able
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_153247_298786_7E5F558E 
X-CRM114-Status: UNSURE (   7.00  )
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

On Fri, Mar 5, 2021 at 1:39 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Make the rockchip pinctrl driver able to be module by unselect
> PINCTRL_ROCKCHIP from ARCH_ROCKCHIP, then modify driver module define.

Applied this again with the irqchip patch under, let's see how this
works!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
