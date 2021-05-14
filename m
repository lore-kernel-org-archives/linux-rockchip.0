Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2536C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:30:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B1C96008E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:30:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B1C96008E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rYj8WMda2gQyGdsXXqqn9MqmwxUY7LRD3f0JMYMuQsQ=; b=Vlgf2YP6zPzrJG4M5N4J5Xu3s
	iZ29xX0xEC+1x410VV+i9NiEbUEBWrN0UF5VSALNb0CTTN9kuXsyg284zg7kAkU8VURNOBIUHlvbh
	ibBx/+Vb4kQHaw7Me28FoU46Te/QLVQCUuArV5aU8Dxgp2XoqCPHe9YSBYx6fpGlCh0xrRJ16BDuY
	8mp3GRZud2hxd+L2mlmY7SoyDZL/VzF9AgKrcuQgQyeNt5R9/rET/Dwcv21xMnL5jyITp4Ws79zWh
	bS4+kIr8JDrHm0X98pkVgvsG2TPyWRXDJAQuY+FNKjVpgoBbRv8sOcjs4kSjcHVJHyW1G0tQYG/xv
	GHACcgbrA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWxL-0082JY-7p; Fri, 14 May 2021 12:30:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWwu-0082Fm-Nf; Fri, 14 May 2021 12:29:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=o1l3uO0HHvdC7En2ZWAVXesAl03mm4ry50YtOCWFY4g=; b=fHTZUyCxVZRHFkB5BxHuYPjy41
 fJ38gilQkAHJLXVoRg7RrsmAu6uW5cxEEAuRdKLnfmQAJ4K1aL9mSQnx8Hja5ekHKXQMZPTmoPykl
 LdmeBaCJ/A1OFeks1W7wlrvfAb7yxvOs9yG4NEXaA0poeDyYYHrf6COcK3/xmkzppAx3k3iVBYjUi
 fuRnDgxevGvKRszB5n+/d38scZdQoQJxaT3MpaqRY9BQ4CG2rPCIzWpbAbbD7FoXja4i5CDlnnpFm
 I2KIOup8lHd60X4fFszy8UlSv9wCz8uzXfXecD40cPPkLiDzrYfy1Quh1DXKCAc80Ri9ZIKP+3Z/b
 ZSWPiHLQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWws-00ByN5-Ce; Fri, 14 May 2021 12:29:47 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhWwp-0002eq-Af; Fri, 14 May 2021 14:29:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: rockchip: rename vcc_stdby node name for
 rk3066a-rayeager.dts
Date: Fri, 14 May 2021 14:29:41 +0200
Message-Id: <162099533686.1969114.5207322514424394298.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510192054.8876-1-jbx6244@gmail.com>
References: <20210510192054.8876-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_052946_444809_C5D0EB78 
X-CRM114-Status: GOOD (  11.24  )
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

On Mon, 10 May 2021 21:20:54 +0200, Johan Jonker wrote:
> A test with the command below gives this error:
> 
> /arch/arm/boot/dts/rk3066a-rayeager.dt.yaml:
> /: '5v-stdby-regulator' does not match any of the regexes:
> '.*-names$',
> '.*-supply$',
> '^#.*-cells$',
> '^#[a-zA-Z0-9,+\\-._]{0,63}$',
> '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}$',
> '^[a-zA-Z][a-zA-Z0-9,+\\-._]{0,63}@[0-9a-fA-F]+(,[0-9a-fA-F]+)*$',
> '^__.*__$',
> 'pinctrl-[0-9]+'
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: rename vcc_stdby node name for rk3066a-rayeager.dts
      commit: 87cf20ccecb3e3c00605980ef0dba61398499bf6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
