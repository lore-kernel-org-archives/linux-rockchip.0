Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 534C6C87FCB
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Jul 2025 02:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oC1l1zRg0d3XD0oW8bUY7gypaXI8zqxQ6BohpCYzDE=; b=xrM9X3coy6riC8
	mSyXiScCebHwuy67HBui+WpSUJSNWeGe9G5fbi+akgQJZK3QQesy953S67laHyzt9kUqwV0vteF9v
	OSY4Dukx1bYvj50EaYSQ0Ghd3kAFiq3TwKr3th1QwahAwRzVV5aBFXhrbYU8GbjvGEpexfQPh8o2V
	lmLcC9veHtZIAdq0BJdLbBgKhWJrMQiItqD3ZOE6htskdgtor2qipPvm5+glFQg2lYx2CZYRJjrrB
	xxfZXyjfJXWxpusIOy9Ed0wuSy4T2eVcLJ/l/qCuA5HFpBjA1Lnb4i+z+/Ty8XdgFU5GZu31b48bH
	zjLvcjDzwbNVqDorV1wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhItx-00000002lQL-367Q;
	Thu, 31 Jul 2025 02:20:13 +0000
Received: from mail-m603.netease.com ([210.79.60.3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhItu-00000002lNR-0A0b;
	Thu, 31 Jul 2025 02:20:12 +0000
Received: from [172.16.12.153] (gy-adaptive-ssl-proxy-4-entmail-virt151.gy.ntes [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1dcdf18ba;
	Thu, 31 Jul 2025 10:19:51 +0800 (GMT+08:00)
Message-ID: <63ec11cf-7927-431a-995e-a5fc35ef1ba7@rock-chips.com>
Date: Thu, 31 Jul 2025 10:19:49 +0800
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
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org
References: <20250729090032.97-1-kernel@airkyi.com>
 <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <3kefqzjewmsyzfvyi33kvlgjd6jphjg3fsnixb3of7yb3xkgs2@hgi6xfkgd653>
X-HM-Tid: 0a985e475b1003abkunm77c0d17969e27b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhpLHlZKTE5DQhgfSUsZSBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=RO16iif7fvE2I/NqgFVWubst7c5eff+ThID3ba+yjSGE1Deh2av4GXUdv8xcfOjIoQRF5I8v1uaoBxKb/+DD1K1YmFe3nXoNmqmLqsqYOc6GjQA/eU0CqsQeM8yRVB7HTls4tRM/6RHXOdZnkUd6HI2cIMr02K/o8X0yNF8Ofbc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+TiEqyL1AH0iOF6kXInInA83bu0TufgWM4xm6RFb5sQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_192010_650787_05A78414 
X-CRM114-Status: GOOD (  20.87  )
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

SGkgRG1pdHJ5LAoKT24gNy8zMS8yMDI1IDM6MTMgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gT24gVHVlLCBKdWwgMjksIDIwMjUgYXQgMDU6MDA6MjdQTSArMDgwMCwgQ2hhb3lpIENoZW4g
d3JvdGU6Cj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4K
Pj4KPj4gVGhpcyBzZXJpZXMgZm9jdXNlcyBvbiBhZGRpbmcgVHlwZS1DIERQIHN1cHBvcnQgZm9y
IFVTQkRQIFBIWSBhbmQgRFAKPj4gZHJpdmVyLiBUaGUgVVNCRFAgUEhZIGFuZCBEUCB3aWxsIHBl
cmNlaXZlIHRoZSBjaGFuZ2VzIGluIGNhYmxlIHN0YXR1cwo+PiBiYXNlZCBvbiB0aGUgVVNCIFBE
IGFuZCBUeXBlLUMgc3RhdGUgbWFjaGluZXMgcHJvdmlkZWQgYnkgVENQTS4gQmVmb3JlCj4+IHRo
aXMsIHRoZSBVU0JEUCBQSFkgYW5kIERQIGNvbnRyb2xsZXIgb2YgUkszMzk5IHNlbnNlZCBjYWJs
ZSBzdGF0ZQo+PiBjaGFuZ2VzIHRocm91Z2ggZXh0Y29uLCBhbmQgZGV2aWNlcyBzdWNoIGFzIHRo
ZSBSSzMzOTkgR3J1LUNocm9tZWJvb2sKPj4gcmVseSBvbiB0aGVtLiBUaGlzIHNlcmllcyBzaG91
bGQgbm90IGJyZWFrIHRoZW0uCj4+Cj4gWy4uLi5dCj4KPj4gPT09PQo+PiAyLiBEUCBIUEQgZXZl
bnQgbm90aWZ5Cj4+Cj4+IFRoZSBSSzMzOTkgaGFzIHR3byBVU0IvRFAgY29tYm8gUEhZIGFuZCBv
bmUgQ0ROLURQIGNvbnRyb2xsZXIuIEFuZAo+PiB0aGUgQ0ROLURQIGNhbiBiZSBzd2l0Y2hlZCB0
byBvdXRwdXQgdG8gb25lIG9mIHRoZSBQSFlzLgo+Pgo+PiBVU0IvRFAgUEhZMCAtLS0rCj4+ICAg
ICAgICAgICAgICAgICB8IDwtLS0tPiBDRE4tRFAgY29udHJvbGxlcgo+PiBVU0IvRFAgUEhZMSAt
LS0rCj4gQ291bGQgeW91IHBsZWFzZSBjbGFyaWZ5IHRoaXMsIGNhbiB5b3Ugc3dpdGNoIERQIHN0
cmVhbSBiZXR3ZWVuIHR3bwo+IFVTQi1DIG91dHB1dHM/IFdoYXQgaGFwcGVucyBpZiB1c2VyIHBs
dWdzIGluIERQIGRvbmdsZXMgaW4gYm90aCBVU0ItQwo+IHBvcnRzPwoKQ3VycmVudGx5LCB0aGUg
c29mdHdhcmUgc2ltcGx5IHNlbGVjdHMgdGhlIGZpcnN0IGF2YWlsYWJsZSBwb3J0LiBTbyBpZiAK
dXNlciBwbHVncyBpbiBEUCBkb25nbGVzIGluIGJvdGggVVNCLUMgcG9ydHMsIHRoZSBEUCBkcml2
ZXIgd2lsbCBzZWxlY3QgCnRoZSBmaXJzdCBwb3J0LiBUaGlzIHByb2Nlc3MgaXMgaW1wbGVtZW50
ZWQgaW4gY2RuX2RwX2Nvbm5lY3RlZF9wb3J0KCkgLgoKCgo+Cj4+IEJUVywgb25lIG9mIHRoZSBp
bXBvcnRhbnQgdGhpbmdzIHRvIGRvIGlzIHRvIGltcGxlbWVudCBleHRjb24tbGlrZQo+PiBub3Rp
ZmljYXRpb25zLiBJIGZvdW5kIGluY2x1ZGUvZHJtL2JyaWRnZS9hdXgtYnJpZGdlLmggLCBidXQg
aWYgdGhlCj4+IGF1eC1icmlkZ2UgaXMgdXNlZCwgdGhlIGJyaWRnZSBjaGFpbiB3b3VsZCBsb29r
IGxpa2UgdGhpczoKPj4KPj4gUEhZMCBhdXgtYnJpZGdlIC0tLSsKPj4gICAgICAgICAgICAgICAg
ICAgICB8IC0tLS0+IENETi1EUCBicmlkZ2UKPj4gUEhZMSBhdXgtYnJpZGdlIC0tLSsKPj4KPj4g
T2gsIENETi1EUCBicmlkZ2UgaGFzIHR3byBwcmV2aW91cyBhdXgtYnJpZGdlIQo+Pgo+PiBOb3cs
IEkgdHJ5IHRvIHVzZSBkcm1fY29ubmVjdG9yX29vYl9ob3RwbHVnX2V2ZW50KCkgdG8gbm90aWZ5
IEhQRAo+PiBzdGF0ZSBiZXR3ZWVuIFBIWSBhbmQgQ0ROLURQIGNvbnRyb2xsZXIuCj4gRG9lcyBp
dCBhY3R1YWxseSB3b3JrPyBUaGUgT09CIEhQRCBldmVudCB3aWxsIGJlIHJlcG90ZWQgZm9yIHRo
ZSB1c2ItYwo+IGNvbm5lY3RvcidzIGZ3bm9kZSwgYnV0IHRoZSBEUCBjb250cm9sbGVyIGlzbid0
IGNvbm5lY3RlZCB0byB0aGF0IG5vZGUKPiBhbnlob3cuIElmIEknbSBub3QgbWlzdGFrZW4sIHRo
ZSBIUEQgc2lnbmFsIHdpbGwgbm90IHJlYWNoIERQIGRyaXZlciBpbgo+IHRoaXMgY2FzZS4KClll
cy7CoCBXaGF0IHlvdSBtZW50aW9uZWQgaXMgdGhlIGNhc2UgaW4gCmRyaXZlcnMvdXNiL3R5cGVj
L2FsdG1vZGVzL2Rpc3BsYXlwb3J0LmMgLiBJIGhhdmUgYWxzbyBhZGRlZCBhIG5ldyBPT0IgCmV2
ZW50IG5vdGlmeSBpbiB0aGUgUEhZIGRyaXZlciBpbiBQYXRjaCAzLCB3aGVyZSB0aGUgZXhwZWN0
ZWQgZndub2RlIGlzIAp1c2VkIGluIHRoZSBQSFkuIFNvIG5vdyB3ZSBoYXZlIHR3byBPT0IgSFBE
IGV2ZW50cywgb25lIGZyb20gCmFsdG1vZGVzL2Rpc3BsYXlwb3J0LmMgYW5kIHRoZSBvdGhlciBm
cm9tIFBIWS4gT25seSB0aGUgSFBEIGZyb20gUEhZIGlzIApldmVudHVhbGx5IHBhc3NlZCB0byB0
aGUgRFAgZHJpdmVyLgoKCgo+Cj4+IFBhdGNoMSBhZGQgbmV3IFR5cGUtQyBtb2RlIHN3aXRjaCBm
b3IgUkszMzk5IFVTQkRQIHBoeSBiaW5kaW5nLgo+PiBQYXRjaDIgYWRkIHR5cGVjX211eCBhbmQg
dHlwZWNfc3dpdGNoIGZvciBSSzMzOTkgVVNCRFAgUEhZLgo+PiBQYXRjaDMgZHJvcHMgQ0ROLURQ
J3MgZXh0Y29uIGRlcGVuZGVuY3kgd2hlbiBUeXBlLUMgaXMgcHJlc2VudC4KPj4gUGF0Y2g0IGFk
ZCBtaXNzaW5nIGRwX291dCBwb3J0IGZvciBSSzMzOTkgQ0ROLURQLgo+PiBQYXRjaDUgYWRkIFR5
cGUtQyBEUCBzdXBwb3J0IGZvciBSSzMzOTkgRVZCIElORCBib2FyZC4KPj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
