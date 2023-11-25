Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B729C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Nov 2023 19:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kO66XeWKNi7O4X+F+UnivBriJUC+0vwY0e1VF6u5mGA=; b=3EwVTh0vSBpm3PKE03ERzvTc6k
	vvx+PRgNrKP+Ir9TW+qh0YlnamUOGVWdftdpxoZoXfuRZRzppEH+5BFabk2Rhbn5mycPrlCtKrCvb
	NON2abqb3gX6eeVb0+vP1mP8QZ5gRucb+wsYQCmnsFwQe2RbQMX09HOvUdHbmEgo9deLfTxPY+/d9
	PMXVo0nsHjS5qosAl0YNk/hVOfu7h1uUSjfMz2WV4LXD5J3jP0f+ugApTxIdhCG4mbHH3XLiDCN30
	1FzFrPUV+dZu5N+KK9vFgmd7sM39svZft+165sHQPPDMxbyqavA4ZZaKxDg8gHpad59YvknfuIlRf
	1Bh5sobA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6yTc-009int-2I;
	Sat, 25 Nov 2023 19:38:04 +0000
Received: from out-174.mta0.migadu.com ([2001:41d0:1004:224b::ae])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6yTY-009ilV-1r
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Nov 2023 19:38:02 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1700941074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=H5f532XiEqN+dHjGZRkOt1oPFlKTC6DZJMlN+VbFtsU=;
	b=ufYkpuee0qkj86lH4MdGhj+LWt9I/eUDyQDn8dwJNlku1uKFyM7lZqGgMMHB/bvSEMIs/J
	m/UUjHpywGLEilnS7PmNmJIr5I2R54dcDuNwe5S0PG992f2fP3wbiS6gUHDsK/cQSACrkz
	LIpseWwAcag9x51yEk9XLvyryvbYMorpXpupKxelNZI6nD5rrjXOK6GIpBNUxz5nQ0aaMc
	5+luFjm1guQTM512p7hnsUfPBIDjJSoIHmzQ6aeoN/h9PVGLhkfKuEZOqrdayT417aX6KU
	qlz2kPJqLncwRd6Y2NvhzzVV+5GtVDHMrm93qKMEh6JGsoU0o5xYFspQDQRRwA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Lorenz Brun <lorenz@brun.one>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] arm64: defconfig: Enable GPIO_SYSCON
Date: Sat, 25 Nov 2023 20:37:44 +0100
Message-ID: <4890462.KFe8axKcMy@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230719102427.3617577-1-jagan@amarulasolutions.com>
References: <20230719102427.3617577-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231125_113801_046246_307B0FCD 
X-CRM114-Status: GOOD (  18.52  )
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
Content-Type: multipart/mixed; boundary="===============9193442972700361564=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============9193442972700361564==
Content-Type: multipart/signed; boundary="nextPart4424799.KjT0GdQ6BB";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart4424799.KjT0GdQ6BB
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v3] arm64: defconfig: Enable GPIO_SYSCON
Date: Sat, 25 Nov 2023 20:37:44 +0100
Message-ID: <4890462.KFe8axKcMy@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230719102427.3617577-1-jagan@amarulasolutions.com>
References: <20230719102427.3617577-1-jagan@amarulasolutions.com>
MIME-Version: 1.0

On Wednesday, 19 July 2023 12:24:27 CET Jagan Teki wrote:
> roc-rk3328-cc board has vcc_sdio regulator controlled by a special
> output only gpio pin. This special pin can now be reference as
> <&grf_gpio 0> via gpio-syscon driver, as mentioned in below commit.
> 
> commit <99165b93dafe> ("arm64: dts: rockchip: add sdmmc UHS support for
> roc-rk3328-cc")
> 
> So, enable bydefault on the defconfig.
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 6cbf6eb59378..70cffd87aa36 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -619,6 +619,7 @@ CONFIG_GPIO_PCA953X_IRQ=y
>  CONFIG_GPIO_BD9571MWV=m
>  CONFIG_GPIO_MAX77620=y
>  CONFIG_GPIO_SL28CPLD=m
> +CONFIG_GPIO_SYSCON=y
>  CONFIG_POWER_RESET_MSM=y
>  CONFIG_POWER_RESET_QCOM_PON=m
>  CONFIG_POWER_RESET_XGENE=y

On my Rock64 (rk3328-rock64) I was getting the following error message:
gpio-syscon ff100000.syscon:gpio: can't read the data register offset!

Doing a `git bisect` led me to this commit. I can show the `git bisect`
log, but I don't think it adds any value. This commit didn't cause the
error ofc, but merely exposed an existing issue.

I did see that rk3328-roc-cc.dts has an `vcc_sdio: sdmmcio-regulator`
node which rk3328-rock64.dts doesn't have, but I have no idea if that
should be added to Rock64's dts file.
(Or how this issue can/should be fixed in general)

For a long time I thought that the following error (in `dmesg`) is
connected to it, as they (initially) show up together, but I'm not sure
anymore. The compatible string which made me propose to add GPIO_SYSCON
to Debian's kernel, is close to the `power-domain@RK3328_PD_HEVC` node
in rk3328.dtsi. But after building a kernel without GPIO_SYSCON enabled,
I still got (at least 1 time) the following error message:

rockchip-pm-domain ff100000.syscon:power-controller: failed to get ack on domain 'hevc', val=0x88220

This error doesn't always show up, so maybe there's a timing issue
involved?

Cheers,
  Diederik
--nextPart4424799.KjT0GdQ6BB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZWJNCAAKCRDXblvOeH7b
bq50AQDMLSiBBI62SmPvF6rTId4Cwxyc/DHC2YdMI0kskXfKgAEA6BWNIoJDOoQ6
aB/ophkmojp+SgucLdV55g+Ek6LhNA0=
=RFOm
-----END PGP SIGNATURE-----

--nextPart4424799.KjT0GdQ6BB--





--===============9193442972700361564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9193442972700361564==--




