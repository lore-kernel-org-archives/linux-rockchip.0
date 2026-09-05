Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4A67C79F8B
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 20:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2M5R/z/JbTb0sUR+xEuScxIes2TQEoLoyb/A9KbOUM=; b=VpXyG+4pExu1W6
	MdNUwII+WNU1R0mg82UmoPpBMfzOarz+EH/JozOsFgebRULIr23VvxWhn7Q3+fA9BZmD9IxRvSjPj
	WiIzw9hOKiNPRbirTw7VVfYoUCLh4zZz/EmnfcoMOrBnuK/i3+msjHrqc0SZoQ5uprHUTnJeQHrHP
	8+63it+4Lkk0KfDxXZNeMdinGCapo6u+i/hVvy2ureLCUxywjDIRbja0Gc38RIFX3DwK9jpDWKne0
	Vb3eFFGAPnzeXOkGdCCtaRffRXxQgi+G+g/V0UjpL8E4ocwQOsRFjQWbcuDUKGHwWZCilqaFTUH61
	P/gpOf2GrBWsbFsyF6Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2wYZ-00000004O2S-46cW;
	Sat, 05 Sep 2026 20:00:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2wYY-00000004O28-2FxX;
	Sat, 05 Sep 2026 20:00:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C18B243DEA;
	Sat,  5 Sep 2026 20:00:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DFD61F00A3A;
	Sat,  5 Sep 2026 20:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788638405;
	bh=63CDWArl34nC/nIG+OV+7OAhAy4+5URidIuMjWHPM2I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=n6DQlpP46uM0WxUOQATB/man5UR6KwjpOp6XNghhqGYHbx4zJr+q9LGIpqpWALlP3
	 i8V/Gk90Hhf02ZjZ4n3+wcTLTI2TiceCY37ACOswayiuO6WYr9LoXkWZmVJ0rtqIis
	 O3g59j0xNI3Vl8qKUo9OgWnfhUHs0WMyvefa3IPXQX9QyQsy3nmb4YfU8WRaE3AuGp
	 26GV9TxyuWq9OnaFfdM+CnNwWpCeTZ2vRM6aBo57o0/afQRaeZ7OuMDOsWZiiuhsP3
	 OiFxfpMM+bvPjEC5CxAM4mqVdg2t9uH8nbyDuKD8Ka2e0tW4/noxA/X6WgU8mkIlvB
	 uwU5+9nGsySaw==
Date: Sat, 5 Sep 2026 13:00:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Lad Prabhakar
 <prabhakar.mahadev-lad.rj@bp.renesas.com>, Romain Gantois
 <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Russell King
 <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>, David
 Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH net-next v3 00/10] net: pcs: add basic support for
 RK3568 XPCS
Message-ID: <20260905130002.554a167a@kernel.org>
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
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

On Tue,  1 Sep 2026 23:01:00 +0800 Coia Prant wrote:
> This series adds proper SGMII support for the Rockchip RK3568 SoC
> using the integrated Synopsys DesignWare XPCS, along with necessary
> fixes and refactoring in the stmmac core and XPCS driver.

Not sure if this was already reported but FTR this series
breaks allmodconfig build
-- 
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
