Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CA3C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 22:56:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c6zGQ/A4qEFXElhhI/aECyQqHUZdPhNbCvTpHdXLJ+Y=; b=wC/iT6Ax5jtY8V
	SmC1Q06UE/10+DMUP92CdxPowWKAGZb5FEE0HOERBHGawKSSDsnb6rPudUmpdW1y/+zA1t/F/0bBO
	Gd53BHCJqs322hnJTEe+jVXAIqc1P6wjvQjoQ9oTxFDVrqS7DxHSsHVOcLbWAI43yW2MCqbZ7ENlq
	cQ2D9L7OgUkt0WUdE5NXhylMOnmCvYVgW7QSfQMiI3EirEeztiebACiV2Zyx8SsI72cLS0wyLQf/C
	nBEoxT+RUYcHArfRiw+cnQDG3ND+CNYdqBj4wvW8cVQnisFV/jIpc3ON3WUq2SBN1nLQ6e39fPj5W
	ORnfYyOGkAUyO3xiJVzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFNXL-008q1d-Ls; Tue, 10 Jan 2023 22:56:07 +0000
Received: from xtrwhcvx.outbound-mail.sendgrid.net ([167.89.12.138])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFNXA-008pwF-Ak
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 22:55:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=6ZWg242ARAu9nPb5WSm5B9LJkeQqaU7EN/Do4yz6zdU=;
	b=mHjjgy3YZf2HP5s3xrvYm6ikGxTnX1ypIF2fdOFiBl3wbMdxVKKwVZIpOhF6zEEqN6NV
	eaUEB6uga2PZybfE8sQbv7Ch2Gp50VJxz2z1hAEveu3UviUgaKccUp19OHuGogUWMPH8mP
	nwsiXy3xih01n+OwqW5yyKrcxeM40cR6akPF1mypb2ZLn0eR4R87cpOrBZXtQ+YcML4VdE
	skxaw6OEOok6S1rcSmZLOJx/wN9/WqU1uB7D2zHV0hzpaEjEAm4if4MhHmxyhDupAbcVIx
	cwCgzb8t2tqu9T02FjUIr/nx+B8aoJmaX29C/c5vF//zik3O/Mnwv8tEkEf5pMzQ==
Received: by filterdrecv-69c5db5cf4-rhmnr with SMTP id filterdrecv-69c5db5cf4-rhmnr-1-63BDECF6-2
        2023-01-10 22:55:50.123018673 +0000 UTC m=+908336.910790272
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-6-0 (SG)
	with ESMTP
	id CuugowVBRhuwrdY-kQgdWw
	Tue, 10 Jan 2023 22:55:49.755 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] Fix HDMI CEC on Radxa ROCK 3 Model A
Date: Tue, 10 Jan 2023 22:55:50 +0000 (UTC)
Message-Id: <20230110225547.1563119-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h2Ka1=2F2lP9RML5+0X?=
 =?us-ascii?Q?Av4b9yN0QJBSP4lP4aJcxkv1=2FMe91b5nCQhEq4F?=
 =?us-ascii?Q?DcvZsEclEt+WZEUXAhk5v4efo78N80bAv6LGk8g?=
 =?us-ascii?Q?Eo1O6yhnTuj=2FN1nRlHp4cDfntf8fdIBdgEfBzI1?=
 =?us-ascii?Q?u7ukxO1xRjwT3OAliOaQM5qvRP+Eer5RcFLr2Wi?=
 =?us-ascii?Q?HKnlFbeLV2HzthwX7n+EA=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Michael Riesch
	<michael.riesch@wolfvision.net>, Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_145556_451517_A14D3C55 
X-CRM114-Status: UNSURE (   8.21  )
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

The HDMI CEC is not working correctly on Radxa ROCK 3 Model A.

This series assigns a clock rate of 32768 to hdmi cec clock and a pinctrl
to use HDMITX_CEC_M1 function of GPIO0_C7.

Please note that this series also requires a fix in the pinctrl driver to
correctly select HDMITX IO mux M1 for a fully working HDMI CEC, see [1].

[1] https://lore.kernel.org/all/20230110084636.1141740-1-jonas@kwiboo.se/

Jonas Karlman (2):
  arm64: dts: rockchip: assign rate to clk_rtc_32k on rk356x
  arm64: dts: rockchip: fix hdmi cec on rock-3a

 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi        | 5 +++--
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
