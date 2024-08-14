Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCA30C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 17:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyArRUi7rrCZeb7H9WmJ1n55YnAoZ0d7SvchcvENm50=; b=dxDfdd/OPoSWzN
	zqNnpj1D9Zgtlup5ML0EPTGEVCcbS8oJknHgjeq9tqbV4y78K1yUJ0J7lubtxlFRX/5d8SvTysiRn
	dfjrpV96ON/Da8+x0Nr+CsV3pjn01IQW9aApjP6nOgdmMDz8NMz6hH4AjOvFmwRs27A4p4FRaY0nV
	yYpYRii0HCSnSK/kx/FQ3fFez52G/77N+9TeQPB9WXYBAPwBfGIgo+Gl8F4VHOHuKzvx6o56AR7Gz
	+9WRP2LzoMZ4cNx3v22l+49VEXpPFf5xSUOBt/7Uu2hpPRVj4Bio47HUDdDAv4BcN45eyupmCN2Vs
	HZ23iDM2smbWFZWFc6Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHQ7-00000007ln3-3XPM;
	Wed, 14 Aug 2024 17:04:23 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHNj-00000007lD7-3Inc;
	Wed, 14 Aug 2024 17:01:57 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 2422F40460D1; Wed, 14 Aug 2024 17:01:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 2422F40460D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1723654880;
	bh=xvEWlAGjWOuN3MgtbMsNH5e+ZpaxGF+5lo3BiZBgJRY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gmxP+Q3gPsylM4hiOn5vA/OUpPMgr1DB8e/9tVeURTTZzC3pZx8/S8iHsjeWC06Q5
	 VvvoB5ZGO2ZOasDixLme85XPwGho/OuD50ajCbBdgiBSdSadM4+uwP6bBTSdmw+xnx
	 RBfzw1NOMf/egnKr/grpPwxn/G15cDQmGSmi7xxvE6eJZcQdi68Vq7aHqfoWvqyAa8
	 t5XK55HFnH4WltRm/Es8foKiI+pwvSsPW7O42uD9HXqVl6Ma+1fZV7K3udWIP9mWMm
	 8b2LPeO0w6ZlXJ2CHzY4N5wOAgwxzH81DhWqhGAy8WRuDfc59sFirRqbwbctbQGlv6
	 k8PsBkafYplmA==
From: Sergey Bostandzhyan <jin@mediatomb.cc>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sergey Bostandzhyan <jin@mediatomb.cc>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: improve eMMC speed on NanoPi R2S Plus
Date: Wed, 14 Aug 2024 17:00:48 +0000
Message-Id: <20240814170048.23816-4-jin@mediatomb.cc>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20240814170048.23816-1-jin@mediatomb.cc>
References: <20240814170048.23816-1-jin@mediatomb.cc>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_100155_906857_D0C0C003 
X-CRM114-Status: UNSURE (   8.63  )
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

This change has been suggested by Daniel Golle during patch review,
adding mmc-hs200-1_8v; makes sure that eMMC gets detected as HS200
which improves it's performance.

Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
index 12eabdbf8fe8..146b1da198b8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
@@ -23,6 +23,7 @@
 	cap-mmc-highspeed;
 	supports-emmc;
 	disable-wp;
+	mmc-hs200-1_8v;
 	non-removable;
 	num-slots = <1>;
 	pinctrl-names = "default";
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
