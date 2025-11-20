Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BDF7CFA44C
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 22:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDohwmvPJkFSOY5xTQNl67FInUD02baNlG/lczEIKck=; b=hwn52bSd4pbvSG
	SYPuky3AVMSf9wUCn5C1qhyvaxxV34BSjnrUdM6i3VSMMOW81+mV7swOH27uW6LIzaWlvELmZy9QV
	Jfe9D9PzqELmWzejDKvgYT+rB5ddaz8ErE1bIUOevNOU365ugVdPBKGRduHrE0CsxTj3+Ls2Xxj7u
	xt8DE0hhPHzTeuYBEJwB+xqUdoBOG6BBhDryWC6r8a3MwhQthg4SxggEzc05bqeqAavCsU5jHKrC7
	H7qpGsSHbcatn+G6yf2J45XrDZdFV8r3qovTRxyG5S5jXVtiyL0WsnlaUGEFs4IapG2u25gzT/ZXl
	YCyaEahiefFH4wCc52bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3j-00000007WAL-0fRI;
	Thu, 20 Nov 2025 22:23:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vMD3b-00000007W7v-1pmH
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Nov 2025 22:23:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pSYq8voCSOPUoHN44kOpHxH6SK6+rl14UdpfhP+FLGM=; b=NU2L9mTYzZGBDEP/BZvmNTWI0K
	yf6GYMmpsfy8y6WAvbIOFHfaLCMAXdwfN+E9ilHUGnxxArDYgrGCGa7lf5E8i6O3cvbDBm/0VOf+r
	tpR4yYgvh/gMujHL98RQSYxHgKRKshUhoBQylGAETFVgWrobXpxl7TFDvrY/z3Q0JAM5JNJCyXOrG
	JwH3L6qQjBB4gxtdn4pFgosQbkFSc2QENqKMx+Esmy8sjpgZnzrDD0uB07qyYweQEDUcLP1Y7YYcL
	vWXcHtVQKAmkR7WAjrevuypYoayRityXc3HwQXAlZVaounBzjEc9NKBHG5hhVfzziHKBCycHaSNfZ
	i4eBnU6Q==;
Received: from [213.192.12.196] (helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vMD3W-0007Je-UT; Thu, 20 Nov 2025 23:23:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix PCIe 3.3V regulator voltage on 9Tripod X3568 v4
Date: Thu, 20 Nov 2025 23:22:58 +0100
Message-ID: <176367711173.9778.13722457091909539079.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251114092114.62664-2-coiaprant@gmail.com>
References: <20251114092114.62664-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251120_142315_503565_2152FEEC 
X-CRM114-Status: GOOD (  10.19  )
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


On Fri, 14 Nov 2025 17:21:15 +0800, Coia Prant wrote:
> The regulator type is "regulator-fixed" since its voltage always be
> 3.3v, min and max should be 3300000 make the regulator has a voltage
> 
> The regulator is supplied by dc_12v, so add the vin-supply.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fix PCIe 3.3V regulator voltage on 9Tripod X3568 v4
      commit: c8ecda015eb4070ced887eba34cdb60737a9893b

Changes "gpio" to the correct "gpios" property.
"gpio" only works because the kernel handles this common mistake :-) .

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
