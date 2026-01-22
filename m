Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81C40D6CFA3
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 18:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QH7Lx7nHiqlio/9bWunVtz0AS8QBfzO7Vo+2ceQBOB0=; b=Dv14jyHHmM14D3
	H2b4ADfgGO6hiy1XSZLGS3Q6au24fXG4wtmcA1+VwLmXZGhMvBs+Wcruhm/FKW3LjCOjndvNqhrUb
	zJChkAvvsn/pkNP1Rf6CWvvdw9VGZiZmnWdvQHz3I4i0EQFuXE28BqkD46zswb+3xTKgyAErmNmYp
	mI/cl8su/ThTcYmeVpO7AE/6b6yin7n1c/h93ZTe4xE81sLbK7zrqd3QBy0nZ+h1Vhr4z5X3P0tAy
	AL5aZJslQt8eLTvu/b+Fr19qptM9EWVwTortFT636vHDX+fPgtESMzzz91Ak/ALy6Ns8203woo5DC
	OHyFbeC4H0klYT72QARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizUH-00000007di8-3WSQ;
	Thu, 22 Jan 2026 18:32:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vizUD-00000007dfp-2m7Y;
	Thu, 22 Jan 2026 18:32:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nNcAXA78Lmf4S4GSMOlD97M4xfkehQtEkWEYKY3GGRU=; b=j8ymQqVVDP34hMaNDAd6lsm2gA
	hUkLdSsKEo08LQ7zwkhttJ1uQ1iCfORq3BIFl76ch9eVplwUCTEgGUfte1vxkQO6xtTLlYCsn/r6b
	yUSE0djpElYDsij7vJBq/8ULeC2Knf8cftaOv6HNLvlcRxYrXci+8ZoXvK4lTEB2A06mc6EwggcUm
	2C+zdsBr6U+9WtBGfBOGWWtNU2uEh2vP067j0umnicDmUnUCRuD9InXy+2/uMzm+iGW1wDP7Hy9z6
	C6Y1dQq53pdtcb+SoiNzNE0lasVPeftkQJtaPHMcBKXYJP8Av9KlIKUxFrUDlgS7lN5zgthei3n5Z
	t/yKgPXw==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vizU1-003rA9-Ny; Thu, 22 Jan 2026 19:32:42 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
Date: Thu, 22 Jan 2026 19:32:37 +0100
Message-ID: <176910675436.726233.5945062783721941669.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260121-ufs-rst-v3-1-35839bcb4ca7@gmail.com>
References: <20260121-ufs-rst-v3-1-35839bcb4ca7@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_103253_701168_7FEFD6C3 
X-CRM114-Status: GOOD (  11.13  )
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


On Wed, 21 Jan 2026 11:42:13 +0400, Alexey Charkov wrote:
> Rockchip RK3576 UFS controller uses a dedicated pin to reset the connected
> UFS device, which can operate either in a hardware controlled mode or as a
> GPIO pin.
> 
> Power-on default is GPIO mode, but the boot ROM reconfigures it to a
> hardware controlled mode if it uses UFS to load the next boot stage.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
      commit: 79a3286e61829fc43abdd6e3beb31b24930c7af6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
