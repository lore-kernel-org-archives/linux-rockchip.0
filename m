Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A7A1C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 14:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SRUKM3VHWVQT+tr5blW3JNgHVoRs4KVddX+baz5nw8=; b=LnA2RfYyYI2PW2
	HTInsrL+BF+ktC51D95FNEv5foJhM3EcqqrJNRvWn5ovSbr3JtgAzowglG9rEvRHOPYegnzQ49Uc/
	/qmuR28Vqz3YzW9ImVQBsHbG+xqyQ1hI7FG53P19NyF0dXdXh4Us4ItMNrfCip7AowhA0UpbI01jX
	Ys6adkwmSztYfmiTPECG7AGHV/2TBBjX5y5MgAiRxpyTl1Ru9C+bmBYSSb2NNjqU94BhvWOtFAMoD
	tcoYPBeo4CGPC1X0UR2JNgwAu9UMTYpi2CvnxDBJXLknfd6eLYyw9amTPmC6nwlxyDxbMHbufMXQe
	gQo2X/InscCtHpuxZZnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2XZU-00E6cT-32;
	Mon, 13 Nov 2023 14:05:48 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2XZR-00E6bI-1n
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Nov 2023 14:05:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6063760F1E;
	Mon, 13 Nov 2023 14:05:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CDFCC433C9;
	Mon, 13 Nov 2023 14:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699884341;
	bh=fpD4M1H4xdOEFU6K/qJY74VJY3p9W9YVZi0wodwrOH8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=pZ5Hjnrl3pN/k4Juvngh8mWdgeGpjMFY+wEdEupsbPmuSLoG+DRTWI80902qbg4IU
	 ok7TAWxTYLfx3nRoXuOlfMr8Hvx6686y9CVNAjdYmEcZXz8E7vJVZPjBFXERfRQOFf
	 UWIOOvZzqgrIhVEh6r2WFNLhkinLb+SipHsFxUtf01D/Qypc7G6lUH2pg6cM0+6W9z
	 ZgDqQUsz86TO2W/q7v1ZbnFFaGExe8aAOqKLr1uNRG6N85JT2AO+xqn/lK/q8fHiqJ
	 bg4opLzuDjNTXjMPfopNvZLxwj7HHWxYaXuOolePuZ9r4VZ+8iy7aBy09oX42xWhr3
	 YCIq12WoUpRVA==
From: Mark Brown <broonie@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20231109184453.108676-1-sebastian.reichel@collabora.com>
References: <20231109184453.108676-1-sebastian.reichel@collabora.com>
Subject: Re: (subset) [PATCH v1 1/2] dt-bindings: es8328: convert to DT
 schema format
Message-Id: <169988433843.3280890.13854028136239519600.b4-ty@kernel.org>
Date: Mon, 13 Nov 2023 14:05:38 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-0438c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_060545_654505_99F5192D 
X-CRM114-Status: GOOD (  11.72  )
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

On Thu, 09 Nov 2023 19:44:43 +0100, Sebastian Reichel wrote:
> Convert the binding to DT schema format. Note, that "IPVDD-supply"
> got fixed to be "HPVDD-supply" during the conversion. This was
> obviously a typo in the old binding. The old binding example, DT
> files, chip datasheet and Linux driver use HPVDD.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] dt-bindings: es8328: convert to DT schema format
      commit: c479f4989486b79cb92f0ee3b2ffcfc77fc3e443

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
