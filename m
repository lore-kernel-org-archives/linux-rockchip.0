Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63209CD8C8C
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 22:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IUJfG/BMaeZ2t9gj40ITZPT+/+lo3SjEFluCG3zzJe8=; b=WLMwUrqr8OIB9x
	dDA7IDSAYyf7PkgcUibrWibB8g++jsQuxqh8ErSYi+UhFN9+z9WI0sxSkcF6Jmm5JNhljwoZPs3ur
	9ljyGgSnw3BJPSYWtKrah6KOjrmRsfc6058+/MkVTFimg6qz1tClR51rZ3r9IULikWGDdCPfd99uR
	PKDtEc4ytFJ1ZlJ0jpNGTWeLOAhNUBW/vnjKSBIj5JfQB3gwGG4ZaSRN8wcqeUBROazY5VqluC13H
	U6+GplRj6zxGHBAqieVZR8vaT5X2I/rDvMv6n+RZ/8mIgFUA1aB0KvA2fQFaN/I2i0CkKVoIh9Eyb
	xoItWUFOSsc3H/EP8a2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWMST-00000002af8-28Vo;
	Sun, 07 Jun 2026 22:59:09 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWMSQ-00000002aei-34hf
	for linux-rockchip@lists.infradead.org;
	Sun, 07 Jun 2026 22:59:08 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-8ce3876a50cso38443986d6.0
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Jun 2026 15:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780873145; x=1781477945; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cb3sWf+RWoizgQv6BHRmquqe3oZdi3qwiZN/K5InEJc=;
        b=OQG3uBvvYSYgtve2pQjCNmMK+k0qXzhQqfy2wcY+mIp4DaCBI6ZPArrWE3dhKYPF0w
         FROODEKDmWdzrGE2Y8EuXvQsw+cBVYDtWkXvDADJw086I1HP38E3Ycl0ObkfwySSR9JB
         dHTLJIKjY7uQgbecmHT2fpYQrvkKLcTnlwN/0UPY046Uu+yy4kLmKyvOVomhIPKvetDi
         7dfmzxm3ym9/x33unIaKhf8Mtg9onasm4STffVm3mTXL/Wan7KE890+AUvAx/92VA7fY
         BVZwKT8b51WitFw+mgb12CC/d6ccc5HrgZ2+b0iF0CN0MWPVDTAdI0MoBxkhtVErZSFn
         jxgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780873145; x=1781477945;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cb3sWf+RWoizgQv6BHRmquqe3oZdi3qwiZN/K5InEJc=;
        b=Lw09eNHDD2nKG2UMuUW2pkcP96xXTgmsvFGYaViHNEJqspzEHzIcemcor7hoZlRa2C
         Jq6HoGMbOQXCkm5oLzI5Pys0d8yMhoWCGHvSgKcR2B8EWZTNYFK2yqWzcp8dTtXYAgwq
         5Aev/LDDitbrr4A7mvg11pX17ogw41NZaHdatzzYnD9wJPRUmeO3GFcry/tdnDeC7ufU
         n8OQiXgVzctfZVy5elSGRz9bBddlg54DZ72U2MMdWLNMe5gIYu8WbT0WWcggTLE10ZIK
         D3d8iHuhXFF71fALupXcGFYoNOtXITuRHwlqJiIzm5KcLddCqNEJJ7A0V7ES4UVC+fBs
         P+oA==
X-Gm-Message-State: AOJu0YzTdjY2fBZdcNM3Jh+pHByuCpdxkwkJ/cTard5ptfL37mz4R5nK
	aU/w3xDWGD2aZwb9Udgb1S7tSjcDTqHmvrYXLzF1e32DnGzskEw2f8Odwg0ayLrk
