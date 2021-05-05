Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 195E4C43462
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:40:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74949613ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:40:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 74949613ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9e6ISd+a9g5seEaT1in8rYb73bBxQ8XT5zRABUQGPH0=; b=RQnPfWAOpa1jZXfMLg659hsDPI
	BOy2efOFk1vCAZeKY4gU4dNTX7neLR2SCyRW42rT6orsb2T1ZFAXXrkvWh6R/5Bvu31DQV3CF23Tw
	blGk1tURoevNrd6cM8Nb2bQlDtYNUyMXQt+kChssXieLlfI6IIZOnyu/VZllR3OCXjlB73qxalCbk
	aRnutEeyl9W1U5sU3wXlu4+m4h02smD5ybywLPK3xle4EqLsrB+nGEWY7Y9t0PWv7znqwu4fGOujh
	Hn9bX1CO6pcWSGSGkUoiUuS7V6334yes/Af/Km1aMKBBMcPHWzjtiqUiKLSok3U6hyFKj+Ks8sewn
	918qL/Ew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leHlb-001JxJ-Aj; Wed, 05 May 2021 13:40:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHlY-001Jx1-Uy; Wed, 05 May 2021 13:40:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=8DE9fNr9EuacMp+VfxXdaYtUegetqhQ1PCtV40q/ryA=; b=NznvhSzR0logP7N4gxTU+fvP16
 byr4IQIJGd8Jdo96llSAMwvnwktzz0R3GMtFg9OsCBrfAxhORJ8YJwsyvhaE9wFCUzhUndo3x1j86
 L+fLo6jSYo8h/EagJkf26iPCte/HhtjrOyJEaHhl5xLO7heu/tP+BLe1WtdggarmdRKlBASk8PJqz
 jgJX9Nr+vlxn+ITgtZ2GkjmuvtBjfzU1/l0qWhO+/zigQEWAh+hqljs5Fkrrt3tubZMS79rGXbmbL
 38VCsTFL5zft+dul/wwTFfcW2kgQXA66nWspRCMF1wzXb1cO5mcVI1omIK9XjLDkUsvio0ewLCJwr
 53GEap/g==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHlW-004mk6-8O; Wed, 05 May 2021 13:40:39 +0000
Received: by mail-ej1-x62c.google.com with SMTP id m12so2952836eja.2;
 Wed, 05 May 2021 06:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8DE9fNr9EuacMp+VfxXdaYtUegetqhQ1PCtV40q/ryA=;
 b=oa0M/vbKpWcQQuzRtJS243ok+9cbAB8dUGDZbI73dZZ4gJzRX8bUuO8fw4DnLgS/jM
 srsju6tx8pR6VXpNVF98+5RcrVB+3rmToGSQ75Yb0SqEguGf3GMBQub1rJmc5E5pJZgA
 898a3k1S1GpxqkJiAFK738ctwc45f4G5ldzyy4ckQbONGv9faGlpSqmBhmeVDFULNte7
 7C1g/wUqUIiOzfYVExgnZM5kbhwILN8gpR9jDnWsbyx3PGfZfe21YlHgl9/bGuJih/tD
 E2pjmcO+7l231DP1aoInrJmkTCbFo7d/lCa2ntyOY8sAGFqE5Pq0WKGrYvbD3Li2GeJ8
 NhxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8DE9fNr9EuacMp+VfxXdaYtUegetqhQ1PCtV40q/ryA=;
 b=ZoeNVToxvqj9PimkD5qL3u7QnnX7olupbZFJf+pYqIP+ObAeewswEo3S7Yb2Kq1fma
 MvYPLEsaFCacukRKwXTA4a9pMjEZCKOGydQ5KNnXvGGYTxxOSbTaeToOZi0BEhOHGnmb
 kDcRYl8NC83KCWfQEf6AxmI/jvKMKAe4T4wyf7QTNDJyKm6CnucfnAMr8jDfsBfgu9Lw
 wQyEIIpt13FnWECqMWH79lZa3NoKjb923Ce37UTtq0XuTbWPcEPhUIztD65f4sg23hel
 SZhuHyJg9JOHb//lQ/ohr11QJ2rIRDiHK2tIsNQ0zg9zinHuDroeanGbPCCf2UzbJjpY
 LK6w==
X-Gm-Message-State: AOAM533bGO7rKTIZvgnR4aTlY4LBfVvBFnNqwaOhRZAEiizmMPRDn68i
 WTI+f5DLmQuokEfRCP9T6rU=
X-Google-Smtp-Source: ABdhPJyWi/HIdyv4/qKEbV/r1BvCiys4IUqt6dqmOCQV5S/EJEKw1Fn1i/4ga8P8ag18sDXG3OiLpQ==
X-Received: by 2002:a17:906:4486:: with SMTP id
 y6mr27141527ejo.466.1620222036731; 
 Wed, 05 May 2021 06:40:36 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id t7sm15397264eds.26.2021.05.05.06.40.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 May 2021 06:40:36 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] convert grf.txt to YAML
Date: Wed,  5 May 2021 15:40:24 +0200
Message-Id: <20210505134028.13431-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_064038_320487_F552A622 
X-CRM114-Status: GOOD (  10.39  )
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

Changed V2:
  add rockchip,rk3328-grf-gpio.yaml
  rename grf-gpio nodename

Johan Jonker (4):
  dt-bindings: gpio: convert rk3328-grf-gpio.txt to YAML
  dt-bindings: soc: rockchip: convert grf.txt to YAML
  ARM: dts: rockchip: add grf register compatible for rk3066/rk3188
  arm64: dts: rename grf-gpio nodename in rk3328.dtsi

 .../bindings/gpio/rockchip,rk3328-grf-gpio.txt     |  32 ---
 .../bindings/gpio/rockchip,rk3328-grf-gpio.yaml    |  51 ++++
 .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 280 +++++++++++++++++++++
 arch/arm/boot/dts/rk3xxx.dtsi                      |   2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   2 +-
 6 files changed, 333 insertions(+), 95 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/rockchip,rk3328-grf-gpio.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
