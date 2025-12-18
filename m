Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F225BD68BC9
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 00:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/Ey7ZHPqNg9/ccWxvXxr485AYdjMVOSU/6FC1Fl4vQ=; b=vNyJwVr0mikHrK
	RYeyBZcqAxU1WTYBOFhFPdB5+bmERlJI2jT61bYohg/sPvAwtx9wJ39i5UQ/jjsaB5YuuuriM4w/3
	Fh77wNSIptvnNar2j+QR2wNc8p+5gOO0AFn+YrlKYjTMRnLv8/krE1GcM+tpmXFkFvJvjU+rjcI4p
	70S2yYf1JdrcL8BgqbWCGqMC3sKXOll10iPzo88F0lNnf1JVsFdbOrKNAUTBV/ZpfV/LCtcRwTdRP
	TIlDq2whY58shDdnINZ1kKmdmFdCEdvw60+eVqkGWMWerfv+mv9RH6yFB2bRDm1wOfBjMfPhAIDFG
	G3i2gnrjkQMuN4JS0xSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2C7-00000007cmy-0dsQ;
	Thu, 18 Dec 2025 00:48:39 +0000
Received: from mail-m25468.xmail.ntesmail.com ([103.129.254.68])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW2C3-00000007clo-1iGi
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Dec 2025 00:48:37 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2da8294be;
	Thu, 18 Dec 2025 08:48:32 +0800 (GMT+08:00)
Message-ID: <d839e402-f961-4848-a2c5-3bdf1640682e@rock-chips.com>
Date: Thu, 18 Dec 2025 08:48:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH v3] arm64: dts: rockchip: Add PCIe clkreq stuff for
 RK3588 EVB1
To: Anand Moon <linux.amoon@gmail.com>
References: <1764809428-183623-1-git-send-email-shawn.lin@rock-chips.com>
 <CANAwSgSn_6g1a=LYqKGom+FyhJ+qqbi5qRMKCxAoe5Q2nsN5sQ@mail.gmail.com>
 <951049c1-231b-4e40-9a00-7daef5a73fad@rock-chips.com>
 <CANAwSgSo_mkaQrHmpq+7qUgpZtAgFboKK96LYbaL_WrPu=Xr6A@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CANAwSgSo_mkaQrHmpq+7qUgpZtAgFboKK96LYbaL_WrPu=Xr6A@mail.gmail.com>
X-HM-Tid: 0a9b2eee101f09cckunmea9119724efede
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5KTVZDQ00dH0JOGR8ZGhpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=bbhqfpBJxM8ftivBIblla1Eu+7331TttTL42C7QLbXOA9lfWQCz6igImBKyWUJ+Jf5kpKVJ/VHIHcb68wupP1S1X1W0xGjq5RMO5jIv+oe30alwu2C++SSP0MArGs1UoJBUftUaBF1OY8D7wrHDHFke1l6ke9008JiA5yNm82D0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=a6prkxTOIIX17+3pMnLORK8RX03g4jROMxmgL7eJ1Nw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_164835_659023_1635067F 
X-CRM114-Status: GOOD (  11.67  )
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

5ZyoIDIwMjUvMTIvMDkg5pif5pyf5LqMIDE1OjAxLCBBbmFuZCBNb29uIOWGmemBkzoKPiBIaSBT
aGF3biwKPiAKPiBPbiBNb24sIDggRGVjIDIwMjUgYXQgMDU6NTUsIFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4g5ZyoIDIwMjUvMTIvMDcg5pif5pyf5pel
IDE1OjUwLCBBbmFuZCBNb29uIOWGmemBkzoKPj4+IEhpIFNoYXduLAo+Pj4KPj4+IE9uIFRodSwg
NCBEZWMgMjAyNSBhdCAwNjoyMSwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+
IHdyb3RlOgo+Pj4+Cj4+Pj4gQWRkIHN1cHBvcnRzLWNsa3JlcSBhbmQgcGlubXV4IGZvciBQQ0ll
IEFTUE0gTDEgc3Vic3RhdGVzLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+Pj4gQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFz
aXZhbSA8bWFuaUBrZXJuZWwub3JnPgo+Pj4+IFJldmlld2VkLWJ5OiBIYW5zIFpoYW5nIDxoYW5z
LnpoYW5nQGNpeHRlY2guY29tPgo+Pj4+IC0tLQo+Pj4gVGhhbmtzLCBhcmUgdGhlcmUgcGxhbnMg
dG8gc3VwcG9ydCB0aGlzIGZlYXR1cmUgb24gdGhlIHJlbWFpbmluZwo+Pj4gUkszNTZ4IGFuZCBS
SzM1ODggU0JDcz8KPj4KPj4gSXQgbmVlZHMgdG8gYmUgY2hlY2tlZCBvbiBhIHBlci1ib2FyZCBi
YXNpcy4KPj4KPiBBY2NvcmRpbmcgdG8gdGhlIHNjaGVtYXRpY3MsIGFsbCBSb2NrY2hpcCBQQ0ll
IGludGVyZmFjZXMgaW5jbHVkZSB0aGUKPiBDTEtSRVEjIGFuZCBXQUtFIyBHUElPIHBpbnMuCj4g
Cj4gWzFdIGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2s1LzViKy9kb2NzL2h3L3JhZHhhX3JvY2s1
YnBfdjEuMl9zY2hlbWF0aWMucGRmCj4gWzJdIGh0dHBzOi8vd2lraS5vZHJvaWQuY29tL19tZWRp
YS9vZHJvaWQtbTEvaGFyZHdhcmUvbTFfbWFpbl9yZXYxLjAucGRmCj4gWzNdIGh0dHBzOi8vd2lr
aS5vZHJvaWQuY29tL19tZWRpYS9vZHJvaWQtbTIvaGFyZHdhcmUvbTJfbWFpbl9yZXYxLjBfMjQw
NjExLnBkZgo+IAo+PiBXZSdyZSBoYXBweSBmb3IgZm9sa3MgdG8gYWRkIGl0IHRoZW1zZWx2ZXMg
Zm9yIHRoZWlyIGJvYXJkcyBvbmNlIHRoZXkndmUKPj4gdmVyaWZpZWQgdGhlIGNsa3JlcXBpbiBv
biB0aGVpciBoYXJkd2FyZS4KPiAKPiBUaGUgY29tbWl0IDQyOTRlMzIxMTE3OCAo4oCcYXJtNjQ6
IGR0czogcm9ja2NoaXA6IFNwbGl0IHVwIFJLMzU4OOKAmXMgUENJZQo+IHBpbmN0cmxz4oCdKQo+
IHNlcGFyYXRlcyB0aGUgQ0xLUkVRIywgUEVSU1QjLCBhbmQgV0FLRSMgcGluY3RybCBzaWduYWxz
IGZvciB0aGUKPiBSSzM1ODggcGxhdGZvcm0uCj4gU2hvdWxkIHdlIGFwcGx5IGEgc2ltaWxhciBz
cGxpdCBmb3IgdGhlIFJLMzU2eCBwaW5jdHJsIGRlZmluaXRpb25zIGFzIHdlbGw/Cj4gCgpZZXMs
IGNvdWxkIGRvIGEgc2ltaWxhciBjaGFuZ2UgaWYgbmVlZGVkLgoKPiBUaGFua3MKPiAtQW5hbmQK
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
