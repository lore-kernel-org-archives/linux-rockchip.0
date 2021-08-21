Return-Path: <SRS0=bXWU=NM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8391C4338F
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Aug 2021 15:29:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 758AB61212
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Aug 2021 15:29:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 758AB61212
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDSQTkTCMclpjN2rsnP4rloAvcBt17+lnDWN8s+Szec=; b=wXN87Ysz/tD0Ai
	4cTEm5p3O+L+6USjDZvhv8DzESi7e4/CQE12jGLVNCKKPdh0OmgIIevbC11voUsG2ZWbqrmcD2y30
	I+fqqAHJ2V7pjTISFwcPaOZmi1JphGen7WNasmkg1GyuO1NSF6h1PtgycAPHUxR4Y+GSUcWKy+qzZ
	/BhXvYtaSqkcVDB4jvtuGe7z6InSzYm6R0dO+mS8vsDS2YUE40qn/RVLPz68DKOIM0gRLkh3e6eL7
	PWKT4f0FWgMfJJKKuwc0bI3D9scxvnbC8jsC8qcCvSbOTohOLO2HsSLOAYWv3SYL/4BHoZw4Vxou+
	dFif5R+qwxiUzdGEWPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHSvb-00CvJS-9n; Sat, 21 Aug 2021 15:28:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHSvO-00CvIW-HN; Sat, 21 Aug 2021 15:28:47 +0000
Received: from p5b3b3c9d.dip0.t-ipconnect.de ([91.59.60.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mHSvK-0000I5-5o; Sat, 21 Aug 2021 17:28:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Doug Anderson <dianders@chromium.org>,
 Brian Norris <briannorris@chromium.org>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
Date: Sat, 21 Aug 2021 17:28:40 +0200
Message-ID: <10392569.T7Z3S40VBb@phil>
In-Reply-To: <CA+ASDXO=Bjr+f4mtXwt7vtiTz6tSw7SPuY1RvNWMp6-43Baqfg@mail.gmail.com>
References: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
 <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
 <CA+ASDXO=Bjr+f4mtXwt7vtiTz6tSw7SPuY1RvNWMp6-43Baqfg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210821_082846_634291_66161457 
X-CRM114-Status: GOOD (  22.32  )
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

Am Freitag, 20. August 2021, 23:16:23 CEST schrieb Brian Norris:
> On Fri, Aug 20, 2021 at 2:05 PM Doug Anderson <dianders@chromium.org> wrote:
> > I guess one minor nit (now that I look back on the veyron patch where
> > I mentioned it explicitly in the commit message) is that on the veyron
> > ones we sorted this down at the bottom with the other pinctrl stuff
> > instead of sorting it alphabetically with everything else. I'll let
> > Heiko say which he likes better.
> 
> Huh, didn't notice that semi-convention. I can sort it however Heiko prefers.

Hmm, I wouldn't call it a semi-convention ... it was more an idea of
getting all the longer pages of "stuff" out of the way.

I don't think I have a real hard preference for the gpioX nodes
and I guess in the long run it might be helpful to try to limit the
number of "semi-conventions" .

I still like "pinctrl at the bottom", but I guess it might be easier to
with alphabetical for nodes with the rest :-) .


Heiko



> > I also notice for veyron that we had a second "ABI" exception for the
> > recovery mode pin, but I believe that goes through a different
> > mechanism now so we're good there.
> 
> I believe the recovery mode pin is dropped from recent designs (don't
> quote me in general on that), and there's a different mechanism used
> just to get the at-boot-time "recovery mode" state directly from the
> firmware.
> 
> > Even though I didn't do a line-by-line review, I'll still give:
> >
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> >
> > ...though it's possible an "Acked-by" would be more in the spirit of
> > that? Not sure...
> 
> Thanks!
> 
> Brian
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
