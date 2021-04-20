Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A6FEC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:18:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC8226127C
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:18:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC8226127C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9kEPXpNXDqJxM55EdUNNiT1IlmOLElsVeprVYuMdkug=; b=ZG8l16L0w7N3op+tRz4YTU0RB
	xP8MsuEXngt8w8QgczcgNTKgNpSebZfYiDu7LKAbSutt4d7LLDpKt8UmUkZQaiT3umzJd4vrkZyz3
	C5kaI7ouSyspjJZdG8QCGU+MzV6Kn3/+1huGBlqVrfJQe6HVZBCYmzzgLZNU8A5AWOpDvsYS7Hh6o
	nH3AsDonH9mM7RnhUyQpfqV2gtrsXOPK3v2L3DURBR6eaSEwFk8TOZb6/dQ5kLwy/Gqid2yEU5be6
	0B6oDO8HHYySXP87RKf7QO0LilUK2GHJ2Jbc+jgazynDylX/DdpE81mGbEVIGF2nOoNaWxtgsgLts
	698+0YpUg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYmW9-00Bhta-7W; Tue, 20 Apr 2021 09:18:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmVH-00Bhbo-6C; Tue, 20 Apr 2021 09:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=Wx1b4HRfaZ+r/6ReWVRSHeFPp1P3g6TFkUyUkSeo2UI=; b=lhQ69YP2ELBCCo11sBfvD/OouH
 4UvDC+xZUdCkXN/K9vWXptEGXMp76ia1pOF+Wf5o47BzOBC9LTSyMN1QEo+EEn9myF1272h6q7YPb
 zgT7UvxT5g9spA/KNHaVRq7T+Q3MrPp/5mEYDV4Y0uxlDv0YadYX49HxYJf63k/f072DT3iB1xUCK
 dd5F7voevTteq/nsWGQixhgxtlYKiiMtSvzV+hT0Gm9MIKMfd3T91jUckDbg7zx2J7+dPTmZKTk8j
 cQJMTFS69M7m5L4loe50T2T8agKr1APoJ6KR9+vtGo2yL7gjUO9/N5GfiGdbaz5tRLweZr/I9WQWQ
 FpAx1LjQ==;
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmVB-00By7K-6S; Tue, 20 Apr 2021 09:17:05 +0000
Received: from [192.168.2.10] ([84.202.3.209]) by smtp.xs4all.nl with ESMTPA
 id YmUllUgtKw8UmYmUpl1rqj; Tue, 20 Apr 2021 11:16:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1618910208; bh=Wx1b4HRfaZ+r/6ReWVRSHeFPp1P3g6TFkUyUkSeo2UI=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=gPsYn8b1c2epmHciLLZqj4RU6D/7VDgeFWXvH9Jc/tI77RwCdZ8MUBZzXKbf7iAEY
 93Kdph32ov2MaeQ8+/mAur+oqiSFjQFV4Ipvyz1Z/EzRuUEuVvwhyB9QF+mJA+AM04
 XtrlvOsMPoBd5uWKuoy/98yZBsDIt7X7NTEfeXzxPPZlHP/7unv/bXLHinCvRDGX8h
 mKmk+OIOEPgReV/aybXBqgJac4i1JIU3pqTb+gx51jOzC3RvtnH644JB/fpSeiX1sa
 s81zKOSMmL3tk6Fx5abobsbfjkGsxXF6rhveYSTjHoFDTM0xUXlWY1cfzSf1degZPo
 MwxJNcdiWHjsQ==
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Lucas Stach <l.stach@pengutronix.de>, ezequiel@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com,
 kernel@pengutronix.de, kernel@collabora.com, cphealy@gmail.com,
 linux-arm-kernel@lists.infradead.org
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <ffe9b3f5-94f5-453e-73f0-4b42d0454b63@collabora.com>
 <529b61b1b1e6030c92a7944c4864246521b2ccdd.camel@pengutronix.de>
 <36008691-d075-203d-0cac-2a012773ea34@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <43a767f8-77f5-7937-c484-753a3123f6a2@xs4all.nl>
