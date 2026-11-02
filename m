Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74B0606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 01:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0c0h5+nR;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=kpbcuKvk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Md9uqat+D5qCNgl8ah/rcOhBdnjB4xmXk6TVvBSEZ2I=; b=0c0h5+nR8N6ov5UmTW6Hz41B6C
	MJHTZC53MQDDaLWPcUMoyq3KrMhQ5nLsXS5yqEB3mwdrIHPUhBezHUI4/GXPrVrFuXQF3rvPM+KQj
	gmSHziFYcnFBta+nb0HNXY04zPGOiSagCa2Cow2z7lTAoLnfOXRYb+dA3fUGfaxiEf2StYWR3KBao
	rJAqHfXmCvNBAV6CxnOk7L+qaJWkO1XkJOMy8WMUGvi7iCZT5TxgioDMNOt/3kxMSiv6d/aeEImg1
	5czfZTTo6BqJw450jjj+ZcKmXgigqetRdNgk+3b6MW6qjdwnYik9YzvAU7TiGEfKMfkXEC7S68/ll
	VDqfzLlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNgV3-0000000FLEj-1zVw;
	Mon, 02 Nov 2026 01:06:13 +0000
Received: from mail-m1020.netease.com ([154.81.10.20])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNgV0-0000000FLEJ-0fay;
	Mon, 02 Nov 2026 01:06:12 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5318aab9e;
	Mon, 2 Nov 2026 09:06:05 +0800 (GMT+08:00)
Message-ID: <41fb1707-9e06-487d-aee9-cf38a1d2e979@rock-chips.com>
Date: Mon, 2 Nov 2026 09:06:04 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable SD UHS-I on Firefly-RK3399
To: Heiko Stuebner <heiko@sntech.de>, Yaozhong Li <yaozhonguwl@gmail.com>
References: <20260922055011.14972-1-yaozhonguwl@gmail.com>
 <b8221ba4-dccb-42f5-ae77-a6c087fa1d05@rock-chips.com>
 <2120863.kXSN5OTJKJ@phil>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <2120863.kXSN5OTJKJ@phil>
