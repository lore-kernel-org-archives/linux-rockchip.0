Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31CC4C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 12:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sxOirQ49SgRAeowlNsMOybO94DErrXLO18EKFctFgr0=; b=YJ6q8h0wO+3O4G
	oks5FYST4W3itqNlmIMCX2/65rN352bhjtyUAeRnnrLXzUq/jfSYWLdd1W1V//vzt9+NF3YOa/G77
	mtd1fS7wbfFHS6EVnSSlmgmSrpuS1scDexmdZvVVWnMs+4Mw7jUXIo//UrPc0l+ufekRj+N3rdi4W
	5dvTPRruWM6WJxxJx9zkvAjmsnja8cMOUDomck7pHOkRvLSmdd7/oX7Ti7XnV7nlgOHuN4ghA9qZ8
	6fh/i2JpPvXkrWsk5vAVvyDDc3w9+hxBNbLXKWXj1cZxDPzsz8rL+5++8qGzGVIPtJoO19k45zpL+
	Mw0vaPpxarWeHrncG42Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9mxu-003fty-0M; Fri, 08 Jul 2022 12:20:10 +0000
Received: from mout.gmx.net ([212.227.15.15])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9muK-003do1-Ud; Fri, 08 Jul 2022 12:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1657282571;
	bh=sLmOfEnVNSVJmG8OJ3heD6wggMT/SeCDldQQU4BqbpY=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=DyhV7FdbUVKU7Ttey7nDmGkD+9TlO6L1Mv7tpQytkaOh1gboOWChF58Z1Fv0nFj+b
	 SUIJUELDjlU9g+2s9f+dHvsKd2djsEf793iFNX425K23OFnfY2CE/fVr7gHEzyf83r
	 A4rEoZoYB6dVQkiNshc44BvPfRJJKqTQghMle/5Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.225.69] ([157.180.225.69]) by web-mail.gmx.net
 (3c-app-gmx-bs34.server.lan [172.19.170.86]) (via HTTP); Fri, 8 Jul 2022
 14:16:11 +0200
MIME-Version: 1.0
Message-ID: <trinity-05389b8f-a479-47b6-bc3b-5a02b4804627-1657282571466@3c-app-gmx-bs34>
From: Frank Wunderlich <frank-w@public-files.de>
To: Vinod Koul <vkoul@kernel.org>
Cc: Peter Geis <pgwipeout@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:GENERIC PHY
 FRAMEWORK" <linux-phy@lists.infradead.org>, arm-mail-list
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: Aw: Re: [BUG] USB broken on rk3568 based R2Pro
Date: Fri, 8 Jul 2022 14:16:11 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <Yse9nz9jjRoiPq6K@matsya>
References: <trinity-54ed588d-4b2c-4177-83b0-4eda8ff16a42-1657210235522@3c-app-gmx-bap68>
 <trinity-ec3b4258-cb12-42c2-9058-362260a275d2-1657216287085@3c-app-gmx-bap68>
 <CAMdYzYrs0oJXVcViOmJk4E7PSTeP5TYs0O_ePHmrcAiKtOAWXQ@mail.gmail.com>
 <Yse9nz9jjRoiPq6K@matsya>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:vgMfP4yrgP6IpedEv6CgTxZAAf8HIDhFKdiUyaeSHdg2tVzwFrS50PzJNDIePsXF7KbF6
 J9K5v57XKgWKAYmgNXjWqx1t0N68O3WYkk1cznqmNUekVop9kGV1Ob//cSMx0eWbITKbussxkMCD
 dlEvBpRPrIUOab5UiCWjJaz+eqA4bz1WmJ645Y3qjbo93khRXmfQFEaOvKzqvz2+IwR53d/drNNF
 RknhomxxLXlzclbVM/uMNZBAbyS+R85IJ27MP3j8fDB6okU2YcyQTiDFzs0PBAaEAoDChtj6jxt2
 yI=
