Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3FC1CFC270
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 06:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Acaum+vaPdfsK43TP+btFHyFMDtyaBgwzeJIRQcd2uM=; b=daP7+Am5IxI6wW
	LS73evf0x7LL8BC8qSTyhy/FolgEtRB0VGZYUOZ1+2V+IoV4n+cv9TD4uSy6IdRdta+u1PS6Bcl0a
	oEMmg4YJpTmsZow5KgMFEriSQoC6brlX4seM5wNgI15+uQdAKorPcS9vZyzLjb9j4ChAw/y2Um+4q
	3f7os/HQT5v12iJ4e50c5poDgonmImVWMJAGLQpqxifIzIi4Bgwkht+HW/J3VOE2iWsKYtyg8cERF
	MuLk6CMNk4XwIHYh8TayVx9g7wVBWUubHHvAFj/AuE+EeMu0V0sYeJinOHnj+UcPoA/kxqNC4fVKs
	eERmSOhp5/HjTOu7e1nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0aw4-00000007C9O-1EHX;
	Tue, 15 Oct 2024 06:21:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ats-00000007Bue-3cMV;
	Tue, 15 Oct 2024 06:19:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=pbGxIxApaT188ztxWowHhsxXWg/UWKzfailGZ9HOj6k=; b=bR4d6afxtSfPiBL9RUQQh6ZQbv
	n6XgBrDTA+9vyrG7hOeNF3EBFDmjXqit8eSLnucBpOOgoum6e/h3anebDZr7RFEvAAnrhHPiBf7BP
	ecjgwneMqhgGJKd5y/kjP9b06aeYtGtQDuuoIvGZ24E1BEvVK7ehNraRjOozHyKH44MtbJj31NCJt
	nZDvHzkrKrlR4h2oq0nI8F5dWzjNlcLcVGKfhP15qvjaDU6+u7M+y8LK3vfwIMKZkYA692ZdT/MdX
	Kj7Jhq7i2bZazszUH56sPviQx2fTSl0hBpXSkxydGfjLyrIWA4kM2z4+wrjK7WYnY/pq6eoGLv2e7
	wBwjOjSw==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t0ato-00074m-Kc; Tue, 15 Oct 2024 08:19:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH v5 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Tue, 15 Oct 2024 08:19:15 +0200
Message-ID: <3589922.iIbC2pHGDl@diego>
In-Reply-To: <20241011065140.19999-2-frawang.cn@gmail.com>
References: <20241011065140.19999-1-frawang.cn@gmail.com>
 <20241011065140.19999-2-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_231920_934031_61167427 
X-CRM114-Status: GOOD (  10.37  )
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

Am Freitag, 11. Oktober 2024, 08:51:39 CEST schrieb Frank Wang:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
> 
> This change also refactor the clocks list as there are new clocks
> adding used for the USB MMU in RK3576 SoC.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
