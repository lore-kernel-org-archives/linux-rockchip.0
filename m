Return-Path: <SRS0=cCFl=KE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3947C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:58:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C50FD61361
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:58:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C50FD61361
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/dxh9Wf+zXiGHdhzH3QvI3pQ7Altt3mNK7ym73EzYzQ=; b=VzQHEJS5bfp5xHzX0Z5awguY8
	lou0AR585fXOzPz5QrtHdD8/Ul2+y2sfpLQFfL7bhyQRGaqEQivkrFbzHFo5WffcPk30sU3ZZUPSQ
	5C5GHaclZLoebOP5RodxMj/P1QZmYUIeGquyugQtTUfDyUtIChJpat2XdB6ba+1d2SQserckYLoIQ
	xTjk5FcqQ+KhtRFQg4h3QGUYGBnIBbcRMeuKPPD4ZSesQrkzWbfO+HKe+IGseaxgV+knjZ5jZrY0d
	etZy1M87z7+IxHhlHlPBBmbja29Tnq47qSi2rp+Mss9EY/YzgeKidmkXZ4OeXkRc7atwFe9nggvwH
	SjSYwNywg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftJI-00CYNz-Qi; Sun, 09 May 2021 23:58:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGg-00CY0y-Ic
 for linux-rockchip@desiato.infradead.org; Sun, 09 May 2021 23:55:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=d0Os4OQOsDCvXlNQshrNPUphUNCgE6BejBdtXe8peOY=; b=XnT8dP4OdZvT6vn0bPyV2TlrlM
 LQfUDDd3OzWwJGUJLc7JqA2oPRxX+fvi8kxxBl1mZcZdMx68nGYmHprQLNXGvmX1S5d4hioaasB9A
 jxXh+0yT7/I0BGxwZAIDxxd8FRZtups/yJmJVOLlvgodHb/UbjclWb37uCUKTNDhOaGWth3T3+NPW
 T6wHTsVrkUxdDsMgW4tHklcQKTbW4QIzVm7yuVA65nb1W0EtGjYh4N33HpNw5r/Gf9/m0fSoGE0vA
 xlO2vJXa4JnBMyMyZJhMUGpFeYlpaDivpzo26cVCfztq3nf1NGflrpDzCRcYaM/c42yg809u7O8Nh
 j9mOC5nA==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGe-008A2h-AL
 for linux-rockchip@lists.infradead.org; Sun, 09 May 2021 23:55:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftGU-0007y6-0a; Mon, 10 May 2021 01:55:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Ezequiel Garcia <ezequiel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
 Rob Herring <robh+dt@kernel.org>, Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Subject: Re: (subset) [PATCH v2 0/4] Rockchip thermal YAML and RK3568
Date: Mon, 10 May 2021 01:55:06 +0200
Message-Id: <162060449717.1266480.11669057370287574016.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506175514.168365-1-ezequiel@collabora.com>
References: <20210506175514.168365-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_165524_371888_2A5B09CB 
X-CRM114-Status: UNSURE (   8.80  )
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

On Thu, 6 May 2021 14:55:10 -0300, Ezequiel Garcia wrote:
> v2:
> * Convert to YAML
> * Fix rk322x.dtsi
> * Add comments as suggested by Daniel
> 
> Ezequiel Garcia (3):
>   ARM: dts: rockchip: Fix thermal sensor cells
>   dt-bindings: thermal: convert rockchip-thermal to json-schema
>   dt-bindings: rockchip-thermal: Support the RK3568 SoC compatible
> 
> [...]

Applied, thanks!

[1/4] ARM: dts: rockchip: Fix thermal sensor cells
      commit: d5c24e20daf09587cbc221d40be1ba92673e8d94

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
