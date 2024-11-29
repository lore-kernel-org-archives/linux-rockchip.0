Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F00BFD6EC0E
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Nov 2024 14:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HhRNJsKEjJMhgtSI1CE94sdiccRidceBOKonaR7r0Gc=; b=HsUJZhQ/4KsLNa
	OttLwI+iqW8ddNbizUt/rS2JbG/MmADlnU0a1dgqfEc7DNt6hApEhEwoi6nShVKiJYsu9VZiecTfb
	06XzPty3Hzgqk5pLGQqm+jf4aq3McsXsQCCiq8c9y1Me57yD5ulLDgG3Zk6GKuRxapmx7tS8om5Lz
	eTmeqedpwQ2nn311P61QLpCp18eQ5WhW1BbqTrfBukNwFRzNj0IBRWn0YWcqY5ga5SDndWBA7JOUE
	GzWNItTpIuK9DjyEJZPyMnTGsl9TU3TeykMaC6CULf/ZqIM3P7ZqQukmwtY0r9qCS9t/hmqJun8CR
	m5S8Cdgw1vdUR7rncJxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1fT-00000000HFK-29WL;
	Fri, 29 Nov 2024 14:08:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1fR-00000000HEO-0faN
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Nov 2024 14:08:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0lF/n7S4HfFLGPyAkNm7KJ53jOZRfJ/HEWzLfv+k1lE=; b=zOVveIsn/XSf3LTUtma3JMIG4N
	H5Xnm1Vyc3dI8UDS82M6fK8rHuIjb+4BNbJGirspInOKUygAL0jx8XdDGzf9BvgmAFsMU8gYD2TIB
	HJTRg1QrBuRgF34ht1UtnBm7gb80R6o1BI2w4UiIwr+FdFIftG8Oy1ucUlraTyZ5T/XQDoLq1w7+7
	rebi/osAi/i65EedqQo/0r+Xli9iYrs6QIU7SvV4ruWjJBXnAfDqEIDsa8MLPLuR0ngE6JQ2cPL/w
	yVBwGqpKFL7u9vouO8/ToJU8+lx3MaR0wOkvytSmUf33hb7Y5CdEJ4Nb2icPR04/2cltWrvPStFuO
	evbpc7cg==;
Received: from i5e86190f.versanet.de ([94.134.25.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tH1f4-0000X6-AE; Fri, 29 Nov 2024 15:07:58 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>, Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dsimic@manjaro.org
Subject: Re: [PATCH] arm64: dts: rockchip: add support for device tree overlays for
 Radxa devices
Date: Fri, 29 Nov 2024 15:07:57 +0100
Message-ID: <3674598.hdfAi7Kttb@diego>
In-Reply-To: <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
References: <20241129002419.60404-1-naoki@radxa.com> <1952472.6tgchFWduM@diego>
 <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_060821_213031_C75BFF42 
X-CRM114-Status: GOOD (  23.99  )
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

Am Freitag, 29. November 2024, 13:46:12 CET schrieb Diederik de Haas:
> Hi,
> =

> On Fri Nov 29, 2024 at 1:20 PM CET, Heiko St=FCbner wrote:
> > Am Freitag, 29. November 2024, 01:24:19 CET schrieb FUKAUMI Naoki:
> > > since Radxa devices use device tree overlays[1][2][3], make base .dts
> > > support them.
> >
> > this essentially doubles the sizes of generated DTBs.
> >
> > In previous iterations there were concerns that this might overload
> > allocated memory in legacy firmware that might still run on people's
> > devices.
> >
> > I'm not sure if someone did look deeper into that meanwhile and you
> > can't of course not require people to update u-boot just for a kernel
> > upgrade. Hence previous overlays do not enable those options but instead
> > depend on "distributions" to handle that.
> >
> > So I'm definitly not sure how to proceed with this.
> =

> In my recollection this was brought up when the restructuring of the arm
> (not arm64) dts 'tree' was discussed.
> So hopefully Rob can recall the details?
> =

> But IIRC, the objection was about enabling it *globally* and instead it
> should be done more granually, be it on the SoC manufacturer level
> ('rockchip') or on the SoC ('rk3588') or on the board level as is
> proposed in this patch.
> =

> e925743edc0d ("arm: dts: bcm: Enable device-tree overlay support for RPi =
devices")
> is where it got enabled for RPi devices
> =

> I can't speak for the Debian kernel team, but the general approach is:
> get it fixed (or in this case enabled) *upstream*.
> That's why Aurelien Jarno (who's a DD) send it upstream.

I actually meant that less broadly and way more Rockchip-specific ;-)

I.e. I think it was Dragan that brought it up that old firmware binaries
(u-boot, tf-a, ...) may occupy memory regions that may run over by an
overly large dtb, but can't find the mail right now.

Hence when unsuspecting people update their kernel on a
(i.e. Radxa-)device with really old firmware there might be a possibility
that stuff may break when the dtb handed around doubles in size.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
