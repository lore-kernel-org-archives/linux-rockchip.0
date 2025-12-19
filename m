Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B36ED78789
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Dec 2025 15:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3Wml2IYQkYUvQ53gHlYVsRimeCCcvs680Kh83dBZyM=; b=peY5HXrkv5l+tf
	9vF8mbT+DcsNYeEPIFI/VA87iiprBxIcWP57H+7TBwaICPv9QMpJCEGWh5QLKijhXpnzoHVYDLXXI
	MAJF3HOEF2m7375MF/v5UOwvrEhGgi6hQzZ9e4qXfIjO18dT9sY+vHtQq1pNhrUmqf4lSXsE/GPQN
	vme5MxuTu7QQPuJ7wauxo2oJN8hbTUROWXZegjNIHt4cLEkyypyB996UXPxgdxR2Yo8sXM/fqewJs
	ocF8yjOXtjgknGsK72PBEdpWOy+LI5A1WzrVdwD1qJo/Ns2lnZD7cr5DD3mNFfXHClAcSnE6sKsSr
	u8u8w6kvN5mii1eSzc0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWcEP-0000000AUtA-13PT;
	Fri, 19 Dec 2025 15:17:25 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWcEM-0000000AUsU-24ZO;
	Fri, 19 Dec 2025 15:17:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1766157369; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bm/vI4Av07K8MgbWkrYeouVdDJNkQw271wGhJ6ynlun2sRNhlBKKWlnINJX8HpbDoyilnMT4jM/IyFCdcCBCfPUX5vl6ryK3st63QWdd3I5RcLR8oi4BLVlKc6ef3nuJ+ZQSBMlVB58c6glTIP8KL+NATzAXUvyE3ECN5LkvjU0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1766157369; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=V54/jlYAKh6+m74SLrEA3GOC3Dhue0OTKW61NTk8Y+4=; 
	b=bmMe0rqfTY/mukfG77FJKdaLNlD2T2LfCAGoSgy8h5jyPmw7S1JwJz0/h5W3xm6bQx1utqXJawa3/vKARb3j9wcpTor6fDJLzs/hMEYgMBtxv+ap6gFPiBG4Cvhyx3bCIutiAT3j8QS0FeWvckuoK2f9ktwzqpTKjGmjQtFgv8w=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1766157369;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=V54/jlYAKh6+m74SLrEA3GOC3Dhue0OTKW61NTk8Y+4=;
	b=P7wHkzvhzqlbGDhCpJ5bAlXqWYCTnBu1Ed8fg9gdIBtKlspjLtLL+2qusec/NEnu
	bcRsjWwDWb5ObuDVfUUIYnOzbIhvuRqwRvvu2OOFod91rC9PztWGSU1Xgbjm4wiJd7S
	26ZYKc2MBnGEu5Lma9n6phz9DMbVzKtON5HZYTW4=
Received: by mx.zohomail.com with SMTPS id 1766157354564723.4618134255445;
	Fri, 19 Dec 2025 07:15:54 -0800 (PST)
Message-ID: <47c45858-1af9-4614-b980-d8100a382a58@collabora.com>
Date: Fri, 19 Dec 2025 10:15:51 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 00/17] media: rkvdec: Add support for VDPU381 and
 VDPU383
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Jonathan Corbet <corbet@lwn.net>, Ricardo Ribalda <ribalda@chromium.org>,
 Hans Verkuil <hverkuil@kernel.org>, Yunke Cao <yunkec@google.com>,
 Hans de Goede <hansg@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Pavan Bobba <opensource206@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 James Cowgill <james.cowgill@blaize.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>
References: <20251218232829.337811-1-detlev.casanova@collabora.com>
 <219DE002-BE77-4D28-9BC6-9124F099F211@gmail.com>
Content-Language: en-US
From: Detlev Casanova <detlev.casanova@collabora.com>
In-Reply-To: <219DE002-BE77-4D28-9BC6-9124F099F211@gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_071722_589722_49A0B743 
X-CRM114-Status: GOOD (  19.49  )
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

