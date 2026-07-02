Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54005C43602
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSxa8SnWzWbs+b2Rnvh7x/VRL255dYdUkDng6wTx+gY=; b=vPzjxr6ZfBv/Ln
	oKDrXr7WzcNegl+7nRHMy/vNl2nv4z8Vis66s4OtZpCiQaYjoV6BQ9MuxPOUFtv9e+6qpqJ5eDx+B
	8KE8otAq3VXLV+uqU6RAib2C7WsA2TtEkwxOj1BEsE0lPrsaRJXWTsXt3ZX4mLGQIg70rUuj6cUG/
	J6j1QeQ6Qn/Krc157KLbTcwVKmw2oP80Ddk8ZHZLzd9o5GCKZLD5q5bl1vwsly21OXn1phDMb8g5T
	DJwhEIbxzQqDoDsFfwMc6C2U2WbJIyJrvV20pUaWdRJ4OerqLhJVLd4Lg4T2QexVTNZQYdRVo2GnK
	R0NrbpjEm52GsUM9yB0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMih-00000005JQ4-49K1;
	Thu, 02 Jul 2026 19:05:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMif-00000005JMd-0CED;
	Thu, 02 Jul 2026 19:05:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IshAWt4/DIFZNA6GzomErw4c1aLbhwUOU+mr49tAGsE=; b=eTywfsWSQOpKYUcE57sDt0+/rH
	BoalqJdQj8/xNPn+J9TS7rNzzrgp+pyn0qgPmg7+znk9WJgq5CHN8G4r4Ww/qxSQVQEr2bKskDyrk
	uPzAcC63X6eU7S5rOxXB+c/AFbHj/PfdGUBJUDtS6bHNYHO7dP1NH33cR46XzKg2F+/gIeb+i/j52
	8uyZFY2u9LT9uv47LtAASbul7cx/8BQslvJB5IJ+Wt8jHCgy7wGBui1ravI9Ri6iyS3Bd1kkCwOL1
	PAV+cndA/iFJR80jGWmOOZzzpX8h0qXhMuSch7alg9SbRXh/pp2+vNwnsvJapYmGbQSUpVSESbhio
	UySmuaVw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Thu,  2 Jul 2026 21:04:54 +0200
Message-ID: <178301901898.3838694.8414378440353261290.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260627102633.86222-1-hrushirajg23@gmail.com>
References: <20260627102633.86222-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_120505_087506_05946004 
X-CRM114-Status: GOOD (  11.69  )
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


On Sat, 27 Jun 2026 15:56:31 +0530, Hrushiraj Gandhi wrote:
> This patch series adds device tree support for the Vicharak Vaaman2,
> a single-board computer based on the Rockchip RK3588 SoC.
> 
> The Vaaman2 board features include:
> - RK3588 SoC
> - eMMC storage and microSD support
> - RK806 PMIC and multiple RK8602/RK8603 regulators
> - Real-time clock and status LED
> - UART serial console and SARADC
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
      commit: b4a5e628936cc01ccfa713115bc56b46e798ebff
[2/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board
      commit: 0aec094dff13ab5526a3e602243576c3ac993ec3

Please check for double empty lines and ordering in future patches.
I've cleaned up some things.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
