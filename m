Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71F97C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 09:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+rG4QpFKfL92fZk3dr6AolD2L4M1/FD+TtTgyPsAmw=; b=0EA51GN5NwX6Fj
	B1zdHcrehrQgkLwBVtZwHIvea5Sc2RSJFHz033sBxep4UgHWY48r8aBf3RvTz6xGi/YMtuKTajEEg
	Bs4Nxm+6vUQCutlj7QJdxIfKVA2Y8u4JoLRg+SaQUgCNaVvcDckUtTAm1VIkmjjibb9IxpwQg2973
	unh3kN8+tC7gmterkxhtQIAribFsttFw/0pLboLaPK0DNMkmK+TQ1rz7iLxAi6FPlgHakDc3rRyZj
	fdxhZnyFFHW0o/jKWb/Kuc8ZaQJ0aTCJNeue30l44hKxJhfW8c4nDrakD40VT5TGnQDamlRJiEWNG
	n2m/KxP1aneK8HRS0QHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbIZY-00DzoR-Cx; Mon, 04 Apr 2022 09:00:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbIZJ-00Dzcf-N3; Mon, 04 Apr 2022 09:00:16 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nbIZB-0008Ew-2i; Mon, 04 Apr 2022 11:00:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Anand Moon <linux.amoon@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Vivek Unune <npcomplete13@gmail.com>,
 Alexis Ballier <aballier@gentoo.org>, Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 1/2] ARM: dts: rk3188: correct interrupt flags
Date: Mon,  4 Apr 2022 10:59:58 +0200
Message-Id: <164906273049.1398682.13221310139844668938.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20200917185211.5483-1-krzk@kernel.org>
References: <20200917185211.5483-1-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_020013_828486_C64B90F0 
X-CRM114-Status: GOOD (  11.12  )
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

On Thu, 17 Sep 2020 20:52:10 +0200, Krzysztof Kozlowski wrote:
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> 
> Correct the interrupt flags without affecting the code:
>   ACTIVE_HIGH => IRQ_TYPE_NONE

Applied, thanks!

[1/2] ARM: dts: rk3188: correct interrupt flags
      commit: 7e5a7e39d767b60d8631792bd3d7820a6f4a43f8
[2/2] arm64: dts: rk3399: correct interrupt flags
      commit: 57f3b0bf5c346f73a848c3d74270b21ed110e530

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
