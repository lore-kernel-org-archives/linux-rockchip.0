Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1187C5DF6D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 06:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhHzO0GGPCyA0mXF+AzB2NIWtg/FOacrBzT237FOy8o=; b=PoMB2tDIB6iE/5
	Y9lK7J3m5g84R5QRpxGGkQemDiucNHkUKdxmwH+aaHF8T1Kl4lIMzr7P3BDVx7IV9rN+a7oBUBaYK
	YB2WEfOUeI5Ugf8hGQpLUFVMePNZiVi00yyhz3tsRQyugOnovbh6I9OuTC3eGX+7pETebyORmTpv3
	YXlt/hlVqmUZ7kttW6keRDpROPXsYK17gqkABo0eYOKVbx6YGZaWbMrbg4OXt7m48du8SWlmawt3R
	2jhB96PYBsOE+Z6KaS93HM+QLwMzzoAdYBDMK75lHRzp3ra0GRjsuIHyirtDgIlTyJMB+AL3c+Y0Q
	+5HcHjeknWJWfmWejgyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwa9l-000000097tx-3qJz;
	Wed, 19 Aug 2026 06:52:13 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwa9j-000000097tG-1suZ
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 06:52:12 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4996c452e95so771965e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Aug 2026 23:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787122329; x=1787727129; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=eNYpcIGxrPu5UcGxlHe8CSKb/lcjMt/RLjlOnDxhBfE=;
        b=TJCfvTPUQOsGjpxpgVg4I68xUuKum2crpj1iyas636ok7Nho253nIW38TWQV5jM2vB
         HRjLNaTaU+otuJgKLP2p37XmJy/Cy3viYZCue7StFQp2Tj5L5lRzYJfowxu+JtVqnqPF
         ZAZI2pr6KTq2pQ/+V0lE9+vm2qsbMXpe7sbVdRFZ36kbUgTJ5asnhApBqpHL+aUIBgPW
         epDdUl4Ne0I2HfOaX/QnelN98ek1R4O80YMPIK+tky9GI7Tw3zx05CmBmmd48V6uYEx7
         uAM5GdOZ/OZp1SHWgU/GbdvYGMDdTMQVWp2G4fJRKOL+WP0No2CLhzQvEdhhYBc7VDW9
         1Qbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787122329; x=1787727129;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eNYpcIGxrPu5UcGxlHe8CSKb/lcjMt/RLjlOnDxhBfE=;
        b=T68TUsNB8JIuvifPQ0C8p7EO1r3zm22NZxA0HtLzxRp4DTtw4hqL/YMGDsVoc9BlWb
         H/xKEyvxAmv6Ma49YAs6OpTI4qG8b0dvgA+7cGr413FKVcX3jKt9wBYPZQbFTVeUrEMo
         iEmiqpx9tno0ncpTJPZH3+YoVRtuXeuJNywK1NAN3HH6xg2WZLHG8ANmM4asoUlsZyAa
         +ATN9hkoUPLRRJV7v8zxKMGXoFHK+BfEB47LWr6AqUvAtCDe7dfMqvkNWtHiDb7/FKDQ
         LNC4GhaCfw1vC1FtV/Tg7HuS5FcoEiYoZq9jTTJKJ2cyIzd+ogQfw4RRvGVmnVu4JNGV
         0TMw==
X-Forwarded-Encrypted: i=1; AHgh+RodyB2OtcmDieNm83rkN4HUCnsnUDMnqGlm8kvpFHyD906wLioyx2Zn+3u9tMs8ruXjgKBmT75wZU9Ztf/BUw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz57PYS6CtGuhcGXxHGf0zEiSJ9BqG1ZXrJGqUsmnO6W0nWVe7r
	N0CLik/LMeLMq1cTLD3JRaQgM3XwVpm4a1btZtsLatmw1ECjX7vHLo0C
