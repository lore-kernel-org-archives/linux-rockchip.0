Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506DAC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9ACC5613E9
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:24:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9ACC5613E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FreJsdcAI9xmRz3/mqjAkua01qmWwFyyWJ6sdXkIxn0=; b=BEwcdZzxc1kkW1tTE6SSMwYo5D
	sGA2TiiVN1TtIVMgouwR3oc8LgXg+jMAhoYKy12mknAPTqe1XyEBtfu5wdjfubfNVdXENR+geKfLW
	EFsfmsTIhof8daS7LpdVVyFONohRrq1fQEAsbL5ss/cU+V8uhU40OW2aEOTGw2wYXtfPCtGD1HzL2
	luV0kofyiHX7ma7iBCrK7zVEmk5Poo6PyqRY5s50qxfAlcWs9RtZZ+Wp51DNIxe5uPeuDjtnbAuZR
	J94+suXFIOxs/rP24FpEqe8xWHKHy+T1fx+h+YGookVAiNS9KPAgKGZKzcl93BMVqyPpHTLPhGHbu
	D/O0DE8A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgnuH-002iUA-Uk; Wed, 12 May 2021 12:24:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuF-002iTE-At; Wed, 12 May 2021 12:24:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=5kmeS+nP3CmJVZdwXbNkWQh2vxe2fkR1l6Dh3bLEmEY=; b=kfgnPGsd1PsqrWcUHPeiXxVZIp
 /YouWotSQtem4HENiSx/MI7eIiaSLiGpnnvEeXSY+w3v/MmRdwUwxqrG8HaaqM8h8Q3ZpvYOpWuOq
 JEN7SItLiOJzdIWX3TCSf3Xp14XW/ms5RxKFuOAlq5auO+sFqSWl1A1E6fv7B3rxacX8CDuRbrMHj
 ex487CpdTNlgTlXTBESI03XDLVuxx+V6cbHm8TxP/8QPczUvhZVnBh5ZcI4FyY1JifX3MyuYo4zhl
 NbmLNDDpxJzBfNq0wOim2xQ5ofKliyKhASQimgz+pg0i1NEudS7wpNk8ilhKR2K7Y9nKsWzIzEjtg
 0KLh7LJw==;
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgnuC-00AL8K-LD; Wed, 12 May 2021 12:24:01 +0000
Received: by mail-ej1-x633.google.com with SMTP id t4so34754567ejo.0;
 Wed, 12 May 2021 05:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5kmeS+nP3CmJVZdwXbNkWQh2vxe2fkR1l6Dh3bLEmEY=;
 b=FZVLUW/3zsBvC4EOC6o1FXqQYISK/B9fzR1kaPEZah0OJXzpYeCefe4Wb10MDWc07W
 HW6675sciZd2zrssX0+dj8nhG7IKvWbCqIXBL7clAxfqEWI/dQi3jBsWbmS6d+6Dg/mv
 o9xETW0IOyALa3aALt1lm/k5zZE0yC2t1rO7fzC9cH1ryT8CD0m02IPs4LdmF8rsMzYD
 L/gOia/JLjjYnAWCqgwUPJoZkTk9DdjvaenhVlK+27KgahmDwzzJI9IoYH0+YGK/v1d9
 yibNHP2B8hTTffdvxQYkfhuWLbAOEdirrzvj5UJnYPods4ZAbAaUnYOpuYHFzfqQZutn
 XLyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5kmeS+nP3CmJVZdwXbNkWQh2vxe2fkR1l6Dh3bLEmEY=;
 b=OrOlN1QmSujPocJM33Sho45iYqb9/LRZtUtS7Bst9D5tKuxqhTfvTZLQy1p+BaT9C9
 X0CFiqkrwv3LLuBgQwnHusRS+/tVvA+ShZMBg9dma5wRa7tdOiH//YE3zzafA+OY/E8m
 djx9WKUsHyOQq2ZZ8M0In2IQYAqbuqNRsIm0oxCpmE2lc69wkMccjbLIIm7bRTM+7zLX
 PNXcXMHsEs3u0Sp7UxE5bVHYjfV6fBJ4u5qj9I//15+cMUGwhashky92KsLf9z1GfrL3
 8oDv2ty+50CJ4S2ROL1iOELbXGtTuI0EPjZMyDAdHrw3hYzeS+7vlhzuZAtYgyfkPjm+
 6kxw==
X-Gm-Message-State: AOAM533Db8sI/YC1hfGEz/upXXhZ5QCQspoSbHd0yOOkouKO6l9u+ujR
 CbyguZFaWid3ZLetpKR+oJo=
X-Google-Smtp-Source: ABdhPJyL/A02iHlXMGs1GvLo/Vpabb4JGISfTlYROGOastlv45I5mrXPrIN6cyfn2/RUWSji16c75A==
X-Received: by 2002:a17:906:22cf:: with SMTP id
 q15mr38101309eja.474.1620822234011; 
 Wed, 12 May 2021 05:23:54 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g17sm21459665edv.47.2021.05.12.05.23.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 May 2021 05:23:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, kishon@ti.com,
 vkoul@kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4] convert grf.txt to YAML
Date: Wed, 12 May 2021 14:23:42 +0200
Message-Id: <20210512122346.9463-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_052400_711961_75120F93 
X-CRM114-Status: GOOD (  10.11  )
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

Changed V5:
  changed compatibles for rk3066/rk3188
  add rockchip-usb-phy.yaml
  move and restyle grf nodes rk3066/rk3188
  remove applied patches

Changed V4:
  revert separate schemas for each 'if' subset
  add additionalProperties
  move properties to top level

Changed V3:
  remove select
  change unevaluatedProperties
  add separate schemas for each 'if' subset

Changed V2:
  add rockchip,rk3328-grf-gpio.yaml
  rename grf-gpio nodename

Johan Jonker (4):
  dt-bindings: phy: convert rockchip-usb-phy.txt to YAML
  dt-bindings: soc: rockchip: convert grf.txt to YAML
  ARM: dts: rockchip: move and restyle grf nodes rk3066/rk3188
  arm64: dts: rename grf-gpio nodename in rk3328.dtsi

 .../devicetree/bindings/phy/rockchip-usb-phy.txt   |  52 -----
 .../devicetree/bindings/phy/rockchip-usb-phy.yaml  |  86 +++++++
 .../devicetree/bindings/soc/rockchip/grf.txt       |  61 -----
 .../devicetree/bindings/soc/rockchip/grf.yaml      | 260 +++++++++++++++++++++
 arch/arm/boot/dts/rk3066a.dtsi                     |  53 +++--
 arch/arm/boot/dts/rk3188.dtsi                      |  53 +++--
 arch/arm/boot/dts/rk3xxx.dtsi                      |   2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |   2 +-
 8 files changed, 406 insertions(+), 163 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-usb-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.txt
 create mode 100644 Documentation/devicetree/bindings/soc/rockchip/grf.yaml

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
