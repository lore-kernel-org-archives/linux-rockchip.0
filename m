Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B418C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 04:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=i9LFrs8T63mU+qaN8e5Bu0wMnWNIlA909/+yNcywZj0=; b=L0A
	O3rCt8/GOQuxZ1Ik0WuxBH6oB9ClCE6J5ARUcfZigfWsb02Q6XViPhja44FF9WMVT6Tz0WUXQ3r9Q
	ZQklglfn7yQZCoTf0IvYcSRVWjxnvEOjx03aMoPkRnRJ8DLFkS/7sgcjVLRDQYEZVBOxR/oDt6EL0
	1n1UmomDzWqnh3O4bEdsa4zeFRFOQFHUr+REfEIqRLpOFHj7fi6+ZmL1j/AhKFxpZaFvW79gayetc
	iE497XSBKDPLr7QHwKsD5g5BNYqA2uns+gggMc6Jz10uWlpNnrekwRr/V9rIGgAKK680nhqAKPZ5F
	/io+cliG184HROjPbQY8WtS098Au8SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4vjz-00B53T-2L;
	Mon, 20 Nov 2023 04:18:31 +0000
Received: from mx1.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4vjt-00B51p-2B;
	Mon, 20 Nov 2023 04:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=tom-fitzhenry.me.uk; s=mythic-beasts-k1; h=Date:Subject:To:From;
	bh=PF8OjO8c7erf1om3rhrjk7pSuZlvp3jAiSRCfEz0K14=; b=hTQ/+wown69y+zfD5Kfn0m1xcf
	+GIGSHtANnev5XxSBf4rJRb9b0JqDxuaaqJF0X0SnSz6wQbF0ilbYxGR7/rN32EUwIYV3pwmMDmLO
	WvaYMMMQd8iDHG+K7DW/c21dLA+RyV2Cj0e7OM5eftRJfnkQD3njD67Epncc+uWBND1n6Y0qdVmOT
	lBqc95uKQvkPeft8zzQ5cNhFaAkZVQhN57tZHgJFaRujeoE4yRth9NZPyC+BFRhql5B60qZsSzBrr
	BRmNpd7qGwuH0N4BH7zgVAQCV5lo63Dlr4GCK3POWJH2qzZuzIQ1T7oHLYzadcIqwxp/vt8hDWKwH
	I4CnEyPg==;
Received: by mailhub-cam-d.mythic-beasts.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <tom@tom-fitzhenry.me.uk>)
	id 1r4vjj-00BoLo-LQ; Mon, 20 Nov 2023 04:18:16 +0000
User-agent: mu4e 1.10.8; emacs 29.1
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
To: vincenzopalazzodev@gmail.com
Cc: bhelgaas@google.com,broonie@kernel.org,heiko@sntech.de,kw@linux.com,lgirdwood@gmail.com,linux-arm-kernel@lists.infradead.org,linux-kernel-mentees@lists.linuxfoundation.org,linux-kernel@vger.kernel.org,linux-pci@vger.kernel.org,linux-rockchip@lists.infradead.org,lpieralisi@kernel.org,robh@kernel.org,shawn.lin@rock-chips.com,skhan@linuxfoundation.org,strit@manjaro.org
Subject: Re: [PATCH v1] drivers: pci: introduce configurable delay for
 Rockchip PCIe bus scan
In-Reply-To: <20230509153912.515218-1-vincenzopalazzodev@gmail.com>
Date: Mon, 20 Nov 2023 15:15:30 +1100
Message-ID: <87a5r983ea.fsf@tom-fitzhenry.me.uk>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_201826_401943_47D2FF80 
X-CRM114-Status: UNSURE (   3.65  )
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

My RockPro64 occasionally failed on boot with this crash dump, at least
since Linux 5.15. Since Linux 6.5, every boot fails in this manner.

I applied a similar patch[0] against Linux 6.6 that sleeps during probe,
and I'm now able to boot successfully each time.

0. https://gitlab.manjaro.org/manjaro-arm/packages/core/linux/-/blob/44e81d83b7e002e9955ac3c54e276218dc9ac76d/1005-rk3399-rp64-pcie-Reimplement-rockchip-PCIe-bus-scan-delay.patch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
