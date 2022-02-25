Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 017D5C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 18:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UcvweCsDKH+5dIOF6wxpmoKlq4omRqCW8fG66G2g0K0=; b=MUtOVljZga8YtT
	zadpmZMEDoR4g/BlGvUp2r2iNQKsT2++cuf30lkr1MPDxGoX9tinWXRqeg6SBga5HW/sT8TPcH5Tk
	KGN9Yjx5O0UNDFKoItIBNDeX1zMw+GLSBwGMX1Nu2H/mHONIGCokUEQBIjqamfRoGPZoDjLm3s+tM
	/A99bVlqKtCOxMabn+dJqnYOHMU9un4dS1CTZqGmPeOOZi8oK3qNr3+2nR8ZFKtd7YLtDK520YepX
	YhDLzE3aAwcnKPi1uikrH41CZd8XajgdpFaJeRmkIO5TmoK9an+vnWBZHZ9ZNACL2ELYxIZvPaqRc
	heb3maG2kWlqNtvIf/sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNf8e-006Wj6-P3; Fri, 25 Feb 2022 18:16:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNebu-006JKi-Mx; Fri, 25 Feb 2022 17:42:32 +0000
Received: from [185.156.123.69] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nNebr-0002OR-2y; Fri, 25 Feb 2022 18:42:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Arnd Bergmann <arnd@arndb.de>
Cc: arm-soc <arm@kernel.org>, SoC Team <soc@kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [GIT PULL] Rockchip driver changes for 5.18 #1
Date: Fri, 25 Feb 2022 18:42:25 +0100
Message-ID: <1871162.kSRBfm7Lxi@phil>
In-Reply-To: <CAK8P3a2=-wg_LFtOoeN47EoxnAhG+39sgFsVvH+mvNQpKvrOww@mail.gmail.com>
References: <9977257.a15B8eIVjX@phil>
 <CAK8P3a2=-wg_LFtOoeN47EoxnAhG+39sgFsVvH+mvNQpKvrOww@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_094230_808892_6FB223C6 
X-CRM114-Status: GOOD (  19.58  )
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

Am Freitag, 25. Februar 2022, 17:53:51 CET schrieb Arnd Bergmann:
> On Fri, Feb 25, 2022 at 12:20 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:
> >
> >   Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-drivers-1
> >
> > for you to fetch changes up to 7dbb47d64acf4aac131a2aaade726913aa62abe7:
> >
> >   dt-bindings: soc: rockchip: add rk3568-usb2phy-grf (2022-01-23 13:35:06 +0100)
> >
> > ----------------------------------------------------------------
> > Compatible for the rk3568-usb2phy-grf.
> >
> > ----------------------------------------------------------------
> > Peter Geis (1):
> >       dt-bindings: soc: rockchip: add rk3568-usb2phy-grf
> >
> >  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> 
> I've merged this into the arm/dt branch along with the dts changes.
> Generally speaking, any binding changes can go through either
> the driver or dts branches, or both. In this case putting it into the
> dt64 branch would have been easier.

Originally I was expecting more driver-changes that didn't
materialize.

But sure, I'll just put the bindings into the dts branches to
minimize branches the next time.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
