Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D48CC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:33:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 565B561042
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 09:33:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 565B561042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W2XPmwntHwmP9xaJcd5Br5X2/L1zauhcRghBuKNDul4=; b=aZlre9ZXma0H3YpgiF2/mIgx+
	bsHtV3wjCAMrY8oyLaCa50uRM1QGXL18OEaU2t95wSSjBVEbjnwLDjuSVkeEzIEdn50OXu8PhaI5E
	q+QYPrXZ9K5CRMMyJqpyi0AOOcG3Qsf2dAYGuMhHbarIhfi5CnsmUIIYqXh6Rjgp4tP21R8i6+YDl
	prSL7/0aT7eJSOzcpn73WdPL3ICL7doUC7ehsmYXuovrgWgpHik1iGOmeB/O6OSMIUkVa4nyx4b/+
	arve+F9cLhWOQB5ZOObu7ZY7RuLOx7VtIGFG5BaRuCCCF9C5v1HxY/2PQ8mimCBxUBber3Ou8O/sR
	0y1ECIznA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYmkb-00Bls3-Cd; Tue, 20 Apr 2021 09:32:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmj5-00BlHS-MO; Tue, 20 Apr 2021 09:31:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=6uW3NRU9wUqNUXDLUvfm7iqDmto9hQ1T7FHtsplv5s8=; b=NObuVPevZ+aTxIgxcQdrzeoSl3
 Nw8aKcUkYcWlVh2joBCMEqk49r6WSckfvIofTb/POTXN6UZPoTtej9Mhb0/V3+HBBtw5KRo6K0fvx
 YYtS1HaSjxjxBXQx4o0uftNonz17nRgFl6thM7vFkJgVCxaUHFTuoRMeW76VmYHqD8Tft8fT7Z0VP
 pTQJyDmuq3vhBlnhGbKqdelJFaRHcqHcs+kO2NXR03CHoDnMHtsHB3BIcC6NkPRJAk9ZL4ne3cxWY
 oam3DMaYT7dXBBcH8Od2+rAdUkAQ9XJs00O+EYm3QCR2K1byUEvxBso6EUfextzsUa0/GuZctFBAt
 0/JrPW4A==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYmj3-00Bz1H-0t; Tue, 20 Apr 2021 09:31:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 906181F4277A
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
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
 <43a767f8-77f5-7937-c484-753a3123f6a2@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <e7064bb1-69e6-4214-380d-c464b7832da5@collabora.com>
