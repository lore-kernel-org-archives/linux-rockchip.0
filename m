Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39747C7EE39
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Jun 2025 09:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Pt4lLfXNP7b3JQthQgGkNepcyiyvlibpoHh+VtXGPU=; b=ryClyQmadxZgba
	H902h1WwzXrZ9366hmXMpoWBiQ/xGX9VdCxEkToLFJ3nEPckrtlw4nJtKprSLHdMOa8QUg3MgGjTM
	ohAVS8dx0wl1YKt/oqbihr2hwUOBCaM7hAw7IggW3Vs6nXGBjMYlOx1iSCFqWc511sI+NDooXIB8i
	QEhblO/UfINaXhtBRlstk8Pua3Qy2VYHWja2CKuplu+PbUjAnLHYWdN6qrYTxQeNLN2Xeybsw45n2
	gqgaoErTuY7RQ5Ug7WbJieUrYz4PWVcwWTpNVOO25GARvwpfzHdP+oL8oAVmnRaLXD8aNaaI0d2hA
	Fjy5o3TDtkYTuEzjcm2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWBEz-00000001oF1-2b2w;
	Mon, 30 Jun 2025 09:55:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWB5P-00000001mj7-1sv2;
	Mon, 30 Jun 2025 09:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=koTjVrT8QEmt2BSEA7nvrs29+/p5t8Ve9XmtU2/3bRY=; b=13tqCAC/6JGiYu5nRbjo7K+KA2
	OsYajqq7XRXW04kyPHhqA80PXwS0IJP1VaBCeFDThsISxLD10mRN+rleWNHNFsvVkgxRRC/e5yJ86
	HKRxNDYrL6rRbKy/XBMLqYp3Aq/dBuhIJZRk1ltdN0ZA8fVNdfWUV5+DsAkOQu/LwSIPH1fiAmANC
	8P972mu+ASOEubmaiO+gWR263BB9MidpMnqDP189tJ3uXpNDkrBs53j9iNT2z2BlsbKuUHjmSyBtH
	0+xdEBluQ8vrmB6cdIAvuks0Tg/UEoFLgMDVLT3jk6XSQxWA36YmVyalAEvf8d0OymTg0q7oVSAjG
	lq0tRo+A==;
Received: from i53875bfd.versanet.de ([83.135.91.253] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uWB5K-0006Zc-JI; Mon, 30 Jun 2025 11:45:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add bluetooth support to ArmSoM Sige7
Date: Mon, 30 Jun 2025 11:45:45 +0200
Message-ID: <175127673173.138768.4135750757398834500.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250621135319.61766-1-liujianfeng1994@gmail.com>
References: <20250621135319.61766-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_024603_482878_0C44678F 
X-CRM114-Status: GOOD (  10.96  )
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


On Sat, 21 Jun 2025 21:53:14 +0800, Jianfeng Liu wrote:
> ArmSoM Sige7 has onboard AP6275P Wi-Fi6 (PCIe) and BT5 (UART) module
> which is similar with Khadas Edge2. This commit enables bluetooth
> at uart6.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add bluetooth support to ArmSoM Sige7
      commit: 84fb79b8acca836898c5ebcfb1603c224a2c0f7b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
