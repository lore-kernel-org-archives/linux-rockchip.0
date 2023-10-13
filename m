Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA16CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 08:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahHewAUojfG5lOZmwz2cmZsoi6lMklTajp5bfJbNMuY=; b=Ek6adawAwJaWdN
	nALbfdnaH9y4+AyPFa3wei+zmGMZ4KWpgrkq5chLcOc1HesUxoeR9cfV8n7lTLsQjVDpcMBQxPXCg
	nGlN8S/fjCILsBABFB/tj2koTWo34sskM9ZzS3sNd2UrPdCYlou+jb0GjZWu/Of6XMPpRE1dO7isV
	0AM7lyuOZiAGhfJ602sIiB65KyUcLlrqWj/LlcnXGQADtawEQ9Spv3TNVwghuj829Ok7rrmyrWJ67
	++oUeo39JXKg5x/C0VN2DIQhYUHQnfA2qSTtTFExIqPvQ0iuCUqMw6hl2Cg4mli/Jhl6LenaDtQNs
	kA9Uu+XDs2YSiWF1JC4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrDHa-002nQD-1z;
	Fri, 13 Oct 2023 08:12:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrDHX-002nPm-2A
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 08:12:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrDHW-0004ZQ-77; Fri, 13 Oct 2023 10:12:26 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qrDHR-001Ltf-TW; Fri, 13 Oct 2023 10:12:21 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qrDHR-00EF2M-Qh; Fri, 13 Oct 2023 10:12:21 +0200
Date: Fri, 13 Oct 2023 10:12:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org, heiko@sntech.de,
	hjc@rock-chips.com, sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com
Subject: Re: [PATCH 3/3] drm/rockchip: fix the plane format defination of
 rk3568/6
Message-ID: <20231013081221.GN3359458@pengutronix.de>
References: <20231012023439.1497304-1-andyshrk@163.com>
 <20231012023705.1497648-1-andyshrk@163.com>
 <20231013061106.GH3359458@pengutronix.de>
 <afd589f4-4fcc-4ede-8e16-a8bb4d8f29f2@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <afd589f4-4fcc-4ede-8e16-a8bb4d8f29f2@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_011227_728536_BD32D245 
X-CRM114-Status: GOOD (  26.60  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Oct 13, 2023 at 02:43:31PM +0800, Andy Yan wrote:
> Hi Sacha:
> =

> On 10/13/23 14:11, Sascha Hauer wrote:
> > On Thu, Oct 12, 2023 at 10:37:05AM +0800, Andy Yan wrote:
> > > From: Andy Yan <andy.yan@rock-chips.com>
> > > =

> > > The cluster windows on rk3568/6 only support afbc format,
> > > linear format(RGB/YUV) are not supported.
> > > The cluster windows on rk3588 support both linear and afbc rgb
> > > format, but for yuv format it only support afbc.
> > > =

> > > The esmart windows on rk3588 support uv swap for yuyv, but
> > > rk356x does not support it.
> > It's a bit hard to track which sentence in the description refers to
> > which change in the patch. Could you split this up into multiple patches
> > to make this easier reviewable?
> > =

> > Renaming of the formats could also be a separate patch. Patches marked
> > with "no functional change" are nice and easy to review.
> =

> =

> How do you like if I split=A0 the patch like bellow:
> =

> PATCH 1 : fix the format

When you say "The cluster windows on rk3568/6 only support afbc format, ..."
and "The esmart windows on rk3588 support uv swap for yuyv, ..."
it sounds like two orthogonal changes which should be done in two
patches.

> =

> PATCH 2: rename: s/formats_win_full_10bit/formats_cluster/
> =

> s/formats_win_full_10bit_yuyv/formats_rk356x_esmart/
> =

> s/formats_win_little/formats_win_smart/

I'd likely do the rename first, but I guess that's just a matter of
taste.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
