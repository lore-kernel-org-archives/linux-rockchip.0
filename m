Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66493CA0EED
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 08:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IDD3egXnb+5r6v8+u3lCLgLPuV+xyVTF0dbfdWGJ27E=; b=N8Y0vpWR5P+fHq
	QG1UhliAij6Dy/SNv/eqn7hursGgwqnvyLPGoSkHvfyR5qz4MJ8c7RvQGOCKt6SOt6rUs+iy6C8wo
	54yCXwxiN6U5VC0mESQR/e5PglJMkxnohFgC1cwhWyHTrI1rzhiYcB6JvDF8u/xTGJsCT4exhCzF7
	41+hqpRAHrQXLJ0QCNfraK0hILQU69hbfx4AhdO0CMLu8smUjWxpKmGuRngCxPD6GWBmfC//eQAnF
	cvNea9+eJ1HLvGSUQaDdrrC62Ls1xhJ7Pd4y9IOSBeEEf+TtD0agHgRmCG+nodu7mpXvR7jtDmgr0
	DX0UcBDHPARgBbuAQfcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjx3Y-00000005N4Z-0zkB;
	Fri, 30 Aug 2024 08:32:32 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjx1O-00000005MWU-1g4O;
	Fri, 30 Aug 2024 08:30:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 708D1A44209;
	Fri, 30 Aug 2024 08:30:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1355C4CEC2;
	Fri, 30 Aug 2024 08:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725006617;
	bh=+qWkkkxG743ImM/aahK9UM7XRQPRK07QH/l7Lrn/2g4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=n87VcqIld4h3oj7jmm7RfOPl4zckDOEs8srTmVTODlJPFoBWJTdLkpxKb/TTrDPNI
	 RpHdWXpgebIFMc/qPmm4qzLIU/IUXikZBg9fEljw5P/AOGdNBkoPI9gH5NVY29Dhxj
	 0X1uhyjUZT+Aui4Sd6KyzejiYNza+LZ5CXen9SIXDTegOWyX/nTpdat55CRq0o5GTY
	 kwc8M8dElgz1oXzLOA1CYsDOeadPufbX+4woWWT7nRP10Yqzc9IYsRuD24HA4Io+QG
	 F5nYBaRSeP36LV/Z3WWPzyZZZEr6rtTbrq62Rxt/JKgxUcvItsy5MM3zN18fyGINmP
	 7xquAQuP5GK1g==
From: Lee Jones <lee@kernel.org>
To: linux-kernel@vger.kernel.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andi Shyti <andi.shyti@kernel.org>, Lee Jones <lee@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, 
 Guenter Roeck <linux@roeck-us.net>, Chris Morgan <macromorgan@hotmail.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, 
 Chukun Pan <amadeus@jmu.edu.cn>, Muhammed Efe Cetin <efectn@protonmail.com>, 
 Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, 
 Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>, 
 Jimmy Hon <honyuenkwun@gmail.com>, Elon Zhang <zhangzj@rock-chips.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
 Jisheng Zhang <jszhang@kernel.org>, Jamie Iles <jamie@jamieiles.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
 linux-watchdog@vger.kernel.org, kernel@collabora.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <01020191998a2fd4-4d7b091c-9c4c-4067-b8d9-fe7482074d6d-000000@eu-west-1.amazonses.com>
References: <20240828151028.41255-1-detlev.casanova@collabora.com>
 <01020191998a2fd4-4d7b091c-9c4c-4067-b8d9-fe7482074d6d-000000@eu-west-1.amazonses.com>
Subject: Re: (subset) [PATCH v3 04/11] dt-bindings: mfd: syscon: Add rk3576
 QoS register compatible
Message-Id: <172500660860.97285.13837050366813522297.b4-ty@kernel.org>
Date: Fri, 30 Aug 2024 09:30:08 +0100
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_013018_530616_21ADE599 
X-CRM114-Status: UNSURE (   6.55  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCAyOCBBdWcgMjAyNCAxNToxMDo1NSArMDAwMCwgRGV0bGV2IENhc2Fub3ZhIHdyb3Rl
Ogo+IERvY3VtZW50IHJrMzU3NiBjb21wYXRpYmxlIGZvciBRb1MgcmVnaXN0ZXJzLgo+IAo+IAoK
QXBwbGllZCwgdGhhbmtzIQoKWzA0LzExXSBkdC1iaW5kaW5nczogbWZkOiBzeXNjb246IEFkZCBy
azM1NzYgUW9TIHJlZ2lzdGVyIGNvbXBhdGlibGUKICAgICAgICBjb21taXQ6IDJmOTcwOWI4NTQx
ZGM3NDIyMzU3NDNkMTliOGE2ZTJiYWEyZTgxZDQKCi0tCkxlZSBKb25lcyBb5p2O55C85pavXQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
