Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E87EC30653
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 13:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GODV4+p0JSsPU/Rj/UJXoRnBCNt3IMufW/7CchAEmSI=; b=Yin5LA9EgR1lrY
	G0iXBbw1AAP/YwC1ClciLwLs9tT55sTVeDuLTRkah1Z4r5QEdXyVid+kMTxW80Yb7xmJvfn5n5cWL
	Wa2GxN9YvkUjsB9+XgCUs5QlL10dqrBsOmYCugOQeheWWn1L+0SyGDU/3F+UxQ2g/6vSKx0mX996f
	WNjtqJ0B7GUOjLfnWAL6edzk5OSq4qCxUzkcMNa8RR25DSQ4yJQm4Vv2UkJcqPWC9mm4k3bDy9xn2
	Bf2EfwSZqPMtMp4TaZj+5Pte37k+k+tAT9HZAB0H47qfY6nW+oKz0ItzO523xWVmn0IiEM9UIzGDV
	vBqSzZZltTDSc+GsEUwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOH7O-00000003V8S-0lca;
	Mon, 01 Jul 2024 13:30:54 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOH7D-00000003V48-2Roj;
	Mon, 01 Jul 2024 13:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=dgLuPF2eYkiQs8eNh3nau0d/UD1yEpaCWwxlfReij7c=; b=S8A2t0/VEfTQUjvfYMAvwdI2PI
	8TltAzzx+ZnAUQY42Y/QpL64URuwUU4Qqbk80KPW4yTlFnmBFjxM1ODZfFSK+ulk9GZVxuVYl5XVg
	OD59hme+hJ6xagIW1zXXhBITsycNHPFgvgkcFDkS/TgBOXuvEZIc2k7Rqz1UVfKBkmGY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sOH74-001Y0A-4f; Mon, 01 Jul 2024 15:30:34 +0200
Date: Mon, 1 Jul 2024 15:30:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org, kernel@dh-electronics.com,
	kernel test robot <lkp@intel.com>,
	Alexey Charkov <alchark@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Yashin <dmt.yashin@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Sam Edwards <cfsworks@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Drop
 ethernet-phy-ieee802.3-c22 from PHY compatible string on all RK3588 boards
Message-ID: <96e762b5-eafc-4fdb-b4b1-f6957f0a877c@lunn.ch>
References: <20240630034910.173552-1-marex@denx.de>
 <20240630034910.173552-2-marex@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240630034910.173552-2-marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_063043_642786_B6A8E30F 
X-CRM114-Status: UNSURE (   8.88  )
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

On Sun, Jun 30, 2024 at 05:48:42AM +0200, Marek Vasut wrote:
> The rtl82xx DT bindings do not require ethernet-phy-ieee802.3-c22
> as the fallback compatible string. There are fewer users of the
> Realtek PHY compatible string with fallback compatible string than
> there are users without fallback compatible string, so drop the
> fallback compatible string from the few remaining users:
> 
> $ git grep -ho ethernet-phy-id001c....... | sort | uniq -c
>       1 ethernet-phy-id001c.c816",
>       2 ethernet-phy-id001c.c915",
>       2 ethernet-phy-id001c.c915";
>       5 ethernet-phy-id001c.c916",
>      13 ethernet-phy-id001c.c916";
> 
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202406290316.YvZdvLxu-lkp@intel.com/
> Signed-off-by: Marek Vasut <marex@denx.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
