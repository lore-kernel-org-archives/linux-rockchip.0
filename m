Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF239C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 08:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/jlgO5mqRpUo/NwsJOltsPnCluAio5Ozhyul9+zmuhc=; b=uLOkuJJoJ+9qJ4
	UkuRrsIX4zYczYmZSdqKCl1zTjAFzRsyp4XIQXRsj/haDk2+OoIsLa0vN8lSc8C3UkwKqCBkudT2Q
	0h1ob3InL2x64gG0d61BVBwzjom1NYU6iqUqxTP6q0siPm/ZPB80u2Vy8UgzggXQuComA7Gcp0Xpf
	i4Wt53kRS5rH7ZGKEnSqZckNV7Cy6TCglbUARF1rI2WIWxxxZk3krES8pXloFg7kR7378LSe3tfst
	IvuzATfoTXQ2s+AaIo3YMC5b5yDvnBQG+kFPaZ3iUzCPmOs/bg7kDVj6PgSTYAMkuvkf5yt0W6zUp
	q95/QD2P5qnNERObuXsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxiF-00AzYX-0r;
	Tue, 12 Dec 2023 08:01:55 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCxi4-00AzPb-2w;
	Tue, 12 Dec 2023 08:01:47 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702368101;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Uw1YrEybevd9HF4xwjYGawuiyd2PZL5+wBt8RL8bJb8=;
	b=hQvLYRY97Wr1DmQ8FvsixZ7qeSf6hDhGtwl2+lokKwqRKMeUKcy5iHV3qg1me+XWGkr/s8
	6If/Cjhu0m3ZDZBRNAa/c4mkKvtJpUh2yR/HaHJEbt6nBfekovyouOjRZiKHb2a83RVX4I
	kJS7bxWdh37d45HNz88inW09KJ86682aXXmElQBvcbO1NSJ/1cD8SITqP2icApPl/X56Pn
	LEPwuuYAF7bo33D6oZVLNR+smIY0uUzqui5yV+ZgR+uaZhJqgGU7E4f0Sf+FVUwGTG8cDu
	/ZX3eLTXHsBzihFatKdbMtpYEf6V0rzFORKwLK2Z+RyVDTMiDOzGyGrb7M4x5A==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Add ethernet0 aliases to the dts files for RK3566 and RK3588(S) boards
Date: Tue, 12 Dec 2023 09:01:38 +0100
Message-Id: <cover.1702368023.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_000145_120509_63CF5A12 
X-CRM114-Status: UNSURE (   8.71  )
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

To complete the process started with the migration of the ethernet0 aliases
from the SoC dtsi files to the board/device dts(i) files, started in [1],
let's add ethernet0 aliases to the board dts files that had it missing.
See also [2] for a related discussion.

At the same time, let's remove the ethernet0 alias from one SoM dtsi file,
which doesn't enable the GMAC, and add the same alias back to the dependent
board dts files, which actually enable the GMAC.

All these patches result in a rather clean situation when it comes to the
Rockchip arm64 device-tree aliases.

[1] https://lore.kernel.org/linux-rockchip/cover.1702366958.git.dsimic@manjaro.org/T/#u
[2] https://lore.kernel.org/linux-rockchip/5119280.687JKscXgg@diego/T/#u

Dragan Simic (2):
  arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3566 boards
  arm64: dts: rockchip: Add ethernet0 alias to the dts for RK3588(S)
    boards

 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-blade.dts   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts     | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-model-a.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts         | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts         | 1 +
 10 files changed, 18 insertions(+), 1 deletion(-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
