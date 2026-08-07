Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35152C5AD05
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 23:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4U0nbSvtb3ScY3iXQTS9oI1hH/GVoDVlpPX+AK6G0ag=; b=X8kZiRRMIONwlR
	O0fe/xL+fzUs3/LDrs/QywbplDWUwyTFwHzMx4ENwPrZ/pA4lSIgUhG52D+AgixcPYqGiAxiIswgi
	6KxXWCPAROFNpayak7Q3BWBpdQSFSzm4ijHghoCksA4ornZskldy9Jm3RN2VP/vj2BcooABsAfoD4
	89umFF/F77QMkqQ+pfODrhS3PJrSe3lMmCOvLAxjm2qe+IuwJ6ZEtDzYQyeTYz7NHeGKEnJxBJ60Z
	+a2kr+U9oL9hsYuYeMWD+Ln9MimsapmiIodj4gqikObNqqcKOZ3aT7ZNOBblCpwd/Htv2DX3D6Qj8
	ENcrvoLv2zu8mSwV+8yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsTXo-00000008qQp-3Rnm;
	Fri, 07 Aug 2026 23:00:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsTXl-00000008qPl-3jON;
	Fri, 07 Aug 2026 23:00:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1786143593; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LLvs2gpzS8SgUtUeacIC+uzGYsrA51G8l+88ra5+zuOVvfPhbzDxcn5hA9Qx4vze4dBxsH2fEHaJOuy+KVY7xg82Jo9ibM9xX/7fRL7JY45G5/eCBCO/EJk1+9erZrTwqeo3ut/wCSO/LwluLBSTyhwKiP65QnRD/J9y7NMmfDU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1786143593; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PovC8tV+FAuVh4jx5hdX+cj317qClrsgi5NccKsJXzY=; 
	b=hv/wsn2ijQkgORKJ7b0MjtG2iTAEQkVwgr1utp3aGUuITv5EBw/ZAiUXHmCMBKSa+NsYa+qZO+X2hg4E+DSd8tQeLWeQdiRWZvANI4IdMKVM2xjb2ow9ky4mc+HBNXlLLkulWZdN0afYpXxS7asXKcaqs0rheAc8TJFs6rsK9hE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1786143593;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=PovC8tV+FAuVh4jx5hdX+cj317qClrsgi5NccKsJXzY=;
	b=XeCRWaiXBEkaCg/JPc5k0y2jYej7omXUEAkV69DJrmxWCawPoKVeAEYZv/6RS739
	gQmdeVP13IIi8B9bsX39gH5MNe+IQPjt3lEksjayj5Bq6FtYY4/bU+H61C0MhvG/0zd
	n6zT2PKhOXXsN8MICg9TBwH5pWR5hT0XurlMt0aA=
Received: by mx.zohomail.com with SMTPS id 1786143591981605.2798606263314;
	Fri, 7 Aug 2026 15:59:51 -0700 (PDT)
Message-ID: <00d6ee9d-0ef1-41d4-8cd7-affb320b84f4@collabora.com>
Date: Sat, 8 Aug 2026 00:59:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] phy: rockchip-samsung-dcphy: model TX and RX as
 separate PHYs
To: =?UTF-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260726-dcphy-rx-v1-v2-0-cf9cc34a412a@gmail.com>
 <20260726-dcphy-rx-v1-v2-3-cf9cc34a412a@gmail.com>
 <7e55b8bc-d11d-4b25-99ee-d5d181be158f@collabora.com>
 <CAPwA33Jnp6N7a=2tcrgEzFxXRpbxEO25ktrRDiea--9Uy5upNQ@mail.gmail.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <CAPwA33Jnp6N7a=2tcrgEzFxXRpbxEO25ktrRDiea--9Uy5upNQ@mail.gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_160001_994243_1FF040C6 
X-CRM114-Status: GOOD (  24.22  )
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

