Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 184F8C87FD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Aug 2025 06:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SjY5aZGQFn66ojUIJm7HeNntLHZaAHDs3w/WcyfsaM=; b=l6TGgj4ik4tVpT
	MCPWRsgvvJvEqnBpPUswcl8GqXGy8GmtB5mYYrzE2Kk0sQby6j1dOOijaXQiNGU/KZ9aXZYLSxwYq
	liRT9JosTJxrqcN+0bqt2GOckE7v7c40PjLJ3qE2jp8KzqiKi0cGnixRDaI4jYZh917wD1P0d58j/
	ED7kDxPCtb9LS4ZI+P27Rjr1geFmdVg5ODMkhsb31GKqvvkvo9sVSaIiVvspffWqr4GzivV8EXBfc
	giiL+EwJePGP8I+8/k17Gx2RfDVijyP3zvOhCFbIWq0tZKb75ZxEzyFDFINXkqX/mUMZYA3Yzl0nn
	38RjesUjHeafLhnGzTHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujBDw-0000000BuDo-2g86;
	Tue, 05 Aug 2025 06:32:36 +0000
Received: from mail-m3268.qiye.163.com ([220.197.32.68])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujBDs-0000000BuBj-05N5;
	Tue, 05 Aug 2025 06:32:34 +0000
