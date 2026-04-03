Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA901E88D67
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Apr 2026 21:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4YsoY662u+V8OAwlsyvWCXPhKEnpepixxjGp0es1ruU=; b=V6kXEDq1HZADCG
	rQ73Bx/fpDMVP8hV9A5wjp6Q2cFk34pgnEAAcsO3HG8tPaLuGPxwni0mdkJNH8B4cwc2E+cU91Lrm
	K92Ckb84hQki5dp8AeQ4HTqmIPNz7VXAC/3s1YegDXPj5DqeSu+eN0f4/pl2ixmwbP9NkYV39S0il
	9U7FgwJR7O7UfpB61kHuA0nDn2j6cNW54ao1PTfw8Tz0E2ksz8AB+3vZX1I1GJMmZt71CFryDW37U
	d9gUNxQsLql7XeQcRBpEHzOoDnvQPmoKvmtDw7hs/MBYrtlLoRqD9jHnYPhUBLIWPIrlVGxOS+Okv
	iyu0BxAv5v+sqABnzJ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8m31-00000002c3q-1t3I;
	Fri, 03 Apr 2026 21:27:23 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8m2y-00000002c1Y-2xaY
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Apr 2026 21:27:22 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-82d03827316so709754b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Apr 2026 14:27:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orb-net.20251104.gappssmtp.com; s=20251104; t=1775251639; x=1775856439; darn=lists.infradead.org;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JeRTLOcy5yBXD+HuJ39TxkiskXMTMotEnO2l9/4Dmvs=;
        b=dq9wGcQC9HtEt/UtlPpc8FLTXt4eEq/bqEkHS5lIl4O4D5MM4Xwlon1jGjQ1Iww+HY
         k6t0qfs0L1sE7HRgLGfweaAU7tpgs7THRn4RfAwTeA7fa2cxp1a7abRP22PJMzqWgNmr
         Bs7L+eFqwK5SIcwByT9zj2zOYpM2rTbEEoeCJS3mVCj3F3/1qslPiKtWmdvrkAQ8secn
         4t8iEoU+d9D7AD0rySxAsmtnm1dGB002dr0YSVKXZsZdd46rXUtAEmqy2azmd0kXy/vQ
         LgriknBBlGmLfH4lr4rb1k9Tk5iN9PuMaEA6tZB5DwHRTWgEYoYMxKlsbnyaSsqXI5LI
         efSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775251639; x=1775856439;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JeRTLOcy5yBXD+HuJ39TxkiskXMTMotEnO2l9/4Dmvs=;
        b=bDshXTfBhHDq8sTFvimKeOMdYi9bnhP42OwjJKzM+TUAgTlfFb/91a6zDBEtwssXa4
         Qds2tz8fAnDiiEFO7T+FMwnpmJY6Y0TgbOvXdyE5z7DEvBu1hSNOftCPwNhl/J3/iaDj
         DIINhN1jLQNM2+J7XS1uSGDhGwTKY4dxBZp5mGN8S94jtBnEw4SWuPtQRzB6GwEEHEmJ
         qstHECR6UF3vdV5M3tmBysO78NheKDtUiFNTXev76YCteE/h4xL4OBRV5nnKc+9aJwXT
         9N7ojEEigiPCFHaf0zhZhvPoUO95WlHhsZxKwwSC2UBHWvkAKveQv3jihiaTTPOl+lv8
         r4ZA==
X-Forwarded-Encrypted: i=1; AJvYcCX0+pRsahgINbTNsNDcamYwCFzXf+zf9OOCTM/ot6KF9/MBsEdtmBEX7/cg1IcNJvxiJtkiDOyLSnNPvHomsQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb+O7htcnhwwZnz7v3jFTR81ZYmdst8fdSwN95fykoOZjKxGLJ
	sRsU2huWtH2mAtXKAvJ0z1uj1vuF0uc4mQVeY6o6u+pPjSnDCQ9Usskie9ufvGn4xv0=
X-Gm-Gg: AeBDiev/sF1eKmSxlx1Y3BNa1cQs5+WnzvE0xWnmkPtjZyb8yurmK+/K9Zcr15K8KHo
	au1SQg9WOF8Vj0Ot10xhxWvWp3Y/7gkUHcIqk9j0LqR0VTmWErcpOT0mgMvIQwsJag1VrCYQQMT
	SmgkQhVpGGlCX4GBsoaPpklv735zZm7X4JZxcphOuR6nv/VG24gEf//nZWRz9/Q++zopVdz+9qO
	W9K9RuZ4c0ZFYEHmzRu5rR3VkJSOFMzSmffGRiGy7AjPMVxWo8Zlv/i0rYE6bMC8SVcyb3vZina
	GlgCgGQHXlRkiZ8iHoPXZ9Azg2QemIZQbVOmElN5eziDQoJi7ylTCuxdFClU/Xfia2cCt3TjJ9C
	3Uvgre9J5fHJvo5YzVxbQKYkszQlSF42reQ/p6Yq4Wnj/dfWLaBVL083OTvsWyoHVbczYl2jQgn
	gdOKBN4rHfZPFK67ap2xVqJG9UTmPbcrkbfkKyfPU81n5A0S67EI80GNPpuW5ZCHHDD4GEILH5
X-Received: by 2002:a05:6a00:a257:b0:823:1444:7873 with SMTP id d2e1a72fcca58-82d003b2753mr7863216b3a.32.1775251638984;
        Fri, 03 Apr 2026 14:27:18 -0700 (PDT)
Received: from claude-dev ([50.125.94.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82cf9b3dcb3sm6643153b3a.16.2026.04.03.14.27.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2026 14:27:18 -0700 (PDT)
Date: Fri, 3 Apr 2026 21:27:18 +0000
From: Daniel Bozeman <daniel@orb.net>
To: shawn.lin@rock-chips.com, finley.xiao@rock-chips.com,
	ulf.hansson@linaro.org, heiko@sntech.de, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
Message-ID: <adAwtiaU-32qjRRE@claude-dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260403_142721_001475_30ACE204 
X-CRM114-Status: UNSURE (   5.71  )
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

I ran both tests you requested:

Test 1: Added pr_err to rockchip_pd_power_on/off to identify
the crashing domain. With patch 2 only (skip EPROBE_DEFER),
the crash occurs on PD_VO:

  rockchip_pd_power_off: vo pwr_mask=0x0
  Internal error: synchronous external abort: 0000000096000010
  Workqueue: pm genpd_power_off_work_fn
  Call trace:
   regmap_mmio_read32le+0x8/0x20
   _regmap_bus_reg_read+0x6c/0xac
   _regmap_read+0x60/0xd8
   regmap_read+0x4c/0x7c
   rockchip_pmu_set_idle_request.isra.0+0x98/0x16c
   rockchip_pd_power+0x130/0x48c
   rockchip_pd_power_off+0x38/0x48
   genpd_power_off.isra.0+0x1f0/0x2f0
   genpd_power_off_work_fn+0x34/0x54

Test 2: Same debug build, booted with clk_ignore_unused
added to kernel cmdline via U-Boot. Same crash, same domain:

  rockchip_pd_power_off: vo pwr_mask=0x0
  Internal error: synchronous external abort: 0000000096000010
  (identical call trace)

The crash occurs even with clk_ignore_unused. The QoS
registers for PD_VO are inaccessible when genpd attempts
to power off this idle-only domain.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
