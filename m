Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95272CCF9F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 23:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Gj1BrEpqFSbcXY4hgOiSoS6xT9KwnwuKbfN8/GxwB+Q=; b=oqkO1y6cwDqc3T
	Aohfc4S6sbpxyVaOFcYrPyMfet30KT/ccgeZYN5kRrAcPHVabkf8ZiEkV225HkNrP7JO11aB3SNt1
	qbqE2VJVy00bLRaYDDlzS3RajgztQo8i/awB5MSHa/2/A8G4mXf8stPJ3IT/h1KRq+wbp4OKkfnsB
	PeU4M4B8ya3Yeo2JJfqlrZyHn5Nb/aI6caD6pwYXBMk26ge1pSvhZWY3nn2XwxF6YNqEDkk7Yy/e8
	+HRxa7OBw/2F3jJG6UlKK9F92gYGUW5vB/bdqWhzZwmmZOQn7L17MdvbzDnOHbJEtR4WvkFLCLpq4
	zLS/WKE7aJELxxh4+wAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEFJv-00000003EA1-1GSQ;
	Wed, 29 Oct 2025 23:11:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEFJt-00000003E9j-0QtF;
	Wed, 29 Oct 2025 23:11:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 281F36029F;
	Wed, 29 Oct 2025 23:11:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 812A4C4CEF7;
	Wed, 29 Oct 2025 23:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761779466;
	bh=eHlQ2ZALLjGdsa88lWgTESQ22heSRABB6bxl7CsGUww=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=C1tmLb7mh4BjAht6SYKF9rf3E5ABcFVOINxHcK7CjmzQ398z2SAAuitNQkhsyWAXj
	 xNUGo9R6um8sdlaF7tTnnwcjylb6Hy3x27qfCnai9SSW+zaGEJgH3XKB+dQ6C/55S1
	 OFxBaFVfIatdHz/gy4117dT7Poo4G8Y/r2EhXEhkWAnsS+Yqc6khm0mYqPooQ7Suty
	 FhaKMD+sNsPy+SSSkymX+V87/ohpuYei2+8/fXbMXpzUfm8I+INFt4tzLxDde8+MJX
	 dKLQmQSgYmapfYnzafjIm3AeV5zzL85G2Ix8P6DA+Dl5Ae+lCFtvFxvbjqXwYpzAXC
	 BMr89O3kAt/hg==
Date: Wed, 29 Oct 2025 18:11:05 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jingoo Han <jingoohan1@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v4 4/9] PCI: dw-rockchip: Add helper function for
 enhanced LTSSM control mode
Message-ID: <20251029231105.GA1601725@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251029-rockchip-pcie-system-suspend-v4-4-ce2e1b0692d2@collabora.com>
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

On Wed, Oct 29, 2025 at 06:56:43PM +0100, Sebastian Reichel wrote:
> Remove code duplocation and improve readability by introducing a new
> function to setup the enhanced LTSSM mode.

s/duplocation/duplication/
s/setup/set up/

Maybe also include the actual function name instead of just "a new
function".  "rockchip_pcie_enable_enhanced_ltssm_control_mode()" is
pretty long; I wouldn't object to a shorter version :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
