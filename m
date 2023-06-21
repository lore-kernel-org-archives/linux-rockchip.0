Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5494DEB64DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 20:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnzLDZdkjWTYCZlM13FNsTLQ0U/KzZDYYwjDKziERpY=; b=tN7do8lX+NkNEj
	sR5CddsJp/aB3gz9Ws0Toh8cETNlUP+5yiwmHxfSZG+kiK6k9ihHHCSbk+q/RnQIM1SqEUwrxk/bz
	jB4iqTc3YI+8C6836AGxs+tuGkJK+OkqDxaJQwEFU7EnZMSALq4O/EWXI3TevRkiIrayUZQZxMB/J
	29K2Sf6dc+jXWtVwtvoI401RC2gum2H/ZC/kuH1IsjyMuLgC5iiMqhoF+6bXY2bCqw9DpwCITCJXE
	WE1eZ2XcoWU9jguw/1xW/4c6G6vXLap0OxvslD7S5bUXBdTmXfBNkvuadhhM8Bn6It7fcCq+b49av
	bghA3Oq7R9hZj1GjxKjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC4b5-00Fgcb-22;
	Wed, 21 Jun 2023 20:38:35 +0000
Received: from phobos.denx.de ([85.214.62.61])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC4b3-00Fgbc-0A
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 20:38:34 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id C9E8B84724;
	Wed, 21 Jun 2023 22:38:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1687379909;
	bh=iVqCJalJa2IT+G8fkwbP1unij6sd+MBF8pO88BAp7S0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TGSBLbQPcLYRaZYVFYg0qPFvJck2zudHbtNPgWrZZc3KAxb81MJ9w9Nd46I9uEYqv
	 MGCRK1BYoqRcPBXsjqacbXnHqf+/lRbaj2CePLXWWTZi8h7CRPjKED5S1p9AuCzXR4
	 uaYwcCqopKq0Ae3248ZJ8Nj+MFalqtSnmupqRCXpCk5FL1jp3nqC3APtXhYSI+x3xS
	 XUMg59z25Uk5NmyExpPpWG4hNH1vlqMPLW/HT1NCAw+MeXkz9nSpNdNTJ06rpJ7E8F
	 j9FqZQ2aCKba18eTUeqfiGLe0I3yY7rMOgwWji9yPlz+WEq0p+xlaw8Ebrk/UbF+uT
	 IMOMD/E4hMfqQ==
Message-ID: <ee2c980b-c4e7-7058-d527-e9e280002056@denx.de>
Date: Wed, 21 Jun 2023 22:38:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: Rockchip DWC2 issue
Content-Language: en-US
To: Jagan Teki <jagan@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Kever Yang <kever.yang@rock-chips.com>, Peter Robinson
 <pbrobinson@gmail.com>, Jonas Karlman <jonas@kwiboo.se>
Cc: U-Boot-Denx <u-boot@lists.denx.de>
References: <CAMty3ZD64BH-XunimhVjcFF=H0O6zOg34KBMVcUa5hTZLJw0AQ@mail.gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <CAMty3ZD64BH-XunimhVjcFF=H0O6zOg34KBMVcUa5hTZLJw0AQ@mail.gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_133833_338116_87A77BFB 
X-CRM114-Status: GOOD (  12.36  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 6/20/23 16:37, Jagan Teki wrote:
> Hi,
> 
> Has anyone tried to use dwc2 and echi port together with USB disk?
> look like this is not working with this combination on any Rockchip
> SoC's
> 
> Here are the issues that I've reproduced in RK3328 where the disk
> connected in EHCI port is detecting but DWC2 is not. Any clue?

I generally avoid using DWC2 as host. RPi 1/2/3 does use it as host, but 
I think there is a hub between.

Does the stick work if you plug a hub between the board and stick ?

Also, RPi zero (?) might have raw host port on it, without hub .

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
