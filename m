Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79C32CC6B2C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2026 08:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+A5/7/DfAYy4feRLoddATYoR3EjPnwr2cia9r6w0N3w=; b=zuwbLcgcNl9x16
	y8FXbMesuuLVhH/pNqH712WAhbYJbcozoXX09OnGn+faKGV+6zLmwynQ8ty+7Sp7xOnDrRDbwVam7
	ghSxjieaKdU6g8cB+8gKvABC40hfIO2zyt9lfuuUD5uZ/W3fhJfMzI+Lh8Tfrl3cKs/A/ifP5sLok
	a9Shnw+qky9VqmIlV5JZNfH2o1HeXmkkouo188Mg5IQArn8j3pYEwX9Yim6fM6F86reQlTot0oCwr
	lGlnZSxrWC1R+cer77U1HxW+gm36CCbPk626AwyGPLCX4p4AIxG1Vu3BBHDDvfuMshx7FoZVZntRT
	GuNB8Xrt1jK0h0vMZGuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGuEr-0000000Eryw-1xgc;
	Wed, 14 Oct 2026 08:21:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGuEp-0000000Erxx-1JqX
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Oct 2026 08:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=j8YsVbXOdF61Llj8qBDqVp2Fp9mYBbP2iNpUhV0IltE=; b=BHGR45p1/ccBmHHDJmb/aTuEAx
	BEiBEUWGpCF6EXvchcMx0vtqy1UIC2GqlqTVz6RFuTMBJvKM9jaTHmB64wyAcH/rLjZTvzFlNGQI9
	hqc25mWhcXl6XGzaJl2up/yXeOzN4luyYn/DoMAgm0LRDYpwGZIhQWniljFBMeqhGaCKsAKts9GFp
	AbjJBAPICbI7MahWSrGBgANlbNW3rsRqpPexTGKqVSlqAYxwCqSBtHR7qXPgCoudamQGijRWcp6Ij
	4mY/iiYdJrV7HAvkmNtZ8XbHA3SxJdJ5PpluhBKh0fm7t/p0KYpNvF5fQuEzjitblV4I/ohau8sJP
	jops1hhA==;
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGuEj-0000000GUhv-3Cjf
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Oct 2026 08:21:26 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-cc50ad2d650so2891717a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 01:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1791966078; x=1792570878; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=j8YsVbXOdF61Llj8qBDqVp2Fp9mYBbP2iNpUhV0IltE=;
        b=lW0gA5aelr4uJmLkDKadaeYXqe7w6QnllFmwPrs/ClpPAR37xe7GdXrSDZ+TvY1sFn
         Q8xVjo/BFgiB8IPfkZsqJEs5bSMr0j4op70/SmMR++A4L9XmHU4Rd2hOQsMdEDJBWnIs
         4GlUqfm9q/tovgD6VkUYjG0ryklUd1JCBil8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791966078; x=1792570878;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=j8YsVbXOdF61Llj8qBDqVp2Fp9mYBbP2iNpUhV0IltE=;
        b=RDdZV6U1ylkVcH1qusv6qK64BYJruEDQRk3m2OxUTwQnpyxBj79xl5XaY4YrTNs/sH
         WeICwdM9AxPpXqeEGN3lMIcsqPUrXbrHlnEFWWywANGt5awI+V4v08Rd40QKif9c2py6
         /1bAIQQt0ncWbZO+GbLNb3INrROtdFFok5OclysNq4ZmYAefgqmSVqoNUEX/XrRonnsa
         l6j4jsOv/gDyOPw/EqE4H9x0FrEcjrCQXijhXvZA9W19mMCdSzhW7FObZDud0ys2SMWj
         VH5FFEnaj6+5NdMIHohNFW9GQTseLfHISze7TGAsXQZzcRGgBb4w/3rqHcOUKCwRdZNQ
         PN1w==
X-Forwarded-Encrypted: i=1; AKwUvBxuMC85Q82dwDZ34pmZQvOPtG/2w1Bjo8AKHsua1UIMS938keElqS4287tonaGTgdEDOIQj5mI8pkErHFzSeA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIzyvVgCAzYDN1vCMa/dZQQ1BqbazOa2AixY4Kt+LEbwdCXDGlc
	BuFCbuPQBRQNE7lExx1XUQpSjYk2pTd1TA+Vt5D+z2nMpSK3i6zGTxR59RfsGL8OJA==
X-Gm-Gg: AYBFou0lSwitMZvEHcJ6bZbCB01SmB5mwrhRcqxyPbNv5iQlJr4ljtA71ZuLVj30jG+
	4FJt6daI7aorkWSPPoGXq7bqZ7qn9zPe6mqR9JkZ9U0lI1PFOf41VWN7aALYIv3jUia+PnZLB9E
	Y2jBcU+AAU4gz8Mho1m6mnF0D6oPe1yqtRxqupmyU+h0bxAyYrCg+1+4eA0bIbnwN8ioq1bibGO
	Eg4Vi3/QUzz3JK5usNzJjQssLrwM9MrAg8S74VG1hqe5ZsNlf0BzY5hW0P1EON3mqOxWCGmHauU
	1BexJFGfkAkJhTgbVIJaZzuwvTiA76fTZSH0iUmaPlTqUAS1JgLMpKmTrLyuUfPdSISf3TOD4tu
	Z+bxpvY6+ifvkWKrVUO2xnHegQ+uoz3DFZWH9YATLF0bIsBy+Z3jTjAxvIUCvqyuxGdalt3/NB3
	w4WHzz4LYhCcIh9XCXt4GK1y60rjtsk138mbV2g1LSca4zK0Pofwj34tQbBwTblBVpvKb3admlp
	kpvMVjnHONWTu5BK8KqGTJ/iJ56ZVlwLDk3cwFbuEAd38naRt/lXrEpo8aZlncCL7Zd
