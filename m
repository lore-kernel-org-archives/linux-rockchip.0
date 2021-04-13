Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EAE6C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:21:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E82C7611CE
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:21:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E82C7611CE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0EgiDCJ/CPpRub7PRWGMHuWcSrlQ+Y7pS0pr61s+gew=; b=jzEEmLNefkCCOw0kmdb853Unz
	ZrejZ1vzGQfb33d7oCaG5V838Tgm3W7pGC6V9AzKHOwnrBil+A9uRmavUSd4m+3vL8V4p1oJ+H+Ss
	6etv+9zLY27drR9vN0zrJKWEzMA0KFSwSUbooKAUEaNefndJnJ2vd9+zYOwj6TurekHcoCGl1ikKe
	hkd4/egWUgmNo2CXtih3SgFWrGsETuTkYJF7rzVq0/l4iQ/BEUMXRkbgsoh1o25J4EPnyO5ymVJhD
	6+EAuNqI4fFoSQOvJVibGshtMaba1r29pLxyVwBxweVNEU0eWWew2EKX1qMSMQCAJX4tBdmjq49gU
	b5maLohpw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWKr0-009cxc-EB; Tue, 13 Apr 2021 15:21:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKqo-009cw2-OB; Tue, 13 Apr 2021 15:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=9J3TXndvIULj3WAZLGbE3ugc9ArzX8JjLTHybcxDjc4=; b=WAvDAmeRZYD2vI2c6BXUdwSeQd
 vGWGUVGcjzJVv4giG1Tuyi95+hpf+HrWsWZB7yMV14xmtTu0rPS5zEkB4YrevQgPxVOA7CVwEOImb
 QZvjRLFm9S7b8ZBWbC+7XTZZghqGz0VOUUjAyq+21AS5OeIcZwG+Za0Jxq6pfPgaGdPJlJ2FgUfei
 kYduvcOR19BalJLcDqBjQCsDxA0wJ6/+3XwcEWQYO6ruN1vHTrn2lMTf196UUBeSvtdTvE4R+BGA+
 7/2ie42XmM03NBFKWHQUjjn1UHTnOn2AsNuAFsOIuBmpJ2mK1X6/rsSAMteWEhoIDGeHeA9+wYBb0
 +uFoG5Xg==;
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKqm-0078Zd-AX; Tue, 13 Apr 2021 15:21:13 +0000
Received: by mail-ed1-x533.google.com with SMTP id x4so19904849edd.2;
 Tue, 13 Apr 2021 08:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9J3TXndvIULj3WAZLGbE3ugc9ArzX8JjLTHybcxDjc4=;
 b=CuNah4ZK4moASJGCrTJPzX6e3r7OxjfMdSrxWLCMvfTSCP0T11NHw3dALbKCGYUS3K
 DZn/wteiPjKltZQU/Vt/wySi5bTNY2k81UMkfO2Yo38vyYB8fzmVUjvGWOaqrO2pNrFT
 Rflqbz93aJ69i/77xbLNVJgzm5TKvOPhX8dMyi1gecobZVSEPhmAR+chn++VCswPvqDh
 /zRzXXyC6CGtDdgkB7X98vDCZQMVqSIyC+asOYW0XtpGAZbJyx12onGZjnZba1AoqK2k
 nb46qAp3GcHxvtsToNvt12g741XjkfkfLyGwS4mC71G7EGIXDihfYuoXaJmg1ugVXjDU
 fjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9J3TXndvIULj3WAZLGbE3ugc9ArzX8JjLTHybcxDjc4=;
 b=fpTFcZOol+BUY0b5qXd0+T4ma00sCd1H/Tot3AsqOGsGKb+g29rFZJbawUVggfsX7Z
 WjkYgeBlKSR1Ln0FFBhO2YkOnY31Ao39UgoOxFUlvFXWDLb1Esf/7Cu15enJY647x9qS
 VRNhGs8AdXl7vb4vg73WTzoTI77R5x55C2mTu3hIKyVzY4fq9a1vJRy5sYfen20vNkZT
 Ras8RTxgbzULHy6ODOtdz32D7N6G2PSR1TtW1R4pFqoo5bYERx4P1hB0F/KHue62cePP
 iFAqedg8enypbf1ky82xNfCcy1uEjiR6w0l9xlljF0LnPXDe+TUmU0nT7vWyJ39R7Dpo
 UMsg==
