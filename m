Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B94C0CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Oct 2025 06:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ulzNxgwr38DoGleRmjz8D4cd1EtBz/OFrv2x4qKx+4A=; b=Ll3MAaa16//9Of
	CCYhEZKfquH3a69/BGWh0+wIXHidQjwc4gzt+/pYshwlON/NPCp3eLlVlqNPcc09K6PWBOfNBRNjt
	SB9y3ajxM7ulaTRy1Rk2akmxjseSWagrNpZWLTkMVfq2xse77+svBwi2SA7WT/+hxylSi4+m7Wskv
	jYLSFalg+i5nx+7t2c2Sd1IPuARMbHrQujHiCdVkq8YODailx6TfIouxjGrxt0yHo12LcuMhsGGnm
	2jajokkgw9RcG4dTLAwms01rw84fQuvnu1HSB1TB9QppLZ7UcgEW+vWIjwiguQ02Cah/qVbYk8bmJ
	APuEMU++UrQTVmuVA09A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAN3o-0000000Akl9-0EMB;
	Sun, 19 Oct 2025 06:38:32 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAN3m-0000000AkkF-2DNE;
	Sun, 19 Oct 2025 06:38:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9FE7660250;
	Sun, 19 Oct 2025 06:38:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A1D4C4CEE7;
	Sun, 19 Oct 2025 06:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760855897;
	bh=zutQ6iQf0byeRZ/GXJXZW1hAG258FPpWvXBWCy3HRR4=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=h/iVFhoQAyK3Y8+SGOK5H/0il/s5MM/gUzmZhceLEECMiG6csCzKWW6/6MfkxuALD
	 2F5Sybk1He1fZhw4/5ggAQ2h5Qusv8wEUX8TDCOuoKPXMEf1Au1D1/lfp/HJ1vZ5Kf
	 EmVEvHguGrJYej3vSromF2Qa6CHvJqXNVCivdGrxyKq3FdfPntQZ2BM/3TQjXY+8nL
	 QuYgj9yrnjQ2Vti2EO5MD3Q2jDrl79vUKWvAQE9jtn5gqMt+/juvtXKX2MORZQYlzH
	 Id6h7XSCZUOX9dUF3mbDNW0/nI79xu0k06MiqqBpjeRYHkBzjeg9Wrv0c1xhPLugge
	 ODuLGy0m8u5OQ==
From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Niklas Cassel <cassel@kernel.org>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Hans Zhang <18255117159@163.com>, 
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Anand Moon <linux.amoon@gmail.com>
In-Reply-To: <20250905112736.6401-1-linux.amoon@gmail.com>
References: <20250905112736.6401-1-linux.amoon@gmail.com>
Subject: Re: [PATCH v1] PCI: dw-rockchip: Simplify regulator setup with
 devm_regulator_get_enable_optional()
Message-Id: <176085588758.11569.7678087221969106036.b4-ty@kernel.org>
Date: Sun, 19 Oct 2025 12:08:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Fri, 05 Sep 2025 16:57:25 +0530, Anand Moon wrote:
> Replace manual get/enable logic with devm_regulator_get_enable_optional()
> to reduce boilerplate and improve error handling. This devm helper ensures
> the regulator is enabled during probe and automatically disabled on driver
> removal. Dropping the vpcie3v3 struct member eliminates redundant state
> tracking, resulting in cleaner and more maintainable code.
> 
> 
> [...]

Applied, thanks!

[1/1] PCI: dw-rockchip: Simplify regulator setup with devm_regulator_get_enable_optional()
      commit: c930b10f17c03858cfe19b9873ba5240128b4d1b

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
