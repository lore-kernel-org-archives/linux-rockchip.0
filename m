Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C903EC38A02
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 20:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfETlzdMD0Ef9HYGfDBKcZU1lmp245CLMBAjayFoOgc=; b=4c1kfq3lfGC6Cm
	m5cCl7FOMgKahr1oOjWkrweMMkVjxwXjfALwHz7ODQ3u/8MdOV8AfdegGkD3ErM3EyLrpuoTfrByv
	oJ2UmPuiJ/CYUWFSSNYGLcTRUzkSNcs5kXBysqDwX9RkkdkVyT4VKbWniSZscoRHRGgUsRLfTdxE/
	9P+ElKv2GL8oVDWmgJX0T0UPmQbnswu72UxTG4DKugpBfkzENPksNMpWSRR96JLtQixk5Xkxgx0cJ
	MrHFMZztDCN0z9hR4Po3k00JjNBLaU7QucrrYO1oO6YFcJEIQA5NTXMrBHpalaWQjtKcAhjEVs+Cw
	PnRCPR9fsatFAlm/+D0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbv-002gpo-R5; Sun, 30 Oct 2022 20:08:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opEbg-002gWK-47; Sun, 30 Oct 2022 20:08:33 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1opEbY-0005ci-3M; Sun, 30 Oct 2022 21:08:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: frank-w@public-files.de,
	robh+dt@kernel.org,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	Shengyu Qu <wiagn233@outlook.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	frattaroli.nicolas@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	michael.riesch@wolfvision.net
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH RESEND 1/3] arm64: dts: rockchip: RK356x: Add I2S2 device node
Date: Sun, 30 Oct 2022 21:08:18 +0100
Message-Id: <166716040321.1678541.11495785042253159140.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <OS3P286MB259771C12F2B15A4DDF435FE98359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
References: <20221029170903.78-1-wiagn233@outlook.com> <OS3P286MB259771C12F2B15A4DDF435FE98359@OS3P286MB2597.JPNP286.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_130832_184039_242A6A4F 
X-CRM114-Status: UNSURE (   9.24  )
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

On Sun, 30 Oct 2022 01:09:04 +0800, Shengyu Qu wrote:
> This patch adds I2S2 device tree node for RK3566/RK3568.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: RK356x: Add I2S2 device node
      commit: 755f37010f3eac0bdfa41bdf2308e8380a93f10c
[2/3] arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
      commit: 3a6dcf61d542fb1f4fbd546a9df91938440ece3a
[3/3] arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules to Radxa Rock 3A
      commit: 8cf890aabd45664b8f27a5581c8d2a51a8ce2e17

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
