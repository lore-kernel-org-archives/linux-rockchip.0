Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C6AC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fku1TAAVMQUx5pHbZNU6gImbxTCqAlzPFgUihICYeOQ=; b=tcdyqp2kaiQAsG
	gegqxsz2eoI3BOjV7yBEu5nJSWhED0O81yQ1f5/mMpW9XKUo+yG0kUZ3fCurZky9cfGKUWI2tkWH1
	6v3DE6mAKicjzvydpXLo6Ltn8QzQma9ZBHi3nVWDjSvHea5WBd3Wi6IP0I9HiSfXDtqEZLbfIQZF/
	t1MvZ5xLH7hrIJGEvOAF+jGdBdpKj8dnyi6UrBhlj96vwGOFG8QCNL5N1L+QS9MgKN0GjmpCN+zEN
	IZ/f+mB7YEHUrNsQV6AaSJclcqaUlVXmwpemyN6pz30ZfHK6UL1t7uxrogavINPqMpLKTJNGnWRwd
	7bRRcCtHYcF3+NsI2Xpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPLDp-0000000D64K-06bU;
	Thu, 04 Jul 2024 12:05:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPLDl-0000000D63g-3imh;
	Thu, 04 Jul 2024 12:05:55 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPLDg-0000bm-60; Thu, 04 Jul 2024 14:05:48 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>, Alex Bee <knaerzche@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
Date: Thu, 04 Jul 2024 14:05:47 +0200
Message-ID: <2004736.8hb0ThOEGa@diego>
In-Reply-To: <2c46dfb7-5ef3-494f-8cf1-413033e73412@gmail.com>
References: <20240703210524.776455-1-heiko@sntech.de> <4552794.8F6SAcFxjW@diego>
 <2c46dfb7-5ef3-494f-8cf1-413033e73412@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_050553_953618_BDAAF8FC 
X-CRM114-Status: GOOD (  21.00  )
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

Am Donnerstag, 4. Juli 2024, 13:43:47 CEST schrieb Alex Bee:
> Am 04.07.24 um 12:05 schrieb Heiko St=FCbner:
> > Hi Diederik,
> > =

> > Am Donnerstag, 4. Juli 2024, 11:38:51 CEST schrieb Diederik de Haas:
> >> Thanks for submitting this. A quick scan indicates it should work with=
 a
> >> (recent) Debian kernel OOTB :-)
> >>
> >> On Wednesday, 3 July 2024 23:05:24 CEST Heiko Stuebner wrote:
> >>> +&sdhci {
> >>> +       bus-width =3D <8>;
> >>> +       no-sdio;
> >>> +       no-sd;
> >>> +       non-removable;
> >>> +       max-frequency =3D <200000000>;
> >>> +       mmc-hs400-1_8v;
> >>> +       mmc-hs400-enhanced-strobe;
> >>> +       mmc-hs200-1_8v;
> >>> +       status =3D "okay";
> >>> +};
> >>> +
> >>> +&sdmmc {
> >>> +       max-frequency =3D <200000000>;
> >>> +       no-sdio;
> >>> +       no-mmc;
> >>> +       bus-width =3D <4>;
> >>> +       cap-mmc-highspeed;
> >>> +       cap-sd-highspeed;
> >>> +       disable-wp;
> >>> +       sd-uhs-sdr104;
> >>> +       vmmc-supply =3D <&vcc_3v3_s3>;
> >>> +       vqmmc-supply =3D <&vccio_sd_s0>;
> >>> +       pinctrl-names =3D "default";
> >>> +       pinctrl-0 =3D <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
> >>> +       status =3D "okay";
> >>> +};
> >>> +
> >>> +/* M.2 E-KEY */
> >>> +&sdio {
> >>> +       broken-cd;
> >>> +       bus-width =3D <4>;
> >>> +       cap-sdio-irq;
> >>> +       disable-wp;
> >>> +       keep-power-in-suspend;
> >>> +       max-frequency =3D <150000000>;
> >>> +       mmc-pwrseq =3D <&sdio_pwrseq>;
> >>> +       no-sd;
> >>> +       no-mmc;
> >>> +       non-removable;
> >>> +       pinctrl-names =3D "default";
> >>> +       pinctrl-0 =3D <&sdiom0_pins>;
> >>> +       sd-uhs-sdr104;
> >>> +       vmmc-supply =3D <&vcc3v3_ekey>;
> >>> +       status =3D "okay";
> >>> +};
> >>> +
> >>> +&sfc {
> >>> +       pinctrl-names =3D "default";
> >>> +       pinctrl-0 =3D <&fspim2_pins>;
> >>> +       status =3D "okay";
> >>
> >> Shouldn't those properties be sorted alphabetically? Or at least consi=
stently?
> >> Note that the same issue is present on other places too, but I believe=
 the
> >> above quoted part shows the issue enough.
> > =

> > The main sorting is
> > - compatible
> > - reg
> > [... alphabetically ...]
> > - status
> > =

> Yeah ... that's always the question when adding new board files. Do it li=
ke
> "it's always been done" or re-sort the properties alphanumeric _everywher=
e_
> which looks quite strange at times. If I'm getting the newly added dt
> coding style correctly common (subsystem?) properties should also be plac=
ed
> before vendor (driver?) specific ones. Yet I didn't see a board file which
> places 'regulator-max-microvolt' before 'regulator-min-microvolt'. So I
> guess it's fine if it's done consistently within the same file?

I always see it as a best-effort thing. If all regulator-* stuff is grouped
together it will be mostly fine. I'm not going to haggle over the sorting
of the 10th character of property names ;-) .

(and of course reading min before max, is sort of more intuitive)

And of course leaf-things (board dts) are less "important" than the core
nodes in soc devicetrees.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
