Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C22F1C9832A
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Sep 2026 07:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEYG6JjKx7jGZxpZgOv4/2aEntmA55BufmXnv9VSXFE=; b=L+sVyOitNbA6YY
	2IyKg1JNclXYf0ftB9YcutAt7iijOUQVo1qnVixWlowzgyg5mN79gg6s1Aw9Vy+oUoIDUQWlanTiS
	tcakq+22eXjgWM/R1XXmH+kxAfYFdRcVqUiXn+08BZeF3gzD1SqFW/6VI77QYN0PKqqH5QZOCdtI3
	/YkP7QXkeKOJ+hVv7HLJgrJMRbVW3qwPH9x7Tur+5MCsSi4JU2PfZyJZrxTBKtEYY1sA2GTvfXwPc
	OUXjg8dfNv1WBKstDTb6O7SNbEr3VIPS+JzHUNPakjoOiaq8hGHi9/Zxfe3Ijpn09hfbDtqN84v71
	y3dkEGtg5+4auc5eOhOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSKY-00000002cjb-44rR;
	Tue, 29 Sep 2026 07:32:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSKH-00000002ci2-24jg;
	Tue, 29 Sep 2026 07:32:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1790667141; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Lo0q0GcuKW7LmnzRRytJBj2qcby1rCCGeWvBPzX9eCNGwidytCt3uBJ81RfMBgwkjUv0Ou8P1b6R8VkluY/ZCM+tiPas/Cm76u9lh+gJ9jjNtU1fJAGUtWE4dsSZVuixbq3VpZdq9xIhJ5tJkM6ASWz6UEi1ttL6hGmbYdm8H1w=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1790667141; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hD2niuyZYi4hGUz8wD8CQSqVmQtaAAm56xCDiCG8qiA=; 
	b=T4YgIcP7yYbgOs1EIt5mmPQYY8qP/vVdR0NXxDlVMxOTLA1occnFWx/6Oyz49Ysw22KvDQehwxQKCx3YNYn3lFnaWlPBl5uULVrHgD945nHm2wGcF0ZUvuIjUwxNamClZ/RWUM0ywKjoLsmOYE3v1GnqsKEh0IQbVwANvaGFYE8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1790667141;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=hD2niuyZYi4hGUz8wD8CQSqVmQtaAAm56xCDiCG8qiA=;
	b=I4UlrcqXdx3XBEWklwWNlyHFab9MabsOmeY2n4oePKdbfSoZzYpdpaGdKbJCdIzB
	tT4fPsg6GKDtmM2XNymH0Rjzmxn3Kko4/te7O8lB1izBiceYSdc9Pza8LPiyn72Dcuy
	rT/6wc+oYqqejgsUsPzJqjYw/18891pZBrghtd8k=
Received: by smtp.zohomail.com with SMTPS id 1790667140359748.8800768409743;
	Tue, 29 Sep 2026 00:32:20 -0700 (PDT)
Message-ID: <4ed94c10-edc7-423b-a4db-032af5180f3f@collabora.com>
Date: Tue, 29 Sep 2026 09:32:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] media: dt-bindings: media: nxp, imx8mq-vpu: Remove
 nxp,imx8mq-vpu
To: Conor Dooley <conor@kernel.org>
Cc: nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260928080822.19553-1-benjamin.gaignard@collabora.com>
 <20260928080822.19553-3-benjamin.gaignard@collabora.com>
 <20260928-primal-figurine-2a87db42eab0@spud>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260928-primal-figurine-2a87db42eab0@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_003235_254490_5CD1F335 
