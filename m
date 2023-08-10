Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EB39C001B0
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 08:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0GPY/ruGbyaNQcpeHXHjbDHuJRqeoeRnL+RnW0gFYww=; b=kTvtW+pEm6Ctlm
	1d8nO0MQj3LUqCFIaEOWPmWmoHGh70pWp92WbB7L+eK+2STVpD+/91kH6IVNeXwgVJtKcIJIQid1m
	eAlOSGVi9WdC/cwKj3IU3ZM7EIuUgyuD+WzcE4nwuuyXdn/sRdHoxwGW6v1byjxAEfkpgKhXAVmip
	/KhJpn4J7KI/gqe0ZTBfuZYnrsxO1PpeNxMq2GJtsmJ0VWaS2M0ssBHsxXfKDjc0QNY6EkuPCXxOL
	E6MEl+6Ws6iHO0auHNPHMmlDGhSPVrO+tppm6aBVsQtrOc/n4I7pcbhQvTe5J9y85j6Xxy+muzCHJ
	DlmjR7YwLBh33n06JgNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU0tA-006rPW-0U;
	Thu, 10 Aug 2023 08:19:24 +0000
Received: from mail-yb1-xb2f.google.com ([2607:f8b0:4864:20::b2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU0t7-006rMz-15
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 08:19:22 +0000
Received: by mail-yb1-xb2f.google.com with SMTP id 3f1490d57ef6-d4b74a4a6daso591865276.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 01:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691655558; x=1692260358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=78OX4fId0Em709uz0mp6uxgk8bb4IwlDXBz/uTj2fjY=;
        b=YAetKf4q0nZa/dO71z7++J7KKpe1E1CC7O3ahafQ7APpHv5jmvyn5BBv2mwDpYC5is
         aCqkyV5eahWJcbkNVk0H4ZuATN+jOIeGgJTiNul2i5t9tXVMigNJA6VlxX/a8OMvNSIA
         YaLs/IE+usEOobqLkPYKtN3CknTSd/aP7iBrjDMEftqOkGi4Hzn8W27JugL/elhtZAtS
         lvN5G1ptPirqDO85jdOp47BWA9MJm/z4Kcuzuh6yVL2pnLpcF/Uw4mERq/Siv1vZ2eMQ
         WGKJAkQHqeDReRN5me9rxTKini4wIOwCZjirxG0wunRnpyvqVfZs1EDQzXiZjCK8xLxA
         VFLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691655558; x=1692260358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=78OX4fId0Em709uz0mp6uxgk8bb4IwlDXBz/uTj2fjY=;
        b=AmAJ/hv6jCFIK/2MCCoP+1fTf9d/UA66WBM8yHXGOr6sReTko20tqRf+EYCm7OjAEW
         LqrJ4/PC7q2Z0YmWC9YOB1jmyIl8nOFd7vJs4obrZTmdEmM3Vqu8Kgv4G0ZqGIIT3C90
         nfbt/8HYZxmXHWH8Wonyjs3GbElZ8cb35OKjKRnR1OFfJrovFBiA69qptjeKaCKqfIow
         vGwpYU4dP4/Irf2eG0QnGRDBcRH9jeApusKmkK8/veXzXF264K0v1k4TSHOmg/B9Y6cQ
         LyJLdbozjRU3CwVWM9El9buDxgrviJOuVxSai9hp2EsjqIsTf/YIK+kOfEIAeBgD3pJi
         lsww==
X-Gm-Message-State: AOJu0YwcJAYxoJgU/qN4dQpd6cxtg7nRQEW6NrxqeTRhFrRhfN+ZT0b0
	8M4Y5kaGDq1iJBB3Csy05IL31Kq5z+U9vdYberthxQ==
X-Google-Smtp-Source: AGHT+IG5aWoH89NQGXx33HlD2q+rxamc3JsaObqeeE5H8gH+u446bjvEEFYnXEHJg1VQn5y6v1yXRNGsOkfTWSlQZaU=
X-Received: by 2002:a25:d711:0:b0:d1a:b59c:502d with SMTP id
 o17-20020a25d711000000b00d1ab59c502dmr1894292ybg.18.1691655558135; Thu, 10
 Aug 2023 01:19:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230803-dt-header-cleanups-for-soc-v2-0-d8de2cc88bff@kernel.org> <20230803-dt-header-cleanups-for-soc-v2-13-d8de2cc88bff@kernel.org>
In-Reply-To: <20230803-dt-header-cleanups-for-soc-v2-13-d8de2cc88bff@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 10 Aug 2023 10:19:07 +0200
Message-ID: <CACRpkdYsdKCrQpfoXZFv1XqT-o1skX=TDY-WJ1CSpgavMb+UrQ@mail.gmail.com>
Subject: Re: [PATCH v2 13/23] ARM: versatile: Drop unused includes
To: Rob Herring <robh@kernel.org>
Cc: soc@kernel.org, Patrice Chotard <patrice.chotard@foss.st.com>, 
	Tsahee Zidenberg <tsahee@annapurnalabs.com>, Antoine Tenart <atenart@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, Jean-Marie Verdun <verdun@hpe.com>, 
	Nick Hawkins <nick.hawkins@hpe.com>, Lubomir Rintel <lkundrak@v3.sk>, 
	Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
	Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, 
	Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, 
	Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>, 
	Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Viresh Kumar <vireshk@kernel.org>, 
	Shiraz Has him <shiraz.linux.kernel@gmail.com>, Stuart Yoder <stuyoder@gmail.com>, 
	Laurentiu Tudor <laurentiu.tudor@nxp.com>, Jay Fang <f.fangjian@huawei.com>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Cristian Marussi <cristian.marussi@arm.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Dinh Nguyen <dinguyen@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Michal Simek <michal.simek@amd.com>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Li Yang <leoyang.li@nxp.com>, 
	Qiang Zhao <qiang.zhao@nxp.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_011921_381351_87FB3FF1 
X-CRM114-Status: UNSURE (   8.89  )
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

T24gRnJpLCBBdWcgNCwgMjAyMyBhdCAxMjo0M+KAr0FNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgoKPiBTZXZlcmFsIGluY2x1ZGVzIGFyZSBub3QgbmVlZGVkLCBzbyBkcm9w
IHRoZW0uCj4KPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgoK
QWNrZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KCllvdXJz
LApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
