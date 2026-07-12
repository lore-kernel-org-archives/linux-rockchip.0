Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63550C43458
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jul 2026 20:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+FSAARPiP+6nPJnptvX2xWU2w/g11CV5IMAqkLh5Zc=; b=ybAKNDuViPS4r4
	qMvndR2DhKIsCwbEy/0yrabgFM/rOOBI9cDEiIL0szp7RdtG6Bk5QKqRqm4s0G+ty3nhebpPYOA02
	vRsrR+uUDio53N3lxi+Iv28HCS4gn9yDzb4fk8moNgAeSJTJzSsGIumP0HMfNZmbT4fKEgXfEO+4i
	DNKUXjxKNC/hnTN9/y+KPpMXX0loK8yXqDsCD95pAaOPj6xWrj5VrnNTcmzeuHQClihLD9B0rBPfu
	jtoA6IYvCZA/oNHe6N46sTXvOIgmKpy19iJbZ5SXw5oK4IKKTlVaao1IgGYRjcjzo8OqxnApPHOuD
	vmMtmqBlRVRtsBirA2eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wj0sv-00000007jW5-1Ft2;
	Sun, 12 Jul 2026 20:34:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wj0so-00000007jQW-0gfe;
	Sun, 12 Jul 2026 20:34:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=51X5ACPiybVecl/egLVDpzxmSGAC3FWqg15+e0vfnfE=; b=drtMqrlse0CCYqM1gqVb3oNwOB
	1rm2ACUG03nC4BVS03Ff9HOF9kZJQvy2g2PzuX4W9gVc9sOtjb7315m4xPDCC9/Bj/ULbninyWKzo
	/MDZhS+UFBbB9lovaegH5ytHNM60wofsEs9/LFZN12ulRNGv944rgVJVgRaCylOZRB72DTAEPxoS2
	aRwPuxUsCC9LJW2RvPZ7RHRKMZxpDwIPsxzWYUzQlXOA6xSzHPg1sV6sauXd3WPUY0haxO2c+qOAu
	CSQsFGbELMJYs0zr5CcRwJC7i5drPNO/5/mb0WViQfo5ExuA05RYsxOSsMvD4AubsKi4FnOZfUyXO
	qTV8YCRQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Oren Klopfer <oklopfer37@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Peter Robinson <pbrobinson@gmail.com>,
	Thorsten Leemhuis <regressions@leemhuis.info>,
	stable@vger.kernel.org
Subject: Re: [PATCH v2] Revert "arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro"
Date: Sun, 12 Jul 2026 22:34:00 +0200
Message-ID: <178388833983.1396294.14906370206839721571.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260703201010.67311-1-oklopfer37@gmail.com>
References: <20260703201010.67311-1-oklopfer37@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_133438_204748_9163483E 
X-CRM114-Status: GOOD (  10.12  )
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


On Fri, 03 Jul 2026 16:10:10 -0400, Oren Klopfer wrote:
> This reverts commit 096bd8c679185f898cae9933c6a68650fa26ea4f.
> 
> Just as with the Pinebook Pro, there are multiple chipset variants for
> the Pinephone Pro, and multiple firmware binaries for different
> distributions. The change causes issues with some of these combinations,
> and reverting it resolves the issues. See the Closes below for the full
> report.
> 
> [...]

Applied, thanks!

[1/1] Revert "arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro"
      commit: ee7d67291fd95554dd24e9db8d8983a27739eadc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
