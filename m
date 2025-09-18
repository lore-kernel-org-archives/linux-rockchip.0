Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2697CAC5A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 12:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3bn6x45MiNRpeSJed1FxviRJJ0kN4ZYuruk5Af7e1P0=; b=x5at1r0eA6HTtI
	uf3mlgfA63FQKiy9PSc4j2emCAZsYlB9VCKy0VQdBgTBjSG5CzSv6TwpT/1ro3chmdknit5oAiTJz
	eOpevyyzaS0lmiLa+DDwv44ydE0Wp7OLkK3S0dN8ItaVHMHbyg1Kjc4WLNmu9bUBrrTObG5DpSkF1
	FS+d3+xRPRMXjhogL+xVNa8dmwY72CHHccLZ0RBpcg/39P8b5xD3V20Ri+47xqgrq1UxxdwMie/xj
	QZvyfgPUb2N6AtO/O7E07Bihd7Ectx4lxueWGMIA9qX1de3qSt4ZCGD4cag75yTeDEqWCrVzCHhyj
	2yr3g+rHNHfBBTgfgP3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzEDr-0000000HTir-110j;
	Thu, 18 Sep 2025 12:58:51 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzEDn-0000000HThT-3OeR
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Sep 2025 12:58:49 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-b07e3a77b72so291994366b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Sep 2025 05:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758200325; x=1758805125; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lvcQGE6zMqa3RPKmZjZH5zBkLah9vgbD3X7rCwM3Uvs=;
        b=G0P8h5kEOm2wIewAJx0ogEyL3BoVtz8/1xsEhUUdxjZbrDD9esVbqqg/Lmt6DCZRx2
         eqnN+NgB8WT34xHh1rCs4JbQDph7Hang1hW1ANpyONQ2eXgu2M1X8UUuiT9mRFVTqgyQ
         ttUj6yfB6GH5vFfHkZMOtop1QlTxzQ9OcVypTTpoQ2kE/2i3x0/Vnk8g4f4DDiUXUOtG
         oJMtluJIco6NF4NRC6TSCPwxHrJSejvRy7QZfkBM6nB5Ve59ZUmUklZslAi7kSGz6sJc
         AwOpTtnmjR9226XKJlB+ejhoRTEM1JVp8lMlAVMVHnzRFYAhnLw5CBUwQAD1dwYnWUGI
         De+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758200325; x=1758805125;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lvcQGE6zMqa3RPKmZjZH5zBkLah9vgbD3X7rCwM3Uvs=;
        b=olNYogTKKAlpE4GdVJmKCytrALwX+WC+cnQOfXGi/fe0beflZvRScnirZduNN25H08
         fGt48eMDHPCK7s+RdnZgnj4C5Dc1ygZ1bBFH3T5lgD8n8KJVdc1fCv5W/oQkLD4jRcv7
         HgAakYx2d0i9DrTfZtcLA3tnsjh4FJi/OMpY+lO1/xoKSRgreDKRBGcOw5rcV0WbXrxG
         DCol9czlfi4tnE8lBntqZgFHpN7l1MU7MrNZohKjOmSbpfwUkg/vI4dB98NI2tuzBYlg
         COldt4Rx8L6SEt8Xjhfr3ZoaYABJL+SlXe1wvD62B6lbK+fmKLQ4nClH72ZAi3GiTyp3
         DO+A==
X-Forwarded-Encrypted: i=1; AJvYcCUU+5OzbfnZgs8eH06sStlVErusaP3CGqNfiZkwrjtkaGRpRI9rYpZcuVP2/gNc0q4NkV0uNgc4W5NBOsxwIw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywc7KzQ6s7eQQlR9LCgL/oyIygvx++/m80C6Cj6mWEYud7Nbhyg
	veVo00rq/n1QuojqhtY/aNiSjtEOHwJGXv3rCn6HRHv9QlAG/OHcfIPrDgWWaMmQNItfT1dYhQt
	JYM21HdZtiBguFLO66Ap16y9b5uv4pi8=
X-Gm-Gg: ASbGnctmiBmwgTVnEnsXkf/VoW3aqdzl1kEf7pbEaSIxlio1fT6445G8ejRmcQzjpfA
	4azVCXFDkq3ExzaTsOIGaCIhV6rqXstKHTQ50YU+rhmAz+YkCbOV3rvac8QDHV4Zzm16S86aRI9
	rRy6n6vBu9xGrNxr3adKNsmfiJs812OAy2fDfb8eg0JlbXvgFI3jP7RWbMJ0FsGkrBKmngUTKtw
	AYtl7GLZxJTvLYPAXsfrF/o1A==
X-Google-Smtp-Source: AGHT+IHG8sk3bcUaHQwBrZoLncnJChfwaJcuvBt6nfYyVTZWygm5etjUbCmo0srSUZFjiTWBAdZCH1hJ4cgs9M5FLD4=
X-Received: by 2002:a17:907:6d06:b0:b0d:400:9182 with SMTP id
 a640c23a62f3a-b1fac4e0b80mr343825666b.22.1758200324771; Thu, 18 Sep 2025
 05:58:44 -0700 (PDT)
MIME-Version: 1.0
From: Andrea Daoud <andreadaoud6@gmail.com>
Date: Thu, 18 Sep 2025 20:58:33 +0800
X-Gm-Features: AS18NWCEXBGAyDTuAdYfLyOIr8P8xtqgcUaqAsI0KK0ysqpeO0oKN9Ycaxuqg4o
Message-ID: <CAOprWosSvBmORh9NKk-uxoWZpD6zdnF=dODS-uxVnTDjmofL6g@mail.gmail.com>
Subject: Possible race condition of the rockchip_canfd driver
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, 
	linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_055847_852916_F2BAA033 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

Hi Marc,

I'm using the rockchip_canfd driver on an RK3568. When under high bus
load, I get
the following logs [1] in rkcanfd_tx_tail_is_eff, and the CAN bus is unable to
communicate properly under this condition. The exact cause is currently not
entirely clear, and it's not reliably reproducible.

In the logs we can spot some strange points:

1. Line 24, tx_head == tx_tail. This should have been rejected by the if
(!rkcanfd_get_tx_pending) clause.

2. Line 26, the last bit of priv->tx_tail (0x0185dbb3) is 1. This means that the
tx_tail should be 1, because rkcanfd_get_tx_tail is essentially mod the
priv->tx_tail by two. But the printed tx_tail is 0.

I believe these problems could mean that the code is suffering from some race
condition. It seems that, in the whole IRQ processing chain of the driver,
there's no lock protection. Maybe some IRQ happens within the execution of
rkcanfd_tx_tail_is_eff, and touches the state of the tx_head and tx_tail?

Could you please have a look at the code, and check if some locking is needed?

[1]: https://pastebin.com/R7uuEKEz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
