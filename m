Return-Path: <SRS0=2K8y=II=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6F7C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 22:59:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3CA6F64E4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Mar 2021 22:59:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3CA6F64E4B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r5o3FgocKSZIo1ixxJ6K0RRQRJlIKzyfQ+iCANPA5SU=; b=AEuQTkxe4VLm2XXACjz5zhAzT
	sZ8h6rlnXeZgk6qLaxvM8YQ8sSugQNMpySeSZYk/i02ybcgYhMXr7NNobKRGIJ8qa5c6B/i4+05hd
	YNwJqW9StyRXjlYG0ryK6MOIkKMfuoYqcQmzfH+jQtRXWHCtSE8QGl3GLmL6/C/gGWtOWpYMydIC7
	KrfKODNNLvFvNcPiqn4wrxHIwzCWroM+ZgD0JapzOyjYPuXzaK1+dVjKwyua1YBz/2LwWmfvNOVlN
	0KWW198kkwbFsUBEQx+Y+suQqzXxWk/SXDesXZ9rrpCy9BzpazfdSPVw0NFcPF6q7vSFgLi3tSxkt
	t/G3qNDEA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK7nG-007wwS-Qy; Wed, 10 Mar 2021 22:59:06 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK7nB-007wvB-PT
 for linux-rockchip@lists.infradead.org; Wed, 10 Mar 2021 22:59:05 +0000
Received: by mail-lf1-x130.google.com with SMTP id r3so28236240lfc.13
 for <linux-rockchip@lists.infradead.org>; Wed, 10 Mar 2021 14:59:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N68/UEUzlpif7Ax075aqYxprAMrYKWK3Ssev8phjkaM=;
 b=yvUcCC1gSAOlgiDwgi5B7EC/gKPt7Jr6aw1ASICE4SntLDDliq2VAnNy6AZofg4RTM
 PXpOUI79Vn0rE4RckPFB4KU+zR70TGSPDMFmi3zG1a/T4Q8mwBz3yqFN0VGD1eQw+TsT
 QQiGJ1vsoy5qKKEgJpU2AWdd5dnvbOk9Z+l2i2yQ3wClVwI7ltAORb6KzH6a8Qr3Aw7j
 GE9l1kwYZwY1Nleg2tRz6frwvvDY2AZ/r5WToT5yBXB45M40w7qXwAhwPe0n3+/aoMaj
 BzwJdv8gfoLaeWEZ+/mn+4QeGnQgymzlnufGZA4hABAtn0ZS5mOSMHDR0tVeyJn5Maxj
 5Nww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N68/UEUzlpif7Ax075aqYxprAMrYKWK3Ssev8phjkaM=;
 b=pWwqlf23BIThxofD6iiC4Ls1Xu0WEDnj72lzinlTe1f1StFrDDUgMHAy0RgXaOVmY8
 elCxlT86tfHdKRfMnr608SDS3zbC0gcXalk09EI87NxV/RuKBzx8aLlptHOVeqzKCB4e
 bGLQEit1hgGLoFYtXsVUfehW7FjEdspQtyMndITuXu1DYNqUqABwM4u3uS36EttVYsvN
 IwZRHos2xkdDi3/Ld487jaZOtZvAgoJ/F8XwepLWmEHpK7RmgBu7hMP4Z7XKo5xRyZ9M
 KAy/25UHTD+flQY+gGtLXLyVc/6dNpvJYxl4qcJkl2V9ZgPHSJiwfpaLw8Rp/fCiWMdO
 e52g==
X-Gm-Message-State: AOAM533K/lxgkllbz2f3aNBMi1Wpyl1Wo56xN8xNSZgoVPJFvD5EqByE
 QbUWmAQin/qfoRpz2SgfTaQ6De7rakfa09mC7hnp1Ta9few5aW8+
X-Google-Smtp-Source: ABdhPJwgJjRVFNbR7sDlEvybOfyGPw+Qfct55BdTShLcobamBGE6tDfd41XZY1h4VDsdpIw15BRLXHYkHe14mpZBa3E=
X-Received: by 2002:ac2:4d95:: with SMTP id g21mr469271lfe.29.1615417141090;
 Wed, 10 Mar 2021 14:59:01 -0800 (PST)
MIME-Version: 1.0
References: <20210305080658.2422114-1-jay.xu@rock-chips.com>
In-Reply-To: <20210305080658.2422114-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 10 Mar 2021 23:58:50 +0100
Message-ID: <CACRpkda-Hbue8Si=1D=qMAyZjOHcybAdSRY1F75ofbdBr8DnNA@mail.gmail.com>
Subject: Re: [PATCH] kernel/irq: export irq_gc_set_wake
To: Jianqun Xu <jay.xu@rock-chips.com>, Marc Zyngier <maz@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_225902_043481_F69B9FA7 
X-CRM114-Status: UNSURE (   6.71  )
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

On Fri, Mar 5, 2021 at 9:07 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Module driver may use irq_gc_set_wake.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Aha there it is, perfect!

Marc/Thomas: can I have an ACK to apply this patch to the
pin control tree?

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
