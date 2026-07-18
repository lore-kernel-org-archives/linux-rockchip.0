Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78649C4450A
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CX1oecmuP832L1HI++72KJTHGoImqfyw6v0AycF41bI=; b=XHFGBnIx7btTEh
	NqKni59jvyqI4onS3KK2eXgfHVn6QK7oJ859kj2NVWPmofgZSsem3GN5JbtDscWe1xFiuu67R0tMe
	hD1YXKn3laYQP3yYVkG3lGPKibPBGqEnwUpmQEF8v68XRvJ6MFcQ5jBBuvd1NOsNCfZ4MHQRMr/cr
	1c5vglhkevPSlpOQ+F0GrreKiDO7Cn4oM0q4NI2yoNlhAYOyA2bs5kKNN8IoJ5WiCRs2mmpFLhnfO
	ukS3Z9FK4MCSom64DuHLLzp6DJFZLuCxrZCkIEEuIyT8Fgap+flObd/JjSybkDvqKgd1S95JZPhNo
	uz7nwksVSwcauqbqbiTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkvUt-00000003bl0-0lOp;
	Sat, 18 Jul 2026 03:13:51 +0000
Received: from flow-a2-smtp.messagingengine.com ([103.168.172.137])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkvUq-00000003bjQ-0qTD
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 03:13:49 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailflow.phl.internal (Postfix) with ESMTP id 64F9D1380333;
	Fri, 17 Jul 2026 23:13:47 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-10.internal (MEProxy); Fri, 17 Jul 2026 23:13:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1784344427; x=
	1784348027; bh=dBBJ1bbYoAzjdUY7u3ln2vHxvkn+rSX00R1jTCDwEPY=; b=I
	mTZVw3tCoMfDmx34w3CnyD5vGUaVNX4eXiOR/1tRpFMS+4XQRkSmSMNKTqQ26gU3
	zpp1AxlcJ/xFJ2A83FDu3STgyKy95WxXyC6Fyj3B2G6/O3WW9X+N7PWZQB7bmy4t
	KhK+Ag+FzpPYp8oHeJC9j0wEW0Bc9+qAcURE7/gWzdga9Q/GAWJFxdJ9lWj84G2k
	jxOOyDjNexpScRTTPiJretlI9pFGmvQQaFW+FitJ84j2QtNd5xzTJlvYNuQgQBxb
	9YalzkLCOcp4QkO+TsWiDlmmdsc8LLLSy7AhudYP32XHZV8SoqEj/A/rGSmcDA4D
	QgOPK1my6tHp6Du6RCO/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1784344427; x=1784348027; bh=d
	BBJ1bbYoAzjdUY7u3ln2vHxvkn+rSX00R1jTCDwEPY=; b=YnLwGgyCY1CHjMUyl
	4v8YMgYFDg8fbKVQWlbOU8cLzWhildo3/DQC5fJjY+wQqfBM5Ppa1zpSIqCVlLFw
	bouGpk1PTsZUEAIqlHwXnG2MlcWLhUPzjyudZF+bMbolDf3T2uN7fcX9bUTvK1TN
	Ce0bYWpshWHP+nBq5kYNlJm8RIKujyZNyW+i/Rp5wAQbYnaup0JTv/3XJNiiqwKf
	RK+f0SsQ5JwdPdoIlWaeyvYVcZ5pb3wTKvDwGFN/BIyUgF2Ipt3Hdtg0b+Qhfyic
	Lce6hneHtt+YheR/hjI1zbTrn+/bFzGPjc8thMRzNxOZf1eCm703r2904JRbfxVl
	Lw1vQ==
X-ME-Sender: <xms:a-9aahaw-ofwL8joj24tZnLvoVy1q_vUq6V41gf-hThlLxZJtyTPAg>
    <xme:a-9aahstJmxl5kMbqosYMa28OFHTiD1zslDL5IRv5NH_oExey7VlrcztRei8gOF17
    CCzm15-6qB4-FO4Ok1BJ0jUBk8O7k5Lf4AluqWT2ba6MOx-teBx5iI>