X-Gm-Gg: Acq92OHrRBOKzRai3PFW03i1WA4hzfxSXfnNpgXaRijx/LFFgoQOh01nfp+E0rMCpWi
	+lZqvO8MNT3BpQDyOni97AfyCuLmT9XgrEalrmGDUfge2fs9MNjx9+PYuwar86pxtOKRvOskkib
	u+Y38py/8CT6tVlv4EaMRAoctvHZbitCqB8WTgyKojUyLL1qer5d6ELf9Mbcd8B4HDv6rBZyb2M
	HUq/vecMAAQ2a/QNB9en7VsG8D9/okWoi3TvcbLq9KwDVOl1XPlU5zQqHng5JWEG4KUXwwzIBuX
	3aIf/ENosY7205YR3ANEfapzNThxP/3z2zvyqSe+Ajrnhb0eeW3atSaxFoEnCTPqv6LUFTqliO3
	5kQNe8WMCWmtGVNF1TVjlkJcBESD7rsyY0f01zrpVGomFm8xE+nq7E+Y4ZZZnm8il8cSfc2jxi+
	xwCNrVjCESYD8MkpTw7nZUXaEcqqnUSNmCJ0eGfbdE3E1ZB2BA1e2UtaA5lfEI4PEH6bjqjAVG4
	ydITVt3b2YBLXzC0zF2k3M=
X-Received: by 2002:a05:6214:54c7:b0:8cc:e14:9594 with SMTP id 6a1803df08f44-8cee6268478mr195954696d6.33.1780873144834;
        Sun, 07 Jun 2026 15:59:04 -0700 (PDT)
Received: from oklopfer.hsd1.ma.comcast.net (c-73-167-46-184.hsd1.ma.comcast.net. [73.167.46.184])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8ceccda2601sm144816226d6.6.2026.06.07.15.59.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 15:59:04 -0700 (PDT)
From: Oren Klopfer <oklopfer37@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: regressions@lists.linux.dev,
	pbrobinson@gmail.com,
	heiko@sntech.de,
	guptarud@gmail.com,
	megi@xff.cz
Subject: [REGRESSION][BISECTED] wireless networking broken on Pinephone Pro
Date: Sun,  7 Jun 2026 18:59:01 -0400
Message-ID: <20260607225901.64019-1-oklopfer37@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_155906_782642_12074706 
X-CRM114-Status: GOOD (  11.61  )
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

Apologies if this is not formatted properly, this is my first submission to the kernel mailing list. WiFi specifications were introduced into the Pinephone Pro device tree in 096bd8c679185f898cae9933c6a68650fa26ea4f, but this causes complete networking failure on some devices. The regression affects all versions v6.18-rc1..v7.1-rc6.

An identical issue was reported for the Pinebook Pro at https://lore.kernel.org/all/aUKOlj-RvTYlrpiS@rock.grzadka/; the regression was reverted in 29d1f56c4f3001b7f547123e0a307c009ac717f8. The errors faced on the Pinephone Pro are exactly the same as were reported for the Pinebook Pro regression.

A previous patch at https://lore.kernel.org/all/20260112-ppp_connectivity-v1-3-284d6e83b212@gmail.com/ attempted to resolve this issue but never ended up being merged.

Bisection:
096bd8c679185f898cae9933c6a68650fa26ea4f is the first bad commit
commit 096bd8c679185f898cae9933c6a68650fa26ea4f
Author: Peter Robinson <pbrobinson@gmail.com>
Date:   Fri Aug 29 12:38:24 2025 +0100

    arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro
   
    Update the wake-up pin and associated interupt details for the
    Pinephone Pro WiFi module. Details obtained from the published
    PinephonePro-Schematic-V1.0-20211127.pdf page 19.
   
    Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
    Link: https://lore.kernel.org/r/20250829113826.2029755-1-pbrobinson@gmail.com
    Signed-off-by: Heiko Stuebner <heiko@sntech.de>

 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

Reverting the commit allows wireless connection to function again. I am not really familiar with the process of submitting a revert patch, but I'd request that this be done on all of 6.18 (LTS), 7.0 (Stable), 7.1 (Mainline). Thanks!

#regzbot introduced: 096bd8c679

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