Date: Tue, 20 Apr 2021 11:31:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <43a767f8-77f5-7937-c484-753a3123f6a2@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_023121_217923_AE607261 
X-CRM114-Status: GOOD (  19.94  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDIwLzA0LzIwMjEgw6AgMTE6MTYsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIw
LzA0LzIwMjEgMTE6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBMZSAxNi8wNC8yMDIx
IMOgIDE3OjE0LCBMdWNhcyBTdGFjaCBhIMOpY3JpdMKgOgo+Pj4gQW0gRnJlaXRhZywgZGVtIDE2
LjA0LjIwMjEgdW0gMTU6MDggKzAyMDAgc2NocmllYiBCZW5qYW1pbiBHYWlnbmFyZDoKPj4+PiBM
ZSAxNi8wNC8yMDIxIMOgIDEyOjU0LCBMdWNhcyBTdGFjaCBhIMOpY3JpdMKgOgo+Pj4+PiBBbSBN
aXR0d29jaCwgZGVtIDA3LjA0LjIwMjEgdW0gMDk6MzUgKzAyMDAgc2NocmllYiBCZW5qYW1pbiBH
YWlnbmFyZDoKPj4+Pj4+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8gc2hhcmUgdGhlIGNvbnRyb2wg
aGFyZHdhcmUgYmxvY2sgYmV0d2Vlbgo+Pj4+Pj4gVlBVcyB1c2UgYSBzeXNjb24gaW5zdGVhZCBh
IGlvcmVtYXAgaXQgaW4gdGhlIGRyaXZlci4KPj4+Pj4+IFRvIGtlZXAgdGhlIGNvbXBhdGliaWxp
dHkgd2l0aCBvbGRlciBEVCBpZiAnbnhwLGlteDhtcS12cHUtY3RybCcKPj4+Pj4+IHBoYW5kbGUg
aXMgbm90IGZvdW5kIGxvb2sgYXQgJ2N0cmwnIHJlZy1uYW1lLgo+Pj4+Pj4gV2l0aCB0aGUgbWV0
aG9kIGl0IGJlY29tZXMgdXNlbGVzcyB0byBwcm92aWRlIGEgbGlzdCBvZiByZWdpc3Rlcgo+Pj4+
Pj4gbmFtZXMgc28gcmVtb3ZlIGl0Lgo+Pj4+PiBTb3JyeSBmb3IgcHV0dGluZyBhIHNwb2tlIGlu
IHRoZSB3aGVlbCBhZnRlciBtYW55IGl0ZXJhdGlvbnMgb2YgdGhlCj4+Pj4+IHNlcmllcy4KPj4+
Pj4KPj4+Pj4gV2UganVzdCBkaXNjdXNzZWQgYSB3YXkgZm9yd2FyZCBvbiBob3cgdG8gaGFuZGxl
IHRoZSBjbG9ja3MgYW5kIHJlc2V0cwo+Pj4+PiBwcm92aWRlZCBieSB0aGUgYmxrY3RsIGJsb2Nr
IG9uIGkuTVg4TU0gYW5kIGxhdGVyIGFuZCBpdCBzZWVtcyB0aGVyZSBpcwo+Pj4+PiBhIGNvbnNl
bnN1cyBvbiB0cnlpbmcgdG8gcHJvdmlkZSB2aXJ0dWFsIHBvd2VyIGRvbWFpbnMgZnJvbSBhIGJs
a2N0bAo+Pj4+PiBkcml2ZXIsIGNvbnRyb2xsaW5nIGNsb2NrcyBhbmQgcmVzZXRzIGZvciB0aGUg
ZGV2aWNlcyBpbiB0aGUgcG93ZXIKPj4+Pj4gZG9tYWluLiBJIHdvdWxkIGxpa2UgdG8gYXZvaWQg
aW50cm9kdWNpbmcgeWV0IGFub3RoZXIgd2F5IG9mIGhhbmRsaW5nCj4+Pj4+IHRoZSBibGtjdGwg
YW5kIHRodXMgd291bGQgbGlrZSB0byBhbGlnbiB0aGUgaS5NWDhNUSBWUFUgYmxrY3RsIHdpdGgK
Pj4+Pj4gd2hhdCB3ZSBhcmUgcGxhbm5pbmcgdG8gZG8gb24gdGhlIGxhdGVyIGNoaXAgZ2VuZXJh
dGlvbnMuCj4+Pj4+Cj4+Pj4+IENDJ2luZyBKYWNreSBCYWkgYW5kIFBlbmcgRmFuIGZyb20gTlhQ
LCBhcyB0aGV5IHdlcmUgZ29pbmcgdG8gZ2l2ZSB0aGlzCj4+Pj4+IHZpcnR1YWwgcG93ZXIgZG9t
YWluIHRoaW5nIGEgc2hvdC4KPj4+PiBUaGF0IGNvdWxkIHJlcGxhY2UgdGhlIDMgZmlyc3QgcGF0
Y2hlcyBhbmQgRHQgcGF0Y2hlIG9mIHRoaXMgc2VyaWVzCj4+Pj4gYnV0IHRoYXQgd2lsbCBub3Qg
aW1wYWN0IHRoZSBoZXZjIHBhcnQsIHNvIEkgd29uZGVyIGlmIHB1cmUgaGV2YyBwYXRjaGVzCj4+
Pj4gY291bGQgYmUgbWVyZ2VkIGFueXdheSA/Cj4+Pj4gVGhleSBhcmUgcmV2aWV3ZWQgYW5kIGRv
bid0IGRlcGVuZCBvZiBob3cgdGhlIGN0cmwgYmxvY2sgaXMgbWFuYWdlZC4KPj4+IEknbSBub3Qg
cmVhbGx5IGluIGEgcG9zaXRpb24gdG8gZ2l2ZSBhbnkgaW5mb3JtZWQgb3BpbmlvbiBhYm91dCB0
aGF0Cj4+PiBodmVjIHBhdGNoZXMsIGFzIEkgb25seSBza2ltbWVkIHRoZW0sIGJ1dCBJIGRvbid0
IHNlZSBhbnkgcmVhc29uIHRvCj4+PiBkZWxheSBwYXRjaGVzIDA0LTExIGZyb20gdGhpcyBzZXJp
ZXMgdW50aWwgdGhlIGkuTVg4TSBwbGF0Zm9ybSBpc3N1ZXMKPj4+IGFyZSBzb3J0ZWQuIEFGQUlD
UyB0aG9zZSB0aGluZ3MgYXJlIHRvdGFsbHkgb3J0aG9nb25hbC4KPj4gSGkgSGFucywKPj4gV2hh
dCBkbyB5b3UgdGhpbmsgYWJvdXQgdGhpcyBwcm9wb3NhbCB0byBzcGxpdCB0aGlzIHNlcmllcyA/
Cj4+IEdldCBoZXZjIHBhcnQgbWVyZ2VkIGNvdWxkIGFsbG93IG1lIHRvIGNvbnRpbnVlIHRvIGFk
ZCBmZWF0dXJlcwo+PiBsaWtlIHNjYWxpbmcgbGlzdHMsIGNvbXByZXNzZWQgcmVmZXJlbmNlIGJ1
ZmZlcnMgYW5kIDEwLWJpdCBzdXBwb3J0cy4KPiBNYWtlcyBzZW5zZSB0byBtZSEKCkdyZWF0ICEK
SWYgdGhlIGxhdGVzdCB2ZXJzaW9uIG1hdGNoIHlvdXIgZXhwZWN0YXRpb25zIGhvdyB3b3VsZCB5
b3UgbGlrZSB0byBwcm9jZXNzZWQgPwpDYW4geW91IG1lcmdlZCBwYXRjaGVzIDQgdG8gMTIgPyBv
ciBzaG91bGQgSSByZXNlbmQgdGhlbSBpbiBhIG5ldyBzaG9ydGVkIHNlcmllcyA/CgpSZWdhcmRz
LApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
