Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 496F0C5AE5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBd27j5uALiw1iiVAUZoM5LILXyHrTolCYjWHUScXz8=; b=q87Mf+eFZvwCop
	73H4Jd4lEaN1NmVw0HrVYT97/hQH2xAz8kZwG/N3uK+5ZSk2MliYoL4SI9iCS+XWZufL5uNl7KuiL
	d1SpJ1a2ZBShHBQ14PQTvTjiCIrB7paiXZkvvwCxChsKFq95R4dAvh98toyDC2sED/w8p5bGOfmAt
	rsmN3wH5w9im8hYNz5H0imkXycZvyZhX4cZkpZqp05JhfglCeWZfXpeG0dHNTFqXkVzRqvaCNeP9I
	c+GjVR0WJ8xxYidd82zeJANfwFANe6Fw+JoqgCMRl7tHHRwV4LL5x+fdJGucvpcv1N1XaVTl08KjF
	gsLcte2oAw5o4uNhoKEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKoj-0000000G1Py-102e;
	Wed, 28 Aug 2024 15:42:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKNM-0000000Fux9-14fg
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 15:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Q6MDe5ik/q62fr2nqCRdkQ9EMnGU7nKBsp+fj8YUl0c=; b=xaxhRQihsPhY2sdb0DKbD5ZB3R
	vWJ/QVqb7040AEXp19LqQZAUOzbFvhYw9NJuaRbuUaBXExWFmuT38HdvbjNA1tncl2UzHmDb41u8k
	c2Z/AOCJGckBIokFMrPJT2lIC37bKY8nkrk6ct3dwuBeTuFJk5LFl14hKz/NU4U+1HMv0MVQZwNyy
	pNf+DjdiraBkV27qh00PjUAqJgRWly1dpbBLArbdup7VITfj/rOpKSLjIrBNVPHTAN9vwX4ZS1RAW
	cjL3Ri5zeEJsu+1sG3Gzlb2lDFQYbmxpCRuwvB5MSIGVFR7yBNBTXY+Lf41py/9RxtkEiOvGkt3Ma
	60hiYatA==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjKNH-00065f-8j; Wed, 28 Aug 2024 17:14:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable PCIe on M.2 E key for Radxa ROCK 5A
Date: Wed, 28 Aug 2024 17:14:13 +0200
Message-ID: <172485421377.1511809.17622417470399861504.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826080456.525-1-naoki@radxa.com>
References: <20240826080456.525-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081424_315535_57E6D214 
X-CRM114-Status: UNSURE (   8.66  )
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

On Mon, 26 Aug 2024 17:04:56 +0900, FUKAUMI Naoki wrote:
> Enable pcie2x1l2 and related combphy/regulator routed to M.2 E key
> connector on Radxa ROCK 5A.
> 
> Tested with Radxa Wireless Module A8:
> 
> $ lspci
> 0004:40:00.0 PCI bridge: Rockchip Electronics Co., Ltd RK3588 (rev 01)
> 0004:41:00.0 Network controller: Realtek Semiconductor Co., Ltd. RTL8852BE PCIe 802.11ax Wireless Network Controller
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: enable PCIe on M.2 E key for Radxa ROCK 5A
      commit: b728d4c51f0ce9207daf502f3a85073785c46319

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
