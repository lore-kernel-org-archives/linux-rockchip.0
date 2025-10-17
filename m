Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91726CCD195
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 09:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6W7AV5XISUHEZpUKRRBFetwjWzByqSrl2lSM3cswc8=; b=2s2h+5xNfrWidV
	HHFsZls0l9ZOc4Td5ZmMgFpIkCNkMki7zlSlN8jOf+M2dgck5JATLnHGw+MHz7wKI46IddN3dt792
	wUBbKNa0UyGRSUinJSiynze9Am6t9/PBg0ZrLb6GMIBTqgCsZR/Rps1/dMAx2f4WLk9b8JW5UhFIa
	29bap+LQiaqW406LqHXtqUYFV4PTnLqwTGT98qWbr6CFa6Go4cnlD3V89QIlzBlqOucTRs+TlJzLl
	wUK9hpaPAdi5X7hwC6WRcJ4JsFSZn8BvLqv2lO5N8+5E1AOxr07lHLu6PjcFdXnm0laRj70xc4eNZ
	59ovObzk512Xk+iRcx6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gcX-00000007H4K-2F8Y;
	Fri, 17 Oct 2025 09:19:33 +0000
Received: from mail2.ecloud.global ([135.181.6.248])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gcT-00000007H1c-421p;
	Fri, 17 Oct 2025 09:19:31 +0000
