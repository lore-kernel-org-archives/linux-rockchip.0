Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E35EC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 23:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOo4WZgCJzS83o/H0Tv67WZ0DhZaDybcju5x7MNPJWs=; b=G8MxW25/8KbMce
	Yyt1D+G7YMBldM0bSttIuueQdp8jJzaBI2gogh4UNrV5Kz5Hv6MyJL9/YtI8hp8wcQU7rMkvSeYp0
	enVGY97nT17UNHHYEM3z0pL5W+kqXn6Ophd7owV8r9Hhc61ByFDr3yDak9rl7zUeNfZhv5Nu5fxAj
	1scrcsbL4/XQ+EVNSuKHFyc3MBgViF8Wbz/akuk2owCG+0vbInKVuv09WZyTHvR+HHN8+JzEX4W3i
	xU3W+4G487AvynIFZjQnKVHJ7qQDXFtgG3Pp6LlDcfZlPK6MGuzWaYjKXGko7SyAF4wZ3XtQTKXC7
	tIqoYp1W1sRkq+TCkKNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf88h-000CM2-2o;
	Wed, 22 Mar 2023 23:45:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf88d-000CKo-2y;
	Wed, 22 Mar 2023 23:45:05 +0000
Received: from p508fd58e.dip0.t-ipconnect.de ([80.143.213.142] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pf88b-0005eN-AT; Thu, 23 Mar 2023 00:45:01 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Johan Jonker <jbx6244@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64/arm: dts: rockchip: Fix DSI node names
Date: Thu, 23 Mar 2023 00:45:00 +0100
Message-ID: <5196838.kQq0lBPeGt@phil>
In-Reply-To: <591bf126-1ab7-8a5d-0d3a-1cac4cd9b112@gmail.com>
References:  <20230319174105.43978-1-robh@kernel.org>
 <591bf126-1ab7-8a5d-0d3a-1cac4cd9b112@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_164503_959730_D1DC0C06 
X-CRM114-Status: UNSURE (   8.30  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Sonntag, 19. M=E4rz 2023, 20:36:20 CET schrieb Johan Jonker:
> =

> On 3/19/23 18:41, Rob Herring wrote:
> > DSI bus/controller nodes should be named 'dsi' rather than 'mipi'.
> =

> There's already a serie that does that.

I've now applied Johan's patches that fixed a lot of these
naming issues and also the other things uncovered after the
yaml conversion.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
