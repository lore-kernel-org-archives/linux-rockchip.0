Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 263E6C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 13:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aFlmDHwqX0+OWz0eFtnhrtzk+D6onj9Avq4TdzjNULs=; b=ZmtADMgaCc6V+X/HnlXq/zyoCk
	o5ISjJLC2jbiZe276FqwJxKHLA8dDxHtrdvbTYDVBZQtPzMnAzlg1NcWjP/mRYiGZPsUaHViBtFoD
	YAPovgn8k3OenV9P/r+LXPqpAJJQZxAmCajedFnmOs82/7rO6ztwcp7vjiM4czuGbHrAlgitwtMDz
	G2dalF2vakkFc5b6z+pUH29KwrL9Osdfkx6gnq/htJ4saOYKgrU5qDn4aW2ArjTY3R9r0qzMO52DR
	pSd3OrFGQeQEIqemJepLoPQjiYZZrqHYqth4imnYtIHsb9isYt2Qm3iUDnkN6OGJPOQj/VfN7NuaL
	QAmfsAMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeIC-00000009Ks1-3RJk;
	Fri, 21 Jun 2024 13:27:04 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKeIA-00000009KrO-0qtN
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 13:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718976420;
	bh=osld6dK3jXn9QfIFzrfdCXJj+wgJTV1og7IU+S2Vsr8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JxgGvYQxSjR6XDCF8N//FsUZaEWtBizAcw48r40ry1BYk+990Kb6YJ85wmYo2nqr7
	 XF1NicpZRH6FuchNagMoT2k54vpdFpfckwDYiUD07aou4vNrdv2leQwRSnJg113pm9
	 gU7xf+G1xjTLCxCWx9bID2HO4YRyVkvS63HVyR90Cm6WJLZoLqiY1Kjh1dP3KRdLNK
	 5EZqsFzioieJ8sa+PWFlga/c3SIEi3ZTom+GtbxkFrsXc39p6hrjM2HhDvWVNto1rv
	 g0RGEu1zEAc9ZpgAtb/f7mfZ8GA1nvoYKUaAUIK889Xa3sGL8qV/96lijrlOqQ3ET7
	 jDRNPHfHu0q/w==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sebastianfricke)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E9C4837821DD;
	Fri, 21 Jun 2024 13:26:59 +0000 (UTC)
Date: Fri, 21 Jun 2024 15:26:58 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, hverkuil-cisco@xs4all.nl,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	benjamin.gaignard@collabora.com, laurent.pinchart@ideasonboard.com,
	praneeth@ti.com, nm@ti.com, vigneshr@ti.com, a-bhatia1@ti.com,
	j-luthra@ti.com, b-brnich@ti.com, detheridge@ti.com,
	p-mantena@ti.com, vijayp@ti.com, andrzej.p@collabora.com,
	nicolas@ndufresne.ca, afd@ti.com
Subject: Re: [PATCH v14 2/6] media: imagination: Add E5010 JPEG Encoder driver
Message-ID: <20240621132658.m2utqnvwaicgiwqr@basti-XPS-13-9310>
References: <20240618193651.2771478-1-devarsht@ti.com>
 <20240618193651.2771478-3-devarsht@ti.com>
 <20240621123715.enqtdqxskdkod5ze@basti-XPS-13-9310>
 <8dda9d0c-3154-a7fd-1233-ca5be59639de@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8dda9d0c-3154-a7fd-1233-ca5be59639de@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_062702_564164_6A54E9CD 
X-CRM114-Status: GOOD (  15.74  )
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

