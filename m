Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A510C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mSXpJrw21//wbUHIYkRY2+fWB1e5mFi+G9he/EIIxw=; b=vXtsYlg174HPCn
	qVqcDIXkDlBzsC1KYnVqVnozR1m6wqUQ2yf1i4yzvEprCTKMMkVynss95Flm5893hljn+gUrqDYDE
	E+PJq0z3WKNQkw+MJX3HEZGn01FEJywQoj4fY6r1lFF+vxw84ifJIM6R4Dl9X2EHpj9O2SwHTsmIl
	Y79kkclFsvwvXOpgCkdRVJPF0+gqbzaGyVBd/3dr8FmmgOsn8Sm7KLSNk/2pMQEgnXoekbyfBMLBl
	Sz7rMhqh/Lo/lWFhHjYZiqRvWY8Nv3/SIaIARyI7Z17wsP/l6FhPhNMuZY8sJxMk8L8l4Y7BCz59l
	hZtqcsME8AgkDrvKC7Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rARwH-006rFJ-0q;
	Tue, 05 Dec 2023 09:42:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rARwE-006rDJ-1N
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 09:41:59 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rARw7-0006PT-4Y; Tue, 05 Dec 2023 10:41:51 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, javierm@redhat.com, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 00/10] rockchip: Add Powkiddy X55
Date: Tue, 05 Dec 2023 10:41:49 +0100
Message-ID: <3863273.7aRn1RRit1@diego>
In-Reply-To: <f93acb2c-0871-469e-9744-60e52f4b9918@linaro.org>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
 <170176481258.4073725.14793788958228896320.b4-ty@linaro.org>
 <f93acb2c-0871-469e-9744-60e52f4b9918@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_014158_461950_B44B0B3F 
X-CRM114-Status: GOOD (  16.51  )
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

Am Dienstag, 5. Dezember 2023, 09:28:24 CET schrieb Neil Armstrong:
> On 05/12/2023 09:26, Neil Armstrong wrote:
> > Hi,
> > 
> > On Mon, 04 Dec 2023 12:57:09 -0600, Chris Morgan wrote:
> >> From: Chris Morgan <macromorgan@hotmail.com>
> >>
> >> Add support for the Rockchip RK3566 based Powkiddy X55 handheld gaming
> >> console.
> >>
> >> Changes since V1:
> >>   - Corrected a bug with the DRM mode flags for the video driver.
> >>   - Adjusted panel front and back porch and pixel clock to fix
> >>     issues with display that occurred after correcting DRM mode
> >>     flag bug.
> >>   - Add a new clk frequency for PLL_VPLL to get panel to run at ~60hz.
> >>
> >> [...]
> > 
> > Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)
> > 
> > [01/10] drm/panel: himax-hx8394: Drop prepare/unprepare tracking
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8c2c5d1d33f0725b7995f44f87a81311d13a441d
> > [02/10] drm/panel: himax-hx8394: Drop shutdown logic
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e4f53a4d921eba6187a2599cf184a3beeb604fe2
> > [03/10] dt-bindings: display: Document Himax HX8394 panel rotation
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=be478bc7ab08127473ce9ed893378cc2a8762611
> > [04/10] drm/panel: himax-hx8394: Add Panel Rotation Support
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a695a5009c8fd239a98d98209489997ff5397d2b
> > [05/10] dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=00830a0d8f0d820335e7beb26e251069d90f2574
> > [06/10] drm/panel: himax-hx8394: Add Support for Powkiddy X55 panel
> >          https://cgit.freedesktop.org/drm/drm-misc/commit/?id=38db985966d2f0f89f7e1891253489a16936fc5e
> > [07/10] clk: rockchip: Mark pclk_usb as critical on rk3568
> >          (no commit info)
> > [08/10] clk: rockchip: rk3568: Add PLL rate for 126.4MHz
> >          (no commit info)
> > [09/10] dt-bindings: arm: rockchip: Add Powkiddy X55
> >          (no commit info)
> > [10/10] arm64: dts: rockchip: Add Powkiddy X55
> >          (no commit info)
> > 
> 
> To clarify, only patches 1 to 6 were applied to drm-misc-next,

thanks for the clarification (and applying the patches already)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
