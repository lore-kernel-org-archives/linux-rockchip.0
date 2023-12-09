Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76438C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 01:22:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpZ54tUWwjKTQJym52WPd8Doo3vf/F45lKXIoV9RCJI=; b=XBeukr1QLKWVs1
	ZeM95n3IefSwFFe2kRNwbBbfc0/NMiKGL2rtaC5/92q6LtxZxVri5K2zWfUwRF9blv0VUaQ4vJTVq
	KLSqG2wiK66tk3n5m3t9wTBA6lWM0Ze1pQlp3GWL/2DiLxSzgFh/vTx6vF+4aMfOgKH4/Ekx3+EPV
	vkcfgOBJgi/Mgw15+5MvF7V8iwDxPw+jUxT9Km55UblUuhR9mYiFsBPwEGSuZDRLamSr9TXbqHSiK
	h75lyEacZFbbR2uqZ6k2gB5eesgWKvZ20RIgJqrjZiU7Z+A6QKJHKFtBcJ2MVV+xizHsa4AGQfhrh
	y760Yn/PiHdPnqoWhiLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBm35-00GtF0-1o;
	Sat, 09 Dec 2023 01:22:31 +0000
Received: from mail-m12815.netease.com ([103.209.128.15])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBm31-00GtCn-3A
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 01:22:30 +0000
DKIM-Signature: a=rsa-sha256;
	b=e6kBuiHhF1GSlWML17rFKSqfGmnDq09ZaTAXaNvDKGygV9wCypiD0zyU2rZ19qnZEESh1ECRd0f9rEmwc4eA7S82D25mjAh9PaECbir6pix8wv8WZVufu31Gs6s85KgVI5ZBeDO6MDB14RXomdIy7nOV4/mPnz1eMjvC/uDMYHA=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Ksw/7IywGMYWf1AJ9p0S1CUhJTrJL9FdKIXVss4Vfu8=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 5AAFB780194;
	Sat,  9 Dec 2023 09:21:54 +0800 (CST)
Message-ID: <3b35ebad-c951-49a1-bfff-da79b3492ce1@rock-chips.com>
Date: Sat, 9 Dec 2023 09:21:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/17] Add VOP2 support on rk3588
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231207075906.651771-1-andyshrk@163.com>
 <8765245.NyiUUSuA9g@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <8765245.NyiUUSuA9g@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkMdSVZDTh9IGhhMQk1JQxpVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c4c2aade8b24fkuuu5aafb780194
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OiI6Fjo6DTw3PE4fSx0WSz4h
	HygaCwxVSlVKTEtJS0NPQkpOSUlNVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE1NSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_172228_218834_49A6CDB1 
X-CRM114-Status: GOOD (  13.83  )
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