X-UI-Out-Filterresults: notjunk:1;V03:K0:v1BOECItVR8=:ulQ1qSe1hQy0NTW9mWO0kE
 c2a22fNZRvgOYXx6+tObJX3UwhLQgRSedAB8WhQAvHHIHu2OV7pHs3atR5BBZ34FuiBDBLv43
 9AQcBtuMGz8xnX0qvYxX6JPV1xtLOWYi2/Vt3rcmtbeXTQR65EgqxmOhK+cf3PvVAwXcVER8V
 pQ9tkkOnSaz+yai0boxtj4y1sCzO0VPFlQyCx8+D0IYoWw/L9mQ8bJyoswiWYEe0eHOhQXiAM
 HeulOpEuktmuy+exEJjP7mFRO201HN25HHMV+UbnY9q33+o7m1tSUHSw9J7oCwZRAfqYBVVqe
 QTKcJP0Npt3jcw+N0c/Ex6b1bZwsrr7XQ0kg9CPtN+faTa/8UAPR4zrxGL+GBG/NxQ2xj4J83
 56kPfAncml2s/3IomVNxv7Bqdn31RqYzVQNoX2BL0tqIk6RwYq/SdxrbqH5kqKP66gTLZ/dNH
 4FSkg1D2Es1SuGupZGyt8NfU483TNNFDWdshbvfjW55JeCVcGTuZm8x5tOVcfohitog3CEDMj
 ziw2HatpZwPF9/dJEyBkkHSXgZBLP3g8Qh71IBzQbipNqhDlZED/mL7GtMewbY5QpQpm4FZWM
 WAbiksoSaFHszJ5keonTv9gKNUr0yq6/uw8Zmy57mEhf8XOwPN4ZLz4oAXrkl5G13WLFG5PrI
 83gkhY6vx/inIfg6rPCcxFxuDWPrUAaP7Ip12zsIf3FOTjmXQyMHrvw1Js6B9fHk96m364/lZ
 daWdVhHkCCo4nk9qCgu6ZY8oFOg8hOZBlYIW/56bL4yT3+pEXZI88r91F18PfEvMfp3T8+1Qt
 zdvUabr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_051629_330140_17F2C533 
X-CRM114-Status: GOOD (  25.48  )
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

Hi

Samuels Patch fixes my issue

https://patchwork.kernel.org/project/linux-rockchip/patch/20220708061434.38115-1-samuel@sholland.org/

regards Frank

> Gesendet: Freitag, 08. Juli 2022 um 07:16 Uhr
> Von: "Vinod Koul" <vkoul@kernel.org>
> On 07-07-22, 15:41, Peter Geis wrote:
> > On Thu, Jul 7, 2022 at 1:51 PM Frank Wunderlich <frank-w@public-files.de> wrote:
> > >
> > > Hi,
> > >
> > > traced it down with manual reverts to this one:
> > >
> > > commit 6a98df08ccd55e87947d253b19925691763e755c
> > >     phy: rockchip-inno-usb2: Fix muxed interrupt support
> > >
> > > luckily i can revert only this and now upper usb-port works again
> > >
> > > @samuel: have you an idea how to fix your problem without breaking my board? :)
> > >
> > > @greg/Vinod: maybe we can add a revert of this in mainline till issue is resolved?
>
> Lets give it a few days if we can find a fix, if not we can revert
>
> > >
> > > regards Frank
> >
> > I don't know what you're running, but with the standard arm64
> > defconfig w/ all rockchip stuff built in, I have no issues here on
> > 5.19.
>
> Please share the config and other details on what your running so that
> Peter can repro this...
>
> > Note, the following changes are necessary to the 5.19 dts here:
> > Remove the extcon from usb_host0_xhci, as the production model doesn't
> > have automatic switching capabilities. The ID pin was removed in favor
> > of the usb debug function which also doesn't work.
> > Add dr_mode = "host" to the same node, for the same reason.
> >
> > >
> > >
> > > > Von: "Frank Wunderlich" <frank-w@public-files.de>
> > > > i noticed that upper usb-Port (otg) is broken on my Bananapi R2Pro with 5.19-rc1, works with 5.18.0
> > > >
> > > > this port is a usb3 (xhci) port which includes an usb2-phy and should support otg, but i still want
> > > > to use it in host-only mode (USB-A socket).
> > > >
> > > > already tried setting dr_mode in dts back to "host" as this was changed in rk356x.dtsi by this commit:
> > > >
> > > > bc405bb3eeee 2022-04-25 arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x
> > > >
> > > > i see no error in dmesg and usb-controllers seem to be initialized completely (visible in lsusb).
> > > >
> > > > r2pro has ID-Pin not connected, so i tried also peters Patch without success :(
> > >
>
> --
> ~Vinod


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
