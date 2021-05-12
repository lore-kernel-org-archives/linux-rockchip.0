Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF57C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:25:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A3995613EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:25:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A3995613EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YKeO3VQAEtiBV7d60rygzkS4XVF6FrV9qUJi2W7MmHw=; b=juP/xdeq4EM+GU4ZbuiQ/6n255
	FN9Vrf4mgwG4XxLpZhjln56mhxZCpX9GV40S1OoYwLSEFtOS1rnSpZrPJoF3HysAtqsQaXofa73vi
	uGot6dClk3+W8L0MCaMZNN3mEV3/+rl71wsO1pRRootXjRi3v/I7nUE4L0ne5etgp5lbI7UCdXBsu
	jXF4sPLMuJ6MGeICWaN00u7ltGqdm7Jnsb4XoWzZNQdFQFNSMx3LxU2wvDl8lyrV6isYrsgr80hAz
	33oy92ncipiLl/g5PCJgRd7HvTzIbrkPHx7HaNHig548RSiNSs7XUotH4iQhwHLxADLI0rkM2P6Ma
	jjUvNKFQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgnvB-002ihR-62; Wed, 12 May 2021 12:25:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuI-002iTx-BD; Wed, 12 May 2021 12:24:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=60Lo7xpvw9UYiOl5jHY1jyhH6Kp5rVQT5uk6x+ikYXU=; b=mB7VgLq4EI9xRfYdxxprdYpEpu
 nIuOU4ZMMtVj3EIGKGrkJPgN9ZZrD1u5ZG++SNdziQMmxRBf2ImRelohnQwdkO4uE5m60tEjVYb2g
 PNKmO5boQFmrFlk1E/7bdCPfuIvIpeqnQOvmGB7KIYdBKJaOIR0B9uleL0nIx41PSMh7Z+aeJdzlg
 J6VlT0XTA5N0INW4nt63/hwq/EAGECuPitP1gT0GjNPynn8NMUQYCmG1q/2SzL1iL0NZD4+5IY4QU
 4R6pUu7N7FKbOxfOuD+fIss3nBDILEQNBAUPNvhG7dMdvp95yXVjcPW5uYOSJdHGGZ8ZD4tVJkkr2
 s5jIcc6g==;
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuF-00ALAA-Uc; Wed, 12 May 2021 12:24:05 +0000
Received: by mail-ed1-x52e.google.com with SMTP id v5so15745921edc.8;
 Wed, 12 May 2021 05:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=60Lo7xpvw9UYiOl5jHY1jyhH6Kp5rVQT5uk6x+ikYXU=;
 b=Mdu97e9gLT6Umjsqj2dU5GbMkiV4N2BUxQssVztxu3bLjVCVW/KCJZwfUFGFbEy0GR
 Cmn66TRYf5go3QSIVoXmoUIHqSn+x1P9wi4AQJ07gU6T7eShIHwQhC8x6nEJXyQ9Mq7g
 NIsvZvcq0YANcaeWtQ4iDr6h44SvQAsvrNFQT6oeb2F2Anld/75IBhQ3Aoh+4lVPyfgp
 A8P1h7xNKV55KzZ0gzPuAOJNTZaDXyV+ASDjCkGfDyWFFEjn6kzyiU5m7zuzgeA3UilP
 SvaYdEhBwUX/JeLuwFH7aOFqoaeePMJK/rP9CzU4zOF+wMG4qNUM5OOLpoxiwIlR3DgA
 kxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=60Lo7xpvw9UYiOl5jHY1jyhH6Kp5rVQT5uk6x+ikYXU=;
 b=eupPUV3ZRJ2pxD6x7c2evLLda3gRDGuOB/Rq5HjsAXjNapy6ATdDcH9DHNHVTu5ovX
 U/w7haiP7IqSqUzqjPE20cagF1pYC7NLfBveZR9Syx3z5QuXfPvx0hla9IVyfBXUzz6z
 IpE9QIWF6Kp+JmponN0BZz1FDh0C3qPJnFZg3+uZvr4bVXUtU/KayNvIqnbZ9dhEsR7W
 UhbZFEvhMKpKdIXwo8Q6MzslzewZwhSXWsE7C41gUkgPDPZwjsm96Z9OTprTvQoCQH+m
 lY2zThSrYKcTLOf8PfWdo6s3zMzXDlEADDnuseOLUnaiUKiQuaoXsrq2ZaBV4StXgcEF
 7IQw==
X-Gm-Message-State: AOAM5339+NfwCwvFUXYKM+vqBtV77KDSmoa0EQE3N2UMDnENn7dpWGvY
 2k3zZ5GtXbfOEGvdMhJ4cQk=
X-Google-Smtp-Source: ABdhPJzZj9PTMYL7qQm7sjxLMG094zoBSEv3LHs6xPHRPrYhpk7gcbrMtrpNHbJJoWmtqanqW2R5PA==
X-Received: by 2002:a05:6402:2714:: with SMTP id
 y20mr42631731edd.348.1620822242212; 
 Wed, 12 May 2021 05:24:02 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g17sm21459665edv.47.2021.05.12.05.24.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 May 2021 05:24:01 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, kishon@ti.com,
 vkoul@kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4] arm64: dts: rename grf-gpio nodename in rk3328.dtsi
Date: Wed, 12 May 2021 14:23:46 +0200
Message-Id: <20210512122346.9463-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210512122346.9463-1-jbx6244@gmail.com>
References: <20210512122346.9463-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_052404_004140_651E5DCD 
X-CRM114-Status: GOOD (  12.28  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:

/arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: syscon@ff100000:
grf-gpio: {'compatible': ['rockchip,rk3328-grf-gpio'],
'gpio-controller': True, '#gpio-cells': [[2]], 'phandle': [[68]]} is not
of type 'array'

Due to the regex "(?<!,nr)-gpios?$" anything that ends on
'-gpio', '-gpios' gives a match.

Rename 'grf-gpio' nodename to generic 'gpio'

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
schemas/gpio/gpio-consumer.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 4ce49aae7..2e458fb87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -291,7 +291,7 @@
 			status = "disabled";
 		};
 
-		grf_gpio: grf-gpio {
+		grf_gpio: gpio {
 			compatible = "rockchip,rk3328-grf-gpio";
 			gpio-controller;
 			#gpio-cells = <2>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
