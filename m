Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B9FFC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 11:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zwae4eVscyhRb7Pn+SpY+CHOIZ11L6LqU/MoZm4KNAY=; b=2zhw5z5qHjM6Jk
	wDyjaTLFcV1+Z8h2Pxiy9u8k5UL+ZEcudD78QvXQB+dANY380nFKiWQi4+dw7SLA40bOOA0zanrNk
	O6PsGzJOCcwO4wTxxeHmlaTiLyUD93WbK+yYEzzw1BG+nPz785/WhaojWf8WUXjDzxEz8dj7HiggC
	sJ7uQu4G70zuEQJiKL1vYuTz82/rmaIuYY6tWMXU53BR2HIZtSWO2aeHTSMhQASawEogs376Tz1cZ
	2G3RlxZ28rl4DpVMkdYT30Mk6asRBuEhoWOQYPmLBShAXPS70Iu0eShXKtKkm8ggsRGikzWAzEi9i
	dWwI373CO1YsWkIbdtpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi9CT-00000004nKh-1yN9;
	Fri, 10 Jul 2026 11:15:21 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi9CQ-00000004nJu-20Vp
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 11:15:19 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-380feaa05dcso566821a91.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 04:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783682118; x=1784286918; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=iMApwtVfAiHTe4uNdsg1pmRa4ajqzJGEhdVZ2CWz9x4=;
        b=OYjT4OqjVBKpIhppeaWhhtzUr+gs6OVdgb7EhOjaqKkGEAiVViSVvmNl5guc10WDE2
         8Wxk6kVv47e15VRztp+219CSJHuWz3Q/8ejTEEkwkEw5X8nBDkcNptka9Tr9Wv6CTcin
         deCnLVi4N3ioy+MtZZyqYp/QVxKksI/bP3oD8aPSmAM1mqxzg0TaW1PFPJI0pK5qi37/
         pgJWhjLZN554DDbKQjsL18z1cpaMaCDezPKw0zD3N9zdRFab+pf2V6rmypcUzMo63yR3
         NP42EEiQBL8RGN1yiisHOYo7LcuhwefnYngTcqn47cAn07o+id/dA9HKD6lzCFBFhnwr
         6thg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783682118; x=1784286918;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=iMApwtVfAiHTe4uNdsg1pmRa4ajqzJGEhdVZ2CWz9x4=;
        b=PGrDPJYyidZgRYH5bsW2f/2tzHbOLTOGhzioZLld9cGo1f0N+nr4O2rhCdiI1AGX8f
         xsq/n2SExCJDwqdkY2/71ifh56mrOeGamt+rlNAGxHLBWSLrIrGd3ap2Nodj3p5neHwQ
         7oZw54gy9DkjNfomH/hisDI4nU9RzsJJOUCmp4nNhO27lUU4E+6t2ZyCMEGZZv+gFfWF
         11sBnSM7/rly7Bf9btiCJc6987rP6U6ar6ShQd7eD36rgXXfkAR89lYb3du+uwnq5ouw
         Uj4MP5HXZWv/+wWf1KH6nHMPn5308ofp9gEu5pvpqqPS+dGjQGhye0aCyqLBOhkGykcH
         syyw==
X-Forwarded-Encrypted: i=1; AHgh+RpomtO7baQT5FO6o5uCAhgIlRuAnCk6GV7Yw3mkvkhG84o3caRWn+fQ4W97j0Hyk+A/i/HB2SNKVcvesMjWuA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrVVcZr0Zsn7eeDhCgy0p4DeTZz4Sol6dfuRmWrAIJDY8ZDGyO
	L/r1pGi/D+lOEvq/qiIBHeX8l/gUR4TL1WMrC456SJrUyjlriWAocgub
X-Gm-Gg: AfdE7clFuiwoeI6Stc5YKc960CuWZatNtcViH5q1MVAOVkFXV0P+WXw5Z2CAgRyoiiA
	JpKzq0IEvKygqXkAolC2DWG2vbjl2LXVVmYn58UktBe12vzSe/qKag0GL3hZx6L4C02hX2H+H6N
	t6KUz/7xWehxISq9DwD4s7Ow7ySuZfsY+PYKo6PgDvHG+77k5bEqH3BQxxoZB5HVg+EM18p2+/o
	YtfxHwsvLbNU3D057bSo5VFqoiaMl8Nd63JY1QYXNzBe7MEBXNLW482/7fpQZGlHbMFXoq5gETl
	syVZmFhVoqjYeV2PfPDoIcqMfrAWC/sUTSMLPfR2zbDk3dgBfXdBOykcs4gHbIDd4JbeG/8q2Hw
	GIsGnYnw1JEcpyvgzFVgRazxgTW7iLLiD76pgQZQbUAgMTNlUxn+Qm8Cwxga/tFv5FUXCxLyxcT
	WsQUe5wOBkn4s46Yeefg0+JcGLZtYHWpy4oBsxAerVXSt6tmEmS8vX9PwEE4Yn+p5YpZLTIiI=
X-Received: by 2002:a17:90b:37cc:b0:387:e0cb:7f5 with SMTP id 98e67ed59e1d1-3894298482bmr11227568a91.41.1783682117496;
        Fri, 10 Jul 2026 04:15:17 -0700 (PDT)
Received: from ubuntu-gnu-linux-24-04-3.hub ([2407:7000:af23:3e00:eb86:437c:263f:195f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-38a5622ae99sm2576177a91.14.2026.07.10.04.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 04:15:16 -0700 (PDT)
From: Jiaxing Hu <huhuvmb88@gmail.com>
To: Will Deacon <will@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Joerg Roedel <joro@8bytes.org>,
	Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu/rockchip: implement .flush_iotlb_all
Date: Fri, 10 Jul 2026 23:15:08 +1200
Message-ID: <20260710111508.917486-1-huhuvmb88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260710060513.863714-1-huhuvmb88@gmail.com>
References: <20260710060513.863714-1-huhuvmb88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_041518_509020_5353E0C3 
X-CRM114-Status: GOOD (  12.83  )
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

On Fri, 10 Jul 2026, Will Deacon wrote:
> So I think this is the wrong direction. We should try harder to remove
> the function rather than add new implementations of it. I'm assuming
> you're only adding it for some out-of-tree code that calls it?

Yes, that's right. The only caller is the out-of-tree RK3576 NPU
(accel/rocket) bring-up I mentioned in the commit message. There's no
in-tree rk_iommu user, since the in-tree consumers all invalidate through
.unmap and none of them call iommu_flush_iotlb_all().

So if the plan is to remove the function rather than add new
implementations of it, then I've got this backwards. Please drop the
patch. If the NPU driver ever goes upstream I'll make it stop relying on
iommu_flush_iotlb_all() rather than bring this one back.

Thanks for taking a look, and for the pointers to those two commits.

Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
