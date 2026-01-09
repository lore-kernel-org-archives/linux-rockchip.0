Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E362D26D94
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 20:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9vcxxD7Vl4YEzsv7qvK9DKppDVkeujpf7/0yLRRKRs=; b=X0eG85C6VzECtV
	IZHM+2VCY+PbJoBMKDYRP1d4Qw+vKaomFG90yrd6ifPryzzWPgmRSB/5517CeN7rOUv4p5NT11MLZ
	5plA+CGBzorOk2/7g6h6SaQ9Ln/z7oIXb5bZ3YwgBNpMrwEf+qdBHPe3Cw+rLS+ZxdoNOKYhmOW6V
	9XyA4CrzDkuyyOwB0pZwRwfeQabtezb4zVIrmdQ8T727A5YYoqFP3HKpI7S7kYQbzl2B8ZorQlVMV
	nle49Q4x1TY2esTjQ/NjqlFgjnr9Me73BWHPp+0u4Sr+KTKIkpvytLj4G+wzdX0mupO9BSDcKYD0v
	+C18l24F4slAe7ohV9hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veJK4-000000030ok-1MSr;
	Fri, 09 Jan 2026 20:43:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veJK0-000000030ni-2Vvp;
	Fri, 09 Jan 2026 20:43:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=f5RJrE9iu3AAG2e7ylgK1ozseoLRQiyaoirBfZJAtnQ=; b=0mvT/PbGRh9OZnqLcSrZpsjnOb
	yP9cFt3trK6oUFCtVbEP5qujsrD2emQSMPcusA0XHuETJz9fqvtMjU73AzVcgO1ujqxJGCRBUblyb
	fI8kdZWpF0bkNWE+pMVAKS1z2egHEQ8f853vglLDqtJdFFCGoWz2GsSwcC+cyCwsYrd+eEKI7Yzo4
	XNPjNcasRe3avUpDqs5zYAaIhGoUS4MjDUxYbXx1j5e+BPjcHwaz3dsSm28CJnl+J13NNBL3OUOiO
	RQl9nCXZNcnCJR8j9Z0vzjpDrakKEYiormETfKSNa7eyh+i5Wp2SSBRg+90qCTZcrvNl2/5rpGuXi
	/0oMxuAw==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veJJs-001g9m-Nf; Fri, 09 Jan 2026 21:42:53 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Miaoqian Lin <linmq006@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: Fix error pointer check after rockchip_clk_register_gate_link()
Date: Fri,  9 Jan 2026 21:42:51 +0100
Message-ID: <176799135865.3468380.11555784321903491011.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250805030358.3665878-1-linmq006@gmail.com>
References: <20250805030358.3665878-1-linmq006@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_124300_639432_9F30C6B3 
X-CRM114-Status: UNSURE (   8.07  )
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


On Tue, 05 Aug 2025 07:03:58 +0400, Miaoqian Lin wrote:
> Replace NULL check with IS_ERR_OR_NULL() check after calling
> rockchip_clk_register_gate_link() since this function
> returns error pointers (ERR_PTR).
> 
> 

Applied, thanks!

[1/1] clk: rockchip: Fix error pointer check after rockchip_clk_register_gate_link()
      commit: a8d722f03923b1c6166d39482c6df8f017e185d9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
