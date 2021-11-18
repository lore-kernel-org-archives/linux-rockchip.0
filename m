Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F460C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 01:27:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80AF261B6F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 01:27:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 80AF261B6F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dp5mpTxScQBtnANtU3Eui6bKjzdHXxhCb7vI6DLbHAQ=; b=FoR4q/2ha8YBrnMEWoxhjlrGu7
	XlCag//Jtqg1N4Mqp9RTyQpstYrV35Vw28+J2q+4O58JTxoG/7V3c7hlMQ4SyapAPciDyuCaWiGyG
	PLlsg1BWTchqP3K0p4HuPFGLaoD4BXz1mCkmCG3TSA3HsRRClfVFQzjOf3ib57I4RrNePtxqsygS6
	o5hr0N8q4QXxUzXnEKdz5sczXO0+KJnphT6GDIalaFJ9I5mxsjQigSkYHhGt09EMYZrfZVD4pxwDC
	LUE29bM9r3jbrYKdPgMJ+finh0h0T5Hk81joHEMIWpGHgcX85pZcyMX01dT46X9BOy6ALTkxO7EFl
	VS93XmaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnWDE-006fxT-Vv; Thu, 18 Nov 2021 01:27:40 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnWD1-006fuz-3b; Thu, 18 Nov 2021 01:27:28 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 66A10779;
 Thu, 18 Nov 2021 09:27:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.93] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11048T139933688260352S1637198830607739_; 
 Thu, 18 Nov 2021 09:27:14 +0800 (CST)
X-IP-DOMAINF: 1
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: andy.yan@rock-chips.com
X-RCPT-COUNT: 12
X-LOCAL-RCPT-COUNT: 2
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-UNIQUE-TAG: <8a96bdeaec7a0268badde3c4ba993496>
X-System-Flag: 0
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
Date: Thu, 18 Nov 2021 09:27:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117143347.314294-1-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_172727_366205_05D6C300 
X-CRM114-Status: GOOD (  14.80  )
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

SGkgU2FzY2hhIEhhdWVyLAoKT24gMjAyMS8xMS8xNyDkuIvljYgxMDozMywgU2FzY2hhIEhhdWVy
IHdyb3RlOgo+IFRoaXMgc2VyaWVzIGFkZHMgaW5pdGlhbCBncmFwaGljcyBzdXBwb3J0IGZvciB0
aGUgUm9ja2NoaXAgUkszNTZbNjhdCj4gU29Dcy4gIEdyYXBoaWNzIHN1cHBvcnQgaXMgYmFzZWQg
YXJvdW5kIHRoZSBWT1AyIGNvbnRyb2xsZXIgd2hpY2gKPiByZXBsYWNlcyB0aGUgVk9QIGNvbnRy
b2xsZXIgZm91bmQgb24gZWFybGllciBSb2NrY2hpcCBTb0NzLiBUaGUgZHJpdmVyCj4gaGFzIGJl
ZW4gdGVzdGVkIHdpdGggSERNSSBzdXBwb3J0IGluY2x1ZGVkIGluIHRoaXMgc2VyaWVzIGFuZCBN
SVBJLURTSQo+IHdoaWNoIGlzIG5vdCBpbmNsdWRlZCBiZWNhdXNlIGl0IG5lZWRzIHNvbWUgbW9y
ZSB3b3JrLiBUaGUgZHJpdmVyIGlzCj4gdGFrZW4gZnJvbSB0aGUgZG93bnN0cmVhbSBSb2NrY2hp
cCBrZXJuZWwKClllcywgeW91IGRvIGtub3cgdGhpcyBpcyBmcm9tIFJvY2tjaGlwIGtlcm5lbC4K
CkNvdWxkIHlvdSBwb2ludCBtZSBvdXQgd2hlcmUgaXMgdGhlIGluZm9ybWF0aW9uIGFib3V0IG9y
aWdpbmFsIGF1dGhvcsKgIAppbiB5b3VyIGNvbW1pdD8KCj4gICBhbmQgaGVhdmlseSBwb2xpc2hl
ZCwgbW9zdCBub24KPiBzdGFuZGFyZCBmZWF0dXJlcyBoYXZlIGJlZW4gcmVtb3ZlZCBmb3Igbm93
LgoKSSBkb24ndCBhZ3JlZSB3aXRoIHRoaXMsIHdlIGRvIGJlbGlldmUgeW91IGhhdmUgZG8gc29t
ZSBjbGVhbiB1cCB0byBtZWV0IAp0aGUgcmVxdWlyZW1lbnQKCm9mIHVwc3RyZWFtLCBidXQgYWxs
IHRoZSBmcmFtZXdvcmsgYW5kIGZlYXR1cmUgaW1wbGVtZW50IGFyZSBmcm9tIApSb2NrY2hpcCBl
bmdpbmVlciwKCndlIGhhdmUgbWFkZSBhIGdyZWF0IGVmZm9ydCB0byBtYWtlIGV2ZXJ5dGhpbmcg
d29yayB3aGljaCBibG9jayB1cyB0byAKdXBzdHJlYW0gdGhpcyBkcml2ZXIgZm9yIG5vdy4KCgpO
QUsgZm9yIHRoaXMgc2VyaWVzLgoKCi0gS2V2ZXIKCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
