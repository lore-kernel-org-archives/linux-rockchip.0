Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C5D6D116F3
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 06:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CtMEEsi6e/Q8Y6l0Rpa3R3ueNvwfNb7gxE9EL4bIAY=; b=aUsOzrRo0GgYQZ
	7hYFS/7W6XlX4YXmZA0dHyPlS8VfeVNhn+HPJRAyeyCcq6BBENqckIbykaUdiXBU7aIVSlsrRjhjk
	6LxPcAzpMupWsd8GpHV9AhbiquFWv/bKGGN0fK2SfECchce702OkwSo821gw9GfYisR7DEzMV4Pwj
	kuz6LZxr22HViD/cv40oNSE7HIYWHauIiS//t/1e8dg3rHBQlQkebHD6p82as3fh8V7/DZxhn99Nx
	2OhxA4pxEuxnPSdnte0MYomk2O/50K7LAwVC9wn0EKkeulnIZFr4ISDMaW0NPhVYNVJF+dKf8TWzp
	TQ8oUb22AcMDNnD3XNvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPxaA-000000030FT-15nf;
	Mon, 01 Dec 2025 06:40:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPxa7-000000030EM-0pdZ;
	Mon, 01 Dec 2025 06:40:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9F78940D7B;
	Mon,  1 Dec 2025 06:40:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEC18C4CEF1;
	Mon,  1 Dec 2025 06:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764571217;
	bh=BUMTj/ea2YlzqvnqyiSxOxPBM/xPbxxNYqiHcRDynGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZN62uUg8TIZ2rsF0xhyKBh6C/xS6qb0pU+f15siHilqicNlfTSlOTLZSFM/63RJAf
	 D2PZ5FoRikrUrHH6HRCco5CagArK6sWF+7zVkE/raKd7KM3a3uwbe9ps6pVwVpSjBf
	 X/tIWlHRQYGxDVRerNlVQE/lV7BoV42R44tKNYirPZXzRR1bOXx+k+pCWPaZfsND4E
	 oeV5XoqqWXKSuDIibh/NoteVsOGiQlGkiQ/rKP5GOP81hXPtDbl3TG3L+CNCngFHx1
	 NP5UD1UMBaau3WZ0bAsckjep9uI2HfOCEQTcUH56sTYeRawRJtprH0C7rL0hBY/M7K
	 kstQtQ24hKfDA==
Date: Mon, 1 Dec 2025 07:40:11 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2] PCI: dwc: Make Link Up IRQ logic handle already
 powered on PCIe switches
Message-ID: <aS04Sx9YRPwPjPzc@ryzen>
References: <20251201063634.4115762-2-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251201063634.4115762-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251130_224019_255491_69D16A9C 
X-CRM114-Status: UNSURE (   5.14  )
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

Forgot to pick up tags from v1, adding them here so that e.g. b4 will pick
them up:

Tested-by: Shawn Lin <shawn.lin@rock-chips.com>
Tested-by: FUKAUMI Naoki <naoki@radxa.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
