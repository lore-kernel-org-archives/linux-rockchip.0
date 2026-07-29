Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C60BC54F51
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XWlE2sFE6TdJjsQCy59yIEiDtrcmAzNVZvnQVzzXGac=; b=PS6Nko+NsWM4S4
	FWORZ1hrjBe1y2Bi19wSHmj9ngQWrSZ3hL5a050iGJh2G9R7noSuhQXOCz8hJZ/+P6B2+iu1oDYrq
	PLjpn+cCfrPvb7sPXOzbBPaj1ptDdoAq3qHly/xxORTKAaraGa0ksTZYVIndyP4NKYTSgek0Z6CKM
	QEiv/Skhzg2mXth9i/izo4MYA//HwNUxoQUuARZyFv25Mq6sPJ9RPu1WPvNOAAK7lnLdL/Y7lOoQ3
	/9VKNXGyo4Mdc6CrOzFqBasTGE6Z51vnqiw60s7nHirnrJ8mLOnbOjElkSKEEsbbPfyHHQCxUirFG
	D/YtgRVEmE5wonV1m5Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woyat-000000076kx-1Dfh;
	Wed, 29 Jul 2026 07:20:47 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woyaq-000000076kT-1MQ1
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 07:20:45 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4957799b92fso657995e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 00:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785309642; x=1785914442; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=u5zRMlGpgUUUYv11AcNG3Mf3jLJNT/tVcH1PiXTLpUQ=;
        b=LOkFHmA5e4au6vCzGicb/0rEYumbksoRaa+zgpQ30ysNpA6PMUN8XW5bVUCLA16y+G
         UW+O3HosyktmD2lSFo3kHrdOkasaT2gcKCsH+sPDq2w115OgvEswnrxh757ugYRBN84q
         yRN9YefSVyH85OtsMRni1RDw2XdmLNbeMRHetHcrvzBTwkCtehOJAtGEhCi66ljeorZB
         6glQD7u6L2XVAL42odVnBiCJubSCh+GKr/PHGYTsaktHYmCC+pivjlvrR+ERTx+LQoXd
         oVqa+TDUi9Cnuaoh2vdv/TL1DsxH/PkV2VksVuVU1EysysCaQWhoRgrv1/W6up4QaWJy
         sXPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785309642; x=1785914442;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=u5zRMlGpgUUUYv11AcNG3Mf3jLJNT/tVcH1PiXTLpUQ=;
        b=J0ULdSFvkslgt+Vca+dgW2w0SG941yxS+mRZep3KaGMXhtnSUbGFo66vkmtasHfyeh
         BeUY7saphb0supz3ORVNu7pMgD1d39bya+FbJWGB6AWGIRHxs6BZPNZIPoebu2TkKRPW
         YYpFFmxsNd4VKJQBUbNOlo42DsZTJGIp69bFq2zcnSg9rifdkRVNaZtpe75fxxZECvt7
         F2/55G2VK+CQWYzofiQqIiYlsGK9qRHxjx7rrvgIczqMT7E13yDksJd69NDV4R0Qq6F5
         HQ/2qLShwkc+94XOodUienx6rOzhjFyKvOgDv6YgTIhJEOO7HNS/fHYL5vfKK/1mpgWH
         Zvmg==
X-Gm-Message-State: AOJu0YywXwyZ8A8SW65H+gxv9pSWpnkSPdzW5776e+JpavQH5D/N237O
	6z7Hoh5VqD4gx7z56ASVuQo/Au2BwGsVHpLeNJhWfnAaVbEkkRiMXUD1