X-Gm-Gg: AR+sD12KUkq5uufDM/7OMjkNCwfZQsxA2NDlyloB1DDdFGEnY65jtYPhIXELmPqFGXb
	z6VZY+NIDwP+VB1aV35o8Ojz0Nr9sryoSa1hECaXPm57r2A62CeX4/qyM5hl9wANg5c0qm3BjZH
	/lBN4AMuh+W2dHKxXVFHYhec0567h43ZiSGQJCNiEyyp59OzK9r6eMT2gv+enmoQ8SaE/rvVslS
	MRV4VRoYbr508DmdGU6FoC/t1sbCqaGpwCWYD6LDtCjsP6epGFGXZ5J5ySSrh5uGsVazMVzUWiQ
	RjNaAfIYjQUqo3zz7e8f9pjShjW5xNYMiE04HpJHhr8e97yaph/Tu9oznSQH/6Ek6BGMuMYen1r
	6iu92aWYwFyZVmHZDYCNQ0m5iNt/1rqP/qVk20XEm9Q3pbaANR63k/IgHQx8Xkmez6Kdij2tb8t
	0gH4Mv9P7taH2P6iQfq8rwmVDjeZtzfUDvPjjlbHaoSDwLra+vhLHQoyKDu6Y0Oc5ROjzU8Bs81
	dQ4szIba2p7qV4h4DvHKAishFdzGmd2tlZdIyeeGOXVHbp1s9gu3Nxoyfr0xXTb32VeQmhUNvig
	nC90
X-Received: by 2002:a05:600c:1c29:b0:495:4126:1e55 with SMTP id 5b1f17b1804b1-499aa1c16d7mr24093695e9.2.1787122329217;
        Tue, 18 Aug 2026 23:52:09 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B929600C08047F1073FEAD0.dsl.pool.telekom.hu. [2001:4c4e:1b92:9600:c080:47f1:73f:ead0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499a9aa7e8dsm24166515e9.0.2026.08.18.23.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 23:52:08 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 02/12] accel/rocket: wait for a running IRQ handler before resetting a core
Date: Wed, 19 Aug 2026 08:51:45 +0200
Message-ID: <20260819065146.5904-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260819013609.1613919-1-gahing@gahingwoo.com>
References: <20260817113603.1436067-1-gahing@gahingwoo.com> <20260817113603.1436067-3-gahing@gahingwoo.com> <20260819013609.1613919-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_235211_632792_D8324526 
X-CRM114-Status: GOOD (  12.87  )
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

Hi Jiaxing,

Thank you for the round history and for running my archive check - the
zero stall/paging count telling us the MMU is not responding at all is
a better characterization than anything I had. put_noidle vs
put_autosuspend with a separately forced suspend/resume sounds like the
right de-confounding split; I will watch for the result.

Here is the induced reset test I promised, run this morning.

Setup: RK3588 (Orange Pi 5 Plus), all three cores bound. My 7.2-rc6
tree with exactly two rocket changes from your series - 1/12 and 2/12 -
plus one local test-only patch lowering JOB_TIMEOUT_MS to 2 ms so that
healthy jobs (~5 ms at this clock) cross the timeout deterministically.
No other rocket changes; in particular my lifecycle series is not
applied. PROVE_LOCKING=y and DEBUG_ATOMIC_SLEEP=y. Serial console
captured on a second machine for the whole session.

Protocol, built around the trap you described - the RK3576 symptom
emits from rk_iommu_enable() on the next attach, not from the reset
itself: 20 scheduler-driven runs over the model set with all three
cores active, a follow-up inference after every induced reset, then a
forced autosuspend cycle and one more inference. Two full passes, at
console_loglevel 8 and 4, because synchronous serial printing on this
path can perturb the timing.

Results:

- Pass 1 (loglevel 8): 12 induced resets. Pass 2 (loglevel 4): 8.
- Every reset recovered. Zero MMU_DTE_ADDR, zero "Error during raw
  reset", zero lockdep or atomic-sleep hits across both passes.
- Outputs matched the oracle in 48/48 checks per pass, including the
  inference after the forced suspend/resume.
- All three cores returned to runtime-suspended between rounds; the
  domain did drop and come back cleanly after every reset.

So on RK3588 with 1/12+2/12 the block comes back every time, and your
non-recovery does not reproduce. Combined with your archive result
this is consistent with the failure being RK3576-specific on the
platform/IOMMU side rather than rocket-wide.

Two honest limits on what this run shows:

1. All resets ran with three cores bound. Isolating a single core
   requires unbinding the other two, and without my pending lifecycle
   fixes that path is not safe on this tree (the list corruption I
   reported on Aug 12), so I skipped it deliberately rather than test
   through a known-broken path.

2. This run alone says nothing about the race 1/12+2/12 close. The
   same protocol on the base without those two patches is queued as a
   separate build; only that differential earns a Tested-by, and when
   it lands the tag will carry its conditions:
   # RK3588, three cores, induced reset, JOB_TIMEOUT_MS=2

Raw logs (dmesg, per-run outputs, serial capture) are kept; happy to
share any of it on request.

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
