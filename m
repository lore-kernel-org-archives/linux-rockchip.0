Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E797DEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 19:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H1RDxPY0qNILycPOkJT4n3PpJz/AcYSkpVktlaaWapE=; b=P9870Cw4mv+H4c
	QoD6uGUSem6crNB6DjApkyskYCU5sfX/JJWJ/xhlLGc6lJjq1mlyRH/RZHlIbuHOwGOYYWTggb87q
	XYvOwBVYQ9vx24NutoXgn7FnQIP6L4DhPHp0Hm7im28V/OTN1P/ihT/fgW7+fWxyk+7rzh0Oa65Eg
	LHbvvUQ1A8LtktTi3SrICoYEsyrEOYdszV78Hs2Fge/hJ0oV734IQHaxX24VF6eehMkfan/eatwh+
	HUHGJKdBCQcbIvOs7oNt+eOXxBIZ8FUmnkFfOnxzaB5OquylVaUDFJiJN8GpuJ+Z+GzBiKK2kHw4A
	jWQ0HS+jo07u2SWNX40A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBKWl-009JjO-0x;
	Mon, 19 Jun 2023 19:27:03 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBKWh-009JiG-2K
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jun 2023 19:27:01 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id D4AAD5C036B;
	Mon, 19 Jun 2023 15:26:55 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Mon, 19 Jun 2023 15:26:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1687202815; x=1687289215; bh=RkdhSqLZgVEX1NN/WLsswvWnrGRK9C1YpT+
	3WFY7fJs=; b=lqi9LNlWDqkiNo12WAlGf5470UOr5JZtzm/5UlrqyrtS4Ly5E7Q
	yHm8eP7v/j6Eb/H+WfNdf9H2W0gE4YQ5172dDEyqM+1/1kMu/nhwrkPx/RSnW7kZ
	QzM9l2t85HLrsuNAEWPomJ69F5BBNI3X300UdjF4Tr1lYFMhX6UiQWT4k4JXX4If
	WzXR2V/C1ZGnVTrcNh+/rRasL0MCiGg01GUdac0dypFkDUi8XPJ6G+nLtDCi0Lry
	PWrCa88MRHkbJ+MsfUWoqWoWWvzrWT9bFqKYuiYnjxVW3+OU7rj9Y2FYOS6plDXy
	1YlF8JhK7aeKKce8Wa9WC/CM3H7aixVeU8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1687202815; x=1687289215; bh=RkdhSqLZgVEX1NN/WLsswvWnrGRK9C1YpT+
	3WFY7fJs=; b=p01IQHTz6KkHuhYq6u3hE/P9uumBXV8balAzp1bvsZZOkXSHFR9
	VkxLLFw1ovBtOtphGc/uGPFpOKmp8OgwjnDJb7CuK5vl4kQwvVrcSxvDywxKdlp6
	qCelVMvzPT8bBEyk4hyoX4O3UVYaW8RSCqvy6K7OVXomWxncQiqKpt+MetIC5LDl
	pZ99b8qxIgT5+W2mI70GJKZ1lto7SQHVZs3dPobjFZmxKJFMaPE1S1Tr7Vh9DnGc
	GQItxtdPo7AH3wEBhE4lYkL2NZ6ErqMsf/2XSaHgw0iCWXdwgmUZ2EomQDifvG6S
	F+/foTtq8vuPLQUi5b0PZg85tyftLkdWHYg==
X-ME-Sender: <xms:_quQZLmpyV9ZI1dQ2Zeyk08OAiJGtYzpvde6aA4eAbjK7s6kWv6BFA>
    <xme:_quQZO2V2yP1UKBSub2bBdHetWkwQORL-FdSLfMG0iUjvHPulxJVBFKNQ0RDkVsAp
    Kex7apeFIF9Nrv5pQ4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrgeefvddgudefhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvvefutgfgsehtqhertderreejnecuhfhrohhmpedf
    tehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrf
    grthhtvghrnhepgeefjeehvdelvdffieejieejiedvvdfhleeivdelveehjeelteegudek
    tdfgjeevnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:_quQZBocDkFMAUMCbVoJ_7I69BiuZ7RTpfAmOfFlWZw1f2BeMtxhIA>
    <xmx:_quQZDm_HBnodVkCpUQrsm3jc6JmfIlK87dUVxV5wD2VB7_NKaqjFg>
    <xmx:_quQZJ1l2ndt4OZwHsiEQyNWqN6AELxAekS4ytcm5SAAs4s9tTTs_A>
    <xmx:_6uQZCI_RFTqzhbpNr5nwcRDafw5iXhWDAmRToH3HnaC3OHt-kY8kg>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id CDAB4B60086; Mon, 19 Jun 2023 15:26:54 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-496-g8c46984af0-fm-20230615.001-g8c46984a
Mime-Version: 1.0
Message-Id: <300ecb3e-8747-4399-8452-77724f85330b@app.fastmail.com>
In-Reply-To: <d9f088d1d548c8735b393a15d5a16dbd914ddeca.camel@collabora.com>
References: <20230616144854.3818934-1-arnd@kernel.org>
 <20230616144854.3818934-2-arnd@kernel.org>
 <e264ac3a15e0f115aa7e941a77eb312429b8f65e.camel@collabora.com>
 <063a8886-fd31-425f-901c-fc830512eca3@app.fastmail.com>
 <d9f088d1d548c8735b393a15d5a16dbd914ddeca.camel@collabora.com>
Date: Mon, 19 Jun 2023 21:26:34 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>,
 "Arnd Bergmann" <arnd@kernel.org>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Philipp Zabel" <p.zabel@pengutronix.de>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>
