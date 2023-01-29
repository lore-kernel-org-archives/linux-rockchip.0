Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7052CC05027
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 13:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5Ft1i65mf4fepVMDJmhxCAg+uL/l/wx6urasO4FFvA=; b=iaCC+/UxyxTyiP
	hllFrbmn3QZcxFOa3dyUQ4YB3eAd2Yb44qIf/5Q0WropTZ63g7HCByjVpwXbOWXfW1NB/H0yPjg2F
	kcHdMXkiA5snBxtzEp6vzewR+2a8wMSiREY2aod02WFS46V4v1btYsc2QREuOqfwqToeC0H+Gq4KC
	5XIqVG+P5s2skVSwWCCQDLM2INrELxYa83p2GBySMOkJg+HJYNUvv/lxT8wMH+4KQEs+3W2QE8jj/
	SR1wfIv7eOJzVFf0rjmtvD+HH8gXf7y1bBIYnRxMo+pENrMKmZnnjSXlPjpnUhwC0aSeCec3K6/Po
	HqrcJelm1kkj4ykQD+0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7us-001WGs-BP; Sun, 29 Jan 2023 13:40:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7u7-001Vus-Q2; Sun, 29 Jan 2023 13:39:33 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pM7tr-0003rM-9I; Sun, 29 Jan 2023 14:39:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
Date: Sun, 29 Jan 2023 14:39:07 +0100
Message-Id: <167499930029.3595793.17126441001105794513.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230123071654.73139-1-jagan@amarulasolutions.com>
References: <20230123071654.73139-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_053931_911523_C82517A9 
X-CRM114-Status: UNSURE (   9.70  )
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

On Mon, 23 Jan 2023 12:46:50 +0530, Jagan Teki wrote:
> The compatible string "radxa,radxa-cm3" referring the product name
> as "Radxa Radxa CM3" but the actual product name is "Radxa CM3".
> 
> Fix the compatible strings.
> 
> 

Applied, thanks!

[1/4] arm64: dts: rockchip: Fix compatible for Radxa CM3
      commit: 8f19828844f20b22182719cf53be64f8c955aee8
[2/4] arm64: dts: rockchip: Add missing CM3i fallback compatible for Radxa E25
      commit: c4d2b02d63ee38b381fbc886c02eecfec4f981cc
[3/4] arm64: dts: rockchip: Drop unneeded model for Radxa CM3i
      commit: 421c059d413812444318d27c1b4d6e71f1c1134c
[4/4] arm64: dts: rockchip: Correct the model name for Radxa E25
      commit: ef9134d9bbce071c9e4ebdcbb6f8fb1a5dd0a67e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
