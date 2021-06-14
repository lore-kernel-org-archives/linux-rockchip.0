Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E6DDC48BE6
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 12:51:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 474E9613EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 12:51:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 474E9613EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzbN3qwC/xOxLzTsjyhxcorNtvTnWL3kmGKwXAYcGCc=; b=I67mmBqxxBbjhq
	fxjbuF05xJIV7VuhKCZcA9XKSEybmdzJ8PsoorLVYyAmy/E4nUfRMlCnNqELUX2331BpJRen3hbMO
	kI1ernFNPjNSH24aXuzt7bxAjjB/uch4wOUnVOsf/4evljdiDo62eyL07g/1SZeYfb1RnhOlGbva5
	w2VE0GYhJZrfzN1kNUN6vs42eBX/+JD7dmxya8RSCh481vmJPg2DK02vZlE5Hs0AtrB/1Tojy7Emd
	FMmW5htPqM0vvwdVN6zv28+KUqopz4CZ/M3otcY0rAcGcZqGHNmjyfr4v3Eq0TczvBwoA/uqe6iqI
	3zGwgzfmk64jZ25tv9Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsm3p-00E9ND-If; Mon, 14 Jun 2021 12:51:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsm3a-00E8Bi-41; Mon, 14 Jun 2021 12:51:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D30551F4035A
Message-ID: <96e63be705b04b40a943307c81ed71e8c573ef96.camel@collabora.com>
Subject: Re: [PATCH v2 7/8] media: hevc: Add scaling matrix control
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Hans Verkuil
 <hverkuil@xs4all.nl>, p.zabel@pengutronix.de, mchehab@kernel.org, 
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com,  wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com,  andrzej.p@collabora.com, jc@kynesim.co.uk,
 jernej.skrabec@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Mon, 14 Jun 2021 09:50:46 -0300
In-Reply-To: <d5b010c8-c0c5-8800-b2c3-9371923ca10c@collabora.com>
References: <20210610154442.806107-1-benjamin.gaignard@collabora.com>
 <20210610154442.806107-8-benjamin.gaignard@collabora.com>
 <87a1e585-688e-7c4d-b9a9-24f42772a1a8@xs4all.nl>
 <d5b010c8-c0c5-8800-b2c3-9371923ca10c@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_055110_325491_3D639779 
X-CRM114-Status: GOOD (  19.95  )
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

