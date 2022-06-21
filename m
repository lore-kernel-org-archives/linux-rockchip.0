Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B533CCA473
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jun 2022 13:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8NPYVb1iTST6ONI2i6mCizwzPIVLkbRQLRqWFtmCec=; b=NKCr8QQoLWqBc9
	N7pMq0yJzSKViaL0lkwe2ZBNvvqL61sb5H8pWl4rG67gBOYLiRcj03yTZbdayuklNs70w5hDsDdpW
	ZAZ3bw+I+TbaoMfrGiGzqEB857ZFIPoNr6UfFVxNwY9kb1WmO6TCPnEhDmaB8H9zJM9EfKsIgcE1b
	iLc4NsgAP5iQzYKZvrpFtbHXgE4czAkt3lg8+TJk+JN1Q3xMnpmga2mKnsRWdqvdS1qNGicVecvjs
	ohLWK6bNUCS7VF9K5JN5Leejo+UPRR5p5fu9rf248cwLQ5MDS8iVeRkEKWWPnDHwL2oWjeciOPwGh
	ZWaPV17IXoOEfDaZTKiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3e5U-005hBH-P5; Tue, 21 Jun 2022 13:38:36 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3e4x-005gxu-UC; Tue, 21 Jun 2022 13:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=metanate.com; s=stronger; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-ID:Content-Description;
	bh=DC4ZEyWBHqB8Ee7U3iV5pXPcACu5mfk1YFIKPVvFHL0=; b=lbBCVFbO79ungOcgVG+jyWLNrM
	/KOz1ugytuFjXsCl890ONimeyORTPAQUXBUIjHvM+X177APV2JZaL57SPVVwzPSV8sYu/AsVywSKx
	h36eglYOvSj+A+72OyE4ORJArfNcTeceSS97vUxpu/hOTBsGgoL55w72ktvIfHGZrT4dKQ31b7fQ5
	eb0emxr7GEA9U44eUsGxzEnodv9kPHcIZ8MhCDVSrbtmt/aIPrOZRX+JhIQft+ft7W8B6DM8VsVHV
	vDKEyyI75GWBzNoaDTKDO6QXfcmFEoHFXk8mJXlKwmD+q0fSf//m8h5rohnn4eLPq+fGEWexxN66h
	R+RDMOZg==;
Received: from [81.174.171.191] (helo=donbot)
	by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <john@metanate.com>)
	id 1o3e4X-00032a-3U; Tue, 21 Jun 2022 14:37:37 +0100
Date: Tue, 21 Jun 2022 14:37:35 +0100
From: John Keeping <john@metanate.com>
To: LABBE Corentin <clabbe@baylibre.com>
Cc: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 14/33] crypto: rockchip: handle reset also in PM
Message-ID: <YrHJn6Pl5B/1pj9L@donbot>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
 <20220508185957.3629088-15-clabbe@baylibre.com>
 <YrBUODGF51oUsF1f@donbot>
 <YrF74tmA9qc+I3JF@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YrF74tmA9qc+I3JF@Red>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_063804_294991_4F482CC2 
X-CRM114-Status: GOOD (  22.51  )
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

On Tue, Jun 21, 2022 at 10:05:54AM +0200, LABBE Corentin wrote:
> Le Mon, Jun 20, 2022 at 12:04:24PM +0100, John Keeping a =E9crit :
> > On Sun, May 08, 2022 at 06:59:38PM +0000, Corentin Labbe wrote:
> > > reset could be handled by PM functions.
> > =

> > Is there any further rationale for this?
> > =

> > After this change there is no longer a guaranteed reset pulse on probe
> > since the reset control may already be de-asserted.  This is normally
> > the most important case for a reset as it's the only time when the state
> > of the hardware is unknown.
> > =

> > The original use of devm_add_action_or_reset() seems a bit weird already
> > since there doesn't seem to be any need to assert reset when the driver
> > is unloaded.
> > =

> =

> I am not an hw engineer, so my knowledge on reset is low.
> So why not having a reset pulse on probe is a problem ?

The point of the reset is to bring the hardware back to a known state.
Since we don't know what state the hardware will be in following the
bootloader or previous OS, I think the reset in probe is the only place
that it is important.

If this patch isn't fixing anything, I suggest just dropping it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
