Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D1EBC63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 15:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfaiyRImKd/x2Spi+i8YbkSL1tfu1Mm//7tj/OmUCe4=; b=toq+D8EQY0NyH6
	P/ddURDaqwHyHKhkvy0SMUEKhCjeEiI3d2SoCzXLkj5uHquFN8R2l4KNQTlhBgLMnhnMB3esMExD5
	bWxq2iN52tAyJIQ0mZa+I5GQypdYpdPWRPfwcY2fsUadHLadhFHp2NXlwawrhuYvx5HaY5i2nf2Ta
	ONa232MBhFc88xlxQB/dIQCqp15Vybo6fby7l1vuwIfYvVumNrPiGmpUco84zu4e3uPYzGyxxKh3Q
	OLLDLPB11c7NZ8uzKNYXOvHz/QeyMBtOokqNxIG5nJDrXsGfIo6huYOFHD91rysETd0mTvbZyu6qb
	9F/ZrqowPddlGJ2ORNDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnlw-00Eojp-3s; Tue, 17 Jan 2023 15:21:12 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHnlp-00EofH-5j
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 15:21:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description;
	bh=c2swQkz08xBPnHFoX+KimECIyDAwz14Ez4FL7HgGgWY=; b=QcoG3z8VjxxxUCRCAw0lhqqO4B
	nF1vSOvtMK0at96uGoIb3kQYP+Gp7jlPSBOx6wWb+9sUYrlyhcKjJ9rYUOUWlb//Mpymy+TZFiSLu
	19v4zJeePR0CDxOYi077m+rZkxFQwo5v91no2XU3YjMsp4jIH3kBT6Br4KQNf6zieNYj/lmwUV6gd
	xPP1X546dGIsOF1RccC4JZl7zwfLyH9nHJQOhjvarvPJjx+OA5uFQs9bKd/IdpxuTEucyzA9SlONU
	QZEXGapiDP2JZZR/8ru7rXS7NEnRobij5yqQihXqxfCoDQ1rzVpB73eopTrhc4fc6lo8bqo9jcdtg
	rHnsqDnw==;
Received: from [81.174.171.191] (helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <john@metanate.com>)
	id 1pHnlU-00075o-VX;
	Tue, 17 Jan 2023 15:20:45 +0000
Date: Tue, 17 Jan 2023 15:20:43 +0000
From: John Keeping <john@metanate.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	kever.yang@rock-chips.com, sjg@chromium.org,
	philipp.tomsich@vrull.eu, u-boot@lists.denx.de,
	Heiko Stuebner <heiko@sntech.de>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH v1] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 linux-next v6.2-rc4
Message-ID: <Y8a8ywAzHaUQbQca@donbot>
References: <48680512-0312-6342-ba0a-f2411463099a@gmail.com>
 <31883268-dedf-6e3c-8647-0b7955c1ff16@theobroma-systems.com>
 <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_072105_230987_9EAD5293 
X-CRM114-Status: GOOD (  20.97  )
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

Hi Johan,

On Tue, Jan 17, 2023 at 03:44:07PM +0100, Johan Jonker wrote:
> On 1/17/23 10:46, Quentin Schulz wrote:
> > On 1/16/23 20:45, Johan Jonker wrote:
> >> Sync rk3066/rk3188 DT files from Linux.
> >> This is the state as of linux-next v6.2-rc4.
> >> New nfc node for MK808 rk3066a.
> >> CRU nodes now have a clock property.
> >> To prefend dtoc errors a fixed clock must also be
> >> included for tpl/spl in the rk3xxx-u-boot.dtsi file.
> >>
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >> ---
> =

> [..]
> =

> >> @@ -223,7 +224,7 @@
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 #size-cells =3D <1>;
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 ranges;
> >>
> >> -=A0=A0=A0=A0=A0=A0=A0 gpio0: gpio0@2000a000 {
> >> +=A0=A0=A0=A0=A0=A0=A0 gpio0: gpio@2000a000 {
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 compatible =3D "rockchip,rk318=
8-gpio-bank0";
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x2000a000 0x100>;
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 interrupts =3D <GIC_SPI 54 IRQ=
_TYPE_LEVEL_HIGH>;
> >> @@ -236,7 +237,7 @@
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #interrupt-cells =3D <2>;
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0 };
> >>
> >> -=A0=A0=A0=A0=A0=A0=A0 gpio1: gpio1@2003c000 {
> =

> >> +=A0=A0=A0=A0=A0=A0=A0 gpio1: gpio@2003c000 {
> =

> Hi,
> =

> LOL: I made that binding change on request from Linux DT maintainers.
> Node names should generic.
> =

> =3D=3D=3D
> =

> My full u-boot is able to boot a Linux kernel for rk3066a.
> Only when I give the command below it crashes:
> =

> gpio status -a
> =

> Could you confirm what other parts are effected?
> =

> If it's boots then it's good enough for me and move forward, so please me=
rge.(Kever)
> =

> Driver fixes for u-boot depending on Linux DT changes is already very tim=
e consuming enough!

This reminded me of a patch that I never followed up with:

	https://lore.kernel.org/u-boot/20220726162509.1304234-1-john@metanate.com/

Can you test if that fixes `gpio status -a` for you?


John

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
