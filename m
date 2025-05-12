Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A2AAC3ABD4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 May 2025 14:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+RWZFnRmY7UhIY7sF22JP0zr7WGVFl+xkThpAYq93I=; b=0c1WobqlF8KfcG
	EaQwoKF7Hb0tPmfFtHP5KJFXHs26Rt5imfVhhxVzemYQ/8PZ1ajbTkUZ8SU48SWT+OrEfc3ZQBcW0
	Q+sftiNdUWzpN8hmDrZQe9aHNXOE2DMmfJNd8h9ntTkKUwDM+QKKXggodeKj/UKJwzTMsQghVk5Qb
	OXCGbm5df6CV6BUnUe54HjitcONYcCp+6nPLhKuL12jbIqYANdj1VPEl2ABBVjrho73A4P5GzW548
	gZQqcZf6LunUhG0S9ZYnzPlstyOWoNrzblB3/naTb2civHBwlUhyCC9rFkjEBP2Bwb9E7eMXJKS6k
	88NPNN8VScuK2IPQG31Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEU5S-00000009iUd-000A;
	Mon, 12 May 2025 14:24:58 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uETtD-00000009gBS-2iPO;
	Mon, 12 May 2025 14:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Bze3a/JOPk45eJ7Lh92/3/o7MFlz1ZNCNXNC/pYynXQ=; b=fnjp1DabeiPSvaolRzf3cHYblO
	J6Glucad8ZfG+GzT4h/Re4yZxiSnix1g5n0FEcLpqVR11CuHeGwZP5XO5ZgMyy2LLa7ur1wdKUpZR
	Tqyz+fjeWMwSvardh7aNDFCFGg8ilSedebDoaHd4/Sa2aRNHYXwKGkIZbRUTB71NFWjg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uETso-00CLR0-Ae; Mon, 12 May 2025 16:11:54 +0200
Date: Mon, 12 May 2025 16:11:54 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: chainsx@foxmail.com
Cc: f.blogs@napier.co.nz, conor+dt@kernel.org, heiko@sntech.de,
	krzk+dt@kernel.org, robh@kernel.org, sfr@canb.auug.org.au,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/2] arm64: dts: rockchip: add DTs for Firefly
 ROC-RK3588S-PC
Message-ID: <e85ca75a-b4e0-4dc7-b6ce-ca827cc9d447@lunn.ch>
References: <tencent_173762F0D99C15A5751D2777C0061E75FF0A@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_173762F0D99C15A5751D2777C0061E75FF0A@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250512_071219_685040_917EF575 
X-CRM114-Status: UNSURE (   6.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> +&gmac1 {
> +	clock_in_out = "output";
> +	phy-handle = <&rgmii_phy1>;
> +	phy-mode = "rgmii-rxid";

This is probably wrong. Please see:

https://patchwork.kernel.org/project/netdevbpf/patch/20250430-v6-15-rc3-net-rgmii-delays-v2-1-099ae651d5e5@lunn.ch/

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