Received: from [172.16.12.153] (gy-adaptive-ssl-proxy-1-entmail-virt204.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1e545294d;
	Tue, 5 Aug 2025 14:32:18 +0800 (GMT+08:00)
Message-ID: <f726862a-bd18-43ee-b307-8daef2451e6b@rock-chips.com>
Date: Tue, 5 Aug 2025 14:32:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Add Type-C DP support for RK3399 EVB IND board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20250729090032.97-1-kernel@airkyi.com>
 <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
 <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
 <pk5wecbbpxn7v4bdwtghhdnm76fmrmglelytljwfb4cgvpu2i6@rk5turgyt5xq>
 <0207826d-a987-4464-b306-29bdbfac45bc@rock-chips.com>
 <3e880194-5ac8-4056-929c-ac103bedc737@oss.qualcomm.com>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <3e880194-5ac8-4056-929c-ac103bedc737@oss.qualcomm.com>
X-HM-Tid: 0a9878ee449203abkunm21aca6f168f34c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR1OQlZNGE9ITU9JS0kYThhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=HLMeHboFPO9wilguf8Zww8hXY4kbZfK9VFChLUgfBMO8X5hUaMfgVTyd06GEiVyB5KDQckmsuLy2uIYRxl3vsF4giA/oylz5ntb+gbaaVKjwwRowlrEkDLe/4llvgSnl7ioQdUFDYOTlUb1y1uFWNDDmWoAcEGyenpvv0wyxVLo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=OBvhoezUSc7NI8tAcl9t1xhx6CLTBuvUQsqUuAHfhvo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_233232_559260_ED7D0B54 
X-CRM114-Status: GOOD (  34.77  )
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

SGkgRG1pdHJ5LAoKT24gOC81LzIwMjUgMTI6MjYgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gT24gMDUvMDgvMjAyNSAwOToxMywgQ2hhb3lpIENoZW4gd3JvdGU6Cj4+IEhpIERtaXRyeSwK
Pj4KPj4gT24gOC8yLzIwMjUgNTo1NSBQTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4KPj4g
Wy4uLl0KPj4KPj4KPj4+PiBDdXJyZW50bHksIHRoZSBzb2Z0d2FyZSBzaW1wbHkgc2VsZWN0cyB0
aGUgZmlyc3QgYXZhaWxhYmxlIHBvcnQuIFNvIAo+Pj4+IGlmIHVzZXIKPj4+PiBwbHVncyBpbiBE
UCBkb25nbGVzIGluIGJvdGggVVNCLUMgcG9ydHMsIHRoZSBEUCBkcml2ZXIgd2lsbCBzZWxlY3Qg
Cj4+Pj4gdGhlIGZpcnN0Cj4+Pj4gcG9ydC4gVGhpcyBwcm9jZXNzIGlzIGltcGxlbWVudGVkIGlu
IGNkbl9kcF9jb25uZWN0ZWRfcG9ydCgpIC4KPj4+Pgo+Pj4gSSB0aGluayBTdGVwaGVuIEJveWQg
aGFzIGJlZW4gbG9va2luZyBvbiBzaW1pbGFyIGlzc3VlcyBmb3IgCj4+PiBDaHJvbWVib29rcywK
Pj4+IHdoaWNoIHdlcmUgc2hhcmluZyBEUCBjb250cm9sbGVyIGJldHdlZW4gc2V2ZXJhbCBVU0It
QyBwb3J0cy4gSSBkb24ndAo+Pj4gcmVtZW1iZXIgd2hhdCB3YXMgaGlzIGxhc3Qgc3RhdHVzLiBJ
IHRoaW5rIHRoZXJlIGl0IHdhcyBlYXNpZXIgc2luY2UgCj4+PiB0aGUKPj4+IGJpZnVyY2F0aW9u
IHBvaW50IHdhcyB0aGUgRUMuCj4+Cj4+IEkgdGhpbmsgdGhlIGxhdGVzdCBwcm9ncmVzcyBzaG91
bGQgYmUgaGVyZTogWzBdLiBJdCBzZWVtcyB0aGF0IGl0IAo+PiBoYXNuJ3QgYmVlbiB1cGRhdGVk
IGZvciBhIHdoaWxlLgo+Cj4gTWlnaHQgYmUgOi0oCj4KPj4KPj4gWzBdOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNDA5MDEwNDA2NTguMTU3NDI1LTEtIAo+PiBzd2JveWRAY2hyb21p
dW0ub3JnLwo+Pgo+Pgo+Pj4KPj4+IEkgdGhpbmssIENETi1EUCBuZWVkcyB0byByZWdpc3RlciB1
cCB0byB0d28gZW5jb2RlcnMgYW5kIHVwIHRvIHR3bwo+Pj4gY29ubmVjdG9ycywgaGF2aW5nIGEg
c2VwYXJhdGUgZHJtX2JyaWRnZSBjaGFpbiBmb3IgZWFjaCBvZiB0aGUgRFAKPj4+IHNpZ25hbHMg
cGF0aHMgKGluIHRoZSBlbmQsIHlvdSBjYW4gbm90IGd1YXJhbnRlZSB0aGF0IGJvdGggYnJhbmNo
ZXMgCj4+PiB3aWxsCj4+PiBoYXZlIHRoZSBzYW1lIHNpbXBsZSBDRE4tRFAgLT4gUEhZIC0+IFVT
Qi1DIGNvbmZpZ3VyYXRpb246IHRoZXJlIGNhbiBiZQo+Pj4gZGlmZmVyZW50IHJldGltZXJzLCBl
dGMpLgo+Pj4KPj4+IEJvdGggZW5jb2RlcnMgc2hvdWxkIGxpc3QgdGhlIHNhbWUgQ1JUQyBpbiBw
b3NzaWJsZV9jcnRjcywgZXRjLiBPZgo+Pj4gY291cnNlLCBpdCBzaG91bGQgbm90IGJlIHBvc3Np
YmxlIHRvIGVuYWJsZSBib3RoIG9mIHRoZW0uCj4+Pgo+Pj4gVGhpcyB3YXkgaWYgdGhlIHVzZXIg
cGx1Z3MgaW4gdHdvIERQIGRvbmdsZXMsIGl0IHdvdWxkIGJlIHBvc3NpYmxlIHRvCj4+PiBzZWxl
Y3QsIHdoaWNoIG91dHB1dCBhY3R1YWxseSBnZXRzIGEgc2lnbmFsLgo+Pgo+PiBUaGF0IG1ha2Vz
IHNlbnNlLCBidXQgdGhpcyBtaWdodCBtYWtlIHRoZSBEUCBkcml2ZXIgcXVpdGUgY29tcGxleC4g
SSAKPj4gd2lsbCBzZWUgaWYgSSBjYW4gbWFrZSBpdCBoYXBwZW4uCj4KPiBJIHRoaW5rIGl0J3Mg
dHJhZGluZyBvbmUgYnVyZGVuIGZvciBhbm90aGVyLCBiZWNhdXNlIENETi1EUCBjdXJyZW50bHkg
Cj4gaGFzIGEgY29tcGxpY2F0aW9uIG9mIGNhbGxpbmcgY2RuX2RwX2dldF9wb3J0X2xhbmVzKCkg
LyAKPiBjZG5fZHBfZW5hYmxlX3BoeSgpIGluIGEgbG9vcCByYXRoZXIgdGhhbiBqdXN0IGVuYWJs
aW5nIG9uZSBpbnN0YW5jZS4KClllcCwgSSB3aWxsIGdpdmUgaXQgYSB0cnkuCgoKPgo+Pgo+Pgo+
Pj4KPj4+Pgo+Pj4+Pj4gQlRXLCBvbmUgb2YgdGhlIGltcG9ydGFudCB0aGluZ3MgdG8gZG8gaXMg
dG8gaW1wbGVtZW50IGV4dGNvbi1saWtlCj4+Pj4+PiBub3RpZmljYXRpb25zLiBJIGZvdW5kIGlu
Y2x1ZGUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmggLCBidXQgaWYgdGhlCj4+Pj4+PiBhdXgtYnJp
ZGdlIGlzIHVzZWQsIHRoZSBicmlkZ2UgY2hhaW4gd291bGQgbG9vayBsaWtlIHRoaXM6Cj4+Pj4+
Pgo+Pj4+Pj4gUEhZMCBhdXgtYnJpZGdlIC0tLSsKPj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAtLS0tPiBDRE4tRFAgYnJpZGdlCj4+Pj4+PiBQSFkxIGF1
eC1icmlkZ2UgLS0tKwo+Pj4+Pj4KPj4+Pj4+IE9oLCBDRE4tRFAgYnJpZGdlIGhhcyB0d28gcHJl
dmlvdXMgYXV4LWJyaWRnZSEKPj4+Pj4+Cj4+Pj4+PiBOb3csIEkgdHJ5IHRvIHVzZSBkcm1fY29u
bmVjdG9yX29vYl9ob3RwbHVnX2V2ZW50KCkgdG8gbm90aWZ5IEhQRAo+Pj4+Pj4gc3RhdGUgYmV0
d2VlbiBQSFkgYW5kIENETi1EUCBjb250cm9sbGVyLgo+Pj4+PiBEb2VzIGl0IGFjdHVhbGx5IHdv
cms/IFRoZSBPT0IgSFBEIGV2ZW50IHdpbGwgYmUgcmVwb3RlZCBmb3IgdGhlIAo+Pj4+PiB1c2It
Ywo+Pj4+PiBjb25uZWN0b3IncyBmd25vZGUsIGJ1dCB0aGUgRFAgY29udHJvbGxlciBpc24ndCBj
b25uZWN0ZWQgdG8gdGhhdCAKPj4+Pj4gbm9kZQo+Pj4+PiBhbnlob3cuIElmIEknbSBub3QgbWlz
dGFrZW4sIHRoZSBIUEQgc2lnbmFsIHdpbGwgbm90IHJlYWNoIERQIAo+Pj4+PiBkcml2ZXIgaW4K
Pj4+Pj4gdGhpcyBjYXNlLgo+Pj4+IFllcy7CoCBXaGF0IHlvdSBtZW50aW9uZWQgaXMgdGhlIGNh
c2UgaW4KPj4+PiBkcml2ZXJzL3VzYi90eXBlYy9hbHRtb2Rlcy9kaXNwbGF5cG9ydC5jIC4gSSBo
YXZlIGFsc28gYWRkZWQgYSBuZXcgCj4+Pj4gT09CIGV2ZW50Cj4+Pj4gbm90aWZ5IGluIHRoZSBQ
SFkgZHJpdmVyIGluIFBhdGNoIDMsIHdoZXJlIHRoZSBleHBlY3RlZCBmd25vZGUgaXMgCj4+Pj4g
dXNlZCBpbgo+Pj4+IHRoZSBQSFkuIFNvIG5vdyB3ZSBoYXZlIHR3byBPT0IgSFBEIGV2ZW50cywg
b25lIGZyb20gYWx0bW9kZXMvIAo+Pj4+IGRpc3BsYXlwb3J0LmMKPj4+PiBhbmQgdGhlIG90aGVy
IGZyb20gUEhZLiBPbmx5IHRoZSBIUEQgZnJvbSBQSFkgaXMgZXZlbnR1YWxseSBwYXNzZWQgCj4+
Pj4gdG8gdGhlIERQCj4+Pj4gZHJpdmVyLgo+Pj4gVGhpcyB3YXkgeW91IHdpbGwgbG9vc2UgSVJR
X0hQRCBwdWxzZSBldmVudHMgZnJvbSB0aGUgRFAuIFRoZXkgYXJlIHVzZWQKPj4+IGJ5IERQUlgg
KGFrYSBEUCBTaW5rKSB0byBzaWduYWwgdG8gRFBUWCAoRFAgU291cmNlKSB0aGF0IHRoZXJlIHdh
cyBhCj4+PiBjaGFuZ2Ugb24gdGhlIERQUlggc2lkZSBhbmQgdGhlIERQVFggc2hvdWxkIHJlcmVh
ZCBsaW5rIHBhcmFtcyBhbmQgCj4+PiBtYXliZQo+Pj4gcmV0cmFpbiB0aGUgbGluay4KPj4KPj4g
U29ycnksIEkgc3RpbGwgZG9uJ3QgcXVpdGUgdW5kZXJzdGFuZCB5b3VyIHBvaW50LiBJIHRoaW5r
IHRoZSBlbnRpcmUgCj4+IG5vdGlmaWNhdGlvbiBwYXRoIGlzIGFzIGZvbGxvd3M6Cj4+Cj4+IFR5
cGUtQyBtdXggY2FsbGJhY2sgLT4gUkszMzk5IFVTQkRQIFBIWSAtPiBQSFkgY2FsbHMgCj4+IGRy
bV9jb25uZWN0b3Jfb29iX2hvdHBsdWdfZXZlbnQoKSAtPiBEUCBkcml2ZXIKPj4KPj4gQXJlIHlv
dSBjb25jZXJuZWQgdGhhdCB0aGUgSVJRX0hQRCBldmVudCBpcyBub3QgYmVpbmcgaGFuZGxlZCAK
Pj4gc29tZXdoZXJlIGFsb25nIHRoZSBwYXRoPyBJcyBpdCB0aGF0IHRoZSBUeXBlLUMgbXV4IGNh
bGxiYWNrIGRpZG4ndCAKPj4gbm90aWZ5IHRoZSBQSFksIG9yIHRoYXQgYWZ0ZXIgdGhlIFBIWSBw
YXNzZWQgdGhlIGV2ZW50IHRvIHRoZSBEUCAKPj4gZHJpdmVyIHZpYSB0aGUgT09CIGV2ZW50LCB0
aGUgRFAgZHJpdmVyIGRpZG4ndCBoYW5kbGUgaXQ/Cj4KPiBUaGUgSVJRX0hQRCBpcyBhbiBldmVu
dCBjb21pbmcgZnJvbSBEUFJYLCBpdCBpcyBkZWxpdmVyZWQgYXMgYSBwYXJ0IG9mIAo+IHRoZSBh
dHRlbnRpb24gVkRNLCBzZWUgRFBfU1RBVFVTX0lSUV9IUEQuIEl0J3MgYmVpbmcgaGFuZGxlZCBi
eSB0aGUgCj4gYWx0bW9kZSBkaXNwbGF5cG9ydC5jIGRyaXZlciBhbmQgaXMgdGhlbiBkZWxpdmVy
ZWQgYXMgYW4gT09CIGhvdHBsdWcgCj4gY2FsbC4gSG93ZXZlciwgaXQncyBub3QgYSBtdXggZXZl
bnQsIHNvIGl0IGlzIG5vdCAoYW5kIGl0IHNob3VsZCBub3QpIAo+IGJlaW5nIGJyb2FkY2FzdGVk
IG92ZXIgdGhlIHR5cGVjX211eCBkZXZpY2VzLgo+Cj4gVGhlIHdheSB3ZSB3ZXJlIGhhbmRsaW5n
IHRoYXQgaXMgYnkgaGF2aW5nIGEgY2hhaW4gb2YgZHJtX2F1eF9icmlkZ2VzIAo+IGZvciBhbGwg
aW50ZXJpbSBkZXZpY2VzLCBlbmRpbmcgdXAgd2l0aCBhIGRybV9kcF9ocGRfYnJpZGdlIHJlZ2lz
dGVyZWQgCj4gYnkgdGhlIFRDUE0uIFRoaXMgd2F5IHdoZW4gdGhlIERQUlggdHJpZ2dlcnMgdGhl
IElSUV9IUEQgZXZlbnQsIGl0IGlzIAo+IGJlaW5nIGhhbmRsZWQgYnkgdGhlIGRpc3BsYXlwb3J0
LmMgYW5kIHRoZW4gZGVsaXZlcmVkIHRocm91Z2ggdGhhdCAKPiBicmlkZ2UgdG8gdGhlIERQIGRy
aXZlci4KCkkgdGhpbmsgdGhlIGlzc3VlIGdvZXMgYmFjayB0byB0aGUgYmVnaW5uaW5nLiBUaGUg
a2V5IGlzIHRvIHJldXNlIHRoZSAKbG9naWMgaW4gZGlzcGxheXBvcnQuYywgYW5kIHRoZSBwcmV2
aW91cyBhcHByb2FjaCBvZiBkaXJlY3RseSBzZXR0aW5nIAp0aGUgZndub2RlIGhhcyBhbHJlYWR5
IGJlZW4gcmVqZWN0ZWQuIElzIGl0IGEgZ29vZCBpZGVhIHRvIHJlZ2lzdGVyIHRoZSAKYXV4IGhw
ZCBicmlkZ2UgaW4gZGlzcGxheXBvcnQuYz8gSW4gdGhpcyB3YXksIHdlIGRvbid0IG5lZWQgdG8g
cmVnaXN0ZXIgCml0IHdpdGggYSBidW5jaCBvZiBQRCBkcml2ZXJzIChzdWNoIGFzIGZ1c2IzMDIp
LCB3aGljaCBzZWVtcyBsaWtlIGEgbW9yZSAKZ2VuZXJpYyBzb2x1dGlvbi4KCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