Date: Tue, 20 Apr 2021 11:16:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <36008691-d075-203d-0cac-2a012773ea34@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfGZKFRcQnHrrB8Ipsf1CNmQf/Flx92YqSYDdOPDeZztqOUClUbawsWCu5A9lWIwXKcgePCyFjcQJwnPrdsJQ581cu0O+/K5cc8vdEdnlVnBbBOWkeAxR
 xn7b0OpspojT5H+gVub8bgWR4QgtN/BKiSmbzMSQBI9vjK1f4N7lM3aSQrKfZiRoCsB8mpe5uURTYC+TOrhO65fcqUvPiGoZ8Oj9FM/1OZ0vU82342Ha44nz
 9ZM5w8MK6vrwqjVSF+ExkbNir/qCbvSxlkfkM+Wuy8q/9XrK5f4KHLWhsRCtIUpYuHlsuhath92nvMZqJinZipkBZlMqaQcUC9eoEWkSt1dhWUZC9U92xvbb
 8N24zp7jFCVUwLShy2QvxK2OCbWgvXGalLXabR+v8bty0BdimuRk9yFTyqAeAgSCf1xBuCa9GQaGhgAnXYCGNJTMOx0u7JKlBLbONBKp1UojBFKsRsIJ4vsL
 PbrdK3xaBInoMdtEZTBH7+gSW78CbyzH6kCAG6LrVlZXTQFXO7wkMXZZB+rDLefpDV1FpGTxqkfXUkFpPdCusEPRk9nmlmeT9V82vcP3ztK8g8XGBjTCRBhE
 CaqFLu7YJ+60+jBzUCP7c6PINBSG6GHXoH31Zjaqfz1UlHr8/age7N7xIlGvNPdcbRxa86WI9DxOgQW2Hm2OqjWjjI5sZiymulMw/T6Xr05TuKZOez2ZBm99
 CGT+I1VWC1rWeshCf5HQND5qVauqaTw/1BumWrmDZosG3LtHNhFO7G1QyvL82vWV+CQcQT3TvAWPojjgYfQsoNSpxaMg/rH0pnUVT9eLDUJU8e5s+E2zKNzl
 CpV25Pho0RD1R5pZBR2wP3iNBOnaJOUOIMdKCnM1cWDEgq9b2mW6wRr7udhvF2PcKhFm+kLWp2d8aBnFJkdriwC/sFktbmn2wl/dZi+3DnXh0xwpgu2dGE8M
 7lvx3DYzaPlOYsPXNxSzy2hCbNn1+5o3bEEZWUksr8r7onstlnX2QHZ2cwJZd9HZmIVIvr2cE7KAMtgtzIt4mnFS6Xi25UDJ02nwEfhOOXehxhUceHfV/eq6
 RcVpiaZxfMZsGT6uKNiQd1bzHDnVQO6dYV19j2fqSyzKJB8Jl1Mza7dp8Eb9Qu7xNsrHQF7bVdJylvnf/04qV6XigCcweSUd5Ew=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_021701_389962_E9E73018 
