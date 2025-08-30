Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DA8CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 18:43:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=86bCFeYjKNaWgNUYXKpkHao2mKvHGo/7RJHiExVXc+s=; b=lhLDTIKdML22Uo
	ke3SSUIWjXY2lNhlJSRcRo0YqV4c6932hBJoP7fyWCcTPo1SQfI1qEYUd0MsRzDuGSLdcY7AZSmKc
	su2ELz0y65kv6tRkPR3XWo9VA9Oo+qQ0d/w7g7DoFGIBXwBWSH4JARDoGHr974IzQQ3gd3qXI64fl
	41Gm+d1Z64Il9MrrSW6hX290S9IB1mYbTHYxIqw4Q22VltDEdB/tBHeQQ8JMY3BkbMvwWlWbG11q8
	g0H70t4HjWOHR2bbsq9q+Ioq59FAZFi9DdnFw+CNit8y+HfGW21e6/4D4LuD6IpIU7zli1sX1dgIt
	YMqNnxLimxg3pL6daOFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usQYI-00000008JaP-29q8;
	Sat, 30 Aug 2025 18:43:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usQYF-00000008JZ9-2ETb;
	Sat, 30 Aug 2025 18:43:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=z7dRJ0YqV0TfQ8NQVDQWPuDNydvgZBcIbL2hEeK72Lo=; b=hw1b2B+F3Y6HZoHS6mJC3qs6fR
	MAmlBhUjB32I4aDktTwAJ9Mb4pYIT4dPjeQKsrMjn4nAQNMPsjVgHCSYsCCB4H8cs9LmtYGzJWluk
	sNdYTls8VrTke8CHzxIuxXCNmFWRxNiQSCy18DiWA9b8ZR/kVMzXlHlBWy4gPosN/9IeT5c22CfO9
	rY71/vvGewXDM/NMN8IrdDCnefkVi3vU71lFhMGAdBPJ6K7lhgrHMvFbPAn25iSziSu8SrnPIxG6y
	rqNXzbmck9/vt9xsyVrugpUmSPNgxyrLBkxPZtOA0RkTz3dCdZH8ZRf/P64hRfhCLH+sd2SCLqB7u
	3uGdbJvg==;
Received: from [88.128.88.73] (helo=phil.t-mobile.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1usQY4-0001uA-26; Sat, 30 Aug 2025 20:43:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v4 0/6] arm64: dts: rockchip: Add ROCK 2A/2F, Sige1 and NanoPi Zero2
Date: Sat, 30 Aug 2025 20:43:33 +0200
Message-ID: <175657940688.3587027.2905487705008313025.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250717103720.2853031-1-jonas@kwiboo.se>
References: <20250717103720.2853031-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_114347_588627_C2F3F070 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>, linux-arm-kernel@lists.infradead.org, Yao Zi <ziyao@disroot.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 17 Jul 2025 10:37:02 +0000, Jonas Karlman wrote:
> This series adds dt-bindings and initial device tree for the following
> Rockchip RK3528A boards:
> - Radxa ROCK 2A/2F
> - ArmSoM Sige1
> - FriendlyElec NanoPi Zero2
> 
> The bt/wifi_reg_on pins are described in the device tree using
> rfkill-gpio nodes.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: arm: rockchip: Add Radxa ROCK 2A/2F
      commit: ba9d9ac745b110e937619d0379456f4906700d2f
[2/6] arm64: dts: rockchip: Add Radxa ROCK 2A/2F
      commit: dc16a221c07b5336d4efb1cfc0bfd7089eea1fce
[3/6] dt-bindings: arm: rockchip: Add ArmSoM Sige1
      commit: 5e1f607a05d848ee7e8fd161c966af5877a5721c
[4/6] arm64: dts: rockchip: Add ArmSoM Sige1
      commit: 7cedc908a877d7c003aa0c205fb088bb6c15f5d4
[5/6] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi Zero2
      commit: f4159921a4f51779680026fd923d59186916412b
[6/6] arm64: dts: rockchip: Add FriendlyElec NanoPi Zero2
      commit: cf9a5be7cb3f93d384531abcd5256b04e5650370

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
