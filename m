Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7528AD70E09
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Nov 2024 02:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qCqihFdDnqr6yqXDEtkuqEpO5M2dIUCDp7cjLW1+ztY=; b=gKRbiGwNnFDj/b6m3VabhjCBvu
	M4qWiYbEBUvzBKusJInzqBL4A9khEudM8Q+qg4GqQiNBFJka9KSgdp5+jy2PU2akG8viO2pqNCCxE
	wIW5eUdTY6qs/7qyQEGLmB4pkWwSno5b1X3pYDE8/dDE/CINYZR1d/SltKYmV69QzolNgwtlnxo4h
	MWAcQQKmlFdzK8+hMElRIYTDY7HNMgMI3zPIyZYT8JS08weVI6fnNOqNjPuBxKZOSxyvgwhFz6hWB
	G8l8BPBbfHHS+iw+5iKXhz/a1mpgm/giGzedxyvyJ7h6sqwh2h3OzE6F2s9IEPg9asfR6HZIhTvew
	xfPQHM5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGqzO-0000000Gl70-3iFA;
	Fri, 29 Nov 2024 02:44:14 +0000
Received: from mail-m21473.qiye.163.com ([117.135.214.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGqzL-0000000Gl40-0JGr;
	Fri, 29 Nov 2024 02:44:12 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 42b18083;
	Fri, 29 Nov 2024 10:43:57 +0800 (GMT+08:00)
Message-ID: <6e1f35c0-5ea8-414f-b3ea-4e7222c605ef@rock-chips.com>
Date: Fri, 29 Nov 2024 10:43:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support for
 eDP mode
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <4260470.1IzOArtZ34@diego>
 <8df0acc8-b7aa-453f-b55c-30144f51d7cf@rock-chips.com>
 <2131853.KlZ2vcFHjT@diego>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <2131853.KlZ2vcFHjT@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0seTVZOHUxJTx1MQh8eT0lWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZS1VLVUtVS1kG
X-HM-Tid: 0a9375cdbbee03a3kunm42b18083
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pk06MTo5DzIoFSEqNTY2LAo6
	Iz0KCj1VSlVKTEhJQ09DSUhCTU5MVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITk9LNwY+
DKIM-Signature: a=rsa-sha256;
	b=bL/N3Unq55qSkA26JYoRtN15Zz23QknxZHD/t3byhVLAxtGQaDu8Vi0Y838Nayz2QgaE46cZpnKAmZ/I0Q41VPh89kl26riBDRD6ePNIsmUD9gvj5luW7GmvLFlikXGeWmb033lk9ZmjxL6Ht8auxKsmbc/UY9vu1VhuKgKFw88=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=kpe86r9iOvjOisEL0baYQ/8aMf7jHymtGoN0ZQJx9H0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_184411_379162_3BBAC8E3 
X-CRM114-Status: GOOD (  23.50  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiAyMDI0LzExLzI3IDE5OjA0LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBI
aSBEYW1vbiwKPiAKPiBBbSBNaXR0d29jaCwgMjcuIE5vdmVtYmVyIDIwMjQsIDEyOjAwOjEwIENF
VCBzY2hyaWViIERhbW9uIERpbmc6Cj4+IEhpIEhlaWtvOgo+Pgo+PiBPbiAyMDI0LzExLzI3IDE3
OjI5LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+IEhpIERhbW9uLAo+Pj4KPj4+IEFtIE1pdHR3
b2NoLCAyNy4gTm92ZW1iZXIgMjAyNCwgMDg6NTE6NTEgQ0VUIHNjaHJpZWIgRGFtb24gRGluZzoK
Pj4+PiBBZGQgYmFzaWMgc3VwcG9ydCBmb3IgUkJSL0hCUi9IQlIyIGxpbmsgcmF0ZXMsIGFuZCB0
aGUgdm9sdGFnZSBzd2luZyBhbmQKPj4+PiBwcmUtZW1waGFzaXMgY29uZmlndXJhdGlvbnMgb2Yg
ZWFjaCBsaW5rIHJhdGUgaGF2ZSBiZWVuIHZlcmlmaWVkIGFjY29yZGluZwo+Pj4+IHRvIHRoZSBl
RFAgMS4zIHJlcXVpcmVtZW50cy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcg
PGRhbW9uLmRpbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gLS0tCj4+Pgo+Pj4gWyAuLi4gaHVnZSBi
bG9jayBvZiBEUCBwaHkgc3VwcG9ydCAuLi5dCj4+Pgo+Pj4geWVzIHRoYXQgYmxvY2sgd2FzIGh1
Z2UsIGJ1dCBJIGFsc28gZG9uJ3Qgc2VlIGEgd2F5IHRvIHNwbGl0IHRoYXQgdXAgaW4gYQo+Pj4g
dXNlZnVsIHdheSwgc28gaXQgc2hvdWxkIGJlIGZpbmUuCj4+Pgo+Pgo+PiBBcyBmb3IgdGhlIGh1
Z2UgYmxvY2sgb2YgRFAgcGh5IHN1cHBvcnQsIEkgd2lsbCB0cnkgdG8gdXNlIHRoZSBleGlzdGlu
Zwo+PiBya19oZHB0eF9tdWx0aV9yZWdfd3JpdGUoKSB0byBzZXQgcmVncyBpbiBuZXh0IHZlcnNp
b24sIG1heWJlIHRoZSB3YXkKPj4gY2FuIG1ha2UgdGhlIGNvZGVzIG1vcmUgY29uY2lzZS4KPiAK
PiBJIGFjdHVhbGx5IGRpZCBsaWtlIHRoZSB0aGUgZHAtc2lkZSBvZiB0aGUgcGh5IGNvZGUuCj4g
Cj4gVGhhdCB5b3UgbmVlZCB0byBhZGQgYWxsIHRoZSBEUCBzdHVmZiBjYW4ndCBiZSBoZWxwZWQg
YW5kIEkgYWN0dWFsbHkgZmluZAo+IHJlYWwgZnVuY3Rpb25zIG5pY2VyIHRoYW4gaGF2aW5nIGFu
b255bW91cyByZWdpc3RlciB3cml0ZXMuCj4gCj4gSS5lLiB0aGUgaGRtaS1zaWRlIHdpdGggaXRz
IHJlZ2lzdGVyIGxpc3RzIGRvZXMgd3JpdGUgIm1hZ2ljIiB2YWx1ZXMgdG8KPiByZWdpc3RlcnMu
Cj4gCj4gU28gcGVyc29uYWxseSBJJ2QganVzdCBsZWF2ZSB0aGUgZHAtZnVuY3Rpb25zIGFzIGlz
IHBsZWFzZSwgdW50aWwgc29tZW9uZQo+IGRvZXMgY29tcGxhaW4gKEkgd2FzIG5vdCB0cnlpbmcg
dG8gY29tcGxhaW4sIGp1c3QgbWVudGlvbmVkIHdoeSBJIGN1dAo+IGl0IGZyb20gdGhlIHJlcGx5
IDotKSApCj4gCj4gCj4gVGhhbmtzCj4gSGVpa28KPiAKPiAKPj4+PiArc3RhdGljIGludCBya19o
ZHB0eF9waHlfc2V0X21vZGUoc3RydWN0IHBoeSAqcGh5LCBlbnVtIHBoeV9tb2RlIG1vZGUsCj4+
Pj4gKwkJCQkgaW50IHN1Ym1vZGUpCj4+Pj4gK3sKPj4+PiArCXJldHVybiAwOwo+Pj4+ICt9Cj4+
Pgo+Pj4gSSB0aGluayBpdCBtaWdodCBtYWtlIHNlbnNlIHRvIGdvIHRoZSBzYW1lIHdheSBhcyB0
aGUgRENQSFkgYW5kIGFsc28KPj4+IG5hbmVuZyBjb21ib3BoeSwgdG8gdXNlICNwaHktY2VsbHMg
PSAxIHRvIHNlbGVjdCB0aGUgcGh5LW1vZGUgdmlhIERUIC4KPj4+Cj4+PiBTZWUgWzBdIGZvciBT
ZWJhc3RpYW5zIGluaXRpYWwgc3VnZ2VzdGlvbiByZWdhcmRpbmcgdGhlIERDLVBIWS4KPj4+IFRo
ZSBuYW5lbmcgY29tYm9waHkgYWxyZWFkeSB1c2VzIHRoYXQgc2NoZW1lIG9mIG1vZGUtc2VsZWN0
aW9uIHRvby4KPj4+Cj4+PiBUaGVyZSBpcyBvZiBjb3Vyc2UgdGhlIGlzc3VlIG9mIGJhY2t3YXJk
cy1jb21wYXRpYmlsaXR5LCBidXQgdGhhdCBjYW4gYmUKPj4+IHdvcmtlZCBhcm91bmQgaW4gdGhl
IGJpbmRpbmcgd2l0aCBzb21ldGhpbmcgbGlrZToKPj4+Cj4+PiAgICAnI3BoeS1jZWxscyc6Cj4+
PiAgICAgICBlbnVtOiBbMCwgMV0KPj4+ICAgICAgIGRlc2NyaXB0aW9uOiB8Cj4+PiAgICAgICAg
IElmICNwaHktY2VsbHMgaXMgMCwgUEhZIG1vZGUgaXMgc2V0IHRvIFBIWV9UWVBFX0hETUkKPj4+
ICAgICAgICAgSWYgI3BoeS1jZWxscyBpcyAxIG1vZGUgaXMgc2V0IGluIHRoZSBQSFkgY2VsbHMu
IFN1cHBvcnRlZCBtb2RlcyBhcmU6Cj4+PiAgICAgICAgICAgLSBQSFlfVFlQRV9IRE1JCj4+PiAg
ICAgICAgICAgLSBQSFlfVFlQRV9EUAo+Pj4gICAgICAgICBTZWUgaW5jbHVkZS9kdC1iaW5kaW5n
cy9waHkvcGh5LmggZm9yIGNvbnN0YW50cy4KPj4+Cj4+PiBQSFlfVFlQRV9IRE1JIG5lZWRzIHRv
IGJlIGFkZGVkIHRvIGluY2x1ZGUvZHQtYmluZGluZ3MvcGh5L3BoeS5oCj4+PiBidXQgUEhZX1RZ
UEVfRFAgaXMgYWxyZWFkeSB0aGVyZS4KPj4+Cj4+PiBUaGF0IHdheSB3ZSB3b3VsZCBzdGFuZGFy
ZGl6ZSBvbiBvbmUgZm9ybSBvZiBhY2Nlc3NpbmcgcGh5LXR5cGVzCj4+PiBvbiByazM1ODggOi0p
IC4KPj4+Cj4+PiBBbHNvIHNlZSB0aGUgTWVkaWF0ZWsgQ1NJIHJ4IHBoeSBkb2luZyB0aGlzIHRv
byBhbHJlYWR5IFsxXQo+Pj4KPj4+Cj4+PiBIZWlrbwo+Pj4KPj4+IFswXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC91ZGFkNHFmM283a3Q0NW51ejZneHN2c21wcmg0cm55
Znhmb2dvcG1paDZ1Y3puaXppaEA3b2oyanJubGZvbnovCj4+PiBbMV0gaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxtdDgzNjUtY3Np
LXJ4LnlhbWwKPj4+Cj4+Cj4+IEl0IGlzIHJlYWxseSBhIG5pY2Ugd2F5IHRvIHNlcGFyYXRlIEhE
TUkgYW5kIERQIG1vZGVzLgoKSSBhcG9sb2dpemUgZm9yIHJlb3BlbmluZyB0aGUgZGlzY3Vzc2lv
biBhYm91dCB0aGUgcGh5LXR5cGVzIHNldHRpbmcuCgpXaXRoIHRoZSAuc2V0X21vZGUoKSBvZiBz
dHJ1Y3QgcGh5X29wcywgdGhlIEhETUkgYW5kIGVEUCBkeW5hbWljIApzd2l0Y2hpbmcgY2FuIGJl
IGFjaGlldmVkLCB3aGljaCBqdXN0IGRlcGVuZHMgb24gdGhlIHJpZ2h0IHNldHRpbmcgb2YKZW51
bSBwaHlfbW9kZSBpbiBpbmNsdWRlL2xpbnV4L3BoeS9waHkuaC4gU28gdGhlIHByZXZpb3VzIHdh
eSBvZiAKY29uZmlndXJpbmcgcGh5IG1vZGUgbWF5IGJlIGFsc28gZ29vZC4KCkFuZCBvdGhlciBw
aHlzIG1heSB3YW50IHRvIHN1cHBvcnQgZHluYW1pYyBzd2l0Y2hpbmcgdG9vLCBsaWtlIHRoZSAK
Um9ja2NoaXAgVVNCRFAgY29tYm8gcGh5LgoKPj4KPj4+Cj4+Pgo+Pj4KPj4+Cj4+Cj4+IEJlc3Qg
cmVnYXJkcywKPj4gRGFtb24KPj4KPj4KPiAKPiAKPiAKPiAKPiAKPiAKQmVzdCByZWdhcmRzLApE
YW1vbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
