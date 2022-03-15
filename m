Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F6B6C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJlqc1rjq5ANfF0XVkGIQ2AqStodgmilbt0QbUhqxrc=; b=fE1Hml91yM1fIs
	T0BbREecs2l0MpgVVa27s8U8LTG49BHmV0/r4lRNp0LVIL4EMrf+PGiq4k1cAXG23LHzAohsRFOeX
	Qmv/ofg/PKNlNtBRqd4iwdD2BYkmqjM/ugkLThRpFiAssgm9Et4CaqpdPO0sfeKwgqhZLL4ozC5hH
	MDIYfFtevPHsnqDPfIE6lRiTU/yitKFGJkh7uusSm0wf6DhtIK362uYJ1J2qkvqvV0qEcRqGYWz7F
	EAeBtxxjsNEVLnu9NCO7qvsa2dcZyx8cSAzyG1Fkt6NVafVPfBBR5RqyLuvV8xbU3MQUGT3NY9urL
	KPjSPo5/ETwYTGF6G1Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU4v2-008pQN-BM; Tue, 15 Mar 2022 11:00:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU4uq-008pNu-IX; Tue, 15 Mar 2022 11:00:37 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nU4ue-0002hT-9o; Tue, 15 Mar 2022 12:00:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Andrew Lunn <andrew@lunn.ch>, Viresh Kumar <vireshk@kernel.org>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>, linux-ide@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Peter Geis <pgwipeout@gmail.com>, Jens Axboe <axboe@kernel.dk>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Hans de Goede <hdegoede@redhat.com>, linux-rockchip@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, soc@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v6 0/6] Add sata nodes to rk356x
Date: Tue, 15 Mar 2022 12:00:21 +0100
Message-Id: <164734201499.2137788.90858927315746768.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311210357.222830-1-linux@fw-web.de>
References: <20220311210357.222830-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_040036_632037_FD3C4A93 
X-CRM114-Status: GOOD (  10.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, 11 Mar 2022 22:03:51 +0100, Frank Wunderlich wrote:
> This Series converts the binding for ahci-platform to yaml and adds
> sata nodes to rockchip rk356x device trees.

Applied, thanks!

[6/6] arm64: dts: rockchip: Add sata nodes to rk356x
      commit: b2e5612f6ea23c87397e50f8d976cd8c95e3ed17

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
