Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 405AFC02198
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 17:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCSBwLqjLQNsLwmLFhSESQZkIHmf0SwKVE5bR7GusWA=; b=TcJfU4TMEoG8na
	HNgnqQxYYEfE+2Zj4yd+ULSDSfo9ae0obsi78g/BSYN6ibJ8O4DWc289blRxlBvn+nmG66P0t5/zi
	HOY37ENMXaBSCEnyUvdqoRTW3Yst81bnnuEPWZaGbxwvI5eaKmQD9ZMMs/A4UPLGzlC9pTOgjYero
	rrIjrbwu28Td2YVk1y/go3jR8pZ5NMxaijFe7Kd8mdxepBcjjAQql6wJD6mAIw2HzZ98CjBBvjRd2
	uFcuBQLXjfJ8WnBSxfAKQ0NMuN1McnmfpFagqOYoFz3DvFHy3tV5+rftCiVjIUJF+Dtz7Q/My4ISX
	v+tv2q64xv6NPrNdAHCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thXlI-00000000lFM-3ZQI;
	Mon, 10 Feb 2025 17:40:00 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thXT5-00000000hRZ-2QBU;
	Mon, 10 Feb 2025 17:21:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2EA61A41C17;
	Mon, 10 Feb 2025 17:19:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E37B0C4CEE5;
	Mon, 10 Feb 2025 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739208070;
	bh=Te1ASZCrXYWhGODjGnTL88h0vOAiRncqdlFEVsLJEls=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=jRIZikI1TNUJfOg9Se1X7UpyDvEX9kKyqQmdoxi1Tz4lLlWI2RRcF/1/KW9dmfXzr
	 xcyFAbYPTVhAEt32mlwaPFEBjFnxE7xaENgHHMVV+cX1IC8oanKdslqtJ3cZNfnxYV
	 SCF5HHDBfy2MPPnsLTKJwBriZh41J6JvnGRl9XoC1oSQpilXmXEZcQAOaH3zpXuoga
	 r+jcNZM1BxVyFSyBsIvhPNhENIg7mo9zLLEpMOp8cchGRmf86crlDBuYkCN9ap7PoS
	 GqzDGdv6b0eqPt1yIBASoORvCQhxzBhJiAWokxtTmOrwXKmmXmOfam8Tsd3+AaqS98
	 ERb2RX07Y35tw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Yan <andyshrk@163.com>
In-Reply-To: <20241231092721.252405-1-andyshrk@163.com>
References: <20241231092721.252405-1-andyshrk@163.com>
Subject: Re: (subset) [PATCH v3] dt-bindings: phy: Add rk3576 hdptx phy
Message-Id: <173920806650.103786.12015599140060722097.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 22:51:06 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_092111_685682_B693F868 
X-CRM114-Status: UNSURE (   6.81  )
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
Cc: kishon@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, robh@kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 31 Dec 2024 17:27:11 +0800, Andy Yan wrote:
> Add compatible for the HDPTX PHY on rk3576, which is compatible with
> rk3588, but without rst_phy/rst_ropll/rst_lcpll.
> 
> In fact, these three reset lines are also optional on the rk3588,
> they just used for debug, then they were removed on the rk3576 IC
> design.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: Add rk3576 hdptx phy
      commit: ad205ffc0dd0fc3f4841e6ae900037f029aa0fa8

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
