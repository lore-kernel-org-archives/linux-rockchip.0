Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B77C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 06:38:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DEB5E64ECE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 06:38:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DEB5E64ECE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GQsru+38JCxOWqE+P9EMVmTeXD9aiM1h8rwThVqlP50=; b=My27RtsVnCsB1ZkWz0FDWy3y3
	NgFvTvOEtZwme496ntLq4ROUyU2ffkJeL6hyczZE3zr2RiKMdiWgjBEAbvvqYkL1UQ/4C9HWMqDW9
	yLuXUFfa8HzE5me2GI022QujavLa6vxUZh1MJu24f5jDzny35Xj1DqIcOv6NfKNBLCStVSf6jofLs
	XgwkviRZah/cJTtXVwMRUrjOhquUM8tqlxoQQgn7NNIyKYIi+hbmWIcBIioqkYMYWK7sJL13Crq8f
	jUJKNDvElaEsOVQWvd4rpOypKGlBlw54FPWSz8DqSv5ExOe2gbMc3UUASTwmyTrwKywBq7LuB4YHt
	GM4+eZv4A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFWlT-0002e8-Bq; Fri, 26 Feb 2021 06:38:15 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFWlN-0002c9-OQ
 for linux-rockchip@lists.infradead.org; Fri, 26 Feb 2021 06:38:14 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 95F8F777;
 Fri, 26 Feb 2021 14:37:54 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19731T140185115293440S1614321473188104_; 
 Fri, 26 Feb 2021 14:37:53 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5a105a916e8deb098b3f54bc85a97a5b>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Daniel Stone <daniel@fooishbar.org>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <d17ea299-b21e-b298-9098-f47b780be106@rock-chips.com>
 <CAPj87rMBt9bJhPcyX--xa_wMse9JCttHCfz1PkFXFwHcRheuJg@mail.gmail.com>
