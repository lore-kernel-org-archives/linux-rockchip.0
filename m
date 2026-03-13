Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBB6F107BCE2
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 20:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4sda3f76C6+AcbiysHlZ0NJvn3B542iQox0Umn1Oq0=; b=bC7KUjmbDNRvut
	hEQKNq8lB0jgpXNpLHdwPAnovvjq54Ny6Rp1F/h8TbJINBE2/7MIb64sEwIK9W+KDvOUuf7r0ydoE
	ErZHvpwnX4s+Ygl5F1MUz4eV9uSAiPVals4md5JdBvIuDbQYC3hMnXSPYwRjxLJ9H+pA7IBudUSr8
	c2h9rTgFxerWOC1Au06qoHXI66/jCGS4i+lvj8GO8z1imi3ZVAgiWtM//6rMFl866I0B3Bd4bR1/Y
	vhm8xNjBOKKFUQpJGTVXY6Xr5nHcsdPKp+5PGKhQzKeHZyYSiSI/6fERKW0QtIVWFbh/4+sGC5jaI
	kbHN3WLY2ps77ep2NFSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w19O4-00000001BV6-1Vst;
	Fri, 13 Mar 2026 20:45:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w19O1-00000001BUA-1NrJ;
	Fri, 13 Mar 2026 20:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1zK/mBzPerZDG0DoNt9fcpBSJy47YwKe8HlQ+1FxntQ=; b=p/y9TmOJc28LeVce7hrNjR5G9K
	s4oXquqPVzjwwyuL/AeAddXkhy/Hnp5BcJUthbWgo5ybIXmm346CyFiWtDg0AposWIYCyc1ODdq9D
	bQEIbVfIcWPVP4TQ4lTvhgR28XIQK6btcrXgVgXAqhP3LjcIUXCMTgOVP1ZC0hPMJ/hD6QJsbJL1O
	pGyAHkkoErtnaoj3hAcHytppMVOZsndEhXVOrMH+xWS+vWGLobxWDXaq5diBLAAWTNtq9juG02ZCT
	N5aM/8MZVakKVZQiARzQZJv8A7wQSggxi+6C5Z+RheGYiC5tSESH3Zo3gNRfwLlSdSk6DOz+vgsqU
	xzYbmgkQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Gerald Loacker <gerald.loacker@wolfvision.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io expander
Date: Fri, 13 Mar 2026 21:45:14 +0100
Message-ID: <177343454660.206632.6377463081579115678.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
References: <20260313-wv-io-expander-vicap-v1-1-11001fb3b744@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_134533_388053_2A1457E7 
X-CRM114-Status: GOOD (  12.08  )
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


On Fri, 13 Mar 2026 16:53:29 +0100, Michael Riesch wrote:
> The Digital Video Port (DVP, the 16-bit variant) of the RK3568 VICAP
> is broken out to the PF5 mainboard expansion header.
> Enable it in the device tree overlay for the WolfVision PF5 IO
> Expander board.
> 
> 

Applied, thanks!

After talking with Michael and both of us getting grey hair from
the whole mailmap thing, we agreed that I'll just adapt the author
myself.

I've applied the patch now as it's just a leaf-overlay of a single
leaf-board, so no real harm can happen here and I don't want to
have to remember all the address details in a day or two ;-) .

The git log will of course again show the @collabora.com, because
the mailmap translates the author-address again.


[1/1] arm64: dts: rockchip: enable vicap dvp on wolfvision pf5 io expander
      commit: d7787a77cf8b129304f590233032556dec10dfc6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