Received: from authenticated-user (mail2.ecloud.global [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail2.ecloud.global (Postfix) with ESMTPSA id 223E2720BA2;
	Fri, 17 Oct 2025 09:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io; s=mail2;
	t=1760692763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f9WUAUwdDcfIz24VKFjBPQuU3/34kcMzU6Efs904sLA=;
	b=IAcslZ3eI216ng359HSpCdLh1KGoCMoFu155xdibUE+QtoZVaBS++0KJruWv6F4VxyoHuU
	ADyqN8gFBBbLkqmlcdLw5RqIFNDy+uIo5tjcCR6I5iKXyyCspdyTVD1JkCEK9Td40OAN8R
	riZhSqm2Hjfs8U9zoAF+SHHoBRFErwE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=murena.io;
	s=mail2; t=1760692763;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=f9WUAUwdDcfIz24VKFjBPQuU3/34kcMzU6Efs904sLA=;
	b=l2kmcn3LKIPL0J0ZBlPWnYcLUOk3jvxKyV3rRndWr8mf5IULb4J6urfIju5TvDDj+O11ri
	FVfy05Di2oDnPuHEfAiNRaXXoGw2WDs415CigosAXMn9XBcZnfBECuqYbNuEItYwJ772Ao
	z+zcRqIwr3XOlpP58cAsJRo98UAGdbg=
ARC-Seal: i=1; s=mail2; d=murena.io; t=1760692763; a=rsa-sha256; cv=none;
	b=YoxRgvVsvCNylnu8Zz4E5kvP6dmE2gSA/e+1Wduz5JkG+zJ0Ks969ugSua8f5T2KJjgaqm
	UoJwhm6WByJnEWemoMYgvLFqOd+ls4Ul+5Urto4wMEtuw18/8BnC4qNakznN9D212IYRGB
	wa5cF2gzYGT90OIt4+NNTwWSVNwG6tc=
ARC-Authentication-Results: i=1;
	mail2.ecloud.global;
	auth=pass smtp.mailfrom=maud_spierings@murena.io
Message-ID: <392dc6d7-a0e5-4f9e-85c4-8d811777a697@murena.io>
Date: Fri, 17 Oct 2025 11:19:21 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v8 2/2] MAINTAINERS: Add entry for Innosilicon hdmi bridge
 library
To: Andy Yan <andyshrk@163.com>
Cc: Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com,
 andy.yan@rock-chips.com, devicetree@vger.kernel.org,
 dmitry.baryshkov@oss.qualcomm.com, dri-devel@lists.freedesktop.org,
 heiko@sntech.de, jernej.skrabec@gmail.com, jonas@kwiboo.se,
 knaerzche@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, rfoss@kernel.org, simona@ffwll.ch,
 tzimmermann@suse.de
References: <20251016083843.76675-3-andyshrk@163.com>
 <040d8fe8-da2f-4aa5-a2c3-1aec0cf2e8f0@murena.io>
 <671fc19.84e3.199f162a66c.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Maud Spierings <maud_spierings@murena.io>
In-Reply-To: <671fc19.84e3.199f162a66c.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_021930_314870_0AC67EFC 
X-CRM114-Status: GOOD (  15.92  )
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

SGkgQW5keSwKCk9uIDEwLzE3LzI1IDEwOjU2LCBBbmR5IFlhbiB3cm90ZToKPgo+IEhlbGxvIE1h
dWTvvIwKPgo+IEF0IDIwMjUtMTAtMTcgMTU6NTg6MjIsICJNYXVkIFNwaWVyaW5ncyIgPG1hdWRf
c3BpZXJpbmdzQG11cmVuYS5pbz4gd3JvdGU6Cj4+IEhpIEFuZHksCj4+Cj4+PiBGcm9tOiBBbmR5
IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+Pgo+Pj4gQWRkIGVudHJ5IGZvciBJbm5v
c2lsaWNvbiBoZG1pIGJyaWRnZSBsaWJyYXJ5Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQW5keSBZ
YW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+Pj4gLS0tCj4+Pgo+Pj4gKG5vIGNoYW5nZXMg
c2luY2UgdjEpCj4+Pgo+Pj4gICBNQUlOVEFJTkVSUyB8IDggKysrKysrKysKPj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9NQUlOVEFJTkVS
UyBiL01BSU5UQUlORVJTCj4+PiBpbmRleCBmOWY5ODVjN2Q3NDc5Li4wYWRjZmIxYzI2NGExIDEw
MDY0NAo+Pj4gLS0tIGEvTUFJTlRBSU5FUlMKPj4+ICsrKyBiL01BSU5UQUlORVJTCj4+PiBAQCAt
MTIyOTksNiArMTIyOTksMTQgQEAgTToJU2FtdWVsIEhvbGxhbmQgPHNhbXVlbEBzaG9sbGFuZC5v
cmc+Cj4+PiAgIFM6CU1haW50YWluZWQKPj4+ICAgRjoJZHJpdmVycy9wb3dlci9zdXBwbHkvaXA1
eHh4X3Bvd2VyLmMKPj4+ICAgCj4+PiArSU5OT1NJTElDT04gSERNSSBCUklER0UgRFJJVkVSCj4+
PiArTToJQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+Pj4gK0w6CWRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+ICtTOglNYWludGFpbmVkCj4+PiArVDoJZ2l0IGh0
dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vbWlzYy9rZXJuZWwuZ2l0Cj4+PiArRjoJ
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9pbm5vLWhkbWkuYwo+Pj4gK0Y6CWluY2x1ZGUvZHJtL2Jy
aWRnZS9pbm5vX2hkbWkuaAo+Pj4gKwo+Pj4gICBJTk9USUZZCj4+PiAgIE06CUphbiBLYXJhIDxq
YWNrQHN1c2UuY3o+Cj4+PiAgIFI6CUFtaXIgR29sZHN0ZWluIDxhbWlyNzNpbEBnbWFpbC5jb20+
Cj4+PiAtLSAKPj4+IDIuNDMuMAo+PiBJIGJlbGlldmUgdGhpcyBwYXRjaCBzaG91bGQgYmUgc3F1
YXNoZWQgaW50byB0aGUgcGF0Y2ggdGhhdCBhY3R1YWxseQo+PiBjcmVhdGVzIHRoZSBmaWxlcyBs
aXN0ZWQgaW4gdGhlIE1BSU5UQUlORVJTIGVudHJ5LCBsaWtlIEkgZG8gaGVyZSBbMV0uCj4+IENo
ZWNrcGF0Y2ggc2hvdWxkIGJlIGNvbXBsYWluaW5nIGFib3V0IHBhdGNoIFsxLzJdIGlmIEknbSBu
b3QgbWlzdGFrZW4sCj4+IHdoZW4geW91IHJ1biBgYjQgcHJlcCAtLWNoZWNrYC4KPiBXZSB0YWxr
ZWQgYWJvdXQgc29tZXRoaW5nIHNpbWlsYXIgaGVyZVsyXe+8mgo+IE1heGltZSBiZWxpZXZlcyB0
aGV5IHNob3VsZCBiZSBzZXBhcmF0ZSBwYXRjaGVzLAo+IEFuZCBJJ3ZlIHNlZW4gbWFueSBtZXJn
ZWQgY29tbWl0cyBpbiB0aGUga2VybmVsIGFyZSBhbHNvIGhhbmRsZSBNQUlOVEFJTkVSUyBlbnRy
eSBhcyBzZXBhcmF0ZSBwYXRjaGVzCj4KPgo+IFsyXWh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xp
bnV4LXJvY2tjaGlwLzN5Z3FuajRpZGV5N3U0bTdsdGx2N3BuZmhra3ZjZXBtcGZkaWpkc3pjdGFl
b3BxM2t5QHF0ZWczM2NvbWpsMy8KCkl0IHNlZW1zIHRoZXJlIGFyZSBpbmRlZWQgb3BpbmlvbnMg
YWJvdXQgdGhpcyBbM10sIGd1ZXNzIHdoYXRldmVyIHRoZSAKYWN0dWFsIG1haW50YWluZXIgd2Fu
dHMgaXMgd2hhdCB3aWxsIGhhcHBlbiwgc29ycnkgdG8gZGlzdHVyYi4KCgpXb3VsZCBiZSBuaWNl
IHRvIGdldCBzb21lIGNlbnRyYWwgZ3VpZGVsaW5lIGFib3V0IGhvdyBpdCBzaG91bGQgYmUuCgoK
WzNdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNTFiNzIwMDMtZTlhNS00ZjM0LWFkMDgt
MjQ5ZmMyNGIzMDQxQGtlcm5lbC5vcmcvCgo+Cj4+IExpbms6Cj4+IGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI1MTAwOS1tYXgyNTAxNC12NC0xLTZhZGIyYTBhYTM1ZkBnb2NvbnRyb2xs
LmNvbS8KPj4gWzFdCj4+Cj4+IEtpbmQgcmVnYXJkcywKPj4gTWF1ZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