SGV5IERldmFyc2gsCgpPbiAyMS4wNi4yMDI0IDE4OjE0LCBEZXZhcnNoIFRoYWtrYXIgd3JvdGU6
Cj5IaSBTZWJhc3RpYW4KPgo+T24gMjEvMDYvMjQgMTg6MDcsIFNlYmFzdGlhbiBGcmlja2Ugd3Jv
dGU6Cj4+IEhleSBEZXZhcnNoLAo+Pgo+PiBUaGlzIGRvZXNuJ3QgY29tcGlsZSB3aXRob3V0IGVy
cm9ycyBmb3IgbWUsIGN1cmlvdXMsIGl0IHByb2JhYmx5IGRpZAo+PiBjb21waWxlIHdpdGhvdXQg
cHJvYmxlbXMgZm9yIHlvdSByaWdodD8KPj4KPj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9pbWFn
aW5hdGlvbi9lNTAxMC1qcGVnLWVuYy5jOjE2MjI6MTk6IGVycm9yOgo+PiBpbml0aWFsaXphdGlv
biBvZiDigJhpbnQgKCopKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKinigJkgZnJvbSBpbmNvbXBh
dGlibGUKPj4gcG9pbnRlciB0eXBlIOKAmHZvaWQgKCopKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KinigJkKPj4gWy1XZXJyb3I9aW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdCj4+IMKgMTYyMiB8
wqDCoMKgwqDCoMKgwqDCoCAucmVtb3ZlID0gZTUwMTBfcmVtb3ZlLAo+PiDCoMKgwqDCoMKgIHzC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgXn5+fn5+fn5+fn5+Cj4+IGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vaW1hZ2luYXRpb24vZTUwMTAtanBlZy1lbmMuYzoxNjIyOjE5OiBu
b3RlOiAobmVhcgo+PiBpbml0aWFsaXphdGlvbiBmb3Ig4oCYZTUwMTBfZHJpdmVyLnJlbW92ZeKA
mSkKPj4gY2MxOiBzb21lIHdhcm5pbmdzIGJlaW5nIHRyZWF0ZWQgYXMgZXJyb3JzCj4+Cj4KPlll
cyBJIHRoaW5rIGl0IGRpZCBjb21waWxlIGZpbmUgZm9yIG1lLgo+RGlkIHlvdSB0cnkgdGhpcyBv
biB0aXAgb2YgbGludXgtbmV4dCA/CgpOb3BlIHRoZSBtZWRpYSBzdWJzeXN0ZW0gaXMgbm90IGJh
c2VkIG9uIGxpbnV4LW5leHQsIGJ1dCBpbnN0ZWFkIG9uOgpodHRwczovL2dpdC5saW51eHR2Lm9y
Zy9tZWRpYV9zdGFnZS5naXQvbG9nLwpQbGVhc2UgbWFrZSBzdXJlIHRoYXQgeW91ciBwYXRjaGVz
IGNvbXBpbGUgb24gdG9wIG9mIHRoYXQuCgo+Cj5BcyBtZW50aW9uZWQgaW4gY2hhbmdlbG9nLCB0
aGVyZSB3YXMgdXBkYXRlIGluIHBsYXRmb3JtIGRyaXZlciBmb3IgcmV0dXJuIHR5cGUKPm9mIHJl
bW92ZSBmdW5jdGlvbiB3aGljaCBnb3QgY2hhbmdlZCB0byB2b2lkIHJldHVybiB0eXBlLiBQbGVh
c2UgY2hlY2sgaWYgeW91Cj5oYXZlIHRoaXMgcGF0Y2ggWzFdIGluIHlvdXIgdHJlZSB3aGljaCBn
b3QgcmVjZW50bHkgbWVyZ2VkLgoKTm8gdGhhdCBwYXRjaCBpcyBub3QgcGFydCBvZiB0aGUgdHJl
ZSB5ZXQuCgpQbGVhc2Ugbm90ZSBhbHNvIHRoZSBmb2xsb3dpbmcgc2VjdGlvbiBpbiB0aGF0IHBh
dGNoOgoKICAJLyoKCSAqIFRyYWRpdGlvbmFsbHkgdGhlIHJlbW92ZSBjYWxsYmFjayByZXR1cm5l
ZCBhbiBpbnQgd2hpY2ggaG93ZXZlciBpcwoJICogaWdub3JlZCBieSB0aGUgZHJpdmVyIGNvcmUu
IFRoaXMgbGVkIHRvIHdyb25nIGV4cGVjdGF0aW9ucyBieSBkcml2ZXIKCSAqIGF1dGhvcnMgd2hv
IHRob3VnaHQgcmV0dXJuaW5nIGFuIGVycm9yIGNvZGUgd2FzIGEgdmFsaWQgZXJyb3IKCSAqIGhh
bmRsaW5nIHN0cmF0ZWd5LiBUbyBjb252ZXJ0IHRvIGEgY2FsbGJhY2sgcmV0dXJuaW5nIHZvaWQs
IG5ldwoJICogZHJpdmVycyBzaG91bGQgaW1wbGVtZW50IC5yZW1vdmVfbmV3KCkgdW50aWwgdGhl
IGNvbnZlcnNpb24gaXQgZG9uZQoJICogdGhhdCBldmVudHVhbGx5IG1ha2VzIC5yZW1vdmUoKSBy
ZXR1cm4gdm9pZC4KClNvIHlvdXIgZHJpdmVyIGlzIGV4cGVjdGVkIHRvIGltcGxlbWVudCByZW1v
dmVfbmV3KCkuCgpJIHdpbGwgdGFrZSBjYXJlIG9mIHRoaXMgZm9yIHRoZSBQUiwgYnV0IHBsZWFz
ZSBub3RlIGZvciB0aGUgZnV0dXJlOgpJdCBoYXMgdG8gd29yayB3aXRoIG1lZGlhX3N0YWdlLCB1
bmxlc3MgeW91IGhhdmUgYSB2ZXJ5IGdvb2QgcmVhc29uIGZvcgpzb21ldGhpbmcgZGlmZmVyZW50
LgoKPgo+S2luZGx5IGxldCBtZSBrbm93IGlmIHlvdSBzdGlsbCBmYWNlIGFueSBpc3N1ZXMuCj4K
PlsxXToKPmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI0MDUyNzA4MzQxNi4xMTc3MTA2
LTItdS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlLwo+Cj5SZWdhcmRzCj5EZXZhcnNoCgpS
ZWdhcmRzLApTZWJhc3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