X-Gm-Message-State: AOAM531oeOoCUQHVzP+RfaOsTPOqFx89nvLDcdb618nW+bsIE0j7++70
 +8q5EX5pxfrGyalw3GQWDu4=
X-Google-Smtp-Source: ABdhPJxt5Xg16qvMSSfmRrT3ax/lsuy7w1rKcX9+TTamA1Z0wsuc7X1qXwvelnXFMYbmGWfchNaPog==
X-Received: by 2002:a50:f40a:: with SMTP id r10mr35884651edm.200.1618327270259; 
 Tue, 13 Apr 2021 08:21:10 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id h24sm8172014ejl.9.2021.04.13.08.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 08:21:08 -0700 (PDT)
Date: Tue, 13 Apr 2021 17:21:49 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, robh+dt@kernel.org,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Message-ID: <YHW3DYjr2ifBltVk@orome.fritz.box>
References: <20210412200155.5316-1-jbx6244@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210412200155.5316-1-jbx6244@gmail.com>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_082112_388262_40D16DF8 
X-CRM114-Status: GOOD (  17.97  )
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
Content-Type: multipart/mixed; boundary="===============4458471472178448728=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4458471472178448728==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5lcH8ISxRT1ADI6c"
Content-Disposition: inline


--5lcH8ISxRT1ADI6c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 12, 2021 at 10:01:52PM +0200, Johan Jonker wrote:
> Current dts files with 'pwm' nodes are manually verified.
> In order to automate this process pwm-rockchip.txt
> has to be converted to yaml.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> For some SoC nodes this patch serie generates notifications
> for undocumented "interrupts" properties shared between
> PWM channels till there is consensus of what to do with it or
> someone makes a solution for the whole PWM block.
>=20
> Changed V3:
>   fix mistake with compatibles introduced in V2
> Changed V2:
>   changed schema for clocks and clock-names
> ---
>  .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
>  .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 88 ++++++++++++++++=
++++++
>  2 files changed, 88 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.ya=
ml

Heiko, do you want to pick up patches 1 & 2 into your tree along with 3 & 4=
? If so:

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--5lcH8ISxRT1ADI6c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmB1twoACgkQ3SOs138+
s6EInA//Qhd5kjNrJ7CIBfxAtCNmeqCKe/InIgxFdKwoUuUj5DaXIRLkaTquMCOP
HLUUaHvlrD7bVWWh9RJncCgxbcBBx9q8xtBYC+mXpeSZIZL1rEURUDt0ZOAoPffS
fKtneDEROOcmFz5kvmfcKXvl978cc0UYRFdmjfULzIWUpf+uFaFR0UNfbfoKSORC
l7fdAlDlLvIKirzsqFULwTUPGww6ronyF9iy0Xd8gSPEx/z0TGdAZgIscoFzEkvg
rrkWQZutZlVetD0+GNNn9cyZk7aeG+uAsQnusQRqgDreLwte0sJXWud47uElwHO0
3ITmY4wZ7GxwmmpgqDVZAB8HxOezXolwemasxV3nzO5gMPFoAXNXoBVina4SLcnp
FdDsUgJcsHXC30Bynd3+B2DUVlTWEZvMso7CnQRg+ljXARS8eyk6QaiHHTZ42Gb0
0YZqM+uI82AyabHreSVROiuk4ENMZtqjMKLYbF6o0Dy2VXM8CI5hPqnXitEqpqtZ
/fxJ++aVGpOMdLUpDN9F6X6K6z104C0atlZjj7/Egk1zFxUwA8vLozSEe+KDgvaH
+8TC0c2/RR5rHjTBgYFaMHReXI5O2e/94SH3x7luIaO17nGfAwcn9kJD7jKWgeyt
EEO7abYq4hiwEu5/bO4FroIxDXEprb+7HlDrt7OdAtPyZ6QXsBA=
=rjAb
-----END PGP SIGNATURE-----

--5lcH8ISxRT1ADI6c--


--===============4458471472178448728==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4458471472178448728==--

