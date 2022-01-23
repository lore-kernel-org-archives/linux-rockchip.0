Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF041C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 13:38:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNTTM5bZiXdJMwfW0dSmp2gUY7jBGTYwRAQJDVGW23k=; b=ZffrLq3hLHQfkG
	/IlSIaH+GOH99jj/oylahrfUkdLhsF1vPwnOIH8ziXWqxD4U4L8dJ8bsZcHyawsQ4Ia0PNsMn8X2U
	ZusvhF9RwbzxpxyYvQ5RsjrEHEOP7lB5/9WFLE4RS+7Ox0+nPHbeX+91Nome61IeSSB4kcVp9xeod
	DabfvLyosfQgnoOZgs1Da/6jKA/qK+H7v6BYCKuN/0c7wQURh/v0FqqvMqvsqBgT/5jeMPjuaJNYV
	G5wJfwI9gKiGE0MVaRbb2Fvnm4HpOrqqXwO/tm80gCGH4LTw9BNEnrmjKkGspjhcjLD6W9cUxuHls
	l4LucW1ZBrPIrE/lSKbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBd4R-000sjR-AX; Sun, 23 Jan 2022 13:38:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBd4O-000shp-Ao; Sun, 23 Jan 2022 13:38:13 +0000
Received: from p508fcdea.dip0.t-ipconnect.de ([80.143.205.234]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nBd4J-0004q2-V2; Sun, 23 Jan 2022 14:38:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Frank Wunderlich <linux@fw-web.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: Aw: Re: [PATCH v1 1/3] dts64: rk3568: drop pclk_xpcs from gmac0
Date: Sun, 23 Jan 2022 14:38:09 +0100
Message-ID: <8763546.c4FMd9deqZ@phil>
In-Reply-To: <trinity-d0efbf68-ed45-47d4-97b3-d3788c5a9de6-1642863025116@3c-app-gmx-bap44>
References: <20220116124911.65203-1-linux@fw-web.de>
 <236548630.RelmrRfzIS@diego>
 <trinity-d0efbf68-ed45-47d4-97b3-d3788c5a9de6-1642863025116@3c-app-gmx-bap44>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_053812_393573_3F116CCE 
X-CRM114-Status: GOOD (  16.25  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Frank,

Am Samstag, 22. Januar 2022, 15:50:25 CET schrieb Frank Wunderlich:
> i plan to send a v2 of the series after 5.17-rc1 is out, because i have n=
ow verified
> the functions from gpio header and found some pinctrl-changes. V1 had onl=
y prepared
> the nodes to know which devices are present on this header.
> =

> should i include this patch again or do you pull it from v1 (maybe as fix=
)?

I do plan to include this as fix after -rc1, but I just saw that you alread=
y sent
a separate patch of it, so I'll take that one instead :-)

Heiko

> =

> regards Frank
> =

> =

> > Gesendet: Montag, 17. Januar 2022 um 22:05 Uhr
> > Von: "Heiko St=FCbner" <heiko@sntech.de>
> =

> > From looking at the documentation I got the impression that the
> > pclk_xpcs is related to the separate qsgmii_pcs in the memory map.
> > =

> > So yes, I fully agree to dropping this clock from here and then adding
> > them to whatever ip block really needs it.
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