T24gTW9uLCAyMDIxLTA2LTE0IGF0IDA5OjQzICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90
ZToKPiAKPiBMZSAxNC8wNi8yMDIxIMOgIDA5OjI3LCBIYW5zIFZlcmt1aWwgYSDDqWNyaXTCoDoK
PiA+IE9uIDEwLzA2LzIwMjEgMTc6NDQsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiBI
RVZDIHNjYWxpbmcgbGlzdHMgYXJlIHVzZWQgZm9yIHRoZSBzY2FsaW5nIHByb2Nlc3MgZm9yIHRy
YW5zZm9ybQo+ID4gPiBjb2VmZmljaWVudHMuCj4gPiA+IFY0TDJfSEVWQ19TUFNfRkxBR19TQ0FM
SU5HX0xJU1RfRU5BQkxFRCBoYXMgdG8gc2V0IHdoZW4gdGhleSBhcmUKPiA+ID4gZW5jb2RlZCBp
biB0aGUgYml0c3RyZWFtLgo+ID4gQ29tcGFyaW5nIEgyNjQgd2l0aCBIRVZDIEkgbm90aWNlZCB0
aGF0IHRoZSBjb3JyZXNwb25kaW5nIGZsYWcgZm9yIEgyNjQgaXMKPiA+IGNhbGxlZCBWNEwyX0gy
NjRfUFBTX0ZMQUdfU0NBTElOR19NQVRSSVhfUFJFU0VOVC4KPiA+IAo+ID4gU2hvdWxkIHRob3Nl
IG5hbWVzIGJlIGFsaWduZWQ/IEFsc28sIGl0IGlzIHBhcnQgb2YgUFBTIGZvciBIMjY0IGFuZCBT
UFMgaW4gSEVWQywKPiA+IGlzIHRoYXQgZGlmZmVyZW5jZSBjb3JyZWN0Pwo+IAo+IEluIElUVSBz
cGVjaWZpY2F0aW9ucyAoIjcuNC4zLjIuMSBHZW5lcmFsIHNlcXVlbmNlIHBhcmFtZXRlciBzZXQg
UkJTUCBzZW1hbnRpY3MiKSB0aGlzIGZsYWcgaXMgZGVmaW5lIGxpa2UgdGhhdDoKPiBzY2FsaW5n
X2xpc3RfZW5hYmxlZF9mbGFnIGVxdWFsIHRvIDEgc3BlY2lmaWVzIHRoYXQgYSBzY2FsaW5nIGxp
c3QgaXMgdXNlZCBmb3IgdGhlIHNjYWxpbmcgcHJvY2VzcyBmb3IgdHJhbnNmb3JtIGNvZWZmaWNp
ZW50cy4KPiBzY2FsaW5nX2xpc3RfZW5hYmxlZF9mbGFnIGVxdWFsIHRvIDAgc3BlY2lmaWVzIHRo
YXQgc2NhbGluZyBsaXN0IGlzIG5vdCB1c2VkIGZvciB0aGUgc2NhbGluZyBwcm9jZXNzIGZvciB0
cmFuc2Zvcm0gY29lZmZpY2llbnRzLgo+IAo+IFNvIGZvciBtZSB0aGUgbmFtaW5nIGlzIGNvcnJl
Y3QuCj4gCgpUaGUgYml0c3RyZWFtIGlzIHJlYWxseSBwYXJzZWQgaW4gdXNlcnNwYWNlIChnc3Ry
ZWFtZXIsIGZmbXBlZywgY2hyb21pdW0pLgpOb3QgYWxsIGJpdHN0cmVhbSBwYXJhbWV0ZXJzIG5l
ZWQgdG8gYmUgcGFzc2VkIGFzLWlzLCBiZWNhdXNlIHRoZSBrZXJuZWwKaXMgYWN0dWFsbHkgYSBz
b3J0IG9mIGxvdy1sZXZlbCBsYXllciBpbiB0aGUgZGVjb2RlciBzdGFjay4KCkkgdGhpbmsgaXQn
cyBwcm9iYWJseSBtb3N0IGFwcHJvcHJpYXRlIHRvIGZvbGxvdyBvdXIgSC4yNjQgaW50ZXJmYWNl
CnNlbWFudGljcywgc2VlIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJu
ZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvP2lkPTU0ODg5YzUxYjgzM2QyMzYyMjhm
OTgzYmUxNjIxMmZiZTgwNmJiODkuCgpUaGUgSC4yNjQgc3RvcnkgZ29lcyBsaWtlIHRoaXM6Cgoq
IERlZmF1bHQgc2NhbGluZyBsaXN0IGlzIHVzZWQgZm9yIGRlY29kaW5nLCBidXQgY2FuIGJlIG1v
ZGlmaWVkCiAgYnkgYSBiaXRzdHJlYW0tcHJvdmlkZWQgc2NhbGluZyBsaXN0LgogICAKKiBUaGUg
c2NhbGluZyBsaXN0IG1vZGlmaWNhdGlvbiBjYW4gYmUgaW4gU1BTIG9yIGluIFBQUy4KCiogRm9y
IGVhY2ggZnJhbWUsIHRoZSBTUFMgYW5kIFBQUyBoZWFkZXJzIHdpbGwgdGVsbCBpZgogIGEgbW9k
aWZpZWQgc2NhbGluZyBsaXN0IG11c3QgYmUgdXNlZCBmb3IgZGVjb2RpbmcsCiAgYW5kIGlmIGl0
J3MgcHJvdmlkZWQgaW4gdGhlIFNQUyBoZWFkZXIgb3IgdGhlIFBQUyBoZWFkZXIuCgpUaGUgdXNl
cnNwYWNlIHBhcnNlciBtdXN0IHRha2UgY2FyZSBvZiB0aGlzLCBhbmQgcGFzcwphIHNjYWxpbmcg
bWF0cml4IHRvIHRoZSBrZXJuZWwgdmlhIFY0TDJfQ0lEX01QRUdfVklERU9fSDI2NF9TQ0FMSU5H
X01BVFJJWCwKc2V0dGluZyBQUFNfRkxBR19TQ0FMSU5HX01BVFJJWF9QUkVTRU5ULgoKVGhpcyBm
bGFnIGlzIGF0IHRoZSBQUFMgY29udHJvbCwgc28gdGhlIHNjYWxpbmcgbW9kaWZpY2F0aW9uCmNh
biBiZSBhcHBsaWVkIG9uIGVhY2ggZnJhbWUuCgpJbiBvdGhlciB3b3JkcywgdGhlIGtlcm5lbCBp
bnRlcmZhY2UgaXMgc2ltcGxlciwgaXQganVzdApyZWNlaXZlcyBhIHNjYWxpbmcgbWF0cml4IGFu
ZCBhIGZsYWcgdGVsbGluZyBpZiBpdCBtdXN0IGJlIHVzZWQgb3Igbm90LiAKCldlIHNob3VsZCBw
cm9iYWJseSBjbGFyaWZ5IHRoZSBkb2N1bWVudGF0aW9uLCBzbyB0aGlzIHByb2Nlc3MgaXMgbW9y
ZSBjbGVhci4KCkZyb20gdGhlIEhFVkMgc3BlYywgaXQgc2VlbXMgdGhlIHByb2Nlc3Mgc2hvdWxk
IGJlIHNpbWlsYXIuClRoZSBvbmx5IGRpZmZlcmVuY2UgaXMgdGhlIFNQUyAic2NhbGluZ19saXN0
X2VuYWJsZWRfZmxhZyIgcGFyYW1ldGVyLAp3aGljaCBkb2Vzbid0IGV4aXN0IGluIEguMjY0LgoK
Tmljb2xhczogd2hhdCBkbyB5b3UgdGhpbms/CgpUaGFua3MsCkV6ZXF1aWVsCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
