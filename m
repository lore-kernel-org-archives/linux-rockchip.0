Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 455CDC5516E
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 20:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfkt0z/2YEM7OVRJ6h1IFPjfoO7hQnbny5ExCmYed34=; b=mdHO21DfOU8nhr
	qIFsgTQDUgP19i/gLt18K1w00sNtGRwD8ecsqCHxil9xbPpeB536VwVrANemVw1v9MIWU+3blCmgk
	DBIfdn0TnmCdM7dfaUqFJBTCzSOs1Ble21BNlQB/UgMCtjtP8+4w7ZrGQmwyxdklJQai3HHpfGoyE
	FduqA9cr6pAiY++vPR9PC26jVhgeIcihJpKJhEHffkLC3hfRL5H1EYaztE6Yi6cL/rX4GhhUeiPJL
	08xaGcLndubxqd5rIqf+NCZ9TpBFWiyLmJ8NDhYv9+BXCItLaQGpRj0jtpMcTxotLcWWDU88vOF0B
	VtxhfyX79ph8kq/TsBaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpWyg-0000000BI7R-0j6X;
	Thu, 30 Jul 2026 20:03:38 +0000
Received: from flow-a6-smtp.messagingengine.com ([103.168.172.141])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpWyd-0000000BI6s-1KCc
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 20:03:36 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailflow.phl.internal (Postfix) with ESMTP id 2036D13802F9;
	Thu, 30 Jul 2026 16:03:32 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Thu, 30 Jul 2026 16:03:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1785441812; x=
	1785445412; bh=ME5rdnPgrhY0/be/K/GjmO32MBMw0cS1oPMnYYFOb4Y=; b=I
	O4fdp3T20fSQ9HJgSEliQBV9Z0sWMyuABmTt23FC9QxSbAShaKxIZ/FWt9XoMTHk
	1R1Qiu3GOPUT8rpoZuw+xVz6OSUSOjMxvYtO1W3mk09QwrT3+J3DbVolUAuX5Ql+
	0B8vs6YEwZQVXq3JjKC9eh+OADov0KteAHDcYW7tg/aDROK/6lK84fS+KQJRaxxs
	VGtmrIwcLPz2ZbixznSNDZ30oiFfczIsr/sP24i+1QPb+sW56/+VM6noK8cmT2hd
	p3emPsSmQdC7ClDUvNP+PrSLSCjn/cQuSCcF0Bu4lFM4GXFjB97vC5wy3Z4sjeZ/
	l4pc4Ys77Q5pDI4CeCNVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1785441812; x=1785445412; bh=M
	E5rdnPgrhY0/be/K/GjmO32MBMw0cS1oPMnYYFOb4Y=; b=XJ0BX+Mcnf8MNElHP
	RMSXbFyOWeAt5n8YJai5xh2+L9GIjfccXFGqdT9jnZFBRenKzKPjkZJ1KVBQLnco
	L2ZcEy0zuYUkZyTAE+79iOREQW6udRMOO6Jqekl9GaklRi0k+u4TCbNOnduPjiuy
	bfqpjOTAajoNSamlszXvqiQqSbWLnskcwc414g9nE1tAp91rK29u+xreh+j0yRO4
	I27sf/ZTZcpcfv+qSOkx2/sLCQ3ZM0sHSD/13K6B/fwG2AY5U88No1sBbdJCx6mK
	Ba+jkXB5KIhbmUKs7xz36ql8P7aMnXvqsYwQiIV4YFodRGRuQii3h4vNCZ4qQM3n
	/aUBw==
X-ME-Sender: <xms:E65rajMFEgEAd4nmBVbnZhoNckmWD7iHEhHUTCIcN8iYieXIv9Spqg>
    <xme:E65rao4njDmDIWmQvEAkP49zezNvBk24xief7QDOzHxDpIBqQeWhQ-IyjTCcon07-
    4t-zUxl6CqD6Abf92M7qlwuLCdMdY3wgEoCpB4ArS5Mpk1-0OQHB0A>
