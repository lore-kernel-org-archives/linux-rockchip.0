Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD602C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 09:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nVNRCkzhcg+9wYsuBB5RZ2ZJ4pNFBdmY8QInSIr3KGM=; b=4/cSS8WraMU3X7
	kn+S8QzUyRxFonvDlML9ii9kzHnsVZtzajLNdef7Ew8Dk30ncTJRnySwmwW0kKBNTJF/s+XaOdHvw
	XPk/la+cZDpDxA4zyw1nWAkPgfDxYfcV9NwHOb8pQY3WpI+nDdDqyeBuHyEBnjhslCu+VD01kWYSs
	AdmVrymj1C9DUjO0jZ5OEWFmc91gBu3eXk8uudE18dlKwLo8var9Dzpx+e1vV2DshRQrGtiknzJJA
	oQQsNtdHN+EGJo/JeqZONyySyu9J4WIs0jyCEsbevxBy/8XeR9whhYOO/6KJ+HOJqkwu1X4C9ysoR
	I/wH4LMMnhbyMssftSNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdRbQ-0000000HVDM-0me9;
	Mon, 12 Aug 2024 09:44:36 +0000
Received: from mail-m16.yeah.net ([1.95.21.17])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdRao-0000000HV6D-2GNq;
	Mon, 12 Aug 2024 09:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=8OQDzwap6QK8JuO7jTB4iPv7Bd6WkmI/d68Ki8Wr0Ik=;
	b=AcWQh47x9pr/Dfjbz1ISPz0mIIAnCslrTImIcAZBaRUfWxpBXF8lKZSN2SPFhK
	lF5bgxux15pii+5/yBfzpFsNKMM5GWD2N4/YPatm7gTq4KzHA6E3C/Q0Oevs/vAY
	ESM/PzTsuS6AJ4mdooVhuVErXywKoEq2ry+h7gWpMzcKc=
Received: from dragon (unknown [117.62.10.86])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgD3f8JH2blmcEBWAg--.28001S3;
	Mon, 12 Aug 2024 17:43:37 +0800 (CST)
Date: Mon, 12 Aug 2024 17:43:35 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev,
	loongarch@lists.linux.dev
Subject: Re: [PATCH v1 1/4] arm64: dts: imx8: remove non-existent DACs
Message-ID: <ZrnZRz4U7D8oqOMK@dragon>
References: <20240717-anvil-ashy-544e80a1317c@spud>
 <20240717-alkalize-bouncy-83e748284bc7@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240717-alkalize-bouncy-83e748284bc7@spud>
X-CM-TRANSID: Ms8vCgD3f8JH2blmcEBWAg--.28001S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUI_OzUUUUU
X-Originating-IP: [117.62.10.86]
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiAgc5ZWa5z7Yh8gAAss
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_024358_901897_5AEB5352 
X-CRM114-Status: GOOD (  11.10  )
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

On Wed, Jul 17, 2024 at 10:37:53AM +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Neither the imx8dxl-evk or imx8qm-mek have a Rohm DAC on them as far as
> I can tell from online documentation, and they certainly do not have a
> dh2228fv, as this device does not actually exist! Remove the DAC nodes
> from the devicetrees as it is not acceptable to pretend to have a device
> on a board in order to bind the spidev driver in Linux.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
