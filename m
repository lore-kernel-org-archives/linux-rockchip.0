Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8B60CF649D
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 11:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9w3dVYgkGcdFaMIxADrrE5t2b7aA6NDPVFJJNLxv3k=; b=DNtu6vpNiyr+t3
	N6WYgew/GT8X1ShbdBJr+Hh9WagiCw9TlR/8enF9ILnYzYHXraYCmZ2U0pZ3OpH53gkYTTTfcLix/
	xcjF/zadIokgfQj0b0NtMaFsRcrf+hluGJHISKTJKtrF+cANQvCIRcZJ5ehnOxSMhCXUmYclVOxTU
	iWH90RtkqOphoZLm7H9PVkjNlxqeE9uMo1V3PrvgPH4e/QofJZJ/RU+glRwV7GwSPAsPYzmEszXPC
	74ZhoT62g6PuFIOhwkieMtvHjKgJLRTCX9KsiljR1SfihWBuR+L282QKXB1SP+hjF+cD2xA35DNeS
	wMd/j+jejkE7pcvgiKOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svEAC-0000000GmmZ-1XGj;
	Mon, 30 Sep 2024 11:02:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svE4N-0000000GlPo-3504;
	Mon, 30 Sep 2024 10:56:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ybdvb92Phm6D+uBlGvpnoJ2oPo1jS/ZzdaGM8Mw1jt0=; b=uDiOCCukxfAZjMuvePWJKPr/1T
	tDMiBYmw/4DoG6TFS6zNFOwq4hdICeA+1O9urdaNlz9HrGsS8lbbmY3ONcLC3Lv11r1lEtWtcNSGa
	GVFxApeUCvgwX3MNHvcDvHeZwk5bELn7Wezo1cb7vfXhT4O//jec7Z8E0d7uKLFdP5uu1By+brKwv
	HABEVY90/0Ui5MCPp3XwrHkZGhusQU0AUoogcLQbn+hmJsYLcFHJqDdmlsFMuCFmIg1KvMoCqHhXw
	FWsEMtzd6j7Ewk5H93P9QTddlZWjE+kGyGklF3DNUCOh+3Um9qjSOZ0xZ5dfYtuMXaPiNC1XExq06
	0eumh0Qg==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svE4C-0004Xd-Iv; Mon, 30 Sep 2024 12:55:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sam Edwards <cfsworks@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Alex Zhao <zzc@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Ondrej Jirman <megi@xff.cz>,
	Dragan Simic <dsimic@manjaro.org>,
	Sam Edwards <CFSworks@gmail.com>,
	linux-rockchip@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jing Luo <jing@jing.rocks>,
	devicetree@vger.kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Joshua Riek <jjriek@verizon.net>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Designate Turing RK1's system power controller
Date: Mon, 30 Sep 2024 12:55:33 +0200
Message-ID: <172769365136.1880381.1018618867387854027.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240912180148.205957-1-CFSworks@gmail.com>
References: <20240912180148.205957-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_035559_792366_9D75266E 
X-CRM114-Status: GOOD (  10.65  )
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

On Thu, 12 Sep 2024 11:01:48 -0700, Sam Edwards wrote:
> Currently, the Turing RK1 board reboots when told to power off.
> 
> Resolve this by designating the RK806 as the system power controller, so
> that the relevant driver can handle system shutdown requests.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Designate Turing RK1's system power controller
      commit: ab3cf1ab3fdbf1d05f23c810d767a3ddde4ef177

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