X-ME-Received: <xmr:a-9aarNFIb5o3C6blz1cfxwCFUorB_f46Wys2BGxXRtO1Vk7lnny-cVaYWes2y0SB5S-JPAygVmThiXuurY>
X-ME-Proxy-Cause: dmFkZTGGTTbRjNfuyXXY8KUIMiXjqovuz4CSj+LGNj3GLNMZc2bZPFngC0QVgbb6YxmVgd
    uyAb33TlOo/IOXNfH14Cim8fmEJrSqvc2Wq2VnzHOBQgkW0lQcfmJxLdxIFilfXAzJ/deN
    c+l0qxxOUMCX7fcx4cEJrFF8CovPGPWouH1k7N2/iS8bGB00BByuzOPY7+gHVPXrd52QSI
    pnOK34Er16RoF5+Bli1hKQsWzsLkHLQj5yoaVEYSc08eSPUtndErx8/wXs64HgW3ycW9T7
    0cQKyl1o+8LCd2AXkpQsgf7zH5IVcIric4xCyvbz3ZB3aSvmWRI/TLnAJa9mdz1EsyhTNG
    jt3l3PrG3VIwjtoruYFib/ktde/M0OSCjn+SS8ao8Tj1ovc2u0VfJYiGTUSHPfZcezWjz9
    /eaYuCHgvX6s5r/9U0sh9nRCWur/AzkAwFFJeI5PA4I6mcDB9aXGKYB6TqtebW6xX9mBvn
    DjCA27gSxD9vFnimA4oQIQajS2RywYRkIIjWi7afViebD8leBwxt52aayyPa0pdUDYiKti
    OHjt7gjQMTiMqRfZOwKsc0vWp9aYsEdNq1fQDcsWsMKz71IinpmNNNWqxWBMyiMQxwyPQr
    7SVm0W0qgAtT2YauSMvt6N49Ek5Ycdt7PBgAv8em1PDnYz6ibI/66QeJsW3g
X-ME-Proxy: <xmx:a-9aag6e_eL5DkQgbBY0OliUm_xzoGPAGboCqByuOMoZsVuXbAhvyQ>
    <xmx:a-9aapRW7WgnRPOTENVusHx0vRNFvJxvFwPjicmSo_guFd3gzlvTQA>
    <xmx:a-9aalDZFBB7LbpyG2_OmOWBhcR2KlpIPYD07MFvvQ658sIR-6OdUw>
    <xmx:a-9aahFDIjWSYh-KR4wQnXf9RGClLwHvoNrvH74AWs_U2D4SJRre8A>
    <xmx:a-9aavw303-Vs7KjFSNMqkDHovvhvQjzyrTSXa7eECKxlpjOQjn-5mjd>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Jul 2026 23:13:44 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: chaoyi.chen@rock-chips.com
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [RFC PATCH 4/9] iommu/rockchip: skip orphaned-fault banks in rk_iommu_is_stall_active
Date: Sat, 18 Jul 2026 15:13:41 +1200
Message-ID: <20260718031341.3369185-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <b7d71a44-eb65-4b09-a378-225249276f65@rock-chips.com>
References: <b7d71a44-eb65-4b09-a378-225249276f65@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_201348_307497_E9078FCC 
X-CRM114-Status: UNSURE (   7.23  )
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

Hi Chaoyi, thanks for looking.

You're right -- this was treating the symptom. I traced it:

The bank carries PAGE_FAULT_ACTIVE from boot firmware, and rk_iommu_enable()
runs rk_iommu_enable_stall() *before* rk_iommu_force_reset().  So the stale
fault is still set when enable_stall() polls for STALL_ACTIVE, and that bank
never stalls -- that's the timeout the two "skip" patches worked around.
(On the RK3576 NPU force_reset() was itself returning -EFAULT, "MMU_DTE_ADDR
is not functioning", until the MMU clocks were fixed, so the fault never got
cleared that way either.)

For v2 I dropped both skip patches and instead acknowledge the stale fault
with CMD_PAGE_FAULT_DONE before enabling stall, so every bank starts from a
clean state and the normal stall sequence applies to all of them -- which is
what you were getting at, deal with the fault rather than route around it.
Confirmed on a ROCK 4D: no more raw-reset error, no stall timeout, the NPU
brings up and runs to completion.

v2:
https://lore.kernel.org/all/20260718031146.3368811-1-gahing@gahingwoo.com/

Thanks,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
