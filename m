Return-Path: <SRS0=D5mo=PM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB954C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 09:43:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9336D60F11
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Oct 2021 09:43:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9336D60F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E2v8dTB2zxAHg3nKtAVTYIt3nDBz5cCDZp99EMo04D8=; b=1x2cuiqxPiDjZI
	K7ywh+qEuKmGVtEFEXPLSRX6etFAEXkT2WtYobe+Cyq3W+lgdC+UH3BezWDpCKryTDcbZv+9RaFPt
	J1Vya+kk4P+loZiiT71PcQ3JPRu8USY4GgXtJmqj74+81i2IjS1nlirvhRTWA7uWvvgqqv9keJtvv
	nBaZWRtnHYgWN7YxwvxUMPBHXYgylb+emqmpGaWp7REQsRU0DF9fvxbq/GC1GK+DaQSOXyorDLdCN
	0amlq9XaB11u/MqCHUWkMUwYXeM/17di9KobPxyeDDxfoUiBwv/w0kKyNW3+3bzfbYWsP92vIH+TR
	SXXIO/O2Rzn0HUXS0STw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mea2P-00Dqvx-CD; Sun, 24 Oct 2021 09:43:33 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mea2M-00DqvV-UN; Sun, 24 Oct 2021 09:43:32 +0000
Received: by mail-pj1-x1043.google.com with SMTP id
 oa12-20020a17090b1bcc00b0019f715462a8so6154292pjb.3; 
 Sun, 24 Oct 2021 02:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MrbROqXyWzGGo891/8i0TiDfYYNlRGnvVXjh5R350kQ=;
 b=D+IxJfDTlaPFHKaGSkioy3KtuQXAKXoegBDkVlSbcllXOwIHRRyMIa7Zv91I43dZql
 hBWdUqkXVcEeSHZhqwr+VnbHMAPUZCCtH+X9mV6xoARE+uK7jrSWxRYJUp/69/+5owS5
 /q7mlV1/vb9e0OgQiW8CJnfTEjyLksgQR6MpmvloVH2v59MAR1Z4ddBCXhEMAg1f5U/x
 Ywn0ghtXOFckGFtYY4z083bAW6e5jBo2kfaFzxgCe0Vahyop2rw58fXv5B3dAdL2lN4k
 Lhut7Shn7L1WDXQrgJq2XYc/t2f9OmbaABEM57Zighlw6THGixL70aFORR1gIrVaXcUc
 xXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MrbROqXyWzGGo891/8i0TiDfYYNlRGnvVXjh5R350kQ=;
 b=r3G2Qgghuv9cmtIGusz16cBnsrHwm3RPahZQ51svX47E2g9gCqGbTVT5oI9w7w9+OO
 Ee+zH7TzW1CWELoMUqgyt0Y+ywn9MCVrtfB7Mile+iwOZppqqlVOIGX3sPiRLtBBc51J
 5h3u5EHFdQqMRBGP8NNF9/I5Xa6hBJaEcriaHTPGN+7FMVBJrPCKqrAVzbJUlCnYUaCA
 DMSkoFYEJfLTdYSyfGJYB5flTSq9iyQQls4/4EUma76IKougtXzVYtwaI0JkqFRN34wr
 JYsZVdw2DyRqGoBbLG3MhkWaxAS8XiwyUUmJZEJEB4IEjYGgXdBZQaWG4Qi3OyU1UsIS
 OtoQ==
X-Gm-Message-State: AOAM5330Bj3TUVuOYWeroA+u1UuZknpVJINp5QcVnxZ342jkSd5rQJQ/
 ak64KY9L5IvLgZNqviN8WRM=
X-Google-Smtp-Source: ABdhPJwFuPHuB7BVXh0QqTHXKQUbZjDsXO1xJtOvODqb+NmKn6K070jcwnL7BE4xtB1oGrrJapxgZA==
X-Received: by 2002:a17:90a:34b:: with SMTP id
 11mr12652753pjf.188.1635068609645; 
 Sun, 24 Oct 2021 02:43:29 -0700 (PDT)
Received: from lxb-server.lan ([2403:18c0:2:7e::1926:817])
 by smtp.gmail.com with ESMTPSA id p16sm17636619pfh.97.2021.10.24.02.43.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Oct 2021 02:43:29 -0700 (PDT)
From: Yunhao Tian <t123yh.xyz@gmail.com>
X-Google-Original-From: Yunhao Tian <t123yh@outlook.com>
To: Mark Brown <broonie@kernel.org>
Cc: Yunhao Tian <t123yh.xyz@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Rockchip S/PDIF Reciever Driver
Date: Sun, 24 Oct 2021 17:43:14 +0800
Message-Id: <20211024094317.1641949-1-t123yh@outlook.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211024_024331_024143_08B64B97 
X-CRM114-Status: GOOD (  12.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Yunhao Tian <t123yh.xyz@gmail.com>

Hello,

This patch series adds support for S/PDIF receiver found
on RK3308.

The code is based on Rockchip Kernel 4.4. Several ALSA
controls such as synchronization status, sample rate and
channel status bits are added. Also some basic error handling
such as parity error or BMC decode error are performed. The 
implementation took stm32-spdifrx and mchp-spdifrx as reference.

The driver is tested to be working on my custom board based
on Firefly CORE-3308Y, with a TOSLINK receiver.

This is my first time submitting a new driver to kernel, so
I'll appreciate it if I can be corrected for anything wrong.

Yunhao Tian (3):
  ASoC: rockchip: add support for spdifrx receiver
  ASoC: dt-bindings: rockchip: add spdifrx bindings
  arm64: dts: rockchip: add spdifrx support to rk3308.dtsi

 .../bindings/sound/rockchip-spdifrx.yaml      |  80 +++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      |  16 +
 sound/soc/rockchip/Kconfig                    |   8 +
 sound/soc/rockchip/Makefile                   |   2 +
 sound/soc/rockchip/rockchip_spdifrx.c         | 660 ++++++++++++++++++
 sound/soc/rockchip/rockchip_spdifrx.h         |  90 +++
 7 files changed, 863 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip-spdifrx.yaml
 create mode 100644 sound/soc/rockchip/rockchip_spdifrx.c
 create mode 100644 sound/soc/rockchip/rockchip_spdifrx.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
