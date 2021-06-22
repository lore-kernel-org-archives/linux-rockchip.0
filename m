Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F3AC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 12:55:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C29A6113E
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 12:55:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C29A6113E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99cP4uaf932OO1WOQRabWDWz62ivJlImAUpltEYTjEU=; b=tEth3HFGSQs6w1
	g8/bL+hJhFFPD6cM6vTfK+12yDkmD7SCG+lCy+tCVdY3ZnqDT5jH6yZT4cYCCVS620qMGuJhvUze6
	iuHqs9g/kO9LVSSzYCK1LIMBnLqXDIlZinV+EzIBk0HeQDQMnObKR3tN2TlsLCrzWerv/18tE3BfZ
	MheN4Nv5Z6URtZSkKy9CBN7dSe3yp1ThhAhzGQYAp97wIZKCuEqxukWQ8nJSOeVjgv5D+o2DVJXdr
	eoldQY3AjB068n+HfKUDOXwN1H8JOblDg4Megt9xm1X6NJAUaCg+/SMeOE2bpBRX/E0qzafIt5udj
	xV72dtiBsdMlw2iCv+KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvfvq-007EGA-P1; Tue, 22 Jun 2021 12:55:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvfvd-007EDu-VK; Tue, 22 Jun 2021 12:54:59 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5126D1F42F0B
Message-ID: <3ab5878bc03eb91a785c0fa57836e8d226df524d.camel@collabora.com>
Subject: Re: [PATCH v3 0/8] Additional features for Hantro HEVC
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk, jernej.skrabec@gmail.com, nicolas@ndufresne.ca
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Tue, 22 Jun 2021 09:54:35 -0300
In-Reply-To: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
References: <20210618131526.566762-1-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_055458_179550_E6358DE9 
X-CRM114-Status: GOOD (  17.39  )
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

SGkgQmVuamFtaW4sCgpPbiBGcmksIDIwMjEtMDYtMTggYXQgMTU6MTUgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IHZlcnNpb24gMzoKPiDCoC0gQ2hhbmdlIHRyYWNlIGZpbGUgbmFt
ZSB0byBoYW50cm9fdHJhY2UuaAo+IAo+IHZlcnNpb24gMjoKPiDCoC0gRml4IHN0cnVjdHVyZSBu
YW1lIGluIGV4dC1jdHJscy1jb2RlYy5yc3QKPiDCoC0gRGVmaW5lIHRoZSB2YWx1ZSBmb3IgY29t
cHJlc3Npb24gc3RvcmFnZSBzaXplCj4gwqAtIEFkZCBjb21tZW50cyBhYm91dCByZWdpc3RlcnMg
dXNhZ2UKPiDCoC0gQWRkIGRvY3VtZW50YXRpb24gYWJvdXQgUDAxMCBwYWRkaW5nCj4gCj4gQmFz
aWMgSEVWQyBzdXBwb3J0IGhhcyBiZWVuIGFkZGVkIHRvIEhhbnRybyBkcml2ZXIgaW4gdGhpcyBw
dWxsIHJlcXVlc3Q6Cj4gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvbGludXgtbWVkaWEv
bXNnMTkzNzQ0Lmh0bWwKPiAKPiBUaGFua3MgdG8gdGhhdCBpdCBpcyBub3cgcG9zc2libGUgdG8g
c3VwcG9ydCBtb3JlIGZlYXR1cmVzIGZvciB0aGlzIGRyaXZlci4KPiAKPiBUaGUgZmlyc3QgcGF0
Y2ggYWxsb3cgdG8gbG9nIHRoZSBoYXJkd2FyZSBwZXJmb3JtYW5jZSBwZXIgbWFjcm9ibG9jay4K
PiBUaGUgc2Vjb25kIHBhdGNoIG1ha2VzIHRoZSBkcml2ZXIgdXNlIGNvbXByZXNzZWQgcmVmZXJl
bmNlIGZyYW1lcyB0bwo+IHJlZHVjZSBtZW1vcnkgYmFuZHdpZHRoIGNvbnN1bXB0aW9uLgo+IFBh
dGNoZXMgMyB0byA1IGFsbG93IHRvIGRlY29kZSBhbmQgcHJvZHVjZSAxMC1iaXRzIFAwMTAgZnJh
bWVzLgo+IFBhdGNoIDYgbWFrZSB1c2FnZSBvZiBHMiBwb3N0IHByb2Nlc3NvciB0byBzY2FsZSBk
b3duIHRoZSBmcmFtZXMuCj4gUGF0Y2hlcyA3IGFuZCA4IGFkZCB0aGUgc3VwcG9ydCBvZiBIRVZD
IHNjYWxpbmcgbWF0cml4IGJ5IGFkZGluZyBhIG5ldwo+IGNvbnRyb2wuCj4gCgpGb3IgdGhlIG5l
eHQgY292ZXIgbGV0dGVyLCBwbGVhc2UgbWFrZSBzdXJlIHlvdSBwcm92aWRlCnNvbWUgbm90ZXMg
YWJvdXQgaG93IHRoaXMgd2FzIHRlc3RlZCwgd2l0aCBhIGdzdHJlYW1lcgpwdWJsaWMgYnJhbmNo
IGlmIG5lZWRlZDsgYW5kIGFsc28gZmx1ZW5kbydzIGZsdXN0ZXIgY29uZm9ybWFuY2UKcmVzdWx0
cyBiZWZvcmUvYWZ0ZXIgdGhpcyBwYXRjaHNldC4KCldoaWxlIHRoZXJlLCBtYWtlIHN1cmUgeW91
IGNoZWNrIGZvciBwZXJmb3JtYW5jZSByZWdyZXNzaW9ucy9pbXByb3ZlbWVudHMKYW5kIGFkZCBz
dWNoIGluZm9ybWF0aW9uIHRvIHRoZSBjb21taXQgZGVzY3JpcHRpb25zLiBUaGUgbW9yZSB0aGUg
bWVycmllci4KClRoYW5rcyBhIGxvdCwKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
