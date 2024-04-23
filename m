Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C066BC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doDEqjK5dD1phtok+0KzNbTUr22ZGVEH1OExLRXC2eg=; b=yRYoiO4Jg0dlgz
	VkK9i8KYPxElixJkBe2V2jDFwAC9ZL0MtYq0k+9eLDsO/9qHXcCzMWrdJAR+36a54ectjw8n9G3wT
	+zivS/YdOnSjBmTk19Z3VYdkeo7FPDGQZpCE9/zmhHJxTdGnBpM/jW7E0N8AoL4easoCL6mRhiY2f
	C7rSlNO/wo+1HN58KlWb7pniW9ZVrUACQ1hsugO0bWWHB7u6IomE7Yj8IhhR+loI6A9e0k+3EusPr
	hrVrSlUQXGVD9c6WHpGUQ/qbb8aDRfMt+d8SKr0meVXIoWIuHl4DuWJWEDmrDR9PaiK1mkXR21mit
	a2yQJWi8uigZCVmv1RPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHfZ-00000000Pi6-3qen;
	Tue, 23 Apr 2024 15:02:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHfS-00000000PfN-33gF;
	Tue, 23 Apr 2024 15:02:52 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzHfF-0007Cj-Km; Tue, 23 Apr 2024 17:02:33 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Weizhao Ouyang <weizhao.ouyang@arm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 sfr@canb.auug.org.au
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: Add ArmSom Sige7 board
Date: Tue, 23 Apr 2024 17:02:32 +0200
Message-ID: <2484736.irdbgypaU6@diego>
In-Reply-To: <1a78e0e1-af0a-4bb9-8d2d-982e244a1ce1@arm.com>
References: <20240420034300.176920-1-liujianfeng1994@gmail.com>
 <20240420034300.176920-4-liujianfeng1994@gmail.com>
 <1a78e0e1-af0a-4bb9-8d2d-982e244a1ce1@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_080246_983787_96895FFE 
X-CRM114-Status: GOOD (  10.12  )
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

Am Montag, 22. April 2024, 11:08:48 CEST schrieb Weizhao Ouyang:
> =

> On 2024/4/20 11:43, Jianfeng Liu wrote:
> > Specification:
> >         Rockchip Rk3588 SoC
> >         4x ARM Cortex-A76, 4x ARM Cortex-A55
> >         8/16/32GB Memory LPDDR4/LPDDR4x
> >         Mali G610MP4 GPU
> >         2=D7 MIPI-CSI Connector
> >         1=D7 MIPI-DSI Connector
> >         1x M.2 Key M (PCIe 3.0 4-lanes)
> >         2x RTL8125 2.5G Ethernet
> >         Onboard AP6275P for WIFI6/BT5
> >         32GB/64GB/128GB eMMC
> >         MicroSD card slot
> >         1x USB2.0, 1x USB3.0 Type-A, 1x US3.0 Type-C
> >         1x HDMI Output, 1x type-C DP Output
> >
> > Functions work normally:
> >         USB2.0 Host
> >         USB3.0 Type-A Host
> >         M.2 Key M (PCIe 3.0 4-lanes)
> >         2x RTL8125 2.5G Ethernet
> >         eMMC
> >         MicroSD card
> >
> > More information can be obtained from the following website
> >         https://docs.armsom.org/armsom-sige7
> >
> > Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> =

> Reviewed-by: Weizhao Ouyang <weizhao.ouyang@arm.com>

thanks a lot for also sending this review from your @arm.com
address, this alleviates all the naming concerns a bit for me :-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
