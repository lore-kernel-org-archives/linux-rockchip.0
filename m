Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC080C83F27
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jul 2025 14:15:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n8mnyonV6SujPxIRBm/MlY5m7Xdhi5KOQ7nj/pI43nc=; b=A/MVj+il41r6qZ
	V2Tcgy8tOY8eb6uNFcMuieAMz+AhgBsI5Y6iJBvTJ8a/A5wn9nz/ucAgevNfT0owgCxYtLAOzp2jO
	rk1SZ+6bX/3j6NqVYhZWVtAr/GL3S0Uevn5j5V1Sx4PiQup9JL+PYz1EtQRcvjbMOElCEKSB7KTsL
	jZczhS9kPDzO6iLMhMlqHrW87I2xsO/MM4ahO8WMmS4jKrTFqWO4LXa5WWDsLwGYNSQv3DaorBe0Z
	JlrGXDtShmqCaLEnES2grR220eS+K7DxW93urdHseoy/WJYeN3fQ5RPb7tL3XnNpd3kJ/1cdKMv3F
	Ze4FL2sy8Ap8fvxUZx4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDlz-00000002fGU-2fMR;
	Tue, 22 Jul 2025 14:15:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDBQ-00000002ZFy-1j7m;
	Tue, 22 Jul 2025 13:37:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E87114372E;
	Tue, 22 Jul 2025 13:37:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D9F3C4CEEB;
	Tue, 22 Jul 2025 13:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191447;
	bh=ldeVLAYqLGElj4agrBFxudHwOutEqS6Dqz8z/EKBx/Y=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Qzwu8WvUnCoSWHubicThQ9HH8uBprGz+8IW2608cpnFrZqSMz/vmnaBrYDeEftn+m
	 zwQp+Bucb+LuPRR07EKbVBE3QkO8OZM+vMfJcAp8f73uzehcmUBazjMzvr9FXoxvBw
	 s+qGYizK/NvlJti6vJ3pY6r2Z8FLLjrq1tw8NynObz1e0KoTW+XLDK4xE1VG3yULMb
	 BuaPPGeBWs5vk1E8MNleteL4U4AOHEhRXDUTkYgjo1u/8Lyb8juAP9DyiYuu2wnAH5
	 bz1SZZphEgQbQH7Htnn7IDTGZw5XXzGUvoxzLWNUQio+kmWZuySTAB0vHUo0zviVVU
	 HeiOfVIQ2qd6A==
From: Vinod Koul <vkoul@kernel.org>
To: linux-rockchip@lists.infradead.org, 
 Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rick wertenbroek <rick.wertenbroek@gmail.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Valmantas Paliksa <walmis@gmail.com>, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>
In-Reply-To: <cover.1751322015.git.geraldogabriel@gmail.com>
References: <cover.1751322015.git.geraldogabriel@gmail.com>
Subject: Re: (subset) [RESEND PATCH v9 0/4] PCI: rockchip: Improve driver
 quality
Message-Id: <175319144299.114152.2563260088897607918.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:22 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_063728_479494_A996C0BF 
X-CRM114-Status: UNSURE (   6.42  )
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


On Mon, 30 Jun 2025 19:24:15 -0300, Geraldo Nascimento wrote:
> During a 30-day debugging-run fighting quirky PCIe devices on RK3399
> some quality improvements began to take form and after feedback from
> community they reached more polished state.
> 
> This will ensure maximum chance of retraining to 5.0GT/s, on all four
> lanes and fix async strobe TEST_WRITE disablement. On top of this,
> standard PCIe defines are now used to reference registers from offset
> at Capabilities Register.
> 
> [...]

Applied, thanks!

[3/4] phy: rockchip-pcie: Enable all four lanes if required
      commit: c3fe7071e196e25789ecf90dbc9e8491a98884d7
[4/4] phy: rockchip-pcie: Properly disable TEST_WRITE strobe signal
      commit: 25facbabc3fc33c794ad09d73f73268c0f8cbc7d

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
