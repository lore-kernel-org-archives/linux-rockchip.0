Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67851C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 351B261396
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 351B261396
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YkZwnKSYFFg65J0OUwoFYkTXZr5IL3xIuXgolawwzvM=; b=PPKMKSwwlj1WEOGGh2OdOrmO3e
	qhT0g1+OExTVn1u6RKQIK8GlklrZRba4UVj2YzcEBgPizOkjT9VOy6XfZZbeGLys1BaI5kY5X8RUI
	qm7gG6k36HN/ofYA+aTgeNtikIZ0ckD6vuuTUD3qg/YDldkK5A129XmHa1jhEUmu8WvX2rxD9iUR3
	i/a0Hm4jBSFIyKb3EXnfTVSIx52Ha4bD0QFpx68kupDktCRVYYjUf1Yv62ZxaVkWHwpGRWjNDTTpP
	hkVeEIGQNyhphyO5aP0LQYkn3WOogAxKhxK5Hkdf2P2Uksu1xhiXhDah6CteooW1HDVA/3+Bl6npS
	gNESVnjA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhV2C-007lGf-Jb; Fri, 14 May 2021 10:27:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1o-007lAn-QM; Fri, 14 May 2021 10:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=e0BGH9LBb97hD0yvmxTW9MFUjujqNjotw2p0TQ9MaCE=; b=2qfEFpthY1tYYln9o7umU0uUMN
 xZn+Buiw2UiEh5/qhbHBceFDT/hktt2cDmdnSjN/bX73LhP2jdkg/04IvH5y+dRI+BdN4zX9XWIcL
 i1Hijrrz9/C87QhVEvio08lcXwuRZNvZgT9o3HmTWc0mx8m3ZNhF7vsTeJw2BL2eHdlBvLj0guPPK
 hzAGZgU3r8WcXRrbQ07Z0tsSYo6OLAXQkZEhfkuUXlmHAcXZb0i/WkDFv8u4CPEGWgirlotbmtBv8
 izhIOWBGl9nxrzCZZOVcxWPUgUAc8Q0ZgBqt2mZXVvVUjfeTh5W81gbvWC+zFDSLU4KftnbGFg5Xi
 pznOXnLQ==;
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1l-00BtfA-RF; Fri, 14 May 2021 10:26:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 74A2122259F;
 Fri, 14 May 2021 12:26:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dn_VdLJ88t-6; Fri, 14 May 2021 12:26:36 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 0/4] Add USB support for RK3308 SoC
Date: Fri, 14 May 2021 12:27:30 +0200
Message-Id: <20210514102734.2091238-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_032642_052569_954D6B05 
X-CRM114-Status: UNSURE (   8.63  )
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

The RK3308 SoC features integrated USB controllers and PHYs. The USB
controller is compatible with the usual RK3066 USB controller, the phy is
in general compatible with the inno-usb2 phy structure but is not quite
the same as any of the phys supported yet.
This patchset adds USB support for the RK3308 SoC to both the RK3308 dtsi
and Rockchip inno-usb2 phy driver.
I've tested this patchset on a Rock Pi S, works flawlessly with HS, FS and
LS devices.

Cheers,
Tobias

Tobias Schramm (4):
  Documentation: bindings: phy: add compatible for RK3308 USB phy
  phy: phy-rockchip-inno-usb2: add support for RK3308 USB phy
  dt-bindings: usb: dwc2: add compatible for RK3308 USB controller
  arm64: dts: rockchip: add USB support to RK3308 dts

 .../bindings/phy/rockchip-usb-phy.txt         |  1 +
 .../devicetree/bindings/usb/dwc2.yaml         |  1 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi      | 75 +++++++++++++++++++
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 44 +++++++++++
 4 files changed, 121 insertions(+)

-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
