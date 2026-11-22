Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C45606A31A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Nov 2026 22:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qZBsNvCL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=kF+a3xZN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=x7rBSvG95T5PreoDknEJER+fFdFfVjQQDw1bCL3w1bo=; b=qZBsNvCLKnutCOYWE5AvRTa7Ro
	kpaHcbbMGhqdq0BA6Dlw8dB4Oly7QrmL16DSbFuNblBcI5yOC9WXDVOw2VVktIl3dRZL5LzVva5cd
	0H7IZR/keJCifHY5jEujK7L9c06ZbHGha60Z5alJc1m7AiaCsaE/e6IkKSPOWMTgQGIWJDVVwWm3i
	EdsSZtB0007U6PbfZBSVgFtYQJ+MeJcwnET12yYSVSqDYoVWE8Om82FP8f/FwV2q8gsquQk9Z+NQ/
	Z4NQAm6oxSO7qd7c32aHV02maWTU5O+MYwuaRZ4K5KL5OEI0G4jsb9p0pxoeH7cW1rCP8wOOlU0Yo
	1rePgP/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGPq-00000001rsO-40cU;
	Sun, 22 Nov 2026 22:52:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVGOV-00000001rMW-47lc;
	Sun, 22 Nov 2026 22:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m0n2SYcY79h2AUU1BpwbEVohNWmGBSP6n4I5dcaBSL8=; b=kF+a3xZNaGXJEfbrh3p4y3vmue
	7Lx+LfyXqZJRUliEFzkvHVMK9XySoBiDcm7VsOFc2gjV4AyTT77D/3kP+S4LeHxIdYaw79jJmSYVe
	yY9JHXwHpRM8khH+7hgYerkVRNjnmNc/9zIrKB5CTbg7pQuElUJfu9QtuE20okjw0s3WgjAJZ6iPw
	tRXBTxYj70uwYwxV2ed4wifSnPkJoSj7sBPY56S7MaY/pMq/QJxuh6TLS0xsVUon0CVMtuh0CyH+F
	9PQ4Zv4IPNSue7B9TZjRtsnP8no+4lzpNVlnmQlH0P4pux1v1Qu+DseWIoVj7Z198ygUy1VGyMLQq
	9JadTD7w==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-amarula@amarulasolutions.com,
	michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: Add support for Axelera Embedded 111c
Date: Sun, 22 Nov 2026 23:50:28 +0100
Message-ID: <179538782470.3150822.2574967572696059189.b4-ty@b4>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261113113808.1779860-1-patrick.barsanti@amarulasolutions.com>
References: <20261113113808.1779860-1-patrick.barsanti@amarulasolutions.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_145049_681823_A5164D91 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Fri, 13 Nov 2026 12:38:05 +0100, Patrick Barsanti wrote:
> The Axelera Embedded 111c is an SBC based on the Rockchip RK3588
> SoC. It offers efficient AI compute for multi-stream computer vision and
> generative AI applications in a compact design.
> 
> Product page [1].
> 
> This series aims to introduce basic support for the board,
> which includes the console, the eMMC, the two Gigabit Ethernet ports,
> the four USB ports and the HDMI connector.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add Axelera AI
      commit: 26688b74c3706b4e890517f6add709446b214102
[2/3] dt-bindings: arm: rockchip: Add Axelera Embedded 111c
      commit: a74cd16a74e3ecafedf392105d6d8ab6c2dfc1fc
[3/3] arm64: dts: rockchip: Add Axelera Embedded 111c
      commit: 4cfbc536b8728b6c217add4f321a6e80d7c03cc8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
