Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43F0FCCD184
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 02:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u1clb/Qb1OISWYs3nM0LTPGCeTR7rlN8w8Qkq9IohlM=; b=2KjNpeVK5b0qKZ
	N0P1LpNvjpkgUPnbWGZfTmrku512t3n9v55d01Ldsigx5fENLbgMsSkEOZJk0yGt0Qislqcr2K+J8
	dqZNXt29V4zlsZG71b5QYdKTWV/kT/C1qJTa7QfhE5TmV0slnt8z1t2ZWqhoankfKJQbJ0ygeu/ku
	HY1R+QIqAGHI6M9sN6UMt0QggLkUsqRpdhJ4fKPiChh1QgLTdufIKN6uMs+1YafFuuOob0IZ6i2Az
	wZ+fyPjE8P/qANXY/oJ9fohAx1IABD9JKBnQlKozHZHTqiFaQ8Xnz8vprEVXRcXfP2s9u7aNufd3Q
	HOFx8G2g28UxuSXOvggw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v88Yg-0000000C7Ny-3AH4;
	Mon, 13 Oct 2025 02:45:10 +0000
Received: from mail-m32113.qiye.163.com ([220.197.32.113])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v88Ye-0000000C7Mr-03CR;
	Mon, 13 Oct 2025 02:45:09 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 25a6fe6cd;
	Mon, 13 Oct 2025 10:44:59 +0800 (GMT+08:00)
Message-ID: <ca57d854-efd1-42b8-9c25-33b01aaf1065@rock-chips.com>
Date: Mon, 13 Oct 2025 10:44:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 6/8] drm/rockchip: cdn-dp: Add multiple bridges to
 support PHY port selection
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20251011033233.97-1-kernel@airkyi.com>
 <20251011033233.97-7-kernel@airkyi.com>
 <qzcdulyj2enho7l6vyvad7ln46zk2u4z7rnsjv2nv4tbw5j6jf@6oenbixoh3sp>
 <08eb7560-c13e-462f-8110-d4ce5ccbd687@rock-chips.com>
 <6hilafgpdbsppeeib75b5uamwf22kbu4likcp64ahb4u7zehhw@c3mtlzwx7qcp>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <6hilafgpdbsppeeib75b5uamwf22kbu4likcp64ahb4u7zehhw@c3mtlzwx7qcp>
X-HM-Tid: 0a99db74f55503abkunm46b4331dfb5aa5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU9DT1ZLSh9DGB5DSU1PHRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=AdWLh2ZxxKiOLp3FP40kGgGqVwvx1gdP7V9lKWIjP1uZ1bP1cVXxZBe7R674SimMp6W9XjTp3k1sL4Y4mC1b2Tjon4D2FK/n3+hxe4yewtMaYcMzx4TUe2PVgFCMh/I3Y2biNL2Oxw6oAAzt8A4GFeVT1kuJjMutM7t4ZkQC9pY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=HvpR+5epSgdAGZf25SgOvURV9dCVLjxkFsGadPU1WfE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251012_194508_527827_5D809F59 
X-CRM114-Status: GOOD (  19.88  )
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