X-CRM114-Status: GOOD (  15.43  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDI4LzA5LzIwMjYgw6AgMTg6MzEsIENvbm9yIERvb2xleSBhIMOpY3JpdMKgOgo+IE9uIE1v
biwgU2VwIDI4LCAyMDI2IGF0IDEwOjA4OjIxQU0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdy
b3RlOgo+PiBueHAsaW14OG1xLXZwdSBoYXMgYmVlbiB0YWdnZWQgaGFzIGRlcHJlY2F0ZWQgc2lu
Y2UgYSB3aGlsZSBhbmQKPj4gZHJpdmVyIGVtaXR0ZWQgYSB3YXJuaW5nIHdoZW4gdGhpcyBiaW5k
aW5ncyB3YXMgdXNlZC4KPj4gVmVuZG9yIERUIHVzZSB0aGUgZm9sbG93aW5nIG5vZGUgYmVmb3Jl
IHRoZXkgbW92ZWQgdG8gbWFpbmxpbmUgZHJpdmVyOgo+PiB2cHU6IHZwdUAzODMwMDAwMCB7Cj4+
IAljb21wYXRpYmxlID0gIm54cCxpbXg4bXEtaGFudHJvIjsKPj4gCS4uLgo+PiB9Owo+PiBidXQg
dGhhdCBiaW5kaW5nIGhhcyBuZXZlciBiZSBkb2N1bWVudGVkLgo+PiBBZnRlciBkcml2ZXIgY2xl
YW4gdXAgaXQgaXMgdGltZSB0byByZW1vdmUgaXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiBSZXZpZXdl
ZC1ieTogRnJhbmsgTGkgPEZyYW5rLkxpQG54cC5jb20+Cj4+IEFja2VkLWJ5OiBDb25vciBEb29s
ZXkgPGNvbm9yLmRvb2xleUBtaWNyb2NoaXAuY29tPgo+PiBwdy1ib3Q6IG5vdC1hcHBsaWNhYmxl
Cj4gVGhpcyBpcyBub3QgYSB0YWcgdGhhdCB5b3Ugc2hvdWxkIHB1dCBpbiB5b3VyIGNvbW1pdHMg
YnR3LCB0aGlzIHdhcyBtZQo+IHRlbGxpbmcgdGhlIGR0IHBhdGNod29yayB0aGF0IHRoaXMgcGF0
Y2ggaGFzIGJlZW4gaGFuZGxlZC4KCkl0IHdhcyB0aGUgZmlyc3QgdGltZSBJIHNhdyB0aGlzIHRh
ZCBhbmQgSSBkaWRuJ3Qga25vdyB3aGF0IHRvIGRvIG9mIGl0CmJ1dCBJIGZvdW5kIGl0IGluIHNv
bWUgb3RoZXIgY29tbWl0IG1lc3NhZ2VzIHNvIEkgYWRkZWQgaXQuCgo+Cj4+IC0tLQo+PiBjaGFu
Z2VzIGluIHY1Ogo+PiAtIGFkZCBtb3JlIGRldGFpbHMgaW4gY29tbWl0IG1lc3NhZ2UKPj4gLSBh
ZGQgQ29ub3IgRG9vbGV5IGFjY2tlZC1ieSB0YWcKPj4KPj4gICAuLi4vZGV2aWNldHJlZS9iaW5k
aW5ncy9tZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sICAgICAgfCAxMCArKysrLS0tLS0tCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9ueHAsaW14
OG1xLXZwdS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL254
cCxpbXg4bXEtdnB1LnlhbWwKPj4gaW5kZXggMTk1MjgyNjI4MTBhLi42OTYxOWQyYzg2ZmEgMTAw
NjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9ueHAs
aW14OG1xLXZwdS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sCj4+IEBAIC0xNCwxMiArMTQsMTAgQEAgZGVzY3Jp
cHRpb246Cj4+ICAgCj4+ICAgcHJvcGVydGllczoKPj4gICAgIGNvbXBhdGlibGU6Cj4+IC0gICAg
b25lT2Y6Cj4+IC0gICAgICAtIGNvbnN0OiBueHAsaW14OG1xLXZwdQo+PiAtICAgICAgICBkZXBy
ZWNhdGVkOiB0cnVlCj4+IC0gICAgICAtIGNvbnN0OiBueHAsaW14OG1xLXZwdS1nMQo+PiAtICAg
ICAgLSBjb25zdDogbnhwLGlteDhtcS12cHUtZzIKPj4gLSAgICAgIC0gY29uc3Q6IG54cCxpbXg4
bW0tdnB1LWcxCj4+ICsgICAgZW51bToKPj4gKyAgICAgIC0gbnhwLGlteDhtcS12cHUtZzEKPj4g
KyAgICAgIC0gbnhwLGlteDhtcS12cHUtZzIKPj4gKyAgICAgIC0gbnhwLGlteDhtbS12cHUtZzEK
Pj4gICAKPj4gICAgIHJlZzoKPj4gICAgICAgbWF4SXRlbXM6IDEKPj4gLS0gCj4+IDIuNTMuMAo+
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
