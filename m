Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D630BC0218D
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jan 2025 16:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7dvYOXiyvkFsN3/5fjTrrjFxcvMs4h1SgltB4OFcQI=; b=u7atU/cUkTaU6J
	E4dWufgLzJ38Ud9mM2FutQENdo4duBoo7ZuZafr0Jm3P+dl6UGzvGWcFHXnIM1pOq17rznBVhQBpx
	sFlZtGFbvbYTLhNOsnExpIcGfXapwj8pce6lqd1rVdaxI88XbgEJmn3A4/g3rQ3tP9+jkToz4J/lq
	0h0zv3ZIeS9rNkgENomCPI03Xv3q4VX5cROMs7jhBOppcjYOONgv7YUIP/QqFiRxO3geh2fW3HzNr
	iVNZgo647WTH739wu9rR4j6sEQyHvX8pfo4UyYC4HyjeQlCqo07ibC32BrTo775MtUuUYSb+SK1iH
	RtCYLHBHT6TkQAhRENxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdBJR-00000007Qfq-1jnr;
	Wed, 29 Jan 2025 16:53:13 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdBHJ-00000007QIb-2zyw;
	Wed, 29 Jan 2025 16:51:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1738169451; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UgrcL6rMN/4wU8bq3QwCfqoUIJD14WOSBWTAEdNDTNn2oXvmKKlCeC8wFspeGiQad5gFf6LED4uJb/SNP0VFW90337Whkh/4SK4PYFrS57uGRnirxsXGfFsQbCtNCxu3yvP+pDXZibjUgKevgz89uDnByim6O8HrWIsez/BVILQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1738169451; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wPGGfc1qwmOrQZGLlJNOWgBoAZRzR/BbTbOKRT5al8k=; 
	b=NG7AtYb2a2Q5uo4vpFBu/10e+848SICc0+d/3SduQISEn8qKRlBI1j7E1wi3ijsWsd4RICHqZybgQYOoIqJUPX5XlWeQznaAn6LF+wDPmUNfCDLAFge0Y+/kH6OAjfkVJ090In9m2yAC4XYDDKIU194LOeGIpen1EXTtjyb+sV4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1738169451;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=wPGGfc1qwmOrQZGLlJNOWgBoAZRzR/BbTbOKRT5al8k=;
	b=Z1AkDh9apOD+PwP6D7Nj3dw6dqAoxWhEZZpoE5MTrY+XFHQCP9YIKzk3aDle8Zw3
	Igc8acgOSzr2oLLACUvyF3DZ48n/hhVyo6eUi6KajltJ7gnrpSFAIkWISzEhoajoj+w
	hneSRZi4L/It/R0udbKYbQ+V4OfqoE1V5VU13v3A=
