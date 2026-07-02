Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58DD2C44501
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1mVb87+IwQK15kGfAI8ZQJrlqkyVV/Tu8JSTHn46HI=; b=iWTSMyMHmKlINj
	3DWSAdSH8qrmEnhbxmtObhWSEaUKjSAbL9Pf6LoiMdidtV8RH+YRi0DkrkNrwcP4naPN0DsX9Icec
	UdsREtK1ZFlosA0JWvKXdw3U25YMkf7P6jC+2ds3SeV6Tp4RYNOeJD+HFT4DXSEmO9SiGiS9or+0P
	s+uaLU+j4xoAra3o1CivPx+ZnlE0oAGTRcfJjg7MogQH+Nydimzh4RQHGneifvjZT5tP+ciB4/haB
	vca+v5mgonsZzltOQKW3gIBp9M3EkIvnVh75iJ3ikaEhL/KVosG5ZxuFgvHjea56P5K0qR6df+6ob
	5WTJiLPCFZX0XzGUlCJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMir-00000005JjE-3Cto;
	Thu, 02 Jul 2026 19:05:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMin-00000005JWn-0Jhj;
	Thu, 02 Jul 2026 19:05:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m7PQ37TP8TLSa3Y3Mh+GfctL0Wog2HZY6fsfi5VePvQ=; b=Jt7tc2xhJjWGJQavuRgUHV+ifa
	AF2X59WYmK0VSW8hgH+znp+G7NDBzxiYvfWopRG1R2YBftbapRvA2HqK+3aVWF3tR9qFfiCCjljCr
	/0Q2tGJu3BWzgKNWrPhaODRK7pzblPOiBZipq397eqYyrrj0dvgqPAsgOjAbjp5ZXImtwuTzt7iCy
	kS+ngbY1gvR845pAYYd/Hvh0XLkJQl7eS3XxOncQSPdrnKlTrGvN1pQNggaVPOogVgMgw2PrHFZQr
	t3QAo0x//o6NJHvcYfpUAlg0PUYntH5iEtXybCK+UZ2GNGlcfob7zB1Pz60wGYPeXOCk4JOebyEc5
	Vw07ddog==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniele Briguglio <hello@superkali.me>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Youyeetoo YY3588
Date: Thu,  2 Jul 2026 21:04:53 +0200
Message-ID: <178301901896.3838694.11723513577053090499.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
References: <20260610-yy3588-board-v1-0-4bb7176b6826@superkali.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_120513_144865_E0ACFF7A 
X-CRM114-Status: GOOD (  12.09  )
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


On Wed, 10 Jun 2026 15:58:57 +0200, Daniele Briguglio wrote:
> This series adds support for the Youyeetoo YY3588, a single board
> computer built around the Rockchip RK3588.
> 
> Both Ethernet ports, eMMC, SD card, USB, Type-C, HDMI output, WiFi on
> the Mini PCIe slot, audio, the recovery key and the fan have been
> tested on the board.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add youyeetoo
      commit: fe76e3493f9ea5e927f9ce6bfe7f8785ba2d0c44
[2/3] dt-bindings: arm: rockchip: Add Youyeetoo YY3588
      commit: 1e476370fbb1def308e6da3785843f1d34529721
[3/3] arm64: dts: rockchip: Add Youyeetoo YY3588
      commit: 19847bde695f7bc65b16840c91cda4c2e35b36ce

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