From: Huang Jiachai <hjc@rock-chips.com>
Message-ID: <a7db35ea-b4c8-caf1-dfdf-0195a5d6590e@rock-chips.com>
Date: Fri, 26 Feb 2021 14:37:53 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAPj87rMBt9bJhPcyX--xa_wMse9JCttHCfz1PkFXFwHcRheuJg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_013812_283733_169D0AC4 
X-CRM114-Status: GOOD (  14.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFuaWVsLAoK5ZyoIDIwMjEvMi8yNSAyMDo0NiwgRGFuaWVsIFN0b25lIOWGmemBkzoKPiBI
aSBTYW5keSwKPgo+IE9uIFRodSwgMjUgRmViIDIwMjEgYXQgMDI6MTcsIEh1YW5nIEppYWNoYWkg
PGhqY0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+ICAgICAgIFJLMzM5OSBhbmQgcHgzMCBjYW4g
c3VwcG9ydCBZVFIgYWZiYyBmb3JtYXRbUkdCIG9ubHldLCB0aGVyZSBpcyBhbgo+PiBoaWRkZW4g
Y29udHJvbCBiaXQgdG8gY29udHJvbCB0aGlzLgo+IEdyZWF0LCB0aGFua3MgZm9yIHByb3ZpZGlu
ZyB0aGlzIGluZm9ybWF0aW9uIQo+Cj4+IEhpIEFseXNzYSwKPj4KPj4gICAgICAgQ2FuIHlvdSBh
ZGQgdGhlIGZvbGxvd2luZyBwYXRjaCB0byB0ZXN0IG9uIHlvdXIgcGxhdGZvcm0/IHRoYW5rcy4K
Pj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wLmMKPj4gYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+
IGluZGV4IDk5YmRiNWEyYTE4NS4uMDc4MGFkNDYyMzBhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPj4gQEAgLTEwNSw3ICsxMDUsNyBAQAo+
PiAgICAjZGVmaW5lIEFGQkNfRk1UX1U4VThVOFU4ICAgICAgMHg1Cj4+ICAgICNkZWZpbmUgQUZC
Q19GTVRfVThVOFU4ICAgICAgICAgICAgICAgIDB4NAo+Pgo+PiAtI2RlZmluZSBBRkJDX1RJTEVf
MTZ4MTYgICAgICAgICAgICAgICAgQklUKDQpCj4+ICsjZGVmaW5lIEFGQkNfRk1UX1lUUiAgICAg
ICAgICAgQklUKDQpCj4+Cj4+ICAgIC8qCj4+ICAgICAqIFRoZSBjb2VmZmljaWVudHMgb2YgdGhl
IGZvbGxvd2luZyBtYXRyaXggYXJlIGFsbCBmaXhlZCBwb2ludHMuCj4+IEBAIC05NTIsNyArOTUy
LDkgQEAgc3RhdGljIHZvaWQgdm9wX3BsYW5lX2F0b21pY191cGRhdGUoc3RydWN0IGRybV9wbGFu
ZQo+PiAqcGxhbmUsCj4+ICAgICAgICAgICBpZiAocm9ja2NoaXBfYWZiYyhmYi0+bW9kaWZpZXIp
KSB7Cj4+ICAgICAgICAgICAgICAgICAgIGludCBhZmJjX2Zvcm1hdCA9Cj4+IHZvcF9jb252ZXJ0
X2FmYmNfZm9ybWF0KGZiLT5mb3JtYXQtPmZvcm1hdCk7Cj4+Cj4+IC0gICAgICAgICAgICAgICBW
T1BfQUZCQ19TRVQodm9wLCBmb3JtYXQsIGFmYmNfZm9ybWF0IHwgQUZCQ19USUxFXzE2eDE2KTsK
Pj4gKyAgICAgICAgICAgICAgIGlmIChmYi0+bW9kaWZpZXIgJiBBRkJDX0ZPUk1BVF9NT0RfWVRS
KQo+PiArICAgICAgICAgICAgICAgICAgICAgICBhZmJjX2Zvcm1hdCB8PSBBRkJDX0ZNVF9ZVFI7
Cj4+ICsgICAgICAgICAgICAgICBWT1BfQUZCQ19TRVQodm9wLCBmb3JtYXQsIGFmYmNfZm9ybWF0
KTsKPj4gICAgICAgICAgICAgICAgICAgVk9QX0FGQkNfU0VUKHZvcCwgaHJlZ19ibG9ja19zcGxp
dCwgMCk7Cj4+ICAgICAgICAgICAgICAgICAgIFZPUF9BRkJDX1NFVCh2b3AsIHdpbl9zZWwsIFZP
UF9XSU5fVE9fSU5ERVgodm9wX3dpbikpOwo+PiAgICAgICAgICAgICAgICAgICBWT1BfQUZCQ19T
RVQodm9wLCBoZHJfcHRyLCBkbWFfYWRkcik7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5oCj4+IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AuaAo+PiBpbmRleCA0YTIwOTljYjU4MmUuLjQ4ZTEzMWI4OGMy
MyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AuaAo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5o
Cj4+IEBAIC0yMCw2ICsyMCw3IEBACj4+ICAgICNkZWZpbmUgUk9DS0NISVBfQUZCQ19NT0QgXAo+
PiAgICAgICAgICAgRFJNX0ZPUk1BVF9NT0RfQVJNX0FGQkMoIFwKPj4gICAgICAgICAgICAgICAg
ICAgQUZCQ19GT1JNQVRfTU9EX0JMT0NLX1NJWkVfMTZ4MTYgfCBBRkJDX0ZPUk1BVF9NT0RfU1BB
UlNFIFwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgfCBBRkJDX0ZPUk1BVF9NT0RfWVRSIFwK
Pj4gICAgICAgICAgICkKPiBMb29rcyBnb29kIC0gdGhpcyB3aWxsIGhlbHAgdXMgY29uZmlybS4g
SSB0aGluayB0aGUgY29tcGxldGUgcGF0Y2gKPiB0aG91Z2ggd291bGQgYWR2ZXJ0aXNlIGJvdGgg
WVRSIGFuZCBub24tWVRSIG1vZGlmaWVyczogcGVyIEFybSdzCj4gcmVjb21tZW5kYXRpb24sIGl0
IHNvdW5kcyBsaWtlIFtBWF1SR0I4ODg4IGZvcm1hdHMgc2hvdWxkIG9ubHkKPiBhZHZlcnRpc2Ug
dGhlIG5vbi1ZVFIgdmFyaWFudCwgYW5kIFtBWF1CR1I4ODg4IHNob3VsZCBhZHZlcnRpc2UgYm90
aAo+IHZhcmlhbnRzLiBEb2VzIHRoYXQgbWFrZSBzZW5zZT8KeWVzLCBSR0IgZm9ybWF0IGhhdmUg
WVRSIGFuZCBub24tWVRSIHZhcmlhbnQsIFlVViBmb3JtYXQgb25seSBoYXZlIApub24tWVRSIHZh
cmlhbnQuCj4gQ2hlZXJzLAo+IERhbmllbAo+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