Cc: "Hans Verkuil" <hverkuil-cisco@xs4all.nl>,
 "Benjamin Gaignard" <benjamin.gaignard@collabora.com>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] media: verisilicon: change confusingly named relaxed register
 access
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_122700_317438_F55C241A 
X-CRM114-Status: GOOD (  16.56  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKdW4gMTksIDIwMjMsIGF0IDIwOjI5LCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+
IExlIGx1bmRpIDE5IGp1aW4gMjAyMyDDoCAxNjo0OSArMDIwMCwgQXJuZCBCZXJnbWFubiBhIMOp
Y3JpdMKgOgo+PiA+IAo+PiA+IEluIHRoaXMgdGV4dCB5b3Ugc3Bva2UgYWJvdXQgcG90ZW50aWFs
IHBlcmZvcm1hbmNlIHNpZGUgZWZmZWN0cyBvZiBleGlzdGluZyBjb2RlCj4+ID4gYW5kIHlvdXIg
Y2hhbmdlcywgYnV0IGl0cyBsZWZ0IGFsbCB2ZXJ5IHZhZ3VlIGFuZCB0aGVvcmV0aWNhbC4gSGF2
ZSB5b3UgZG9uZSBhbnkKPj4gPiBtZWFzdXJlbWVudCA/IERvIHlvdSBuZWVkIGhlbHAgd2l0aCB0
aGUgbWFubmVyID8KPj4gCj4+IEkgZG9uJ3QgaGF2ZSB0aGlzIGhhcmR3YXJlIGFuZCBoYXZlIG5v
dCBkb25lIGFueSBtZWFzdXJlbWVudHMuCj4+IE9idmlvdXNseSB0aGUgb25seSBwb2ludCBvZiB1
c2luZyByZWxheGVkIGFjY2Vzc29ycyBpcyB0bwo+PiBpbXByb3ZlIHBlcmZvcm1hbmNlIGluIGNy
aXRpY2FsIGNvZGUgcGF0aHMsIGJ1dCBmcm9tIHRoZSB3YXkgdGhleQo+PiBhcmUgdXNlZCBoZXJl
IGl0IHNlZW1zIHRoYXQgdGhpcyB3YXMgaW5zdGVhZCBqdXN0IGFuIGFjY2lkZW50Cj4+IGFuZCBu
b2JvZHkgZWxzZSBkaWQgYW55IGNvbXBhcmlzb25zIGVpdGhlci4KPj4gCj4+IE15IGd1ZXNzIHdv
dWxkIGJlIHRoYXQgaWYgb25lIHdhbnRlZCB0byBzcGVlZCB1cCB0aGUgcmVnaXN0ZXIKPj4gYWNj
ZXNzLCBhIGJldHRlciB3YXkgd291bGQgYmUgdG8gdXNlIGEgcmVnbWFwIGNhY2hlIHRvIGF2b2lk
Cj4+IHJlYWRpbmcgcmVnaXN0ZXJzIHdoZW4gdGhlIGNvbnRlbnRzIGFyZSBhbHJlYWR5IGtub3du
Lgo+Cj4gQWxsIEkga25vdyBpcyB0aGF0IGZvciB0aGUgbWFqb3JpdHkgb2YgcmVnaXN0ZXJzIHdo
ZW4gcHJvZ3JhbW1pbmcgc3RhdGVsZXNzCj4gY29kZWNzLCBlYWNoIDMyYml0IHdvcmQgb2YgcmVn
aXN0ZXJzIGFyZSBmdWxseSB3cml0dGVuIHRvbywgdGhlIHJlYWQgdmFsdWUgaXMKPiBub3QgYWx3
YXlzIG1lYW5pbmdmdWwgKGl0cyBhIHZhbHVlIGZyb20gbGFzdCB0aW1lIHRoZSBIVyBoYXMgYmVl
biB0cmlnZ2VyZWQpIGFuZAo+IHNob3VsZCBiZSBpZ25vcmVkLCBzbyBiZXR0ZXIgdG8gbm90IGRv
IHRoYXQuIEFzIGZvciByZWdtYXAsIHRoZXJlIGlzIGZvbGtzIHRoYXQKPiBoYXZlIHJlcG9ydGVk
IHJlZ21hcCB0byBiZSBjb21wbGV0ZWx5IG92ZXJraWxsIGZvciB0aGlzIHR5cGUgb2YgaGFyZHdh
cmUuCgpSaWdodCwgbW9zdCBsaWtlbHkgbmVpdGhlciB0aGUgY2FjaGUgbm9yIGF2b2lkaW5nIHRo
ZSByZWFkbCgpIGlzIG5lY2Vzc2FyeSwKYW5kIHRoYXQgd2FzIGV4YWN0bHkgbXkgcG9pbnQgdG8g
c3RhcnQgd2l0aDogZG9uJ3QgYWRkIHBvdGVudGlhbGx5IGRhbmdlcm91cwptaWNyb29wdGltaXph
dGlvbnMgbGlrZSByZWxheGVkIGFjY2Vzc29ycyB1bmxlc3MgdGhlIG9idmlvdXMgb3B0aW1pemF0
aW9ucwphcmUgYWxzbyBuZWVkZWQgYW5kIHVzZWQuCgpPYnZpb3VzbHksIHRlc3RpbmcgbXkgcGF0
Y2ggd291bGQgc3RpbGwgYmUgYSBnb29kIGlkZWEgYmVmb3JlIGFwcGx5aW5nIGl0LgoKICAgICAg
IEFybmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
