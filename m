Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1276D15D99
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZYxuGf9OK0ML+30c7MBBrPNY3vpl2yJuF/yn8P6LYE=; b=nZQL9FX1ttS/BR
	MCjbmnciqaWQLN9XoP5I/kKQ5wjOOH1DRlqYSFxkbtn1WXZSp2mXPIXPvs+9lw7lOtzmoPHbaOURK
	PBEJxY8X0YegCvFuDBnB4AKhKXxsH2qSxUqeO3xaj7e6Um20cnGWU7OFk83vkF2DpDh/its8J2yhM
	iTFCZNqQH7ueaQU7Dyb1s4g3rlFX+HhTePesxOL+NOfo2LtNWkrztdTOQsf99b+Wqf+RJ1Fuc/LpB
	+Xc+amvmGfYItbMuMQkoRIGWbI1W9/Xc9/lJXPpZDGt2t2KIf7QrPlvaWyxTirgyeWPqJ795h/evt
	2J5njpj5dt12/hEg1sEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uem-00000007rKf-40WY;
	Mon, 21 Oct 2024 15:49:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaS-00000007qFU-0yPo;
	Mon, 21 Oct 2024 15:44:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=u+D70KubbG9mjRtXMOnJnl5R7+6sO8cl9zaS6GDovH4=; b=wSSc1grTXFJvOt6uayi4fHEUS8
	MhOzXRiE62SIVMSxQP+5+uYbZLaaQUl4MeOpWP/qzLWNecouMobrnbEvEaZXIUDWZEB6yv7CDThBM
	/4o4u/TOcw+3DngsOb561e9uBcepRSXi3xK1wHbT3Lp2iVdM42LsEYO7vuSenJgoz6m4VCqjHDyqH
	uwY9QPtY6LVVvILTILBTnhWUogjoZ44PSdiInbfplg6zcgSI8MerrMhGLwVTHFnSKu7ZtE+sataz0
	2uoYdHauD5lC+mhl22s5uBE2zvTpmauX9Hfulc2VMnZFjjRLSm+uRkAo9d3d3NBjAKMCZmVOw7T+A
	E4xFIcdA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uaH-0005jR-Bd; Mon, 21 Oct 2024 17:44:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Alexandre ARNOUD <aarnoud@me.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Luis de Arquer <ldearquer@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: (subset) [PATCH v2 0/5] Enable HDMI0 on several RK3588 based boards
Date: Mon, 21 Oct 2024 17:44:33 +0200
Message-ID: <172952545660.1342338.17758539500442772335.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084452_293595_0A497616 
X-CRM114-Status: GOOD (  10.97  )
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

On Sat, 19 Oct 2024 13:12:09 +0300, Cristian Ciocaltea wrote:
> Since the initial support for the RK3588 HDMI TX Controller [1] has been
> merged as of next-20241018, let's enable the HDMI0 output port for the
> following boards: Radxa ROCK 5A & 5B, Rockchip RK3588 EVB1 V10, Xunlong
> Orange Pi 5+.
> 
> @Luis: Could you please verify this series still works as expected on
> your Orange Pi device?
> 
> [...]

Applied, thanks!

[1/5] arm64: dts: rockchip: Add HDMI0 node to rk3588
      commit: 872c5aea392dc72ffe74eeab2b25864eadc12d23
[2/5] arm64: dts: rockchip: Enable HDMI0 on rock-5b
      commit: 9dee4ce1c35129d9d1971cb840b6af84bc5cba4c
[3/5] arm64: dts: rockchip: Enable HDMI0 on rk3588-evb1
      commit: c56ce5af882ffeb93d52560ad8c6199362698250
[4/5] arm64: dts: rockchip: Enable HDMI0 on orangepi-5-plus
      commit: 76ba840373b9d064eeeab17798990662f5d5eac5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
