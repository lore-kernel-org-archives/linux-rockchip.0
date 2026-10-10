Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1DB7CA9EC5
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 11:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sREhoIRYgH+ZeYloUONosh8I43hVXI5gaMc1YN1i/o=; b=gq93eEx0b3N/qa
	YIgxV10eKNQ1o7lxBxydd9jCt9Z4pSPBJzUabWO1tgfjc5UWSjVaFzD+CzFhxAcBq036hr16JjGX7
	oF/NYMppK7oib5fRQcOTgptXNt1Yd5o6wbNJIfI5kjdX155bx32ZLlXRnDOZPRaaryUBZt3EIh0G8
	qs78eb9HV4LbvRkW05QQpDhLcPiOV4IKyGQ1S6PZ421mzWxFKD0U/y+msruxM/XBwV/QuOHXhUH9N
	dweMwp3eoHZVLksFKhW/o1ABXTkV6fjPYRE0r/QdfNEcrt2g3uo+kCJooZd1Yx/2ktHne1carTxoz
	Jx+zeRjgjPthS6IH6kqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFV2A-00000007top-0v7H;
	Sat, 10 Oct 2026 11:14:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFV27-00000007tmh-2RKZ;
	Sat, 10 Oct 2026 11:14:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JBuTwO9SMoLp3LJ25lpK/xBPKpTQnZ8kAw7S6weFytY=; b=GVsbtnrORoLlugdNr6eH/en8I8
	eM3mDej6UDri+YDV3V/qMqe34ulXVEnmqvSgKGV43gqZGNEDpNC/Yg009+zfvpHR51y3nt5LMjkVH
	6bdpFiDj53jQE8+iGOiCwX50ukEpB1Z3hIrygRklvw9r8N+Txve3f6gbLfE8eY6DEekUuZ7MX6B/M
	LtbB1ol0RhJmCLNdzUTxrE2FjUuLdyLuqFG7BFlwI3Zu/7tTRchan/pdSgriPdLfTlQHkABAe4IxO
	wnr8vIjL+fGAmEsKZgBBf8wKBchmpAHYr/iGoHV+8pjTyWY8+WtNXd8sl3JznD9sT428H5eXCjKdV
	MXth1jWA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix M.2 E-key reset pinctrl on rk3588 rock-5-itx
Date: Sat, 10 Oct 2026 13:14:12 +0200
Message-ID: <179163084345.3536058.5730830185337114333.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <1791536951-182440-1-git-send-email-shawn.lin@rock-chips.com>
References: <1791536951-182440-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_041431_619856_B9B927CD 
X-CRM114-Status: UNSURE (   9.39  )
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


On Fri, 09 Oct 2026 17:09:11 +0800, Shawn Lin wrote:
> The pcie2x1l0 (M.2 E-key) reset pinctrl group pcie30x1_0_perstn_m1_l
> configured gpio4 RK_PA4, which is the pcie30x1_0_waken_m1 pin, while
> the PERST# signal driven by reset-gpios is gpio4 RK_PA5
> (pcie30x1_0_perstn_m1). As a result the actual reset pin was never muxed
> to GPIO. Use PA5 so the pinctrl group matches reset-gpios.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix M.2 E-key reset pinctrl on rk3588 rock-5-itx
      commit: 9997707b967a129edf8fa336568a93dec1325d7d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
