Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE211C7115D
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 21:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g0UmZtDLKYvEpyqljw9G8M1RwIOPiYCDwPxyqIGVIpg=; b=w2JAqVh5zaepW+
	QpEARP57z4zA7+ZBlfsiP8nSRU+ZUHLv91V8iMLNjZidfDYdYDYYAWSYb4oX81UZzWvzpkD4znlAV
	vh0BIo/7xwyYdXX6pxwAnf+0YwxdH4vvVvdkXAwq8GZM8yjmkKYufuEUmA89TCcfUe1mSHuROOWbf
	K+85U1Qs8tAmRk5NCWk+RCGPr9p9ab+GhHCIL0HSKMAYYGkF3CC2lDTG2ms+x4qLPKgGdbFfsT2lt
	+Nk+ixTgkEg+uV8uqhnC9xrBFylFuE8vlvnjdbum8nH1uPTZFQd+CBpOskNX+tKUxFFB6vF7eucaQ
	8CvCjI98qQ2VOE4RpqSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSMhe-0000000EI2R-3wOE;
	Thu, 19 Jun 2025 21:21:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSMdf-0000000EHYM-2Ung;
	Thu, 19 Jun 2025 21:17:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=136gTLj/Y0HhKLYdP9vuRieftyoXRpz7sdT5yNch5VM=; b=QH8mXZfzmnidfYF+tyRI3+PsbV
	fxoIuns/M44n0uG2Rc67+usaCePYkFX2F2F8H/5wHsZiF2KC9SlXbAz9fLsmH3CxwBH1plmPQwl0Z
	unBdqRs/Id2fE+ud78jwRICesEYhjpCZF4u7D8Yaa5/gE8M9gd6pwc3Dya2l3k9KdjcWR4BRIzwpv
	vACAr1YnOCPHLPmksbrWoms9ZBGLA2TXeaxbRWBbak5VHH95WwioBatFoSZRFXD/Z73wlsAnIVZJN
	mARKVOwdRzT+AHt+NJkkVYjjNIbXrHprV3uqIUQlWBC1UYSCqDrxgxWJlu7nEakbPjkvKfAh4g5Y8
	+1OIpuZg==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSMdd-0007fA-Cl; Thu, 19 Jun 2025 23:17:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH v2 0/4] arm64: dts: rockchip: enable further peripherals on ArmSoM Sige5
Date: Thu, 19 Jun 2025 23:17:24 +0200
Message-ID: <175036770856.1520003.17823147228060153634.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250614-sige5-updates-v2-0-3bb31b02623c@gmail.com>
References: <20250614-sige5-updates-v2-0-3bb31b02623c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_141739_630278_FCCC47CE 
X-CRM114-Status: GOOD (  11.51  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Sat, 14 Jun 2025 22:14:32 +0400, Alexey Charkov wrote:
> Link up the CPU regulators for DVFS, enable WiFi and Bluetooth.
> 
> Different board versions use different incompatible WiFi/Bluetooth modules
> so split the version-specific bits out into an overlay. Basic WiFi
> functionality works even without an overlay, but OOB interrupts and
> all Bluetooth stuff requires one.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
      commit: c76bcc7d1f24e90a2d7b98d1e523d7524269fc56
[2/4] arm64: dts: rockchip: add SDIO controller on RK3576
      commit: e490f854b46369b096f3d09c0c6a00f340425136
[3/4] arm64: dts: rockchip: add version-independent WiFi/BT nodes on Sige5
      commit: 358ccc1d8b242b8c659e5e177caef174624e8cb6
[4/4] arm64: dts: rockchip: add overlay for the WiFi/BT module on Sige5 v1.2
      commit: a8cdcbe6a9f64f56ee24c9e8325fb89cf41a5d63

Patch 1 as fix for v6.16

I've also fixed the wifi@1 node in the overlay - which was using
spaces instead of tabs.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
