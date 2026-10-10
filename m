Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94D80CA6004
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 12:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBDUe3knXwcyJkPQz/OmGgp9cSb+ExCo4nA9W8lHNwc=; b=V7nuYGgQc7cevF
	Gs7JDN/D1jyRMtamhxGyIjHTelJG1c/DojMK/YPfEfQZKAXgtj5/8xPWn0FYsuzGvGq1/GEzX7DB0
	VxG1bXSg/7zHOM71scWRqRLRCihG8kduUagFEJc5Qw6f8aG5v4rL1/U6NNxxd3XQNv6Vr6fx+ujgx
	BUvjMM5xq2DREKdCNt6UY3aQBbjeqe+qoNi7TXr2ppkkYT24hFu3JYRSEab6+nIUDRn8LqxeiKbYg
	ibKvTAcdW7o4/bPgOISxfn6MVX2VEDm/x/Xo6t6HFZduzHy4uLBoCUZqXCiueZozYPY13n519Rsoq
	hCe2EuhGpKZBbyZjHZPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVuN-0000000807J-2GDI;
	Sat, 10 Oct 2026 12:10:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFVuK-0000000806U-23Yy;
	Sat, 10 Oct 2026 12:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=i3Qo4vQuldjoeK8jA2JAjzxfTebhX5t9oUEQ8z+qotY=; b=VTWpHr+KtF39azVyZIek20nMIY
	+FnSybPUCNY+P86lTxWZKiDvVoUwLAQfs86PABO9X1B6OA5CBTgAWjQ9+ulq4vwWyuQtvBciOf5LC
	kQQIkOM0c5qYIq8rzgd8YqPou+h6GbyQBtdVugkuW6ZySR0nuBbzlh2HX6eWidtzNIdNdmgvYFZN6
	/u+bXQdBMsX59PrLoiu98t0F5ZebvgkL7k07zhOZLPZxTGtBuRKjOn+agpb8hYSsb9W13Ij4PKH8C
	Y4B3yZzR6abkNMZd6Mn8LzTVRmnhl2pfOAqAw/KrMbFIA+tvHuLqMTjz6lbbxgIlcO896HHQffzaZ
	0bXg6tSA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa E54C
Date: Sat, 10 Oct 2026 14:10:21 +0200
Message-ID: <179163420722.3552553.10756820019323228213.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260820100020.3370385-1-amadeus@jmu.edu.cn>
References: <20260820100020.3370385-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_051032_814160_87506717 
X-CRM114-Status: GOOD (  10.62  )
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


On Thu, 20 Aug 2026 18:00:18 +0800, Chukun Pan wrote:
> This series requires the following commit in Linux v7.2 to make the
> switch work: https://github.com/torvalds/linux/commit/9da2c8672f77
> 
> There was a conflict between eMMC and SPI Flash, so the unmounted
> eMMC was disabled. The schematic can be found below:
> https://dl.radxa.com/e/e54c/hw/radxa_e54c_v1.2_schematic.pdf
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Radxa E54C
      commit: 49b9e84fcd80bcc16f78ad8386b83f76f61f3a4d
[2/2] arm64: dts: rockchip: Add Radxa E54C
      commit: ae965b9856f033145e292b0c29082a26bcc45efd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
