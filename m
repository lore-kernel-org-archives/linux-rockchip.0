Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EE33C07E95
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:20:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D2CB660FDC
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:20:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D2CB660FDC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ks0O6dPGjpyUqkY2SH1UQwl3ungO7nkp5W+SKE0/BY=; b=NoP3UZHYxQG9K1
	btmNMuDKwefjaSrY217jPPuXix4KTCuWaQO7i3eFsTb4vdbDiEMWCJ3vRbHapFLQwztX9R2fSZd5+
	AyGZwolHt09u3wgHiYdAeB9kcLQvIzeDvCA0rgoMMnd6fdwFyWi+H9KBu3E35/Bq/+xQC4v/tO3sI
	hL0xPS6mSd1ql4stjUuPWFV17slp1giM9JWgHO5C2fqT8+w7hfnVPmwY5htI8sTmYwQcFWLU8hFU7
	PBSWo4nUFicigLurgwVu1MC/shKafpB5iqjTmI842oqdJv7594jvVIsOeC4X/F7K5ripRkQNQYWyQ
	fBztQgCTmNrce9u6y8AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5Zkn-00BFIH-TY; Mon, 19 Jul 2021 20:20:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5Zka-00BFHD-9x; Mon, 19 Jul 2021 20:20:29 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m5ZkU-0000Ug-KN; Mon, 19 Jul 2021 22:20:22 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?ISO-8859-1?Q?N=EDcolas_F=2E_R=2E_A=2E?= Prado <nfraprado@collabora.com>,
 Rob Herring <robh@kernel.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 Xing Zheng <zhengxing@rock-chips.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk <linux-clk@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: clk: Convert rockchip,
 rk3399-cru to DT schema
Date: Mon, 19 Jul 2021 22:20:21 +0200
Message-ID: <5554453.PYKUYFuaPT@diego>
In-Reply-To: <CAL_JsqKoEwbfKz3s3OJJkk8izu2ak=dEhD2qjaw6Ad71Tb3_EA@mail.gmail.com>
References: <20210610175613.167601-1-nfraprado@collabora.com>
 <20210719195115.cgh7fh54kwloo4o7@notapiano>
 <CAL_JsqKoEwbfKz3s3OJJkk8izu2ak=dEhD2qjaw6Ad71Tb3_EA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_132028_384415_DE96437F 
X-CRM114-Status: GOOD (  14.39  )
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

Am Montag, 19. Juli 2021, 22:12:10 CEST schrieb Rob Herring:
> On Mon, Jul 19, 2021 at 1:51 PM N=EDcolas F. R. A. Prado
> <nfraprado@collabora.com> wrote:
> >
> > On Thu, Jun 24, 2021 at 01:00:41PM -0600, Rob Herring wrote:
> > > On Thu, 10 Jun 2021 14:56:13 -0300, N=EDcolas F. R. A. Prado wrote:
> > > > Convert the rockchip,rk3399-cru binding to DT schema format.
> > > > Tested with
> > > > ARCH=3Darm64 make dt_binding_check DT_SCHEMA_FILES=3DDocumentation/=
devicetree/bindings/clock/rockchip,rk3399-cru.yaml
> > > > ARCH=3Darm64 make dtbs_check DT_SCHEMA_FILES=3DDocumentation/device=
tree/bindings/clock/rockchip,rk3399-cru.yaml
> > > >
> > > > Signed-off-by: N=EDcolas F. R. A. Prado <nfraprado@collabora.com>
> > > > ---
> > > >
> > > > One caveat is that this node expects certain external clocks, mainl=
y 'xin24m'.
> > > >
> > >
> > > Reviewed-by: Rob Herring <robh@kernel.org>
> >
> > Thanks! Is this blocked on something else?
> =

> I'm expecting Stephen to pick this up.

actually I'm expecting me to pick this up ;-)

With the merge window closing last sunday I haven't made my
way that far down my inbox yet. I'll just fix that right now :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