SGkgSmFzb24sCgpPbiA4LzQvMjYgMDc6MzgsIOaliuaZuuaIkCB3cm90ZToKPiBbLi4uXQo+PiBU
aGlzIGFwcHJvYWNoIHdpdGggdGhlICJmaXJzdCIgdmFyaWFibGUgc2VlbXMgdW5pbnR1aXRpdmUu
IElmIHlvdSBuZWVkCj4+IHJlZmVyZW5jZSBjb3VudGluZyBvbiB0aGUgQklBUyBibG9jaywgdGhl
biB1c2UgYSBzdGF0ZSB2YXJpYWJsZQo+PiAiYmlhc19wb3dlcmVkIiwgdXNlIGEgbXV0ZXggdGhh
dCBwcm90ZWN0cyBpdCwgYW5kIGNhbGwKPj4gc2Ftc3VuZ19taXBpX2RjcGh5X2JpYXNfYmxvY2tf
e2VuLGRpc31hYmxlIChmcm9tCj4+IHNhbXN1bmdfbWlwaV9kY3BoeV9wb3dlcntvbiwgb2ZmfSkg
dW5jb25kaXRpb25hbGx5LiBUaG9zZSBtZXRob2RzIHNoYWxsCj4+IGFjcXVpcmUgdGhlIG11dGV4
LCBjaGVjayB0aGUgc3RhdGUgdmFyaWFibGUsIHtlbixkaXN9YWJsZSB0aGUgQklBUwo+PiBibG9j
aywgc2V0IHRoZSBzdGF0ZSB2YXJpYWJsZSBhY2NvcmRpbmdseSwgcmVsZWFzZSB0aGUgbXV0ZXgu
Cj4+Cj4+IFsuLi5dCj4+Cj4+IE5vdCBzdXJlIHdoZXRoZXIgeW91IGFjdHVhbGx5IG5lZWQgdG8g
dHJhY2sgdGhlIHBvd2VyIHN0YXR1cyBvZiB0aGUKPj4gaW5kaXZpZHVhbCBQSFlzIChtYXliZSB5
b3UgYWN0dWFsbHkgbmVlZCB0byB0cmFjayB0aGUgQklBUyBibG9jayBzdGF0dXMKPj4gYWxvbmUp
IGJ1dCBhbnl3YXkgSSB3b3VsZCBhcHByZWNpYXRlIGlmCj4+ICJzYW1zdW5nX21pcGlfZHBoeV90
eF9wb3dlcl97b24sb2ZmfSIgd291bGQgc2V0IHRoZSAicGQtPnBvd2VyZWQiCj4+IHZhcmlhYmxl
Lgo+IAo+IEJvdGggb2YgdGhlc2UgbGVhZCB0byB0aGUgc2FtZSBjaGFuZ2UuIFlvdSBhcmUgcmln
aHQgdG8gYmUgdW5zdXJlCj4gYWJvdXQgdGhlIHBlci1QSFkgZmxhZyAtIEkgY2hlY2tlZCwgYW5k
IGl0cyBvbmx5IHJlYWRlcnMgYXJlIHRoZSB0d28KPiAiZmlyc3QiIGNvbXB1dGF0aW9ucywgd2hp
Y2ggb25seSBkZWNpZGUgYWJvdXQgdGhlIHNoYXJlZCBibG9jay4gU28gdGhlCj4gdHdvIGZsYWdz
IGJlY29tZSBvbmUgY291bnQgaW4gdGhlIHBhcmVudCwgdGFrZW4gYW5kIGRyb3BwZWQgaW5zaWRl
Cj4gc2Ftc3VuZ19taXBpX2RwaHlfe3R4LHJ4fV9wb3dlcl97b24sb2ZmfSwgYW5kIHRoZSAiZmly
c3QiIGNvbXB1dGF0aW9ucwo+IGdvIGF3YXkuIEkgd2VudCBmb3IgYSBjb3VudCByYXRoZXIgdGhh
biBhIHNpbmdsZSBmbGFnIGJlY2F1c2UgdGhlCj4gcmVsZWFzZSBzaWRlIGhhcyB0byBkaXN0aW5n
dWlzaCAidGhlIG90aGVyIGRpcmVjdGlvbiBpcyBzdGlsbCB1c2luZwo+IGl0IiBmcm9tICJub2Jv
ZHkgaXMgbGVmdCIuCj4gCj4gVGhlIHNoYXJlZC1ibG9jayBoZWxwZXIgd2lsbCB1c2UgbG9ja2Rl
cF9hc3NlcnRfaGVsZCgpIHJhdGhlciB0aGFuCj4gdGFrZSB0aGUgbXV0ZXggaXRzZWxmLCBzaW5j
ZSBzYW1zdW5nX21pcGlfZGNwaHlfcG93ZXJfe29uLG9mZn0gYWxyZWFkeQo+IGhvbGQgaXQsIGFz
IHlvdSBub3RlZC4KPiAKPiBPbmUgdGhpbmcgSSBhbSB1bnN1cmUgYWJvdXQgaXMgdGhlIGVuYWJs
ZS9kaXNhYmxlIHBhaXJpbmcuIEkgY291bGQgbm90Cj4gZmluZCBhbiBlbmFibGUgZm9yIHRoaXMg
YmxvY2sgLSB0aGUgZm91ciBCSUFTIHJlZ2lzdGVycyBvbmx5IHNlbGVjdAo+IGJpYXMgY3VycmVu
dHMsIHJlZmVyZW5jZSB2b2x0YWdlcywgdGhlIEhTIG91dHB1dCBsZXZlbCBhbmQgdGhlIEJHUgo+
IGNob3BwZXIgZGl2aWRlciwgd2hpbGUgUExMX0NPTjAgaW4gdGhlIHNhbWUgY29tbW9uIGJsb2Nr
IGRvZXMgaGF2ZSBhCj4gUExMX0VOLiBJZiB0aGF0IHJlYWRpbmcgaXMgcmlnaHQsIHRoZXJlIGlz
IG5vdGhpbmcgdG8gdHVybiBvZmYgYW5kIHRoZQo+IHJlbGVhc2Ugc2lkZSB3b3VsZCBvbmx5IGRy
b3AgdGhlIGNvdW50IC0gaW4gd2hpY2ggY2FzZSBtYXliZSB0aGUKPiAiZW5hYmxlIiBuYW1lIGlz
IHdvcnRoIHJldmlzaXRpbmcgYXMgd2VsbC4gRG9lcyB0aGF0IG1hdGNoIHlvdXIKPiB1bmRlcnN0
YW5kaW5nIG9mIHRoaXMgYmxvY2s/CgpNeSB1bmRlcnN0YW5kaW5nIG9mIHRoaXMgYmxvY2sgY29t
ZXMgZnJvbSB0aGUgVFJNIGFuZCB0aGUgZG93bnN0cmVhbQpkcml2ZXIuIFRSTSBzdGF0ZXMgdGhh
dCB0aGUgQklBUyBibG9jayBpcyBjb21tb24gKD0gc2hhcmVkIGJldHdlZW4gUlgKYW5kIFRYKSwg
YnV0IERvd25zdHJlYW0gZHJpdmVyIGRvZXMgbm90IGNhcmUgYW5kIGp1c3Qgd3JpdGVzIHRoZQpz
ZXR0aW5ncyBmb3IgUlggYW5kIFRYIHVuY29uZGl0aW9uYWxseS4KClRoZXJlIGlzIGFsc28gc29t
ZXRoaW5nIHdlaXJkOiB0aGUgcmVnaXN0ZXIgZGVzY3JpcHRpb24gaW4gdGhlIEdSRgppbmRpY2F0
ZXMgdGhhdCBSWCBjb3VsZCBiZSBpbiBDUEhZIGFuZCBUWCBpbiBEUEhZIG1vZGUuIEJ1dCBDUEhZ
IGFuZApEUEhZIHJlcXVpcmUgZGlmZmVyZW50IHZhbHVlcyBmb3IgdGhlIERDUEhZX00wX0JJQVNf
Q09ONC4gSSdsbCB0cnkgdG8KYXNrIFJvY2tjaGlwIHBlb3BsZSBhYm91dCB0aGlzLgoKQlRXIG5v
IG9iamVjdGlvbnMgdG8gcmVuYW1pbmcgdGhpcyB0byBlLmcuICIqX2NvbmZpZ3VyZSgpIiBhbmQg
dXNlIGEKZmxhZyAiYm9vbCBjb25maWd1cmVkOyIgaWYgcmVxdWlyZWQuCgo+IFNlcGFyYXRlbHks
IEkgbm90aWNlZCAiZmlyc3QiIGFsc28gZ3VhcmRzIHRoZSBBUEIgcmVzZXQsIGFuZCBvbmx5IGlu
Cj4gdGhlIHRyYW5zbWl0dGVyIHBhdGggLSBvbmNlIDQvNCBlbmFibGVzIHRoZSByZWNlaXZlciwg
YSByZWNlaXZlci1maXJzdAo+IHBvd2VyLW9uIGRvZXMgbm90IGdldCBvbmUuIEkgcGxhbiB0byBt
b3ZlIGl0IGludG8gdGhlIHNhbWUgc2hhcmVkLWJsb2NrCj4gcGF0aCBzbyBib3RoIGRpcmVjdGlv
bnMgYmVoYXZlIHRoZSBzYW1lLCBhbmQgY2hlY2sgYm90aCBwb3dlci1vbgo+IG9yZGVycyBvbiB0
aGUgYm9hcmQgYmVmb3JlIHNlbmRpbmcgdjMuCj4gCj4gSSB3b3VsZCBsaWtlIHRvIGZvbGQgYWxs
IG9mIHRoaXMgaW50byB2MyB0b2dldGhlciB3aXRoIHdoYXRldmVyIGNvbWVzCj4gb3V0IG9mIHRo
ZSBQSFlfVFlQRV9DU0kvUEhZX1RZUEVfRFNJIGRpc2N1c3Npb24gaW4gcGF0Y2ggMS80LCBzaW5j
ZQo+IHRoYXQgZGVjaWRlcyBob3cgdGhlIHR3byBQSFlzIGFyZSB0b2xkIGFwYXJ0LgoKT0ssIG1h
a2VzIHNlbnNlLiBMb29raW5nIGZvcndhcmQgdG8gdjMhCgpUaGFua3MgYW5kIGJlc3QgcmVnYXJk
cywKTWljaGFlbAoKPiBbLi4uXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
