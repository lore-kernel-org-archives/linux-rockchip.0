Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4971CA5FE6
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 20:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W90iUXypKQ42msNbfyG+PvoMXiAGEcpn0z+/eJW2YSk=; b=Imi8ntPx+83Zx4
	wOBTGfn0ZLUx0z9tr4UNyZKrNc4So94YdG7TYF0/Oe3aDGLvH7CzkopA/ibqbNCopSX7NFCbhWdCk
	sCa/AEre2/FFxUXYNeGrwHet9eZTH4XI8ft0UM9nCulPCETePTOdL/Cr7wHSUI7ldtLQaHCQsbOgO
	QgEVKtmhJ5EePUFWvheBkpmgyUxQeqPNX5U+t3OeEeAKpTk/PPI+MaqJ6B/aq5IP4dpzq56flLV1c
	WH1oduI2jnV1k6J9VmVjz2iPZ1fiP3FyXNod5cIILr22McZuD25BxOnDbVNcnbMTG6pu1gmXUF0VI
	3fFVp6EhLDorNc9UD1sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6g5-0000000E26f-2pPC;
	Sat, 03 Oct 2026 20:49:53 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD6g1-0000000E25V-1e2I;
	Sat, 03 Oct 2026 20:49:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C316B60120;
	Sat,  3 Oct 2026 20:49:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4803F1F0089C;
	Sat,  3 Oct 2026 20:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791060588;
	bh=uLpwZPO1GiiGvBIyjD7usPVtdy8rIg18LV4hbOtCaUc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=I+D2htlQtoBEc7czW/e/gBvOF/j5BI2CXVNVMPgq4N5GxNHWZCYvvXsfGi7bKQksD
	 +i1AZbJeiXpim+gCvJ2E8nnaz/rRs/AcJrD5iGi4Mggm2fH6iq3XMb5UTA3plFAiOB
	 zdh8DCgAEuIi491FPq5o86MZzBQd+zAdoFrTJ8Ydcja5lg2WJQ6fuBFxKZ0BmGCRYk
	 nQ4Qv17ukCnRZ9ujdpFY4uc7KQAypGz+oQYeHy63hYnX42zE7GWm7IHzAMyNjFTe+K
	 6rXgtI9IiOD1qo9zKXB/oWemYzHPlvF65RrIfqU7liGLqAtPdi/N3Nd/ga7d/LINVp
	 doIu2JFwOuaVA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <1788158204-161347-1-git-send-email-shawn.lin@rock-chips.com>
References: <1788158204-161347-1-git-send-email-shawn.lin@rock-chips.com>
Subject: Re: [PATCH] phy: rockchip: naneng-combphy: Fix TX detect RX
 termination errata
Message-Id: <179106058693.240943.3035344211255216321.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 22:49:46 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Mon, 31 Aug 2026 14:36:44 +0800, Shawn Lin wrote:
> Some PHY revisions may fail to detect the peer RX's termination
> resistor (RTERM) under certain critical temperature conditions.
> This causes TX detection failures on PCIe links.
> 
> Add a workaround to force the RTERM detection ready signal for
> affected PHY revisions. This ensures reliable TX-to-RX termination
> detection across all operating temperature ranges.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: naneng-combphy: Fix TX detect RX termination errata
      commit: d68e47a06c5cdc90cbd29ce2e74fa61eab5d47cc

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
