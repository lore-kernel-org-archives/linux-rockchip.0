Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34A5FCD98C7
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 08:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IRtura2/v25TY4P9+6JzVha86eZrl2jCS6tv8P1Ud10=; b=4jcaxf1hisMI+V
	DbRPRJ7c6og7CRYnNmjhwPKq50nCyqe7Rk0nX3zsowefksolq1KFXqkNK7gOM2ne1Gj/XJlj8q1Ys
	pn5z49TD3bfOHmHy4SskRVy0VpLm7CZFyLsQ3rWm7G+PJ7j57lsBBDOU9XHd7Fc/MVnRaA1GIzW9v
	JdE2QdpRZg5HH5CqV9+z7FYhKbfnKdj2ofNm5yQR+eZ8yTVfQmMjOWCAZXCYYMyR3Gw/wfRkiRRKW
	PJMxYl4Xnzq286G5A8A35Rs+rCGpJHVhNbADKy9BJjsY2uSB3mpGAVv/et3FhCLQY8k7O3A84pUyl
	+2OCATz422yJ0u8WpzIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXE4z-000000072LI-0DR5;
	Wed, 10 Jun 2026 08:14:29 +0000
Received: from out-178.mta1.migadu.com ([95.215.58.178])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXE4x-000000072Ij-0war
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 08:14:28 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781079255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=kjtDSKgAkBUwFT0hwE/2Ap75hxqeB45aM0UXggEveyI=;
	b=lZwr/DAwi5MuDj7EnY8KldX5dEhj6AHfLGfJpB9zMZP3cZMalnkQP23io4b6Y+8fbfJBTB
	+gdOawkXzTnycIYTuxU+Bxt/f/OWKmEbUASf0lB7YF3aUlg+1XhxWfjV9yBJhRUZktVHwx
	1c0bKc+wl8NDIBnyrou9mdrSOSQJzBIPK+aCioYqbNvL4XuF3nZFXap8XvAUOPxslXqNjC
	OGED8/G5ytjJOqDC/lKhJk3CZ6PC1IWjjvrVBDQKRXTyXWTKP5IEI5SawMJcrQqFSejsdf
	sh8HkRCBHCMyDtBDeQ80/Rq521X2bx8N+3vZk5fbfoM2gBLuHjiGOzrmemOb3g==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 0/2] Cleanup and fix for NanoPC-T6 Plus
Date: Wed, 10 Jun 2026 10:04:04 +0200
Message-ID: <20260610081400.758687-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_011427_407912_1CE5DF00 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Several nodes were enabled/configured when support for the NanoPC-T6 Plus was
added, but later those same nodes got enabled/configured in the dtsi file,
making those in the dts file superfluous, so remove them.

The MTT USB 2.0 Hub is connected to USB20 HOST1, so the phy-supply belongs to
u2phy3_host, not u2phy2_host as that is for USB20 HOST0.

Diederik de Haas (2):
  arm64: dts: rockchip: Drop duplicate USB nodes on NanoPC-T6 LTS
  arm64: dts: rockchip: Fix USB hub phy-supply config for NanoPC-T6 LTS

 .../dts/rockchip/rk3588-nanopc-t6-lts.dts     | 19 +------------------
 1 file changed, 1 insertion(+), 18 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