X-HM-Tid: 0aa199cac4a503a4kunm23d3192039e401
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCGE5NVkkaSxgfTkkfGh9MH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kpbcuKvkBauFWUFHOsqnmSa0bzM6wKwLK3kHzHavFnUaxh8I1QUTRsZEEbgeuWBh1fYttQsfcdUWAS6KlvUdZ4cBVXJ9TRGX819t/BRo40j4Da1Ku+yCW/RZhfVNfceNqK8cWfB1iDvjBn6+NTf6oqApqgKitvUUYUhQrcyrjVY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=JKUDQlljLPgonxV2rKN0NfX07KbnvtueI4gyR5OUols=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_170610_750608_AFEAE6F6 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTEvMDIg5pif5pyf5LiAIDE6NTUsIEhlaWtvIFN0dWVibmVyIOWGmemBkzoKPiBB
bSBTb25udGFnLCAxLiBOb3ZlbWJlciAyMDI2LCAxNzoxMDowNCBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPj4g5ZyoIDIwMjYvMDkvMjIg5pif5pyf5LqM
IDEzOjUwLCBZYW96aG9uZyBMaSDlhpnpgZM6Cj4+PiBUaGUgU0Qgc2xvdCBvbiB0aGlzIGJvYXJk
IHN0YXlzIGF0IDUwIE1IeiB3aXRoIDMuM1Ygc2lnbmFsbGluZy4gVGhlCj4+Cj4+IC4uLgo+Pgo+
Pj4KPj4+IEkgaGF2ZSBubyBzY2hlbWF0aWMgZm9yIHRoaXMgYm9hcmQuIFRoZSBjbGFpbSBhYm91
dCB3aGF0IExETzQgZmVlZHMKPj4+IHJlc3RzIG9uIHRoZSB2ZW5kb3IgZmlybXdhcmUgZGV2aWNl
IHRyZWUgcGx1cyB0aGUgbWVhc3VyZW1lbnRzIGFib3ZlLgo+Pj4KPj4KPj4gSXQncyBlYXN5IHRv
IGZpbmQgb25lOgo+PiBodHRwczovL2dpdGh1Yi5jb20vYXJtYmlhbi9hcm1iaWFuLmdpdGh1Yi5p
by9ibG9iL21haW4vYm9hcmQtc2NoZW1hdGljcy9maXJlZmx5LXJrMzM5OS5wZGYKPj4KPj4gVG9v
IGJhZCBpdCB3YXMgZGVzaWduZWQgdGhpcyB3YXkhIFdoYXQgaWYgc2Rpby13aWZpIGlzIHdvcmtp
bmcgb24gVUhTCj4+IG1vZGVidXQgcGVvcGxlIGluc2VydCBhIEhpZ2hTcGVlZCBvbmx5IHNkIGNh
cmQ/Cj4gCj4gSG1tLCB3aGVuIEkgcmVhZCB0aGUgc2NoZW1hdGljcyBjb3JyZWN0bHksIGFsbCBw
YXJ0cyBvZiB0aGUgc2RpbyArIHdpZmkKPiBzdXBwbGllZCBieSB2Y2NfMXY4IChib3RoIEFQSU8z
X1ZERF8xVjggYW5kIGFsc28gdmRkaW8gb2YgdGhlIHdpZmkgbW9kdWxlCj4gaXRzZWxmKSwgd2hp
bGUgdmNjX3NkaW8gb25seSBzdXBwbGllcyBTRE1NQzBfVkREPwo+IAoKSnVzdCBhIHF1aWNrIGds
YW5jZSwgSSB3YXMgbWlzbGVkIGJ5IHRoZSBwYWdlIDkgd2hlcmUgdGhlIHdob2xlIHNkbW1jMAp3
YXMgbGFibGVkIGFzIFNESU8wLCB0aGVuIHBhZ2UgMjUgbGlzdHMgU0RJTzBfQ01ELCBldGMuLCBm
b3IgV2lGaS4gOigoCgoKPiAKPiBZYW96aG9uZyBMaTogcGxlYXNlIHRyaW0gdGhhdCBjb21taXQg
bWVzc2FnZSBkb3duIGEgbG90LCBpdCBkb2Vzbid0Cj4gaGF2ZSB0byBiZSBub3ZlbCBzaXplIHBs
ZWFzZS4KPiAKPiAKPiBIZWlrbwo+IAo+Pgo+Pj4gVGhlIGFuYWx5c2lzIGFuZCB0aGUgY29tbWl0
IG1lc3NhZ2Ugd2VyZSBkcmFmdGVkIHdpdGggdGhlIGhlbHAgb2YgYW4KPj4+IExMTS1iYXNlZCBh
c3Npc3RhbnQgKENsYXVkZSBDb2RlKSwgY3Jvc3MtcmV2aWV3ZWQgd2l0aCBhIHNlY29uZCBvbmUK
Pj4+IChPcGVuQUkgQ29kZXgpLiBUaGUgZGV2aWNlIHRyZWUgY2hhbmdlLCB0aGUgbWVhc3VyZW1l
bnRzIGFuZCB0aGUgZmluYWwKPj4+IHdvcmRpbmcgYXJlIG1pbmUuCj4+Pgo+Pj4gICAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMgfCAzICsrLQo+Pj4gICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0
cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzCj4+PiBp
bmRleCAwNTY4ZGZhLi43Y2FiYmMxIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzCj4+PiBAQCAtNzc3LDcgKzc3Nyw2IEBAICZz
ZGlvMCB7Cj4+PiAgICAKPj4+ICAgIAkvKiBQb3dlciBzdXBwbHkgKi8KPj4+ICAgIAl2cW1tYy1z
dXBwbHkgPSA8JnZjYzF2OF9zMz47CS8qIElPIGxpbmUgKi8KPj4+IC0Jdm1tYy1zdXBwbHkgPSA8
JnZjY19zZGlvPjsJLyogY2FyZCdzIHBvd2VyICovCj4+PiAgICAKPj4+ICAgIAkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPj4+ICAgIAkjc2l6ZS1jZWxscyA9IDwwPjsKPj4+IEBAIC04MDQsNiArODAz
LDggQEAgJnNkbW1jIHsKPj4+ICAgIAltYXgtZnJlcXVlbmN5ID0gPDE1MDAwMDAwMD47Cj4+PiAg
ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICAgIAlwaW5jdHJsLTAgPSA8JnNkbW1j
X2NsayAmc2RtbWNfY21kICZzZG1tY19idXM0PjsKPj4+ICsJc2QtdWhzLXNkcjEwNDsKPj4+ICsJ
dnFtbWMtc3VwcGx5ID0gPCZ2Y2Nfc2Rpbz47Cj4+PiAgICAJc3RhdHVzID0gIm9rYXkiOwo+Pj4g
ICAgfTsKPj4+ICAgIAo+Pj4KPj4+IGJhc2UtY29tbWl0OiA5NDBkZTU5MGI4MzlmNzFkNmRjODQ2
MTYwNTM0YmYyMDI0MDFiOGI3Cj4+Cj4+Cj4gCj4gCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