SGkgSGVpa286CgpPbiAxMi85LzIzIDAwOjA3LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBB
bmR5LAo+IAo+IEFtIERvbm5lcnN0YWcsIDcuIERlemVtYmVyIDIwMjMsIDA4OjU5OjA2IENFVCBz
Y2hyaWViIEFuZHkgWWFuOgo+PiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5j
b20+Cj4+Cj4+IFRoaXMgcGF0Y2ggc2V0cyBhaW1zIGF0IGVuYWJsZSB0aGUgVk9QMiBzdXBwb3J0
IG9uIHJrMzU4OC4KPj4KPj4gTWFpbiBmZWF0dXJlIG9mIFZPUDIgb24gcmszNTg4Ogo+PiBGb3Vy
IHZpZGVvIHBvcnRzOgo+PiBWUDAgTWF4IDQwOTZ4MjE2MAo+PiBWUDEgTWF4IDQwOTZ4MjE2MAo+
PiBWUDIgTWF4IDQwOTZ4MjE2MAo+PiBWUDMgTWF4IDIwNDh4MTA4MAo+Pgo+PiA0IDRLIENsdXN0
ZXIgd2luZG93cyB3aXRoIEFGQkMvbGluZSBSR0IgYW5kIEFGQkMtb25seSBZVVYgc3VwcG9ydAo+
PiA0IDRLIEVzbWFydCB3aW5kb3dzIHdpdGggbGluZSBSR0IvWVVWIHN1cHBvcnQKPj4KPj4gVGhl
IGN1cnJlbnQgdmVyc2lvbiBzdXBwb3J0IGFsbCB0aGUgOCB3aW5kb3dzIHdpdGggYWxsIHRoZSBz
dXBwcG9ydGVkCj4+IHBsYW5lIGZvcm1hdC4KPj4KPj4gQW5kIHdlIGRvbid0IGhhdmUgYSB1cHN0
cmVhbWVkIGVuY29kZXIvY29ubmVjdG9yKEhETUkvRFApIGZvciByazM1ODgKPj4geWV0LCBDcmlz
dGlhbiBmcm9tIGNvbGxhYm9yYSBpcyB3b3JraW5nIG9uIGFkZGluZyB1cHN0cmVhbSBzdXBwb3J0
IGZvcgo+PiBIRE1JIG9uIHJrMzU4OC4KPj4KPj4gTXkgY3VycmVudCB0ZXN0KDEwODBQLzRLUDYw
KSBpcyBydW5pbmcgd2l0aCBhIEhETUkgZHJpdmVyIHBpY2sgZnJvbQo+PiBkb3duc3RyZWFtIGJz
cCBrZXJuZWwuCj4+Cj4+IEEgYnJhbmNoIGJhc2VkIG9uIGxpbnV4LTYuNyByYzQgY29udGFpbmlu
ZyBhbGwgdGhlIHNlcmllcyBhbmQKPj4gSERNSSBkcml2ZXIobm90IGNvbXBhdGlibGUgd2l0aCBt
YWlubGluZSByazM1NjggaGRtaSkgcGlja2VkCj4+IGZyb20gZG93bnN0cmVhbSBic3Aga2VybmVs
IGlzIGF2YWlsYWJsZSBbMF0uCj4+Cj4+IFswXWh0dHBzOi8vZ2l0aHViLmNvbS9hbmR5c2hyay9s
aW51eC9jb21taXRzL3JrMzU4OC12b3AyLXVwc3RyZWFtLWxpbnV4LTYuNy1yYzQtMjAyMy0xMi0w
Nwo+Pgo+PiBDaGFuZ2VzIGluIHY0Ogo+PiAtIGZpeCB0aGUgUE9TVF9CVUZfRU1QVFkgaXJxIHdo
ZW4gc2V0IG1vZGUKPj4gLSB1c2UgZnVsbCBzdG9wIGF0IGFsbCB0aGUgZGVzY3JpcHRpb24ncyBl
bmQuCj4+IC0gYWRkcmVzcyBLcnp5c3p0b2YncyByZXZpZXcgYWJvdXQgZHQtYmluZGluZyBpbiB2
Mwo+PiAtIGtlZXAgYWxsIFZPUDJfRkVBVFVSRV9IQVNfeHh4IG1hY3JvcyBpbmNyZWFzZSBpbiBv
cmRlci4KPj4gLSBhZGRyZXNzIFNhc2NoYSdzIHJldmlldyBhYm91dCBkZWJ1Z2ZzCj4+IC0gQWRk
IGNvbnN0IGZvciByb2NrY2hpcCxyazM1ODgtaW9tbXUgY29tcGF0aWJsZQo+IAo+IHZlcnkgbmlj
ZSwgdGhlIGVycm9yIG1lc3NhZ2VzIG9uICJtb2RlIGNoYW5nZXMiIGFyZSBnb25lIG5vdy4KPiBE
aXNwbGF5IGFuZCBldmVuIGNvbWJpbmF0aW9uIHdpdGggcGFudGhvciBzdGlsbCB3b3JrIG9mIG15
IHJrMzU4OC1ib2FyZAo+IAo+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4KClRoYW5rcyBmb3IgeW91ciBob25vcmFibGUgd29yayBvbiB0aGlzIHBsYXRmb3JtLCBh
bmQgdGhhbmtzIGZvciB5b3UgdGVzdCBhbmQgcmV2aWV3LgoKU28gY2FuIEkgYWRkIHlvdXIgVGVz
dGVkLWJ5IGZvciBhbGwgdGhpcyBzZXJpZXMgZm9ybSBQQVRDSCAxfjE2IGluIG5leHQgdmVyc2lv
bj8KPiAKPiAKPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
