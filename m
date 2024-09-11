Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBB43EE57D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 21:21:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qHU4LrcYL5WxK77fgO4z6p5uP3uXGRpqd/P5ggKwtpI=; b=RvYucnyJjPMXCC
	nILBjHtlha/P9wCAU/tnH0vC3lSIM6f7oUGtt8DaaWt0G6U29xgxlt08bf3bUiRCJmYrSH7u4q+FD
	Hxf6YWQFTZ7fOG7R0qN0XLGphr7GGVuQhNuH/KPW0TJes7KdNqyGb/R7wujErUNTTX2pKh5P9Y10J
	3TkK2AC6y1wfAHGEV0wNjK+9jj+YI5wr6pUlOkqx0DSSYuW2QcVRt2MCPDptdIeOcEueylrMJaYYp
	Gr+eNsWeGpZ4mFKMQ0G5QrcLvjlfmymT/U2SAhZBwUUlD+mROU/0vyezA6Unc7uFx55kqjL3Ge1w6
	1DnivwqrL4Lr9E/PgHiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soUmX-0000000B2k4-3aVU;
	Wed, 11 Sep 2024 21:21:45 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soUlT-0000000B2eZ-1ai0;
	Wed, 11 Sep 2024 21:20:41 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 66A1A44D53;
	Wed, 11 Sep 2024 23:20:34 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nuwmy7mKDAIr; Wed, 11 Sep 2024 23:20:33 +0200 (CEST)
Date: Wed, 11 Sep 2024 21:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1726089633; bh=+kEoMhwLvy7MWALjn+C4G/QKDgdBbjTFEzXGfVxeOm8=;
	h=Date:From:To:Cc:Subject;
	b=Kf261u0kqHxvVSi8YnbeR0wlyvc6ZivJ4ejV95VsW0Nv/usGVi1sd8rjElyehWB3T
	 asAs7i/BoEjVfiPzuZ+BMTZoxOGNrMzR0KzCGYp9yOUHidLVxY/7cbWkiP7rBF41Ol
	 R3YDiV56MHUa2IkmBzNPhKbYkfwBui2ilsl0LxA8uYQ9Oi9p70cZs9kmxz4nCAFPlT
	 3zQCNz5XEQfcfyc4k8rcTV8ePmxHofI8p6CM6Z1qFpOuD9qAmdxK9JkoslWWEgHfX1
	 R9BvAp1vRl7DUIC3IddlBjKtWuWqbd6JoAp6hpuET91E74c5ZT5ivLHqIHcLfbg5BH
	 EEL0GNURA1eyQ==
From: Yao Zi <ziyao@disroot.org>
To: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Yao Zi <ziyao@disroot.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Possible misleading information in rockchip,rk3588-cru.yaml
Message-ID: <ZuIJgiN2xp6oPrHD@pineapple>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_142039_856707_044348E2 
X-CRM114-Status: UNSURE (   7.76  )
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

Hi,

rockchip,rk3588-cru.yaml, dt-binding for RK3588 clock and reset module,
contains description of customized property "rockchip,grf",

  rockchip,grf:
    $ref: /schemas/types.yaml#/definitions/phandle
    description: >
      phandle to the syscon managing the "general register files". It is
      used for GRF muxes, if missing any muxes present in the GRF will
      not be available.

But after doing some searching, I found that clk-rk3588.c actually
defines no clock hardware with MUXGRF type. This is also true in in the
vendor code[1], it seems there is actually no GRF mux on RK3588
platform.

Best regards,
Yao Zi

[1]: https://github.com/rockchip-linux/kernel/blob/604cec4004abe5a96c734f2fab7b74809d2d742f/drivers/clk/rockchip/clk-rk3588.c

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
