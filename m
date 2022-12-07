Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2905BC47089
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Dec 2022 04:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6OGpMuFP7UWquCWE6kOJbXbtmOtsX7YU9omHflTQoc=; b=XJpynEQZrOtv3I
	qZT9EJ8/wW306qVeB2I4+8wC+1kll6aEkJKtwFJ38unY7f/aus5rh2S8PigMPRll9ifHsf/8gmLGR
	Xs0b5sxo4mt6I7zupYU8YJgIPQ3U2UlhNFIy28LoprlwduK9aC+9kiGjmxu6dWFGHuZPXYKRPiy8g
	LYJIhzRiZ2za2q7n2dPAqBJeJ/KZisib/vvzHPlMXhAAwNrTf+/+Kh5vvA2aS8fu2rkeCTopBDfWF
	zyo/mADy5K7JgbRbLZi6qRaeVqWpkDJuWaryK8mujQPs/zp/pphF6SfZE5SuDo4jn2z13d68NWdNc
	u0Ez0TjpEGQNY/I3eN4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2m4L-00AhMn-4m; Wed, 07 Dec 2022 04:30:05 +0000
Received: from mail-vk1-xa2b.google.com ([2607:f8b0:4864:20::a2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2m49-00AhJu-85; Wed, 07 Dec 2022 04:29:54 +0000
Received: by mail-vk1-xa2b.google.com with SMTP id u9so7750800vkk.4;
        Tue, 06 Dec 2022 20:29:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A1h+jqILdMXB6P8ZcOCajUAqUjvUVylvDrJFO02co2I=;
        b=W1AgjHgpnm7gFpIuv5EhYP7O46Domez33ShWFR9Gv6H3TLJI8xyQMgzGi1MYGDnUyI
         hPXGQiCvSNqgs+Qrt1yqZH67sJllU3wSIcQAFVK/7cxkDDyu5yoVDoSrvMl9GYc0ZU7u
         Pe8GnDiJS910msXbs34X5nNlg9Td23m2bochEoYcYvX6yNetQt9OHK0UeNsU8pmYVzDE
         t8/uVb5bSwhsONA/0rO+vGqbjAeIgx/Hs4S/L4jM1bVgQIu7MUNYERmzL93v9rElG3lx
         f4yzKykP7dcuFBVNHn9/bxdSh851C8BQbbaIBexslHJ/6KFKpnW8BIJSaupHXQrxn+Zx
         4N9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A1h+jqILdMXB6P8ZcOCajUAqUjvUVylvDrJFO02co2I=;
        b=R/wuysewvdJlZwkWyzTdAy72z8MszaCIhmYqIEk6rlKhPqMwpehk8m2N/5sq1O1lFj
         6GwvjrUmyrNrlvFEVjvAMNwFOZlpgzB/x8sk5VzIwp/pUdv7tThui/v3iATETaox+Pf6
         aQzsasNdBqSgVM+xlu4cluX9muV2YM7DUqF8s926BFe1+lSrY3BSolBmIGxmsCzKl4bJ
         OMe1QBJQnVdH/e+YpL09EwTC+XBxH8M8GIWhtSFiUJ5yC7ET6je4o80cUZrnvAa2vWvT
         I7kQhy8/g864nKawCqaNbzjd584fAQdx26V5eVpCddZTg5844kiVcZ2xgUAgSoZuCYMT
         PzUQ==
X-Gm-Message-State: ANoB5pmZ6ZoSd7bDZGqi26jOwT1qx5MINYFGwp6E8ayrPd8ngfrzIaSd
	py9/IOD/aVtpfehwdp0GofAT71HQ4UtEwLzb/8Y=
X-Google-Smtp-Source: AA0mqf46k4Azl7/ZeLVOE38VFrgzWeBnwaXKlXGr3CrFZ4fB15UdPH8zDxCEBbdy/8YD10n2nlH8M3/PNTBwwM70cBs=
X-Received: by 2002:ac5:c915:0:b0:3b8:7fbd:9554 with SMTP id
 t21-20020ac5c915000000b003b87fbd9554mr40412873vkl.27.1670387390201; Tue, 06
 Dec 2022 20:29:50 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-7-linux.amoon@gmail.com>
 <0f0c87d9-cff5-3bc8-07e2-7022a190cc86@wolfvision.net>
In-Reply-To: <0f0c87d9-cff5-3bc8-07e2-7022a190cc86@wolfvision.net>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 7 Dec 2022 09:59:34 +0530
Message-ID: <CANAwSgTLL3nJ5pUuaFpKe8tc6oVREo_WOJ+_Q3kO3OmgPTa0Bw@mail.gmail.com>
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_202953_305182_79B12D15 
X-CRM114-Status: GOOD (  19.17  )
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

Hi Michael

On Tue, 22 Nov 2022 at 22:16, Michael Riesch
<michael.riesch@wolfvision.net> wrote:
>
> Hi Anand,
>
> On 11/16/22 21:01, Anand Moon wrote:
> > Add MDIO description with ethernet-phy-id compatible string
> > which enable calling reset of the phy. The PHY will then be probed,
> > independent of if it can be found on the bus or not,
> > and that probing will enable the GPIO.
> >
> > ethernet-phy-id is read from ethenet register dump reg2 and reg3.
> >
> > Fix following warning.
> > [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> > [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> > [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
>
> Without this patch, the phy on my ROCK3A is properly detected:
>
> [    1.494963] rk_gmac-dwmac fe010000.ethernet eth0: PHY [stmmac-0:00]
> driver [RTL8211F Gigabit Ethernet)
>
> but with the patch applied, only a generic phy is recognized:
>
> [    1.398674] rk_gmac-dwmac fe010000.ethernet eth0: PHY [stmmac-0:00]
> driver [Generic PHY] (irq=POLL)
>
> This does not seem right at all. NACK to this patch!
>

Yep you are correct I found way to read the ethernet id

# there is kernel module witch help read the ethernet-id using netlink socket.
$ git clone https://github.com/wkz/mdio-tools

$ sudo mdio
fixed-0
stmmac-0
$ sudo mdio stmmac-0
 DEV      PHY-ID  LINK
0x00  0x001cc916  up
0x01  0x001cc916  up

with the above ethernet id I update the compatible string
compatible = "ethernet-phy-id001c.c916", "ethernet-phy-ieee802.3-c22";

I could get the ethernet registered correctly.

[    9.865059] rk_gmac-dwmac fe010000.ethernet end0: Register
MEM_TYPE_PAGE_POOL RxQ-0
[   10.061904] rk_gmac-dwmac fe010000.ethernet end0: PHY [stmmac-0:00]
driver [RTL8211F Gigabit Ethernet] (irq=POLL)

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
