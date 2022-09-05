Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 852FAECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 22:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9Zb5PkzJoAMeR/Z4cpIvlJCZceBRXYfxmqV5/uxEH0=; b=k9/li3mkRP3793
	iRSg0/QUXtRhVQ1efwktuXIns1OiHJDRzzpinRD+QhwhLZ3s5U921h92RTri6B8SXDM6Y9/WF9uh7
	4GBsxZIuN985qP8H47x3YegF9cz4twSLJmMu4BTwi6uY2gvsI8RXgKVJJTfmSTpIhuEALK8+wkTiU
	VJEJPkZk61ibatlaDYV4aKVsPbbU6gBE0WFTq4oDLOOfKvuEQRHGyHk0SbftYb5/Yiho8d/JevC0I
	+Xzpdh45Z5PqO1WAUqIQHtmySDbXaP3jtJuqHgvzvFIhpC2QfOsbVITOMA6fTtYJk3ltZXubeHMbx
	ZhPDIzeZbYElnYUxp2cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVKSB-00HAnc-5c; Mon, 05 Sep 2022 22:20:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVKS8-00HAls-Na; Mon, 05 Sep 2022 22:20:25 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oVKRw-000253-Q6; Tue, 06 Sep 2022 00:20:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Ondrej Jirman <megi@xff.cz>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Caleb Connolly <kc@postmarketos.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <n@nfraprado.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Arnaud Ferraris <arnaud.ferraris@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Martijn Braam <martijn@brixit.nl>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix SD card controller probe on Pinephone Pro
Date: Tue,  6 Sep 2022 00:20:11 +0200
Message-Id: <166241640239.2484108.8849945710156570054.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220904233652.3197885-1-megi@xff.cz>
References: <20220904233652.3197885-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_152024_791290_AD16C3AC 
X-CRM114-Status: GOOD (  10.59  )
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

On Mon, 5 Sep 2022 01:36:47 +0200, Ondrej Jirman wrote:
> Voltage constraints on vccio_sd are invalid. They don't match the voltages
> that LDO9 can generate, and this causes rk808-regulator driver to fail
> to probe with -EINVAL when it tries to apply the constraints during boot.
> 
> Fix the constraints to something that LDO9 can be actually configured for.

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix SD card controller probe on Pinephone Pro
      commit: 024744964ef6c0a65e348afafd4e1feae08eba5e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
