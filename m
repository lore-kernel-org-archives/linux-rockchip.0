Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA68C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 07:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+2/pC3yTI/jlr2Upgm06vpAvsneCIJvHly58nSG7NU=; b=jtqiowAyy4xd+F
	VCkAA+ny7oL4tWdpDmo+V7KYCSs9gdwsb76C33COH/G0pVPfYoaeLjeOOogtlXtlNgiF3zPtNpFju
	hKxN3iUAFfhbP2+8ZeQ/1mR5SnlS0ZsS38EWXher5wNu6ijZFl3wqd7nEwtAMnHK7tLugsg2jjkUq
	9ZxppiKlnwag+SVYoZNt35GvqGIB/sykxze8n8yWPY3O85gohV1xC25XV351d0yZel0UDD8EmQJOL
	E6R9Lz50Ab4obxBtYCmzcuFntvlmMJ0KWygKy50kaIxdpiCkNEe0iOe1wcfD9/sLeQuQK7waZIQTN
	/OJnzt7jPACqxmPjuPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRqtZ-007cqz-Rh; Wed, 09 Mar 2022 07:38:05 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRqtM-007cor-Tg; Wed, 09 Mar 2022 07:37:54 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 41C10AC0283;
 Wed,  9 Mar 2022 15:37:49 +0800 (CST)
Message-ID: <30f195d6-e9d7-3da6-89fa-4a064a1f6bf9@rock-chips.com>
Date: Wed, 9 Mar 2022 15:37:48 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
To: Daniel Stone <daniel@fooishbar.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
 <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
 <CAPj87rOanNE1wca3ijJx1zXYZkKX1ta9F145GCXM15Nv=POicA@mail.gmail.com>
 <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com>
In-Reply-To: <f3af0286-fc64-f011-bc90-6797e26e3640@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlDGhpWSk5JSEJOGh
 1OSRoeVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjY6Qyo4Cz5IMzAYFSwLUU8N
 PQsKFBhVSlVKTU9NQ0pKT01CQktKVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0hMSTcG
X-HM-Tid: 0a7f6d9cd74ab039kuuu41c10ac0283
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_233753_132723_574ED9DD 
X-CRM114-Status: GOOD (  17.34  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFuaWVsOgoKT24gMy85LzIyIDEwOjAzLCBBbmR5IFlhbiB3cm90ZToKPiBIaSBEYW5pZWw6
Cj4KPiBPbiAzLzgvMjIgMjI6MDQsIERhbmllbCBTdG9uZSB3cm90ZToKPj4gT24gVHVlLCA4IE1h
ciAyMDIyIGF0IDA4OjQyLCBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+IHdyb3Rl
Ogo+Pj4gT24gMy83LzIyIDIxOjA5LCBEYW5pZWwgU3RvbmUgd3JvdGU6Cj4+Pj4gT24gTW9uLCA3
IE1hciAyMDIyIGF0IDEyOjE4LCBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+IHdy
b3RlOgo+Pj4+PiBXaGVuIHJ1biBhIHdlc3RvbiAxMC4wLjA6Cj4+Pj4+Cj4+Pj4+IMKgwqDCoCAj
IGV4cG9ydCBYREdfUlVOVElNRV9ESVI9L3RtcAo+Pj4+PiDCoMKgwqAgIyB3ZXN0b24gLS1iYWNr
ZW5kPWRybS1iYWNrZW5kLnNvIC0tdXNlLXBpeG1hIC0tdHR5PTIKPj4+Pj4gLS1jb250aW51ZT13
aXRob3V0LWlucHV0Cj4+Pj4+Cj4+Pj4+IEkgZ290IHRoZSBmb2xsb3dpbmcgZXJyb3I6Cj4+Pj4+
Cj4+Pj4+IGRybV9hdG9taWNfY2hlY2tfb25seSBbUExBTkU6MzE6U21hcnQwLXdpbjBdIENSVEMg
c2V0IGJ1dCBubyBGQgo+Pj4+IENhbiB5b3UgcGxlYXNlIHN0YXJ0IFdlc3RvbiB3aXRoIC0tbG9n
Z2VyLXNjb3Blcz1sb2csZHJtLWJhY2tlbmQgYW5kCj4+Pj4gYXR0YWNoIHRoZSBvdXRwdXQ/Cj4+
PiBQbGVhc2Ugc2VlIHRoZSB3ZXN0b24gb3VwdXQgaGVyZVswXQo+PiBBcmUgeW91IHJ1bm5pbmcg
d2l0aCBtdXNsIHBlcmhhcHM/Cj4gRG8geW91IG1lYW4gdGhlIEMgbGlicmFyeT8gSSBjaG9zZSB1
Q2xpYi1uZyBpbiBidWlsZHJvb3QsIG5vdCB1c2UgbXVzbC4KPj4gRWl0aGVyIHdheSwgcGxlYXNl
IG1ha2Ugc3VyZSB5b3VyCj4+IGxpYmRybSBidWlsZCBpbmNsdWRlcyBjb21taXQgNzlmYTM3N2M4
YmRjODRmZGU5OWM2YTZhYzE3ZTU1NDk3MWM2MTdiZS4KPgo+Cj4gVGhlIHVwc3RyZWFtIGJ1aWxk
cm9vdCB1c2UgbGliZHJtMi40LjEwOSwgdGhpcyBjb21taXRbMF0gaWYgZnJvbSAKPiBsaWJkcm0y
LjQuMTEwCj4KPiBJIGNoZXJyeS1waWNrIHRoaXMgcGF0Y2ggdG8gbXkgbG9jYWwgbGliZHJtLCBi
dXQgaGFzIG5vIGVmZmVjdCwgc3RpbGwgCj4gaGFzICJhdG9taWM6IGNvdWxkbid0IGNvbW1pdCBu
ZXcgc3RhdGUiIGVycm9yLgo+Cj4gSSBoYXZlIGRvIGEgc2VhcmNoIGluIGxpYmRybSBhbmQgd2Vz
dG9uLCBidXQgZmluZCBubyBvbmUgY2FsbCAKPiBkcm1Nb2RlQXRvbWljTWVyZ2UsIGlzIHRoYXQg
cmlnaHQ/Cj4KPiBbMF1odHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvbWVzYS9kcm0vLS9t
ZXJnZV9yZXF1ZXN0cy8xNjcKPgoKV2l0aCB5b3VyIHBhdGNoIGFwcGxpZWQgZnJvbSBsaWJkcm0y
LjQuMTEwLCBJIGRvIGEgbWFrZSBjbGVhbiBmb3IgCmJ1aWRscm9vdCwgdGhhbiBidWlsZCBpdCBh
Z2FpbizCoCBUaGF0J3MgdGFrZSBlZmZlY3QuCgpJIGNhbiBzZWUgb25seSB0aGUgc2Vjb25kIHZh
bHVlIChub24temVybyBGQikgb2YgcGxhbmUgMzEgY29tbWl0IHRvIHRoZSAKa2VybmVsLiBTbyB0
aGlzIGlzIHdvcmtzLgoKTWF5YmUgdGhlIGJ1aWRyb290IHNob3VsZCB1cGRhdGUgbGliZHJtIHBh
Y2thZ2UuCgpUaGFuayB5b3UuCgo+Pgo+PiBDaGVlcnMsCj4+IERhbmllbAo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