X-Gm-Gg: AR+sD128mqQW/hhrIUzOFGmUqxKcF25Tbp+W7of8P4tkLwLspcJlLnSvyzGVc789VIP
	DvlUQk/EGjzYSnTBmyGV8xRfwl6xjb3sZGQouiKWpzHcqsKYDXk6vvv5wZsXN4otq7/BTjS2Ogg
	zLxO2B7YuIXkjebzZFRGaFg/v59dDSq4s2BsRXqax6G9RnrwTddkPKAj+UdCYmmn34Yeq++O6ZA
	lisf76pFcXTA1iJXRHiqIVetBfft3sF/zFc6hCkuGgE+XLaumA/y2K28VaOfqNAUzdhFeTIaUn8
	AzWXk2Rkrm5M5HOYsjeAbzzW+4fptbpV4AbFXTV4zrFKdun+7XwQXqy2zroQQrkn7Ifzq7n1dfX
	HWcqr4g0QB6gCBQinq6leT/q1vLVemhjkzWXn0R6GMRtyYmVV+7gnLHg5bUW1V80ohJ1BQ4sqER
	h/BXa2VZBv+cY0sp4EY6FEBPvhKrYM7sHYkOLAvnQEx9avM9uxnATWDDfpZlb/Qregz2JEvk6mJ
	x5S6Qu/UVAQWYgdUhALbk8MaBia2jhYORJy/k0LJYWpe9WiccLOQNcRsk21cnXFt6ktWQ==
X-Received: by 2002:a05:600c:c48f:b0:495:71ff:598d with SMTP id 5b1f17b1804b1-496c6415627mr39812045e9.1.1785309641823;
        Wed, 29 Jul 2026 00:20:41 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B886F0027B74C8463513DA4.dsl.pool.telekom.hu. [2001:4c4e:1b88:6f00:27b7:4c84:6351:3da4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49764d70014sm54713085e9.3.2026.07.29.00.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 00:20:41 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: linux-rockchip@lists.infradead.org,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Igor Paunovic <royalnet026@gmail.com>
Subject: accel/rocket: clks[].id fix - standalone patch, or would you prefer to split it out?
Date: Wed, 29 Jul 2026 09:20:19 +0200
Message-ID: <20260729072019.105907-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_002044_381950_22A18869 
X-CRM114-Status: GOOD (  18.68  )
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

I have been working with the rocket NPU driver on RK3588 (Orange Pi 5
Plus) and ran into the missing core->clks[].id initialisation in
rocket_core_init().

I noticed it while reading the live clock tree rather than the source:
/sys/kernel/debug/clk/clk_summary shows four "fdab0000.npu" consumer
handles on aclk_npu0 - and likewise on aclk_npu1/aclk_npu2 for the other
two cores - while hclk_npu0, pclk_npu_root and scmi_clk_npu have no
"fdab0000.npu" consumer at all. The driver believes it owns four clocks
but really holds four handles to the AXI clock.

Before writing anything up I went through the lists, and I see you
already fix exactly this as part of

  [RFC PATCH v2 6/8] accel/rocket: add RK3576 NPU (RKNN) support
  Message-Id: <20260718031146.3368811-7-gahing@gahingwoo.com>

so I would rather ask you first than send something that looks like a
duplicate.

The reason I care: I would like to look into OPP/devfreq support for
rocket later on - Jonas Karlman mentioned it as future work in the
RK3568 thread - and today the driver holds no reference at all to the
clock that actually feeds the NPU ("npu", SCMI_CLK_NPU on RK3588). That
is in the way of any frequency scaling work. The NPU still runs anyway -
clk_summary shows scmi_clk_npu with the hardware enable bit set but no
Linux consumer, i.e. firmware keeps it running - so the bug is latent
rather than fatal.

Timing-wise this also seems like a natural moment to ask: Will has
already picked up the two iommu patches from your v2, and after
Alexey's review you mentioned a v3 respin of the accel patch. Since the
RK3576 inference issue is still being debugged, the clks[].id fix would
otherwise sit inside an RFC for a while, even though it is independent
of that work and the bug it fixes is in mainline today.

Would you prefer to:

 (a) split the clks[].id fix out of your series and send it standalone
     with a Fixes: tag? That way it can land independently of the RK3576
     enablement work and be backported. I would be glad to give it a
     Tested-by on RK3588 / Orange Pi 5 Plus.

 (b) or, if you would rather keep your series as it is, I can send the
     standalone fix with you on Cc and a note under the --- pointing at
     your patch.

Either works for me. I mostly want to avoid us duplicating effort, and
you posted it first.

Thanks,
Igor Paunovic

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