T24gMTAvMTMvMjAyNSAxMDoxMSBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKCj4gT24gTW9u
LCBPY3QgMTMsIDIwMjUgYXQgMDk6MjY6MDZBTSArMDgwMCwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4+
IE9uIDEwLzEyLzIwMjUgMjo1MiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4KPj4+IE9u
IFNhdCwgT2N0IDExLCAyMDI1IGF0IDExOjMyOjMxQU0gKzA4MDAsIENoYW95aSBDaGVuIHdyb3Rl
Ogo+Pj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4+
Pgo+Pj4+IFRoZSBSSzMzOTkgaGFzIHR3byBVU0IvRFAgY29tYm8gUEhZIGFuZCBvbmUgQ0ROLURQ
IGNvbnRyb2xsZXIuIEFuZAo+Pj4+IHRoZSBDRE4tRFAgY2FuIGJlIHN3aXRjaGVkIHRvIG91dHB1
dCB0byBvbmUgb2YgdGhlIFBIWXMuIElmIGJvdGggcG9ydHMKPj4+PiBhcmUgcGx1Z2dlZCBpbnRv
IERQLCBEUCB3aWxsIHNlbGVjdCB0aGUgZmlyc3QgcG9ydCBmb3Igb3V0cHV0Lgo+Pj4+Cj4+Pj4g
VGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9yIG11bHRpcGxlIGJyaWRnZXMsIGVuYWJsaW5nIHVz
ZXJzIHRvIGZsZXhpYmx5Cj4+Pj4gc2VsZWN0IHRoZSBvdXRwdXQgcG9ydC4gRm9yIGVhY2ggUEhZ
IHBvcnQsIGEgc2VwYXJhdGUgZW5jb2RlciBhbmQgYnJpZGdlCj4+Pj4gYXJlIHJlZ2lzdGVyZWQu
Cj4+Pj4KPj4+PiBUaGUgY2hhbmdlIGlzIGJhc2VkIG9uIHRoZSBEUk0gQVVYIEhQRCBicmlkZ2Us
IHJhdGhlciB0aGFuIHRoZQo+Pj4+IGV4dGNvbiBhcHByb2FjaC4gVGhpcyByZXF1aXJlcyB0aGUg
RFQgdG8gY29ycmVjdGx5IGRlc2NyaWJlIHRoZQo+Pj4+IGNvbm5lY3Rpb25zIGJldHdlZW4gdGhl
IGZpcnN0IGJyaWRnZSBpbiBicmlkZ2UgY2hhaW4gYW5kIERQCj4+Pj4gY29udHJvbGxlci4gRm9y
IGV4YW1wbGUsIHRoZSBicmlkZ2UgY2hhaW4gbWF5IGJlIGxpa2UgdGhpczoKPj4+Pgo+Pj4+IFBI
WSBhdXggYmlyZGdlIC0+IGZzYTQ0ODAgYW5hbG9nIGF1ZGlvIHN3aXRjaCBicmlkZ2UgLT4KPj4+
PiBvbm5uLG5iN3ZwcTkwNG0gVVNCIHJlbWluZGVyIGJyaWRnZSAtPiBVU0ItQyBjb250cm9sbGVy
IEFVWCBIUEQgYnJpZGdlCj4+Pj4KPj4+PiBJbiB0aGlzIGNhc2UsIHRoZSBjb25uZWN0aW9uIHJl
bGF0aW9uc2hpcHMgYW1vbmcgdGhlIFBIWSBhdXggYnJpZGdlCj4+Pj4gYW5kIHRoZSBEUCBjb250
b3JsbGVyIG5lZWQgdG8gYmUgZGVzY3JpYmVkIGluIERULgo+Pj4+Cj4+Pj4gSW4gYWRkaXRpb24s
IHRoZSBjZG5fZHBfcGFyc2VfaHBkX2JyaWRnZV9kdCgpIHdpbGwgcGFyc2VzIGl0IGFuZAo+Pj4+
IGRldGVybWluZXMgd2hldGhlciB0byByZWdpc3RlciBvbmUgb3IgdHdvIGJyaWRnZXMuCj4+Pj4K
Pj4+PiBTaW5jZSB0aGVyZSBpcyBvbmx5IG9uZSBEUCBjb250cm9sbGVyLCBvbmx5IG9uZSBvZiB0
aGUgUEhZIHBvcnRzIGNhbgo+Pj4+IG91dHB1dCBhdCBhIHRpbWUuIFRoZSBrZXkgaXMgaG93IHRv
IHN3aXRjaCBiZXR3ZWVuIGRpZmZlcmVudCBQSFlzLAo+Pj4+IHdoaWNoIGlzIGhhbmRsZWQgYnkg
Y2RuX2RwX3N3aXRjaF9wb3J0KCkgYW5kIGNkbl9kcF9lbmFibGUoKS4KPj4+Pgo+Pj4+IFRoZXJl
IGFyZSB0d28gY2FzZXM6Cj4+Pj4KPj4+PiAxLiBOZWl0aGVyIGJyaWRnZSBpcyBlbmFibGVkLiBJ
biB0aGlzIGNhc2UsIGJvdGggYnJpZGdlcyBjYW4KPj4+PiBpbmRlcGVuZGVudGx5IHJlYWQgdGhl
IEVESUQsIGFuZCB0aGUgUEhZIHBvcnQgbWF5IHN3aXRjaCBiZWZvcmUKPj4+PiByZWFkaW5nIHRo
ZSBFRElELgo+Pj4+Cj4+Pj4gMi4gT25lIGJyaWRnZSBpcyBhbHJlYWR5IGVuYWJsZWQuIEluIHRo
aXMgY2FzZSwgb3RoZXIgYnJpZGdlcyBhcmUgbm90Cj4+Pj4gYWxsb3dlZCB0byByZWFkIHRoZSBF
RElELiBTbyB3ZSB3aWxsIHRyeSB0byByZXR1cm4gdGhlIGNhY2hlZCBFRElELgo+Pj4+Cj4+Pj4g
U2luY2UgdGhlIHNjZW5hcmlvIG9mIHR3byBwb3J0cyBwbHVnIGluIGF0IHRoZSBzYW1lIHRpbWUg
aXMgcmFyZSwKPj4+PiBJIGRvbid0IGhhdmUgYSBib2FyZCB3aGljaCBzdXBwb3J0IHR3byBUeXBl
QyBjb25uZWN0b3IgdG8gdGVzdCB0aGlzLgo+Pj4+IFRoZXJlZm9yZSwgSSB0ZXN0ZWQgZm9yY2Vk
IHN3aXRjaGluZyBvbiBhIHNpbmdsZSBQSFkgcG9ydCwgYXMgd2VsbCBhcwo+Pj4+IG91dHB1dCB1
c2luZyBhIGZha2UgUEhZIHBvcnQgYWxvbmdzaWRlIGEgcmVhbCBQSFkgcG9ydC4KPj4+Pgo+Pj4+
IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4K
Pj4+PiAtLS0KPj4+Pgo+Pj4+ICsJLyogT25lIGVuZHBvaW50IG1heSBjb3JyZXNwb25kIHRvIG9u
ZSBIUEQgYnJpZGdlLiAqLwo+Pj4+ICsJZm9yX2VhY2hfb2ZfZ3JhcGhfcG9ydF9lbmRwb2ludChw
b3J0LCBkcF9lcCkgewo+Pj4+ICsJCXN0cnVjdCBkZXZpY2Vfbm9kZSAqcGh5X2JyaWRnZV9ub2Rl
IF9fZnJlZShkZXZpY2Vfbm9kZSkgPQo+Pj4+ICsJCQlvZl9ncmFwaF9nZXRfcmVtb3RlX3BvcnRf
cGFyZW50KGRwX2VwKTsKPj4+PiArCj4+Pj4gKwkJYnJpZGdlID0gb2ZfZHJtX2ZpbmRfYnJpZGdl
KHBoeV9icmlkZ2Vfbm9kZSk7Cj4+Pj4gKwkJaWYgKCFicmlkZ2UpIHsKPj4+PiArCQkJcmV0ID0g
LUVQUk9CRV9ERUZFUjsKPj4+PiArCQkJZ290byBvdXQ7Cj4+Pj4gKwkJfQo+Pj4+ICsKPj4+PiAr
CQlkcC0+aHBkX2JyaWRnZV92YWxpZCA9IHRydWU7Cj4+Pj4gKwkJZHAtPmhwZF9icmlkZ2VfbGlz
dFtjb3VudF0uYnJpZGdlID0gYnJpZGdlOwo+Pj4+ICsJCWRwLT5ocGRfYnJpZGdlX2xpc3RbY291
bnRdLnBhcmVudCA9IGRwOwo+Pj4+ICsJCWRwLT5ocGRfYnJpZGdlX2xpc3RbY291bnRdLmlkID0g
Y291bnQ7Cj4+PiBUaGlzIGxvb2tzIG1pc25hbWVkLiBUaGV5IGFyZSBub3QgbmVjZXNzYXJpbHkg
SFBEIGJyaWRnZXMuIFRoZXJlIGNhbiBiZQo+Pj4gYSByYW5kb20gY2hhaW4gYmV0d2VlbiB5b3Vy
IGNvbnRyb2xsZXIgYW5kIHRoZSBhY3R1YWwgb3V0cHV0IC8gY29ubmVjdG9yCj4+PiAvZXRjLgo+
PiBZZXMsIGFuZCBtb3JlIHByZWNpc2VseSwgdGhpcyBzaG91bGQgYmUgYHBlcnZpb3VzX2JyaWRn
ZV9saXN0YCAuIFdpbGwgZml4IGluIHY2Lgo+IEkgdGhpbmsgdGhlIHR5cGljYWwgY29udmVudGlv
biBpcyBhcm91bmQgbmV4dF9icmlkZ2UsIG5vdCBwcmV2aW91cy4KCk9oLCB0aGF0J3MgdHJ1ZS7C
oCBXaWxsIGZpeCB0aGlzIGluIHY2LgoKCj4KPgotLSAKQmVzdCwKQ2hhb3lpCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
