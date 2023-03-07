Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5070C6FA99
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zKBWmpO16yIhjMF6VGdk6SXIsxThv+OUYcaY3cnhsE=; b=Rc5pixlXLPQUGC
	Oj1yfh52QptNM/xgwyEHQr1k0oM69FmCxbKjFhcWSWN/ahP9AvNcsOwCJ2PWVxckHPjtrtsm/pbLA
	7DamJGAphNB9of7Bk/TTeMJn7B7Qjuh9stSzaATkKNOSkR0ZBQJ65MqfUWIz5W04FgiRJEhAXR7qQ
	WjpppOP4UTuXPShegj0v0ArSikoguCxW/WprwdK2GAdfYwRiJZlF+R1Ia+quUnu2d9HZkRNWj1x8x
	bY4Vd2RPlGsvkSEtpKn5X2/VJ22ZuCWumKn/7M8Sa7EjDgZj3igWm5wRyxO1z7cj5F1f9b4sf1e7u
	sxk68jRvPBFFRXTaoyUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqu-002tKx-10; Tue, 07 Mar 2023 23:36:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZgqT-002t9o-KQ; Tue, 07 Mar 2023 23:35:51 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZgqP-00025h-E6; Wed, 08 Mar 2023 00:35:45 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Lucas Tanure <lucas.tanure@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	shawn.lin@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	ulf.hansson@linaro.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	kernel@collabora.com,
	linux-mmc@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3588: Add sdmmc node
Date: Wed,  8 Mar 2023 00:35:35 +0100
Message-Id: <167823207786.205469.9201588450242165959.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230228103610.25108-1-lucas.tanure@collabora.com>
References: <20230213152740.359055-2-lucas.tanure@collabora.com> <20230228103610.25108-1-lucas.tanure@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_153549_709018_5FF3BDBD 
X-CRM114-Status: UNSURE (   8.49  )
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

On Tue, 28 Feb 2023 10:36:10 +0000, Lucas Tanure wrote:
> Add SD Card node for RK3588s and RK3588.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588: Add sdmmc node
      commit: dbe406d1397ffccd4a0f85daef456291f265505a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
