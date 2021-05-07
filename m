Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1F2C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:59:29 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B03561401
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 20:59:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B03561401
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MuBcvNSOi7MOdZKlhXDQwH9Vjc7ctBhE4Y7Dky0Gcys=; b=Tk1igJkYa3+1dpFdaXAoP7G+f
	xsDNb8yIgvagiZOKxvwivoaYZeuuWmE6LKcgodTCBPYVyHPtNzDv3q/P4yJdOaGaNwhYVoQqOx0Ne
	YNwOGx2wOLYEZJE8gB4A0w4Ehcwh6pSZgKwe5LkRadu6otscz83ZEMPJx+vhBguZeVSPWwSPfTtbY
	lvFx6nunPQiibyNaWFmlENrFFV9H/pXj0fNnsivDqNbxKiJrb6CKleHwnBI+geKOFSRcRA+GFkzzx
	4BZINL+rt79hbyH/XTxFPJ5/9mtvs75Ca4K+jwyQ4Tt6TXK124u6H17nciSVxbiMPkUW8pLaqvpK6
	Mi9xSBImA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf7ZE-0083Om-OB; Fri, 07 May 2021 20:59:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7ZC-0083OI-20; Fri, 07 May 2021 20:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=gC5+hQaA7O7Kml97HKslI5Th6xW9ngo98FNpZ9LNHuc=; b=iU9sUL5I02/2dXLzfzegEfJivc
 UGr8/LPEjDTC0PEhowmxkcE2hKs7dCm6oEK/BtnYZuStmkpCJOChlcPWXzKkNBPG4fk8cPbNPGdU9
 ByhZZMdBAJccj4i8YYaTcmxzz9P7QyRwUlGAFeEbU4HF3lIDK/Hw++mG1O8W/AxwqDqfQRnhGOiiN
 ZioaGiLUf7XvQEGWhKBe/hRWUSTsmKsvpgG1Ho45WirO3oWWoQobeh/BJrzG9DvoeTezliryFAfEP
 81hJIreECitqr2EGDSiofqXLH5RDYy2z73PRQwqdNqvjKbaNbYIeSQ5wACotU1FFvAqFbpitTP1Z9
 MunY8WOg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7Z9-007BL3-L1; Fri, 07 May 2021 20:59:20 +0000
Received: from p5b127e83.dip0.t-ipconnect.de ([91.18.126.131]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lf7Z1-000525-5N; Fri, 07 May 2021 22:59:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 jay.xu@rock-chips.com, shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com, cl@rock-chips.com,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to
 YAML
Date: Fri, 07 May 2021 22:59:09 +0200
Message-ID: <4104568.ejJDZkT8p0@phil>
In-Reply-To: <20210505134028.13431-2-jbx6244@gmail.com>
References: <20210505134028.13431-1-jbx6244@gmail.com>
 <20210505134028.13431-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_135919_738497_3310F922 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
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

Hi Bartosz,

Am Mittwoch, 5. Mai 2021, 15:40:25 CEST schrieb Johan Jonker:
> Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
> In order to automate this process rk3328-grf-gpio.txt has to be
> converted to YAML.
> 
> Rename 'grf-gpio' nodename to 'gpio'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

just to not step on any toes, do you plan to apply this patch1 later on?
Patches 2-4 are in my domain so I'll get them after -rc1, but in theory
the gpio binding should go through the gpio tree.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