X-Received: by 2002:a17:90b:4a45:b0:39d:f247:bab with SMTP id 98e67ed59e1d1-3ab3a2fe791mr12737876a91.6.1791966077891;
        Wed, 14 Oct 2026 01:21:17 -0700 (PDT)
Received: from wenst-7875.tpe.corp.google.com ([2a00:79e0:203d:7:373a:9eb7:c5ba:7b5c])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ac5f04e324sm3682141a91.2.2026.10.14.01.21.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 01:21:17 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Felipe Balbi <balbi@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Sven Peter <sven@kernel.org>,
	Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Billy Tsai <billy_tsai@aspeedtech.com>,
	Michal Simek <michal.simek@amd.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Peter Griffin <peter.griffin@linaro.org>,
	=?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Yixun Lan <dlan@kernel.org>,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>,
	Minda Chen <minda.chen@starfivetech.com>,
	Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Wei Yang <yangwei1@eswincomputing.com>,
	Senchuan Zhang <zhangsenchuan@eswincomputing.com>,
	Hang Cao <caohang@eswincomputing.com>,
	Li Jun <jun.li@nxp.com>,
	Peng Fan <peng.fan@nxp.com>,
	Roy Luo <royluo@google.com>,
	Yang Xiwen <forbidden405@foxmail.com>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Robert Marko <robert.marko@sartura.hr>,
	Xu Yang <xu.yang_2@nxp.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Stanley Chang <stanley_chang@realtek.com>,
	Ze Huang <huang.ze@linux.dev>,
	Aswath Govindraju <a-govindraju@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev,
	linux-aspeed@lists.ozlabs.org,
	imx@lists.linux.dev,
	linux-samsung-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 0/2] dt-bindings: usb: downstream host ports for hcd and dwc3
Date: Wed, 14 Oct 2026 16:20:34 +0800
Message-ID: <20261014082037.1774672-1-wenst@chromium.org>
X-Mailer: git-send-email 2.56.0.212.g129ede20d9-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_092124_291400_EC2F5355 
X-CRM114-Status: GOOD (  16.82  )
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


Hi folks,

I mentioned to a couple people at LPC that the USB host controller
bindings were missing downstream port definitions, and that the ones
used for dwc3 don't align with USB hardware port numbering.

The dwc3 discrepancy was originally noticed by Wei [1] and Konrad [2]
while adapting my M.2 E-key USB support series [3][4] to Qualcomm devices.

Here are the binding changes. If you were CC-ed, then you were listed as
the maintainer of any one of the dwc3 implementations or platforms using
it. So this change would affect you.

Patch 1 adds the "ports" definitions to the common USB host controller
binding. This just follows what is used in usb-hub.yaml. Nothing
special.

Patch 2 "fixes" the port numbering used in the common dwc3 binding. The
dwc3 includes an XHCI for host mode operation, and its port numbering
should follow the common usb-hcd.yaml binding. This clashes with the
existing arbitrary port numbering found in dwc3. I checked all the
big projects, and it seems that only Linux is using them, and it doesn't
care about the numbering anyway.

So while the patches looks small, there are actually 26 other dwc3
implementation bindings that are affected.

And this series currently only has the binding changes. There are
probably close to 500 dts files that need to be fixed as well. I asked
LLM to help me fix the arm64 ones already, and it seemed to do a good
job with some hand holding.

Please have a look. I fully expect there to be a lot of hair pulling.


Thanks
ChenYu

[1] https://lore.kernel.org/all/20260731073306.1895428-1-wei.deng@oss.qualcomm.com/
[2] https://lore.kernel.org/all/c6526ba0-be08-46c6-a501-1b161939657c@oss.qualcomm.com/
[3] v6: https://lore.kernel.org/all/20260721065413.2306137-1-wenst@chromium.org/
[4] v9 (latest): https://lore.kernel.org/all/20260916075745.3549953-1-wenst@chromium.org/


Chen-Yu Tsai (2):
  dt-bindings: usb: hcd: Add downstream USB ports
  dt-bindings: usb: snps,dwc3: Fix downstream port numbering

 .../devicetree/bindings/usb/snps,dwc3-common.yaml      |  4 ++--
 Documentation/devicetree/bindings/usb/usb-hcd.yaml     | 10 +++++++++-
 2 files changed, 11 insertions(+), 3 deletions(-)

-- 
2.56.0.212.g129ede20d9-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
