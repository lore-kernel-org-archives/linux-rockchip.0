Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95EC4C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 11:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gVjKjC3I0RE4LsK4WsmYPqLARP8bFGOV8wDzyXvlvQc=; b=VGBU99G7RMGWdi
	8HB1dL+tVR4VJ0TtUtsGVKKIJjjwtZ9E9vJTekO44yjFIrhqwoF1Men6/47pbbRFKQ58osli+vSzN
	WFrqCuRK+H1HzEMG27OegVGqRiSHe3cafPAyQKOrdssb67lu3gyizbHcxLVeC9pGAaw2RovPQ2GmS
	7LhYBdsyKCyNCStWZo96WBNl7f2o33xGlZQ3TAyGY/AUKjqCSR9wpHMJFB846IN4b2/MWA812ZSEF
	fboPMQvOVaHOPJGFen4ZzFlO3J01pFFKnT1gnQ8L0wxI4c2BrRMpX2frL7D3FuNgWg4Ux2GNCSbcM
	Ij+zFagYsvQ98g02Ey+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sev9H-0000000ClZO-2AnV;
	Fri, 16 Aug 2024 11:29:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sev9G-0000000ClZB-0NFc
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Aug 2024 11:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dh13Yg5RYcx8fuw068Q03jh3AT3EGjbX//VB+8LRuW4=; b=Xf8lsuuWMPi/5NS46uFtbh4r3z
	n9BKvUROHAYN7hzEi2/O7HuQMKm1MvtI55wZ0bhjnQc0z6eKT4bL0FtI9X5KorYgMYTJtZrhURWSF
	ZZnB4Z0Vj6e9xuxRYISMNWzoYWClynKByPy3isC5U96Sx3lHc37x/AXj/0+WKzw250GNRJPfBjHpV
	0zT8LvFUI3qxdNTQTi//U3gyWtBqFftbpSITFsiKz3ZGc4POlOjvAjVz7FQJoQcYc81xrNnSraEWC
	tDQpmmiuKznQWd3R05I3D73meiz/UMyYZ/c7SpVOuSMvyBN3oR6VOol2BVvEI0Vz8dox+pi23e+ve
	Y+FbShEQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sev9C-00000008dXY-2Ecj
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 11:29:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dh13Yg5RYcx8fuw068Q03jh3AT3EGjbX//VB+8LRuW4=; b=TB5pwUcRTqa2lUVT4oHBHm+nzp
	ybhVfTidmgvX4xw2Jf0FPnEboszAtISiaGv4eCV1izR7bWWhFcfeyLHBXDfIN5e35AdqxKFa1hwW/
	o1yJS4reNbzoh1tlDEi0BRW/3mjANmnrqD/l7oEsbRNGCeRiLTvpcfSCXHnh96p1iw8o2F0qV72bg
	FT/0Tm/C0pfL9AaIOBpZnujax7YHSvpKSYC4/0SwjfSC8KbUN7+tO4ZRrcFiCnkbZ1RQwEP7OqBnJ
	lZqvyZCRpI8VZD/y0oGqhla9o74Gnj1iKIKF0Qfwmi7qlc/x6y7U9q3axLiHyOAMXMgPZM6hukbWE
	ptuXJzQQ==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sev96-000182-VD; Fri, 16 Aug 2024 13:29:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: defconfig: add CONFIG_LEDS_PWM_MULTICOLOR
Date: Fri, 16 Aug 2024 13:29:27 +0200
Message-ID: <1894793.tdWV9SEqCh@diego>
In-Reply-To: <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
References: <20240816023243.487-1-naoki@radxa.com>
 <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
 <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_122934_820633_6F4EAA8C 
X-CRM114-Status: GOOD (  14.38  )
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

Hi,

Am Freitag, 16. August 2024, 13:06:37 CEST schrieb FUKAUMI Naoki:
> thank you very much for your review.
> 
> but, I decided not to use "pwm-leds-multicolor" for Radxa E25.
> please ignore this patch series.

What Krzysztof meant was probably more in line of that a commit message
should not explain what the commit does, because that can be seen in the
code.

Instead the commit message should explain why that change is needed.


> really sorry.
> 
> Best regards,
> 
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 8/16/24 14:18, Krzysztof Kozlowski wrote:
> > On 16/08/2024 04:32, FUKAUMI Naoki wrote:
> >> enable "pwm-leds-multicolor" driver.
> > 
> > Why?
> > 
> > Best regards,
> > Krzysztof
> > 
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
