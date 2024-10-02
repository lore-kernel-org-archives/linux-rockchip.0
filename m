Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C8C3CF31B0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4L7VHwh8hxmXL21/umuc0irBZ6khTF4Wi45Gqx8yqBw=; b=uHIXBNibaM+Az/
	eEBPB9MiKcqgqZRGk7oOYTAzVk9LjLAbR2h06thjG8SCH748zfPhYznn7QF6tn1z+lpOVjmoXgHJU
	4Fsyaqk5cNIqb5kgpBy4lLXjVvI8Zn9OUZ36MJY64micfMIAYE13VAVcXrSx2rXzqBq7bSaFNjFX1
	8j4+96iAv0byzdNN6nZMTwOUshwlBR8FlYbjX3T28b/Lhs1pUv4N6PO3dUAA/OZWg3Z2oEjOECZUt
	KTP4aOc5BtBh7ga+c/BhxUWsGzh90d5KTh8KqoltYfrh6PCY/YujBXzBin2PO/r+P6n31ceMKSI5K
	QfsJlSfmuz70pWlCZuiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwg9-00000005Vbh-3qVa;
	Wed, 02 Oct 2024 10:33:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdS-00000005Uqf-2kXH;
	Wed, 02 Oct 2024 10:31:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FxaMWJe41HT7TXEryU9BV/26depmbnG+obtSP5eZ8ws=; b=axkgWC/R+tI6DgYDLNpK30IK3+
	QuJ5VDK41tVZp1Affmmq2Xt11aRvbCB70lei7ssuubrf8b+6xwGyMLW1FAliZ8qySDG4niknFIVF9
	3xSQz/zCala/foLETINHBKfsg+bssHwXtyft+Q8Y6iVBEZQpLUG1i1cgD1He59XFdUBxAxrMTFrdF
	6fFGnXt8mmjiz9vNodOhMKSsWmZYAf1047o/SEUx9FjnJBPk2tiWx/Dw9BieeI/CdC08Q9EZXlUZl
	muldrCrgn3y39y5ePAF8A4MWrfFEYCwRo7k+UiCubyYRiq+HieSUI+/NjjdfQcZG7ZWmDNbUgQbxH
	EXD9EZcQ==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwdB-00057r-5z; Wed, 02 Oct 2024 12:30:53 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Alex Zhao <zzc@rock-chips.com>,
	Sam Edwards <CFSworks@gmail.com>,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	FUKAUMI Naoki <naoki@radxa.com>,
	linux-rockchip@lists.infradead.org,
	Jing Luo <jing@jing.rocks>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joshua Riek <jjriek@verizon.net>,
	Chris Morgan <macromorgan@hotmail.com>,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
Date: Wed,  2 Oct 2024 12:30:45 +0200
Message-ID: <172786503307.2125927.13838260873338813986.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210652.1232951-1-CFSworks@gmail.com>
References: <20240930210652.1232951-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_033110_713628_BC7B2919 
X-CRM114-Status: UNSURE (   9.64  )
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

On Mon, 30 Sep 2024 14:06:52 -0700, Sam Edwards wrote:
> The Turing RK1 contains 3 different USBs:
> - USB0: USB 2.0, OTG
> - USB1: USB 3.0, host
> - USB2: USB 2.0, host
> 
> This patch activates the necessary DT nodes to enable all 3 buses.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
      commit: 6d14287746d1b5783ee69b3841838e1af5e44dd1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
