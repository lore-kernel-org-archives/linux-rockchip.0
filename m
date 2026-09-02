Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC419C624D0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 11:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAneg61+PYKnJ89CqXobI74iSQ/pEQ1caWeePRbc6Ds=; b=ogZtYFqaYxDpyH
	S+f7mZmX2OlqqE9TcATjuvauKjes4QTEdp/n5isIYU5lKRUo0NkE1WLyVWRpWBViEVSILL9ga4c7b
	uGx9334UzzSB7D7PGc2N98ONyOAeD52k1fxJVYu0wU0d6L24BCsa0bAsQzETPgpsXH6Un3s0IYn5Y
	XkU63bIyDPt9P6azi6vIqt/3U64hjNV4qDPiSMrXZgg/8Y3KYtfo2R+Jp2rWp+ZbIaODwqe4NEuAl
	G8rtnGiJXeCRoC9G/r4WQmuWBY7ncFfjJX05ef3VmkWBeg7n3S5Awh/HXkG2jvwELgA/63mLf7/Yz
	/mT/XiY6uJ103pWKtghQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1isI-0000000ESjc-2pVE;
	Wed, 02 Sep 2026 11:11:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1isG-0000000ESiR-2hFa
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 11:11:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AyaK26Ptgx390jYMKP5UA2BOwNGHG3d3gScBpsx41+k=; b=FfWx4cItWs2s5UF6Tb7NER2JXE
	4G+cDPXLCh3zJxlwkKb1jrImRx4bf/JL0EtnVQf4VTI0b9l4AoIYVD6VBsww1PSQt5y118udmBv1f
	Az5ryLSO38wnBLtHqDf7x7EQrnXMbsPZx1Eid4qZd3+Y2OXat0ndSjXhw6K0PWWnhC5XSmgJxKR3k
	gnQ6ie6kDaRlGI5i/Ah8nKGa/I+kj0ZcYSJijpC+K0HowVVeYLxntEnC63BDv8IOq+N1wi8TWdKTl
	nsrZwIQckf74kmAMnHZEo+V0Avu6/S8UlfX8b/5upeYji/8peAK0mw0n6SXQ1DHjIPNkirZmW336+
	gRvRFQvw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Correct Device Orientation
Date: Wed,  2 Sep 2026 13:11:16 +0200
Message-ID: <178834747215.2268650.152877514658857375.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260828205331.78185-1-macroalpha82@gmail.com>
References: <20260828205331.78185-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_041124_740004_E4174228 
X-CRM114-Status: GOOD (  11.09  )
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


On Fri, 28 Aug 2026 15:53:31 -0500, Chris Morgan wrote:
> The display, touchscreen, and IMU are currently not oriented
> consistently. The touchscreen is 90 degrees offset and the IMU is using
> the default mount matrix which is 180 degrees offset.
> 
> Fix the touchscreen alignment and add a mount matrix for the IMU. When
> the device is held vertically relative to the display hardware, the
> touchscreen 0,0 position is in the top left corner of the display
> (next to the home button), and the IMU reads the correct orientation.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Correct Device Orientation
      commit: 0d170ee38e7a943248082cdb4b3e40b45a96e2f6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