SGkgUGlvdHIsCgpPbiAxMi8xOS8yNSAwODo1MCwgUGlvdHIgT25pc3pjenVrIHdyb3RlOgo+Cj4+
IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fu
b3ZhQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAxOSBncnUgMjAyNSwgbyBnb2R6LiAwMDoyODoKPj4K
Pj4gVGhlc2UgdmFyaWFudHMgYXJlIGZvdW5kIHJlc3BlY3RpdmVseSBpbiB0aGUgUkszNTg4IGFu
ZCBSSzM1NzYgU29Dcy4KPj4gVGhpcyBwYXRjaCBvbmx5IGFkZHMgc3VwcG9ydCBmb3IgSDI2NCBh
bmQgSDI2NSBpbiBib3RoIHZhcmlhbnRzLgo+Pgo+PiBBcyB0aGVyZSBpcyBhIGNvbnNpZGVyYWJs
ZSBwYXJ0IG9mIHRoZSBjb2RlIHRoYXQgY2FuIGJlIHNoYXJlZCB3aXRoIHRoZQo+PiBhbHJlYWR5
IHN1cHBvcnRlZCBya3ZkZWMgZGVjb2RlciBkcml2ZXIsIHRoZSBzdXBwb3J0IGZvciB0aGVzZSB2
YXJpYW50cwo+PiBpcyBhZGRlZCBoZXJlIHJhdGhlciB0aGFuIHdyaXRpbmcgYSBuZXcgZHJpdmVy
Lgo+Pgo+PiBUaGlzIHBhdGNoIHNldCB1c2VzIHRoZSBuZXdseSBpbnRyb2R1Y2VkIGhldmNfZXh0
X3Nwc19bbHNddF9ycHMgdjRsMgo+PiBjb250cm9scyBmb3IgSEVWQy4KPj4gVGhlcmVmb3JlLCBh
IHBhdGNoZWQgdmVyc2lvbiBvZiB1c2VycGFjZSB0b29scyBpcyBuZWVkZWQgZm9yIEhFVkMKPj4g
c3VwcG9ydCAoYWRkZWQgZm9yIEdTdHJlYW1lclsxXSBhbmQgaW4gYW4gZWFybHkgc3RhZ2UgZm9y
IEZGbXBlZ1syXSkuCj4+Cj4+IFRoZSBEVFMgY2hhbmdlcyBjYW4gYmUgZm91bmQgaW4gYW5vdGhl
ciBwYXRjaCBzZXQ6IFszXQo+Pgo+PiBbMV06IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9nc3RyZWFtZXIvZ3N0cmVhbWVyLy0vbWVyZ2VfcmVxdWVzdHMvOTM1NQo+PiBbMl06IGh0dHBz
Oi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vZGV0bGV2L2ZmbXBlZwo+PiBbM106IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC8yMDI1MTAyMDIxMjAwOS44ODUyLTEtZGV0bGV2LmNhc2Fub3ZhQGNv
bGxhYm9yYS5jb20vCj4+Cj4gRGV0bGV2LAo+Cj4gRllJOgo+Cj4gSW4gbXkgdGVzdGJlZCB3aXRo
Cj4KPiBpLiB2NyBvZiBbMV0gb24gbWFpbmxpbmUgNi4xOC4yCj4gaWkgZmZtcGVnOCB2NGwyX3Jl
cXVlc3QgWzJdCj4gaWlpLiBteXRodiBhcyBwbGF5ZXIgWzNdCj4gaXYuIG1pbmlteXRoMiBhcyBk
aXN0cm8gWzRdCj4gdi4gTk8gYXBwbGllZCB5b3VycyBmZm1wZWcgc3BzL3JwcyBoaW50aW5nIFs1
XSAoYXMgaSdtIG9uIGZmbXBlZzgpCkFuZCBbNV0gd29uJ3QgYmUgY29tcGF0aWJsZSBhbnltb3Jl
IGFjdHVhbGx5LCBJJ20gd2FpdGluZyBmb3IgdGhlIGZpbmFsIAp2ZXJzaW9uIG9mIHRoZSB1YXBp
IHRvIHRhY2tsZSB0aGF0Lgo+IEkgcnVuIHNldCBvZiBteSBtcGVnMi9oMjY0L2hldmMvdnA4L3Zw
OSBzYW1wbGVzIG9uOiByazMzMjguIHJrMzM5OSwgcmszNTY2LCByazM1NzYsIHJrMzU4OCBhbmQg
aDYxNiAoanVzdCBmb3IgYnJpZWYgdGVzdCBmb3IgcG90ZW50aWFsIGNyb3NzLXJlZ3Jlc3Npb25z
KQo+Cj4gUmVzdWx0czoKPgo+IGEuIHJrMzMyODogbm8gYW55IHJlZ3Jlc3Npb25zOyBhbGwgc2Ft
cGxlcyBhcmUgZGVjb2RlZCBvawo+Cj4gYi4gcmszMzk5OiBubyBhbnkgcmVncmVzc2lvbnM7IGFs
bCBzYW1wbGVzIGFyZSBkZWNvZGVkIG9rCj4KPiBjLiByazM1NjY6IG5vIGFueSByZWdyZXNzaW9u
cyAoZS5nLiBpbiB2cDkuIHY2IGFuZCBvbGRlciB3ZXJlIHJlZ3Jlc3Npbmc7IHY3IGlzIG9rKQpW
UDkgaW1wcm92ZW1lbnQgaXMgZXhwZWN0ZWQgYXMgSSBhZGRlZCBhIG1pc3NpbmcgcmVnX251bSBt
dWx0aXBsaWVyIGluIApWUDkgYXMgc3BvdHRlZCBieSBKb25hcy4KPiBjLjEgaDI2NDogYWxsIG9r
Cj4gYy4yIGhldmM6IHNhbXBsZXMgd2l0aG91dCBsb25nLXRlcm0gc3BzL3JwczogYWxsIG9rLgo+
IGMuMyBoZXZjOiBzYW1wbGVzIHdpdGggbG9uZy10ZXJuIHNwcy9ycHM6IHY3IGlzIGEgYml0IHJl
Z3Jlc3NpbmcgaGVyZTogaXQgZ2l2ZXMgbWUgc29tZXRpbWVzIGtlcm5lbCBvb3BzIHJlcXVpcmlu
ZyBody4gcmVzZXQgdG8gYnJpbmcgZGVjb2RlciBiYWNrIHRvIGxpdmUuCj4gRXhlbXBsYXJ5IG9v
cHM6IGh0dHBzOi8vdGVybWJpbi5jb20vdXBqdQo+IE9sZGVyIHZlcnMgb2YgeW91ciBjb2RlIHdl
cmUgaGFuZGxpbmcgc3VjaCBjYXNlcyB3aXRob3V0IG5lZWRzIG9mIGh3LiByZXNldAoKVGhlIDM1
NjYgc3VwcG9ydCBkb2Vzbid0IG5lZWQgYW55IGRyaXZlciBjaGFuZ2VzLCBvbmx5IGRldmljZSB0
cmVlIG5vZGVzIAp1c2luZyB0aGUgInJvY2tjaGlwLHJrMzU4OC12ZGVjIiBjb21wYXRpYmxlID8K
CkknbGwgY2hlY2sgdGhhdCBvb3BzLCBJIGhhdmVuJ3Qgc2VlbiBpdCB5ZXQuCgo+Cj4gZC4gcmsz
NTc2Ogo+IGQuMTogaDI2NDogd29ya3Mgb2sgLSBidXQgcmFuZG9tbHkgaSdtIGdldHRpbmcgcGxh
eWJhY2sgd2l0aCBkaXN0b3J0aW9ucyBsaWtlIHRoaXM6IGh0dHBzOi8vcG9zdGltZy5jYy9ZaDhE
amMzTC4gaXQgaXMgYXZkLiAxIHBlciBmZXcgcGxheWJhY2tzLgo+IGQuMjogaGV2YzogdGhlIHNh
bWUgbGlrZSBjLjEgYW5kIGMuMgo+Cj4gZS4gcmszNTg4Cj4gZS4xOiBoMjY0OiBhbGwgb2sKPiBl
LjI6IGhldmM6IHRoZSBzYW1lIGxpa2UgYy4xIGFuZCBjLjIKPiAgICAgCj4gZy4gaDYxNiB3aXRo
IGNlZHJ1czogYWxsIG9rLgo+Cj4gYnR3Ogo+IEFkZGluZyB0byBbMV0gdnA5IGFuZHJvaWQgY29k
ZSBbNl0gb2ZmZXJzIG1lIG5pY2Ugd29ya2luZyB2cDkgaHdkZWMgYWNjZWxsIG9uIHJrMzU2Ni8z
NTg4Lgo+Cj4gR3JlYXQgd29yayEKVGhhbmsgeW91LCBhbmQgdGhhbmtzIGZvciB5b3VyIHZhbHVh
YmxlIHRlc3RpbmcgIQo+Cj4gWzFdIGh0dHBzOi8vZ2l0bGFiLmNvbGxhYm9yYS5jb20vZGV0bGV2
L2xpbnV4Ly0vY29tbWl0cy9hZGQtdmRwdTM4MS1hbmQtMzgzLXRvLXJrdmRlYy12Nwo+IFsyXSBo
dHRwczovL2NvZGUuZmZtcGVnLm9yZy9Ld2lib28vRkZtcGVnL3NyYy9icmFuY2gvdjRsMi1yZXF1
ZXN0LW44LjAuMQo+IFszXSBodHRwczovL2dpdGh1Yi5jb20vTXl0aFRWL215dGh0dgo+IFs0XSBo
dHRwczovL2dpdGh1Yi5jb20vd2FycG1lL21pbmlteXRoMgo+IFs1XSBodHRwczovL2dpdGxhYi5j
b2xsYWJvcmEuY29tL2RldGxldi9mZm1wZWcKPiBbNl0gaHR0cHM6Ly9naXRodWIuY29tL2R2YWIt
c2FybWEvYW5kcm9pZF9rZXJuZWxfcmtfb3BpL2NvbW1pdC9mZDBiMWIxN2NiZGZjZjBjMTViYzlm
NDExY2M3MTI3MTA1MTU3ZTU3Cj4gICAgIAo+ICAgCj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