X-CRM114-Status: GOOD (  18.22  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAvMDQvMjAyMSAxMToxMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMTYv
MDQvMjAyMSDDoCAxNzoxNCwgTHVjYXMgU3RhY2ggYSDDqWNyaXTCoDoKPj4gQW0gRnJlaXRhZywg
ZGVtIDE2LjA0LjIwMjEgdW0gMTU6MDggKzAyMDAgc2NocmllYiBCZW5qYW1pbiBHYWlnbmFyZDoK
Pj4+IExlIDE2LzA0LzIwMjEgw6AgMTI6NTQsIEx1Y2FzIFN0YWNoIGEgw6ljcml0wqA6Cj4+Pj4g
QW0gTWl0dHdvY2gsIGRlbSAwNy4wNC4yMDIxIHVtIDA5OjM1ICswMjAwIHNjaHJpZWIgQmVuamFt
aW4gR2FpZ25hcmQ6Cj4+Pj4+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8gc2hhcmUgdGhlIGNvbnRy
b2wgaGFyZHdhcmUgYmxvY2sgYmV0d2Vlbgo+Pj4+PiBWUFVzIHVzZSBhIHN5c2NvbiBpbnN0ZWFk
IGEgaW9yZW1hcCBpdCBpbiB0aGUgZHJpdmVyLgo+Pj4+PiBUbyBrZWVwIHRoZSBjb21wYXRpYmls
aXR5IHdpdGggb2xkZXIgRFQgaWYgJ254cCxpbXg4bXEtdnB1LWN0cmwnCj4+Pj4+IHBoYW5kbGUg
aXMgbm90IGZvdW5kIGxvb2sgYXQgJ2N0cmwnIHJlZy1uYW1lLgo+Pj4+PiBXaXRoIHRoZSBtZXRo
b2QgaXQgYmVjb21lcyB1c2VsZXNzIHRvIHByb3ZpZGUgYSBsaXN0IG9mIHJlZ2lzdGVyCj4+Pj4+
IG5hbWVzIHNvIHJlbW92ZSBpdC4KPj4+PiBTb3JyeSBmb3IgcHV0dGluZyBhIHNwb2tlIGluIHRo
ZSB3aGVlbCBhZnRlciBtYW55IGl0ZXJhdGlvbnMgb2YgdGhlCj4+Pj4gc2VyaWVzLgo+Pj4+Cj4+
Pj4gV2UganVzdCBkaXNjdXNzZWQgYSB3YXkgZm9yd2FyZCBvbiBob3cgdG8gaGFuZGxlIHRoZSBj
bG9ja3MgYW5kIHJlc2V0cwo+Pj4+IHByb3ZpZGVkIGJ5IHRoZSBibGtjdGwgYmxvY2sgb24gaS5N
WDhNTSBhbmQgbGF0ZXIgYW5kIGl0IHNlZW1zIHRoZXJlIGlzCj4+Pj4gYSBjb25zZW5zdXMgb24g
dHJ5aW5nIHRvIHByb3ZpZGUgdmlydHVhbCBwb3dlciBkb21haW5zIGZyb20gYSBibGtjdGwKPj4+
PiBkcml2ZXIsIGNvbnRyb2xsaW5nIGNsb2NrcyBhbmQgcmVzZXRzIGZvciB0aGUgZGV2aWNlcyBp
biB0aGUgcG93ZXIKPj4+PiBkb21haW4uIEkgd291bGQgbGlrZSB0byBhdm9pZCBpbnRyb2R1Y2lu
ZyB5ZXQgYW5vdGhlciB3YXkgb2YgaGFuZGxpbmcKPj4+PiB0aGUgYmxrY3RsIGFuZCB0aHVzIHdv
dWxkIGxpa2UgdG8gYWxpZ24gdGhlIGkuTVg4TVEgVlBVIGJsa2N0bCB3aXRoCj4+Pj4gd2hhdCB3
ZSBhcmUgcGxhbm5pbmcgdG8gZG8gb24gdGhlIGxhdGVyIGNoaXAgZ2VuZXJhdGlvbnMuCj4+Pj4K
Pj4+PiBDQydpbmcgSmFja3kgQmFpIGFuZCBQZW5nIEZhbiBmcm9tIE5YUCwgYXMgdGhleSB3ZXJl
IGdvaW5nIHRvIGdpdmUgdGhpcwo+Pj4+IHZpcnR1YWwgcG93ZXIgZG9tYWluIHRoaW5nIGEgc2hv
dC4KPj4+IFRoYXQgY291bGQgcmVwbGFjZSB0aGUgMyBmaXJzdCBwYXRjaGVzIGFuZCBEdCBwYXRj
aGUgb2YgdGhpcyBzZXJpZXMKPj4+IGJ1dCB0aGF0IHdpbGwgbm90IGltcGFjdCB0aGUgaGV2YyBw
YXJ0LCBzbyBJIHdvbmRlciBpZiBwdXJlIGhldmMgcGF0Y2hlcwo+Pj4gY291bGQgYmUgbWVyZ2Vk
IGFueXdheSA/Cj4+PiBUaGV5IGFyZSByZXZpZXdlZCBhbmQgZG9uJ3QgZGVwZW5kIG9mIGhvdyB0
aGUgY3RybCBibG9jayBpcyBtYW5hZ2VkLgo+PiBJJ20gbm90IHJlYWxseSBpbiBhIHBvc2l0aW9u
IHRvIGdpdmUgYW55IGluZm9ybWVkIG9waW5pb24gYWJvdXQgdGhhdAo+PiBodmVjIHBhdGNoZXMs
IGFzIEkgb25seSBza2ltbWVkIHRoZW0sIGJ1dCBJIGRvbid0IHNlZSBhbnkgcmVhc29uIHRvCj4+
IGRlbGF5IHBhdGNoZXMgMDQtMTEgZnJvbSB0aGlzIHNlcmllcyB1bnRpbCB0aGUgaS5NWDhNIHBs
YXRmb3JtIGlzc3Vlcwo+PiBhcmUgc29ydGVkLiBBRkFJQ1MgdGhvc2UgdGhpbmdzIGFyZSB0b3Rh
bGx5IG9ydGhvZ29uYWwuCj4gCj4gSGkgSGFucywKPiBXaGF0IGRvIHlvdSB0aGluayBhYm91dCB0
aGlzIHByb3Bvc2FsIHRvIHNwbGl0IHRoaXMgc2VyaWVzID8KPiBHZXQgaGV2YyBwYXJ0IG1lcmdl
ZCBjb3VsZCBhbGxvdyBtZSB0byBjb250aW51ZSB0byBhZGQgZmVhdHVyZXMKPiBsaWtlIHNjYWxp
bmcgbGlzdHMsIGNvbXByZXNzZWQgcmVmZXJlbmNlIGJ1ZmZlcnMgYW5kIDEwLWJpdCBzdXBwb3J0
cy4KCk1ha2VzIHNlbnNlIHRvIG1lIQoKUmVnYXJkcywKCglIYW5zCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