X-ME-Received: <xmr:E65rahTiJhWcSS7q6ZKyLAyNSc5setBrfjKteiVlJudPldyD9kQOS_jC_kd9iyf6JGBTNVapnA>
X-ME-Proxy-Cause: dmFkZTFggSoutQfaJn5J9CXYs+2T9O+qUNzDoP/Df/4+w10qzQUI/6UdY9dbXZu+be1N0D
    BXT1DGshPjsUP/N2O2hDbe77McKEo1+0zJH5EYC5FuIrQq8sthsA/rsVI1TlYldF7Ps+ho
    3Y00mC4ieRhPOMbf2WXgI+rGRU52MmtEad50PuS+D8DX9QncdSZJfbPrVT+YlZE1iS9yrZ
    yPU2EdJzCQfXd2/wgFWxc6wPmdGOFq2eErPtNufJB45LyhtktoHBlw7g8iQnivyE6bYIgz
    xPUO7vmxzyU6IfV0C7vBMgrPdUFHftIVYsTeEPpMQsl6ElAcKfpxBFZC6Ro2fZfxxvwckb
    TtWKbZh7vl1UGhCDN1IOqDv4wihGtjeEtCeSKUo6xC3yaPwOv0A4ywMR+9qzlBoOeAwLre
    gHB1qskJAxy843d1o8rwZoFI2ZsJybBONXRKJugEczvQYcbSTw8nuyTmOxCYnlYPfiCCPL
    vK7NYoi0GFA8QkuSGMrhooDyEnCxxJ01nfbW8ImAnOjpw013FIQ/g2amcbXMghFlOWCEmr
    THLjU6JZ63nF8ddW3ATqGY9lfwSsQsSRH85UkbQ1wKXXT4oNpBG88kL37pf4RTokY2FyGE
    mvvAZQqwLOoO+ggBXV9SqXFxjxeYR9r6xIjyinRil6UvJfRfn+dCAgk6PVhg
X-ME-Proxy: <xmx:E65ratA-6rFYxNvUNTeUtpzS2HQakXgCMgxMR4gyYKCCFmklPbU8-w>
    <xmx:E65rapF6L2hGmY9RILxId8WkgId7M9-a7V8SVh7WIZFlo53Rvj0HzQ>
    <xmx:E65ravDjsE7u4PtFui26EeJ19wedhpYtrLW9InKSoduBzT1p3IQdlw>
    <xmx:E65rapWBD_enw6dXSNUrFCK_zero_doIaGaA5A_-7sY-u_1aaV0NgQ>
    <xmx:E65ramWLFgt3Sc3cXfWmLAPiqezl0lCLKpxrO2KA4bKH-ul_L8dEIMpv>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Jul 2026 16:03:29 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: heiko@sntech.de
Cc: tomeu@tomeuvizoso.net,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: Re: [RFC PATCH v2 2/8] pmdomain/rockchip: add optional per-domain power-on settle delay
Date: Thu, 30 Jul 2026 23:32:38 +1200
Message-ID: <20260730113239.1417912-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <3322194.D8ZAKjAxdT@diego>
References: <20260718031146.3368811-3-gahing@gahingwoo.com> <3322194.D8ZAKjAxdT@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_130335_745208_6E098F8E 
X-CRM114-Status: UNSURE (   8.45  )
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

Hi Heiko,

Thanks for looking.

Understood on the naming. The suffixes describe the fields the macro
sets, so a variant that also carries a wakeup delay should say so. In v3
I will add

  DOMAIN_M_O_R_G_W(..., g_mask, delay, wakeup)

and leave DOMAIN_M_O_R_G with its current signature, with DOMAIN_RK3576
switched over to the _W form. That also keeps the diff off the macro
every other SoC goes through, which is nicer than what I sent.

One note while I am there: DOMAIN_RK3576 is DOMAIN_M_O_R_G's only
in-tree user, so after this the plain form has no callers left. I will
keep it as you asked; say the word if you would rather it just gained
the parameter after all.

I will also drop the stray whitespace hunk that crept into this patch,
an unrelated blank line removal in rockchip_do_pmu_set_power_domain().

v3 is not out yet. The RK3576 inference bug is still open and I would
rather not respin the series twice, but this is on the list for it.

Thanks,
Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
