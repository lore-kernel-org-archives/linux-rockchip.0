Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B5F9C44503
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzIyri0zoCdywxmf/AV8IyozIfIt2MKgywhLv6lugpg=; b=s/C6u71bGCsbLq
	Pzc++vs2dANm+u3hxaB1g66LgCmN5F2eTCUUlW2Z7VRzqiKk1Re/hhYsG6Dbxejn8dAQwTjumRImL
	gy5CS5FE/SgY3UBOE09jfu/Fbi0Ra9jsWd5h3FYyqtWE/U3j3ijzW0oi8cZe31ecinpcYV2H3/CV9
	ZS3n9x7FvWncSbMHpqvauAJ9Taquh+n15sSuPvsByQU8365Yb1+lZ5sKGOmS6MwxFK27oL9w2FWw6
	ghOVOSc9ALmmqclB3VvLq7pzxgDBGSZWAy1rh+UhG4lpNhyCX8+obSdiEw0QlRby+z5BR/NQWf3aQ
	8SbAbbbJXoew2MSI8HdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMio-00000005Jbp-1UQf;
	Thu, 02 Jul 2026 19:05:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMij-00000005JQX-27yJ;
	Thu, 02 Jul 2026 19:05:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=t0NNRG9w6w6jCTySSfCRM9uqcR86GLmzg5Z0J050DYU=; b=LsfxnjEKjnc97llUKZA01GgdJd
	dFnlBw7l7/cyde3yav7xw1ZgV/I7vQ7VBnX/NxjAz/cIbvF6F3jDbB3NBeojbS22ZS6I0XPVI6Ux3
	1b65moljWbK2+G0pczunZ1v3OE0/yT/ERdYmNTd8cXcDSsVDCvQ05cZLffLCVW1ccobviW+3mGvh/
	6xoTGiP4j2YPEKwTOqHmGaJCdFIuVSZeCHd3UaSWC5mlaO0IlwuADLRUOeuXANg/3qaeom/T/3maN
	3Q0dXJCQnr+unhryQgoAqGqRw5CA5Vc3m4zDZkddVop5OYEtnom5Q3eBHmfE+1+F4JUONB9nN39Wo
	kJ9pBXYQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v11 0/3] Add eDP support for RK3576
Date: Thu,  2 Jul 2026 21:04:51 +0200
Message-ID: <178301901908.3838694.14923342654854634320.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260605022305.3058853-1-damon.ding@rock-chips.com>
References: <20260605022305.3058853-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_120509_557788_AE113E32 
X-CRM114-Status: GOOD (  10.56  )
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
Cc: detlev.casanova@collabora.com, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, alchark@gmail.com, michael.riesch@collabora.com, andy.yan@rock-chips.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 05 Jun 2026 10:23:02 +0800, Damon Ding wrote:
> Picked from:
> https://lore.kernel.org/all/20260601065100.1103873-1-damon.ding@rock-chips.com/
> 
> Patch 1-2 are to add missing clock "hclk" for RK3588 eDP nodes.
> Patch 3 is to add the RK3576 eDP node.
> 
> Damon Ding (3):
>   arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
>   arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
>   arm64: dts: rockchip: Add eDP node for RK3576
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Add missing hclk for RK3588 eDP0
      commit: 5603ce4f1d470af29e0cc76e36ea99e62fa07151
[2/3] arm64: dts: rockchip: Add missing hclk for RK3588 eDP1
      commit: 6f1ed82b7f084c13bffcaa9e2c7acf5bc64b659b
[3/3] arm64: dts: rockchip: Add eDP node for RK3576
      commit: 65bdf72f7fda3b1a24bd6f5ea15ce40ec2cc3e0a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
