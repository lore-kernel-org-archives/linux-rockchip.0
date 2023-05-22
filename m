Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5107FC77B73
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 08:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=grI9r/CQGosS1bVGUfHpcTYqZ0SZcENUo/kHEoWihpw=; b=Radh+7PyRKJ01l
	KCMajRO2FdwGAsHSZLs38ZVceOFSp/VhiD1PfPZGN7muJS3a78YrUcJwRQVeuI4j1WbUsfmmQMEt+
	O6n3BafErXhH+ccu2M3ubp7bqAGC6UkhIA/WLM13/MO8gEom3ms9J4n3GlBR+8MXeuLdI3FpiTn2j
	UEuYI5+7l7LZiZcyk1ynL4vEqkNJtvfWxBpgHIbTXwXV31Rc48ZfRuSvyw3higxyff4abMIb19OWf
	ZEqz51oZTaiKeU47nc+X0wemN/WFWx2aDkT+pK5J6MDYz9sYukVQzFjvfF+0szuaoD6gwpq//wpmZ
	YmyQp0Jr9fFSL0OXCFVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q11ND-005og1-0j;
	Mon, 22 May 2023 08:58:35 +0000
Received: from meesny.iki.fi ([2001:67c:2b0:1c1::201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q11N9-005oel-1s;
	Mon, 22 May 2023 08:58:32 +0000
Received: from hillosipuli.retiisi.eu (82-181-192-243.bb.dnainternet.fi [82.181.192.243])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sailus)
	by meesny.iki.fi (Postfix) with ESMTPSA id 4QPrvc5zc2zyTW;
	Mon, 22 May 2023 11:58:20 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi; s=meesny;
	t=1684745905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ctT1nifoev3hHlgWE8Eu+txWc48x8uyKSST1/8B9WGc=;
	b=w7PZ86zyjH3fSidq7rCaEGcLKr+Eu9zcIobfhozFkU6pOpRuepM8640+Im/apSP91WTtok
	13aq/IGEzHHcoJHwVJsshcMdQZwpmy8Xk3omNtfYsWFbUCOpPA5JB1jG3/0b21cttppQLC
	MbLTWcxXr1agKN5GM9vIG6lraDOFIKg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=iki.fi;
	s=meesny; t=1684745905;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ctT1nifoev3hHlgWE8Eu+txWc48x8uyKSST1/8B9WGc=;
	b=VecV+KnmzrrkwGGIz93aqacUUcZ3ehs9+IsNUtsxRmguOBXjxqH1dLp0+iHBqXUuPD2Hcs
	lxCA3URSu3rDZofUIXxqduDDLde6x1gk/+oAcd7oFCc01Z9cW2xwEgl6DyJRcjQIP7hIUU
	rAZ75F2VWzh0te6RqE7iojaOMAOKd/s=
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sailus smtp.mailfrom=sakari.ailus@iki.fi
ARC-Seal: i=1; s=meesny; d=iki.fi; t=1684745905; a=rsa-sha256; cv=none;
	b=bufxwxn4WKn1MJyZ7FovEvpFcGtfhxM7RrI0GEzzwPy+gOsWGK5NACUJqi+9fd8dr+HsTl
	1uR3jWIcIxwR2fMrkG3lY1F2xA6bsG0FxwFrA7lN1/fd3c6N7T0ck7fa8CQIrUn4lImbOi
	b7dcY5QU8QZ0VvHFLDgKCIPi6JY/5IU=
Received: from valkosipuli.retiisi.eu (valkosipuli.localdomain [192.168.4.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by hillosipuli.retiisi.eu (Postfix) with ESMTPS id 35939634C91;
	Mon, 22 May 2023 11:58:20 +0300 (EEST)
Date: Mon, 22 May 2023 11:58:20 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>,
	Jacob Chen <jacob-chen@iotwrt.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH RESEND 2/2] arm64: dts: rockchip: Add RGA2 support to
 rk356x
Message-ID: <ZGsurJERE9uZfMs0@valkosipuli.retiisi.eu>
References: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
 <20230119-rk3568-rga-v1-2-43d4d14365e6@pengutronix.de>
 <ZGUfTP1EXtlJbtxJ@valkosipuli.retiisi.eu>
 <2290673.ElGaqSPkdT@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2290673.ElGaqSPkdT@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_015831_832942_ACA74895 
X-CRM114-Status: GOOD (  15.86  )
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

On Sun, May 21, 2023 at 12:46:11PM +0200, Heiko St=FCbner wrote:
> Hi,
> =

> Am Mittwoch, 17. Mai 2023, 20:39:08 CEST schrieb Sakari Ailus:
> > Hi folks,
> > =

> > On Fri, Jan 20, 2023 at 10:14:22AM +0100, Michael Tretter wrote:
> > > The rk3568 also features a RGA2 block. Add the necessary device tree
> > > node.
> > > =

> > > Acked-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > =

> > Can this patch be merged via the media tree? I don't expect merging the
> > other one via a different tree being an issue either, so alternatively =
to
> > the 1st patch:
> > =

> > Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> =

> thanks for the Ack. To prevent conflicts with other additions to the
> rk356x.dtsi file, I've picked now both patches for the rockchip tree.

Thank you!

-- =

Sakari Ailus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