Received: by mx.zohomail.com with SMTPS id 1738169445054994.6577657400422;
	Wed, 29 Jan 2025 08:50:45 -0800 (PST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Subject: Re: [PATCH 1/3] media: rockchip: Introduce the rkvdec2 driver
Date: Wed, 29 Jan 2025 11:50:43 -0500
Message-ID: <8541055.T7Z3S40VBb@trenzalore>
In-Reply-To: <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <5969581.LvFx2qVVIh@arisu> <CE4343FE-94AA-4F84-8C43-8366013AED84@gmail.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_085101_801034_39F5E440 
X-CRM114-Status: GOOD (  20.83  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUGlvdHIsCgpPbiBXZWRuZXNkYXksIDI5IEphbnVhcnkgMjAyNSAwOTo0ODo1MSBFU1QgUGlv
dHIgT25pc3pjenVrIHdyb3RlOgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogRGV0bGV2
IENhc2Fub3ZhIDxkZXRsZXYuY2FzYW5vdmFAY29sbGFib3JhLmNvbT4gdwo+ID4gZG5pdSAxNSBj
emUgMjAyNCwgbyBnb2R6LiAyMTo0NDoKPiA+IAo+ID4gCj4gPiAKPiA+IAo+ID4gWWVzLCB0aGUg
dmRwdTM0eCBkZWNvZGVyIG9uIHJrMzU2eCBzb2NzIHNob3VsZCBiZSBzdXBwb3J0ZWQgYnkgdGhp
cyBkcml2ZXIKPiA+IGJ1dCBJIGRvbid0IGhhdmUgYm9hcmRzIHRvIHRlc3QgdGhhdCB1bmZvcnR1
bmF0ZWx5Lgo+IAo+IERldGxldiwKPiAKPiBKdXN0IEZZSToKPiAKPiBJIGRvbmUgc29tZSB0ZXN0
cyBvZiBya3ZkZWMyIG9uIDYuMTIuMTEgb24gMzU4OCwgMzU2OCBhbmQgMzU2Ngo+IAo+IEZvciBl
bmFibGluZyBya3ZkZWMyIG9uIDM1NnggaToKPiAtYWRkIDM1NnggY29tcGF0aWJsZSBpbiBya3Zk
ZWMyLmMKPiAtYWRkIGR0c2kgbm9kZXMgbGlrZSB0aGlzOgo+IGh0dHBzOi8vZ2l0aHViLmNvbS93
YXJwbWUvbWluaW15dGgyL2Jsb2IvbWFzdGVyL3NjcmlwdC9rZXJuZWwvbGludXgtNi4xMi9maQo+
IGxlcy8xMDc4LWFybTY0LWR0c2ktcm9ja2NoaXAtcmszNTZ4LWFkZC1ya3ZkZWMyLXZpZGVvLWRl
Y29kZXItbm9kZXMucGF0Y2gKPiAKPiBXaXRoIHRoaXMgaSBjYW4gc2F5Ogo+IC1vbiByazM1ODgg
aSBoYXZlIHNvbWUgaGV2YyA0ayBkZWNvZGluZyBwZXJmZWN0bHkgYnV0IHNvbWUgb3RoZXJzIGFy
ZQo+IGZhaWxpbmcgLW9uIHJrMzU2Ni8zNTY4IG9ubHkgc3Vic2V0IG9mIDM1ODjigJlzIHNhbXBs
ZXMgaXMgZGVjb2RlZCB3ZWxsLiAoYnV0Cj4gaXMgd29ya3MgdGhlbiB3b3JrcyBwZXJmZWN0bHkg
ZmluZSkgLXdoZW4gbm90IGZhaWxpbmcgb24gMzU4OCBzYW1wbGUgZmFpbHMKPiBvbiAzNTZ4IC0g
aXMgc2VlIGVycm9ycyBsaWtlOgo+IAo+IFsgICA5NS42NjY2NjldIGlvdmE6IDB4MDAwMDAwMDBm
MmU4MDAwMCBhbHJlYWR5IG1hcHBlZCB0byAweDAwMDAwMDAwMzczNzgwMDAKPiBjYW5ub3QgcmVt
YXAgdG8gcGh5czogMHgwMDAwMDAwMDJmOGMwMDAwIHByb3Q6IDB4MyBbICAgOTUuNzQ1MDgyXSBp
b3ZhOgo+IDB4MDAwMDAwMDBmMmY0NjAwMCBhbHJlYWR5IG1hcHBlZCB0byAweDAwMDAwMDAwMzcy
YjYwMDAgY2Fubm90IHJlbWFwIHRvCj4gcGh5czogMHgwMDAwMDAwMDNhNDAzMDAwIHByb3Q6IDB4
MyBbICAgOTUuODIyMDEyXSBpb3ZhOiAweDAwMDAwMDAwZjJlZTYwMDAKPiBhbHJlYWR5IG1hcHBl
ZCB0byAweDAwMDAwMDAwMzcxMjYwMDAgY2Fubm90IHJlbWFwIHRvIHBoeXM6Cj4gMHgwMDAwMDAw
MDNhODAzMDAwIHByb3Q6IDB4MyBbICAgOTUuODk2ODAyXSBpb3ZhOiAweDAwMDAwMDAwZjJlYzYw
MDAKPiBhbHJlYWR5IG1hcHBlZCB0byAweDAwMDAwMDAwMjlmZTYwMDAgY2Fubm90IHJlbWFwIHRv
IHBoeXM6Cj4gMHgwMDAwMDAwMDNhNDAzMDAwIHByb3Q6IDB4MyB0dXJuaW5nLW9mZiBpb21tdSBt
YWtlcyBhYm92ZSBlcnJvcnMgZGlzYXBwZWFyCj4gLSBidXQgc2FtcGxlIHN0aWxsIGZhaWxzLgoK
SSBzdXBwb3NlIHlvdSB0ZXN0ZWQgd2l0aCBteSBoZXZjIGJyYW5jaCwgd2hpY2ggaXMgbm90IHJl
YWxseSByZWFkeSB5ZXQgKFNvbWUgCnJlZiBmcmFtZXMgd2lsbCB3b3JrIGJ1dCB1c3VhbGx5LCBp
dCB3b24ndCkgQ2FuIHlvdSBjb25maXJtIHdoaWNoIGJyYW5jaC9jb21taXQgCnlvdSBiYXNlZCB5
b3VyIHRlc3RzIG9uID8KCkZvciB0aGUgaW9tbXUsIGRvIHlvdSBzZWUgdGhvc2UgZXJyb3JzIGxp
a2UgdGhhdCBvbmx5IG9uIDM1Nnggb3IgYWxzbyBvbiAzNTg4IAo/IFRoZSBoZXZjIGJyYW5jaCBz
aG91bGQgaGF2ZSB0aGUgaW9tbXUgcGF0Y2hlcyB0byBmaXggdGhhdCBraW5kIG9mIHRoaW5ncy4g
CihidXQgbm90ZSB0aGF0IGhldmMgc3VwcG9ydCBpcyByZWFsbHkgbmV3LCBzbyBpdCBtYXkgaGF2
ZSBidWdzIHdpdGggYnVmZmVyIAphbGxvY2F0aW9ucykKCj4gSWYgYW55Ym9keSBoaW50cyBtZSBm
b3Igd2F5L3Rvb2wgdG8gYW5hbHlzZSBvZiBwbGF5aW5nL2ZhaWxpbmcgc2FtcGxlcyB0bwo+IGNh
dGNoOiB3aGF0IGVuY29kaW5nIHNwZWNpZmljcyBtYWtlcyBnaXZlbiBzYW1wbGUgZmFpbGluZyB0
byBkZWNvZGUgIG9uCj4gcmt2ZGVjMiAtIGknbGwgYmUgbW9yZSB0aGF0IGhhcHB5IHRvIHByb3Zp
ZGUgZGV0YWlsc+KApiAoZG9pbmcgc2ltcGxlCj4gbWVkaWFpbmZvIDxmaWxlPiBzaG93cyBubyBk
aWZmZXJlbmNlcyBmb3IgbWXigKYpCgpGZXcgZmVhdHVyZXMgYXJlIHN1cHBvcnRlZCBmb3IgSEVW
QyBhcyBvZiBub3c6CiAtIE5vIHNjYW5saXN0IHN1cHBvcnQgKG9ubHkgZGVmYXVsdCAxNngxNiBi
bG9ja3Mgd2lsbCB3b3JrKQogLSBMb25nIHRlcm0gcmVmZXJlbmNlIGZyYW1lcyBhcmUgYWxzbyBu
b3QgY29uZmlndXJlZCB5ZXQuCiAtIGhldmMgMTAgYml0cyBpcyBhbHNvIG5vdCBzdXBwb3J0ZWQg
eWV0CgpUaGVzZSBhcmUgc3BlY2lmaWMgdG8gdGhlIGVuY29kaW5nIGFuZCBtZWRpYWluZm8gd29u
J3QgcmVhbGx5IGdpdmUgeW91IAppbmZvcm1hdGlvbiBvbiB0aGF0LCBleGNlcHQgbWF5YmUgb24g
dGhlIDEwIGJpdHMgZm9ybWF0LgoKWW91IGNhbiBhbHNvIGNoZWNrb3V0IFlVVmlldyAoaHR0cHM6
Ly9naXRodWIuY29tL0lFTlQvWVVWaWV3KSB0byBnZXQgCmluZm9ybWF0aW9uIG9uIG1lZGlhIGZp
bGVzIHN0cnVjdHVyZSwgYnV0IEkgaGF2ZSBoYWQgaXNzdWVzIHdpdGggSEVWQyBzdXBwb3J0IAps
YXRlbHkuCgpSZWdhcmRzLAoKRGV0bGV2LgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
