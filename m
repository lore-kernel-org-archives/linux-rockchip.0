Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AEAECEF15A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 11:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6g74x8+vPLo/60UTspY/zO5GT+JKa3p1Bo/1ck3CKOI=; b=Ly5gL5UPI7cEJ8
	Nh3W/R5UwxOkVzWVXH6cXzYQizDiVrXgwsSaXNrNo9/QZWQqh9oNB3yGsXwFKKaZUFgRok5P3RbV7
	vNR/btECUJNe8Gz0htcbwCAl3ffZUvRzTrV6Hn7FmTj5aoWopO4kbvbHjVJtuojNfUSlxQm9fT3IM
	PvcsmFUjvxM6DNPnL7cuPR0cx0b3hb9QShFAXIaVJ0AtVYsDZ1wGS87bBmf/6dOVqS03Rx4mFfPds
	i0h3wKVf/g2psdNpoRsN8rNPnf55JO5jl54NIEbqaXCrk+rPI2/BT9AapuEK/H1xN8Mrv0OGG3LK6
	r3Zds4XvjMFVjpzJz13A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8gw-00000005gsw-0QfN;
	Tue, 08 Oct 2024 11:47:50 +0000
Received: from out-176.mta0.migadu.com ([91.218.175.176])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8Tl-00000005duL-0o6b
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 11:34:14 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728387248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=GkXSrwYGj+r3EHOBY6jX2YS14tMcVCHahoRNr6iDfo0=;
	b=bPSaGZiYKu74eMq8EhYrbfQP9xjsSUGTQN6HZCFzF2kuUXoi/QdL1kAL0wJype1mRfEIlB
	RxhUUfC8rjdfRa9iimy6e1LPR7tyGews3MoXQCWZEQfrIMrt14OEcNKrLnDJrjQyDxmyFl
	h8lEEZfi+DdtHw5Iq1Z9DjwHicx79tYjOjcCVIOYLWMxYVr1Wev4iVprD9YnLq9KSUTR9v
	fBVJ9dVo26XpZGQMtvEjfBrTY6doPQw0nugiZyz8MDFSvUsW9oPu5Btf4dJy+WzTH3Ll83
	cejNKK41rvXYZ89kdCQthkLb7pIi59+WsHXDKX2CNWqnJkozCXcpPp/Wiyq3FQ==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/4] rockchip: Fix several DT validation errors
Date: Tue,  8 Oct 2024 13:15:35 +0200
Message-ID: <20241008113344.23957-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_043413_382326_975649AF 
X-CRM114-Status: UNSURE (   8.65  )
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

This is a set of 4 small device-tree validation fixes.

Patch 1 adds the power-domains property to the csi dphy node on rk356x.
Patch 2 removes the 2nd interrupt from the hdmi node on rk3328.
Patch 3 replaces 'wake' with 'wakeup' on PineNote BT node.
Patch 4 replaces 'reset-gpios' with 'shutdown-gpios' on brcm BT nodes.

Changes in v2:
- Added 'Fixes' tag to all commits
- patch 3: Dropped a wakeup fix as Heiko's patch already covered that
- patch 4: Extended commit description to explain why the replacement of
  'reset' with 'shutdown' is safe

Diederik de Haas (4):
  arm64: dts: rockchip: Add PD to csi dphy node on rk356x
  arm64: dts: rockchip: Remove hdmi's 2nd interrupt on rk3328
  arm64: dts: rockchip: Fix wakeup prop names on PineNote BT node
  arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes

 arch/arm64/boot/dts/rockchip/rk3328.dtsi           | 3 +--
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 1 +
 4 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
