Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F0BC021B2
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 03:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ghsOFewNgURpENzKcJpykoptFR9m8AFveYLdDkMIGq0=; b=K7vyJZYcIeI0Hh
	ENz0DeC71Tq2BfQ5wU5OrAnhBzq7IiiI84NVmfFZcgMjtm1ch7MtfuQImIuf3wFkrkLVtduTxCZoz
	YAy3Iv8HS+QQT55w3ZKbu4ru9op62zGjIGsxgYYrq4eZeApx4yfmlABH+eGUVTZWuduuWdAp7oUHj
	/XRU2KVrSdWg35M+IZNdR2umia4NBvaqPV7sI9VRuWp6Gwbi8JLwVW/CiPgTiLio+o5ovS7ZWj/hg
	5Pw7cPnpdEwN4VeqI+/MNNW85Zisd2sDYsssi9HpA32uxZVp3zZAmdcY447ACwr9ZhIA3+5c55/0U
	mhaadYdSTAxKBOQyZLSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmP20-0000000CE4i-0ROh;
	Mon, 24 Feb 2025 03:21:20 +0000
Received: from mail-m3291.qiye.163.com ([220.197.32.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmP1w-0000000CE1t-1oXZ;
	Mon, 24 Feb 2025 03:21:19 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id bf356a8d;
	Mon, 24 Feb 2025 11:21:02 +0800 (GMT+08:00)
Message-ID: <731abf8f-b157-47d4-a9e1-9aed6f5b4e37@rock-chips.com>
Date: Mon, 24 Feb 2025 11:21:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 00/14] Add eDP support for RK3588
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
 algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org,
 vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <5044FFCB-B325-40D0-BA82-03AF64EAF029@gmail.com>
 <tg6eyew4qahuxqakmmejne7xx2rkouj6htp55acun4ajz2irz2@vlmvqv3zc5vc>
 <C81810F2-6E9B-4DCC-85D1-CCB63CBFBFEA@gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <C81810F2-6E9B-4DCC-85D1-CCB63CBFBFEA@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtLHlYYHkhNH0oeTh5DHkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9535f8f24203a3kunmbf356a8d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pi46Djo5AjIXNxwdLSo9TD1L
	FQMwClZVSlVKTE9LSE1MSU1PS09IVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFITExLNwY+
DKIM-Signature: a=rsa-sha256;
	b=TtkboSslEuG3O6Q33PmEvHv28Jvg5WyhYR2LFUqcKFp4BOeB/mohA8ndDgbxGn5eNvpe7Fkf8HB8qjnmn2aLu9BlykbGs6RCVL395hZUmPJW9eyvlAmbaEAF23buy2DkdSvordvN2UaJJ3yxiUObEM3aHwA/1rf/oZ7kgAjYhgE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=SUWTCb0GbfrLEePUqui3jDgm691jrzdjRDy4hq8S9z0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_192117_037907_2C7B2C4C 
X-CRM114-Status: GOOD (  22.51  )
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

SGkgUGlvdHIsCgpPbiAyMDI1LzIvMTQgMjA6MDAsIFBpb3RyIE9uaXN6Y3p1ayB3cm90ZToKPiAK
PiAKPj4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFz
dGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHcgZG5pdSAxMyBsdXQgMjAyNSwgbyBnb2R6LiAx
ODoyNjoKPj4KPj4gSGVsbG8gUGlvdHIsCj4+Cj4+Cj4+IFRoZSBSSzM1ODggaGFzIHR3byBkaWZm
ZXJlbnQgRFAgY29udHJvbGxlcnMuIFRoZSBvbmUgaGFuZGxlZCBpbiB0aGlzCj4+IHNlcmllcyBz
aG91bGQgZ2V0IHRoZSBlRFAgcG9ydCBydW5uaW5nLCB3aGljaCBpcyByb3V0ZWQgdG8gdGhlCj4+
ICJlRFAgUGFuZWwiIGluIHRoZSBibG9jayBkaWFncmFtIG9uIHBhZ2UgMyBvZiB0aGUgUm9jayA1
IElUWCBzY2hlbWF0aWNzLgo+PiBTbyB0aGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHVzaW5n
ICJIRE1JL2VEUCBUWDAiIGFuZCAiSERNSS9lRFAgVFgxIgo+PiBpbiBEUCBtb2RlLgo+Pgo+PiBU
aGUgcG9ydCByb3V0ZWQgdG8gSERNSTAgdmlhIFJBNjIwIGlzIHRoZSBvdGhlciBEUCBjb250cm9s
bGVyLCB3aGljaAo+PiBhbHNvIGV4aXN0cyB0d2ljZTogIlRZUEVDMC9EUDAiIGFuZCAiVFlQRUMx
L0RQMSIuIFRoaXMgRFAgY29udHJvbGxlcgo+PiBpcyBub3QgeWV0IHN1cHBvcnRlZCB1cHN0cmVh
bSBhbmQgdGhlcmUgaXMgbm8gcGVuZGluZyBwYXRjaHNldC4gQXMgZmFyCj4+IGFzIEkga25vdyBS
b2NrY2hpcCBwbGFucyB0byB3b3JrIG9uIHByZXBhcmluZyB1cHN0cmVhbSBzdXBwb3J0IGZvciB0
aGF0Cj4+IHNvb24uCgpZZXMsIEFuZHkgaGFzIHJlY2VudGx5IHVwZGF0ZWQgdGhlIERQIGNvbnRy
b2xsZXIgcmVsYXRlZCBwYXRjaHNldDoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L2xpbnV4LXJvY2tjaGlwL2xpc3QvP3Nlcmllcz05MzY3ODQKCj4+Cj4gCj4gT2ggLSB0aGlz
IGlzIHZlcnkgdmFsdWFibGUgaW5mbyBhbmQgZXhwbGFpbnMgYSBsb3QuCj4gVGh4Lgo+IAo+PiBO
b3RlLCB0aGF0IHRoZSB0d28gRGlzcGxheVBvcnQgY29udHJvbGxlcnMgYXJlIGNvbXBsZXRlbHkg
ZGlmZmVyZW50Lgo+PiBUaGUgSERNSS9lRFAgY29udHJvbGxlciBpcyBhIGRlc2lnbiBmcm9tIEFu
YWxvZ2l4IGFuZCB0aGUgVHlwZUMvRFAKPj4gY29udHJvbGxlciBpcyBhIGRlc2lnbiBmcm9tIFN5
bm9wc3lzLgo+Pgo+PiBQLlMuOiBIZWlrbyBtZXJnZWQgc3VwcG9ydCBmb3IgSERNSTEgKFJLMzU4
OCBTb0MgbGV2ZWwpIHJlY2VudGx5LiBTbyB5b3UKPj4gc2hvdWxkIGJlIGFibGUgdG8gZ2V0IHRo
YXQgcnVubmluZyBieSBzb21lIERUIGFkZGl0aW9ucyB0byB0aGUgUm9jayA1Cj4+IElUWCBib2Fy
ZCBEVCB3aXRoIHRoZSBsYXRlc3QgbGludXgtbmV4dCBjb2RlIDopCj4+Cj4gCj4gQW5kIGl0IHdv
cmtzIHBlcmZlY3RseSBvbiBhbGwgbXkgMzU4OCBiYXJkcyAoaW5jbHVkaW5nIGF1ZGlvIGFuZCBt
eSBjZWMgYWRkaXRpb24pCj4gQnV0IG9ubHkgb24gYm9hcmRzIHVzaW5nIGJvdGggaGRtaSB0eDAg
YW5kIHR4MSB0byBoZG1pMC9oZG1pMSBwb3J0cy4KPiAKPiBvbiByb2NrNSBpdHg6CgpBY2NvcmRp
bmcgdG8gdGhlIHNjaGVtYXRpYyBvZiBST0NLIDUgSVRYLCBJIGZpbmQgdGhlIGRpc3BsYXkgcm91
dGVzIGFyZToKLSBEUDAgLT4gVFlQRUMwIENvbm5lY3RvcgotIERQMSAtPiBSQTYyMCAtPiBIRE1J
IENvbm5lY3RvciAoQW5keSdzIHBhdGNoIHNlcmllcyB3aWxsIGhlbHAgaXQgd29yaykKLSBIRE1J
L2VEUCBUWDAgLT4gZURQIFBhbmVsIChUaGlzIHBhdGNoIHNlcmllcyB3aWxsIGhlbHAgaXQgd29y
aykKLSBIRE1JL2VEUCBUWDEgLT4gSERNSSBDb25uZWN0b3IKClNvIHRoZSBIRE1JL2VEUCBUWDAg
c2hvdWxkIGJlIGVuYWJsZWQgYXMgZURQIGluIERUUy4gTWF5YmUgaXQncyBqdXN0IGEgCnRlc3Qg
dG8gZW5hYmxlIGJvdGggSERNSTAgYW5kIEhETUkxIGluIHRoZSBST0NLIDUgSVRYIGJvYXJkPwoK
PiBXaXRoIGJvdGggaGRtaSB0eDAgYW5kIHR4MSBlbmFibGVkIGluIGR0cyBpdCBsb29rcyBsaWtl
IGtlcm5lbCBkZXRlY3RzIGhkbWkgdHgwIGFzIGNvbm5lY3RlZCBhbmQgdHJpZXMgcmVhZCBlZGlk
Lgo+IEFzIG5vdGhpbmcgaXMgY29ubmVjdGVkIHRvIEoxMSAoZURQIGNvbikgLSBp4oCZbSBnZXR0
aW5nIGkyYyBkZGMgdGltZW91dHMKPiBbICAgNTQuMTg4ODgwXSBkd2hkbWlxcC1yb2NrY2hpcCBm
ZGU4MDAwMC5oZG1pOiBpMmMgcmVhZCB0aW1lZCBvdXQKPiBbICAgNTQuMjkyMjA3XSBkd2hkbWlx
cC1yb2NrY2hpcCBmZGU4MDAwMC5oZG1pOiBpMmMgcmVhZCB0aW1lZCBvdXQKPiBbICAgNTQuMzk1
NTU0XSBkd2hkbWlxcC1yb2NrY2hpcCBmZGU4MDAwMC5oZG1pOiBpMmMgcmVhZCB0aW1lZCBvdXQK
PiAKCkkgdGhpbmsgdGhlIHJlYXNvbiBtYXkgYmUgdGhhdCBIRE1JMCBpcyBlbmFibGVkLCBhbmQg
SFBEIHBpbiBvZiBIRE1JMCBpcyAKYWxzbyBjb25maWd1cmVkLCBidXQgdGhlIEhQRCBwaW4gaXMg
aW4gYW4gdW5zdGFibGUgc3RhdGUgaW4gdGhlIApoYXJkd2FyZSwgd2hpY2ggaXMgbWlzdGFrZW5s
eSBkZXRlY3RlZCBhcyBjb25uZWN0ZWQuCgo+IAo+IGRpc2FibGluZyBoZG1pMCBtYWtlcyBrZXJu
ZWwgdGFsa2luZyB0byBoZG1pMSBidXQgd2l0aCBpc3N1ZXM6Cj4gWyAgICAwLjU0MDQ0Nl0gZHdo
ZG1pcXAtcm9ja2NoaXAgZmRlYTAwMDAuaGRtaTogcmVnaXN0ZXJlZCBEZXNpZ25XYXJlIEhETUkg
UVAgSTJDIGJ1cyBkcml2ZXIKPiBbICAgIDAuNTQxMjMwXSByb2NrY2hpcC1kcm0gZGlzcGxheS1z
dWJzeXN0ZW06IGJvdW5kIGZkZWEwMDAwLmhkbWkgKG9wcyBkd19oZG1pX3FwX3JvY2tjaGlwX29w
cykKPiBbICAgIDAuNTQyMjg1XSBbZHJtXSBJbml0aWFsaXplZCByb2NrY2hpcCAxLjAuMCBmb3Ig
ZGlzcGxheS1zdWJzeXN0ZW0gb24gbWlub3IgMAo+IFsgICAgMC41NDI5MzNdIHJvY2tjaGlwLWRy
bSBkaXNwbGF5LXN1YnN5c3RlbTogW2RybV0gQ2Fubm90IGZpbmQgYW55IGNydGMgb3Igc2l6ZXMK
PiBbICAgIDAuNTQzNjA1XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dIENh
bm5vdCBmaW5kIGFueSBjcnRjIG9yIHNpemVzCj4gCj4gYW5kIGhlcmUgaeKAmW0gYSBiaXQgcHV6
emxlZCBhcyBvbiBvdGhlciAzNTg4IGJvYXJkcyAoaS5lLiByb2NrNWIpIC0gd2hlbiBpIGNvbm5l
Y3RlZCBtb25pdG9yIHRvIGhkbWkxIC0gYWxsIHdvcmtzIHBlcmZlY3RseQo+IChrZXJuZWwsIE9T
IGFuZCBhcHAgbmljZWx5IHNraXBwaW5nIGhkbWkwIGFuZCB0YWxraW5nIHRvIGFjdHVhbGx5IGNv
bm5lY3RlZCBoZG1pMSBwb3J0LiBhbGwgd29ya3MpCj4gCj4gb24gcm9jazUgaXR4IHRoaXMgbm90
IHdvcmtzLgo+IAo+IG15IG9ic2VydmF0aW9ucyBzbyBmYXIgYXJlOgo+IC1vbiByb2NrNSBpdHgg
aGRtaTAgaXMgZmFsc2VseSBkZXRlY3RlZCBhcyBjb25uZWN0ZWQgLSBldmVuIHdoZW4gZURQIGNv
bm5lY3RvciAoSjExKSBoYXMgbm90aGluZyBjb25uZWN0ZWQKPiAtb24gcm9jazUgaXR4IGRpc2Fi
bGluZyBoZG1pMCBpbiBkdHMgYnJlYWtzIGhkbWkxCj4gLW9uIG90aGVyIDM1ODggKGUuZy4gcm9j
ayA1YikgZGlzYWJsaW5nIGhkbWkwIGluIGR0cyBOT1QgYnJlYWtzIGhkbWkxCj4gCj4gc3RyYW5n
ZeKApi4KPiAKPiAKCkJlc3QgcmVnYXJkcwpEYW1vbgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
