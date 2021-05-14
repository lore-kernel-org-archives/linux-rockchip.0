Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28A26C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 11:37:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E866061451
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 11:37:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E866061451
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KNo1DlZWasTNw47HnfrY/Z1pVgASkVxUF34igstoWpw=; b=EBjXktWbWFMYID4Q5EXuHZgl2c
	j3Rp+gh6rIRps63bxDZwaK9MySLln0rzNN2dBGVLBOqIra0Cuz3uEhaJFcaGQ1KjNOyvEPC1cTeAe
	a9JJ1pv5edfFNOSRqCnhUlCcaLRSFV0POE6OdF6dlXLLZCaI6pIo4HR8Bqx4DQZVyAIBYD1Hh/LfO
	R206o2srmcpLOxu6PjXGBdp5HydV78btn1OvH2qLlRrwpe/52VKG0Y6CjWb8Y9+xPXDElLhO4iydz
	3VXhpgw4+1J7mO381fk2JxPSaxEQX4S4a3f9P29ORq7XaKJ+9t6/ptjZMf2tlgcIUI45I5zg3ak5k
	t84Jq4XA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhW7z-007vCL-9l; Fri, 14 May 2021 11:37:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW7n-007vAP-At; Fri, 14 May 2021 11:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=fGm26DeDwWAu8cdVutZ9oJpAUlePwPOF0PnmGP8R/sE=; b=X7rfdMiotqgXpE/3muZn9EYctT
 kAFHzULh67eiXYmE+yHrdhvUzDatChRvs2IHhY2RMy8cnNozc9KFUjMam/KCMsmFewS4zMD08EdyR
 s0SwDDc5I/7g0j6M1D2+rO0C5sjoQL7iCJFS96IEteL0iciSDusTr5jF9omtYp1Ohc+O3WFyRi9As
 AOQR+eCrHlOMheZvJD5gBy/+7oxygGo50Az+dsHNd2xNCuOJgYTfT5X3UAxM/esqXdT1n2lsuaXoF
 Lj48uGikPfmZ8Yq6mNo1RmgpE2OykM1+woIMf9tNKobHFnpa8hjTVFTSl2xi5kO7omM5SDTondeS0
 IFfbdVUg==;
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhW7k-00BwPm-Rw; Fri, 14 May 2021 11:36:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id E778422259F;
 Fri, 14 May 2021 13:36:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id huFPOxgVzXK9; Fri, 14 May 2021 13:36:52 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>
Cc: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 David Wu <david.wu@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 0/3] Add support for RK3308 gmac
Date: Fri, 14 May 2021 13:38:10 +0200
Message-Id: <20210514113813.2093534-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_043657_068652_58EDDFB8 
X-CRM114-Status: UNSURE (   7.08  )
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

The Rockchip RK3308 SoC features an internal gmac. Only the signals
required for RMII are exposed so it is limited to 10/100 Mbit/s operation.
This patchset adds support for it.
I've tested the patchset on a Rock Pi S, works fine.

Cheers,
Tobias

Tobias Schramm (3):
  dt-bindings: net: rockchip-dwmac: add rk3308 gmac compatible
  net: stmmac: dwmac-rk: add support for rk3308 gmac
  arm64: dts: rockchip: add gmac to rk3308 dts

 .../bindings/net/rockchip-dwmac.yaml          |  2 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 22 +++++++++
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 49 +++++++++++++++++++
 3 files changed, 73 insertions(+)

-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
