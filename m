Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1814AE9B376
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Mar 2026 12:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nmAARjd+3tlCTDHdbNoziJ0a/qqzcs2V1Y1ZGC0Xa3I=; b=vI3Lo1BkEnKIBz
	b3XaLac6MKl6tb8SlXbhtaLsAM6L2JUCRc7JU2IsuFK/zX4dyyaB8dqjf6EhjBYNoBpaf8CAXph+c
	UiDc8tgGP3/wXJpmLebzkM4HM476MrLd/SvhE1egnO0tsXy1kEOdOxab6ObHv1yDTMv1xmfFb7V5b
	s/fKpcOyCrk7iDLF5jJ0/IvF5ZpX3ck2OH+WZDy3kIuSLk1WMkW53g4zv198Wbw+n4XPCJWqfsj2w
	uFMIOz9HzvNfI17WZDGzTFj3gljzn6N83fbqqeMfpD6Doy/9QoKK9z7HVNsqboeileGfNdXIr1QgJ
	ni9ltu/BNkmVqLUm54Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx2ql-0000000D2yG-3fuR;
	Mon, 02 Mar 2026 12:58:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx2qj-0000000D2xd-3uyM;
	Mon, 02 Mar 2026 12:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HXsMf62eNb3NtaWUWcNrXii8Eu5f2t7yjT8fDj2jThA=; b=cojYfMiPYOHHU50Q5tBW8fOcQ2
	qTxO+Tq1tEl4yMfeHAL8UlWKwr0WvRFKCYqBgjLQghoR0r/T69S8QIrAXrNyJT6AnRRVqAmWNtLJJ
	PTZP7xXpur5U8aaOH2BNou6vHx6DeTlHAhoRCPMNuSv5ZutIZw0NyQAeCwOjHeI49+pYZd0zr+LWA
	MY3ykYSs4GZbu0nZDlKS2n4z1om8NLty99zxSUeT7GkPQiXGUUPmJ/ATo8qDCWm0Tkilw2t0LXfLZ
	RL+BBFzwX3Vs3xJBD+cw/sUXgzs3r1aZpuTxdcKNsNFRJQ2qzhC+5HyQLkFhXjy1YYVBJ4wiGL6ji
	iBLW8TYg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx2qh-000000005sw-0nqe;
	Mon, 02 Mar 2026 12:58:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HXsMf62eNb3NtaWUWcNrXii8Eu5f2t7yjT8fDj2jThA=; b=pNWb7zehfTdjDqNIR8cfTnUeOK
	4iBe9FeKmmC6TShFE3PqVQqRBzExO9gpBhLdT7RnR7pEAd/2R8VNV/MJzir5Dw03owY1TaNl2+wZx
	sv7fBiqR3Tvp2rc8LqT1OJrr1EvSn+GJYQTtFt1OFZ3MypeE0HMwdBzemO3hynT68dGorsgQLDvkE
	IfWLqd8pJzzhYY1jxtDwJ+jXq/ZKt68hvb7s9i3pewy0MQue+tUVjrDP+p+4wlT1tMrkNi9XnqnLP
	aVU49Cq6OGBrQJwuM7pmvjiZ/CnyEPqo4Zhql3mEHWaVQmWzhdb3kAKg5XZ76g7onkl5hSQLGlTKg
	fcT9E5IQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/4] Move to gated-fixed-clock for Theobroma/Cherry boards
Date: Mon,  2 Mar 2026 13:58:05 +0100
Message-ID: <177245624815.813665.2146568980747439524.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260210080303.680403-1-heiko@sntech.de>
References: <20260210080303.680403-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_125811_327031_55EB8282 
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


On Tue, 10 Feb 2026 09:02:58 +0100, Heiko Stuebner wrote:
> Both Tiger and Jaguar currently use a fixed-clock and gpio-gate-clock
> to model the PCIe clock generator they have.
> 
> Ever since I wrote the gated-fixed-clock binding + driver, I carry
> around conversion patches for those boards to use the new binding
> and describe actual hardware.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: use gated-fixed-clock for pcie-refclk on rk3588-jaguar
      commit: f5e52701725c5c5c54d6511ca633a7566d1661a8
[2/4] arm64: dts: rockchip: use gated-fixed-clock for pcie-refclk on rk3588-tiger
      commit: cfe2d65332eff95ac7308478897760888f957aeb
[3/4] arm64: dts: rockchip: add pinctrl for clk-generator GPIO on rk3588-tiger
      commit: 603921cf88952c456bff8f22e48a822a077341b8
[4/4] arm64: dts: rockchip: Make Jaguar PCIe-refclk pin use pull-up config
      commit: f45d4356feeba1c8dac3414b688f59292ddfc9f9

Reworded commit description in patch4, as suggested by Quentin.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
