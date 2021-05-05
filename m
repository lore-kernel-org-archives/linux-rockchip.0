Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 556E4C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:41:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A848B611EE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:41:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A848B611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iP/WXrPEezv+A/ztzftX3t2CaVcF0Y54lX003mntxss=; b=iG3lRCB1wbjfIeeC6EfwQ0TkNs
	JyOjHXNQmm+IQsFmDusoeBzPMGHkdZ/EyPKZOZP/zbe8HoXTepnTji/hF99KiSyL+0DDhRha9IbSi
	PyJ4iT1QdeOHyfCfq1ynvz6iQ1UVWlQj6oUkSXQXjby26F6Eu7F8QaAFQaCxRUYWWInWC+pumO6dB
	a9Ynmu4uschnCNITIbuZUSiRAwYM/BoydvMh+WcSoOAocNSBBAHpWl/zgDDeEL2CcD9R0W7lu8HHL
	LnDYUZS/NYc1Ke+7n1UrcOezROQYXHFEsroH2Ta+0KseviDsFkcsE5h+5hrBtk1+faZ8/Mxb2iPip
	pnkLgX0w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leHma-001KAN-3J; Wed, 05 May 2021 13:41:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHlo-001Jz6-GQ; Wed, 05 May 2021 13:40:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kKYG8ob0N102i49XdsyoJlNpypHz4XdicUmmY8YrBm8=; b=zenSGtuKV3YQXTOBsUdJZ7rWG8
 4oPfw2ZKKlpvv8fP6u41xAa302GUHh3fhL4CtE/NNlqFgn6qqqth7BA9wUlpmEiEoEuNuWGuRiKOb
 YBVjRAruDsTW5fVNPwNQdI9Z83d74d6E4wyF9uTIibH2pssYC3kuwOGS/zgLY2eayZd3HV8+LD1cS
 kODhDk9VlNxmPoX8z/m3m2zpBj/SoKr3FpMsI/ocMMALLGhlk2pAM2qWxOwByrxtXpUnk8a942gGG
 JRUgJ8yRwtrXVSkjySxeYt7JtmqLgRtoyGhAc7RNTTkg/YzxzEvlmEvhAnICFc113A+06WfsmdVLS
 2zZoRnZg==;
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHll-004mlb-2P; Wed, 05 May 2021 13:40:54 +0000
Received: by mail-ed1-x52f.google.com with SMTP id di13so2093167edb.2;
 Wed, 05 May 2021 06:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kKYG8ob0N102i49XdsyoJlNpypHz4XdicUmmY8YrBm8=;
 b=DHIVCAKkWeUunCskq1+3bVm1E0v7w2jTyRKFbXrYkBi+0XAwbkfLQrw7lnzuhXpu7A
 RSOUJLDo1/IS/Q+ic0Joc2DYtRIV1wr4xNdl0x0SBy1bZ995+/kxWnes0vxFJ0+/yeMq
 qDoEmwEs1LveHtvkafOP/u+pTxMDmJhD5jvfdFFp09p3EiKOI+5bOBsoS7JptF3YrTbW
 V4zlNHKXkW899vlrjWFjonXd6otvYsIELb7RcjocT/II12ZfrXmM8nzKFdIsHkdHidE8
 iq6QS4oetJufQR6UWBdGrrEknOZsitahKa2QlLeGlr8iAumpCOScRu9mqMGoPrYpgDLk
 B01Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kKYG8ob0N102i49XdsyoJlNpypHz4XdicUmmY8YrBm8=;
 b=FMawcyWKv540acOT49E2fVVcmMdNaS+5YNi0/MnQ4NScf9R7plIMPogOMmW18UPZDP
 C+1LqoFIO6Xpy2NvsPBRiXQO1iolVTdC5OnM3HGrTeoGv+2dS0OnlZiII2sme1R+U/Ah
 eTq56rBZu0Xr9caY4COzAsZzoMvAaVG+wdKjmLbKw2KM5nFQ011TvzdUr1Utrx4twGL1
 uX23TWwmguvSoDY9Mkdkco00pF0AQaHSt68KC8nf5+DoHfxl25PY8KzJ04vic2VhOM1L
 osyBv1zrtr6cqCscojSpsoDY+1JW/yHduyBUnSFpmXQzJd9/osy6VK27PLyt6LxK50TT
 A9NA==
X-Gm-Message-State: AOAM5321P6r7nUqEsvz6K+m2nrUsXGovB8OThGxtqAPtsb4syTrI7/EN
 YqTWRnnAmSp7Gcokzjl9zn4=
X-Google-Smtp-Source: ABdhPJx6LAIVhCq2oyLmgHpmAt93AxOxoW0vY9p9q6RtH0sJ5O/IMoWmwQibLVVq3x1ptjSXHXITqQ==
X-Received: by 2002:aa7:cdd8:: with SMTP id h24mr31096338edw.276.1620222043964; 
 Wed, 05 May 2021 06:40:43 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t7sm15397264eds.26.2021.05.05.06.40.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 May 2021 06:40:43 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rename grf-gpio nodename in rk3328.dtsi
Date: Wed,  5 May 2021 15:40:28 +0200
Message-Id: <20210505134028.13431-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210505134028.13431-1-jbx6244@gmail.com>
References: <20210505134028.13431-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_064053_133789_97BD76C2 
X-CRM114-Status: GOOD (  12.74  )
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
From schema:
~/.local/lib/python3.5/site-packages/dtschema/schemas/gpio/gpio-consumer.yaml

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
