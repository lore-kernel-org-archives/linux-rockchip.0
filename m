Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8239DCCD18E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 09:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAsQ/Xzs9r3Pmt12lnR1eLu2rfoYDV9H+ADfHpqkghY=; b=CLHOkFuh85ZmDr
	LTk26/1qO3JOKYPoxkirUxUNPZh9kohq2dm9Je4SPauEsnqIhpufRDFiDWTw03tiDRceXPvyPb26h
	frtEDT/g4oi2zciMYDnFWUoRc78vxPtq1p8VRZXAqmngaZlpPYfwlW1GSoW7mGIcf2TyR7xf7aJnJ
	jVmEE4it/nAiP0E5kSEmav9DQ38cQ4afOzZmoW5v36ESLnhG4SgCracWYykMqo7WbIPC7O64xq4vl
	WA2Zr8sfSrt+LxEdXRvGA7ks+nitfAPEfQlJBriNH9/xZF+t+hef3B8bB7oHa6szf5oUdzrv1TR6S
	cdN/v2Q9d87f+xiHH52w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xXy-000000013tY-2yZ5;
	Wed, 15 Oct 2025 09:11:50 +0000
Received: from mail-m19731117.qiye.163.com ([220.197.31.117])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8xXw-000000013sv-0cCc
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Oct 2025 09:11:50 +0000
Received: from [192.168.61.151] (unknown [110.83.51.2])
	by smtp.qiye.163.com (Hmail) with ESMTP id 25fe09fd0;
	Wed, 15 Oct 2025 17:11:41 +0800 (GMT+08:00)
Message-ID: <a9ca7843-b780-45aa-9f62-3f443ae06eee@rock-chips.com>
Date: Wed, 15 Oct 2025 17:11:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <helgaas@kernel.org>,
 manivannan.sadhasivam@oss.qualcomm.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 "David E. Box" <david.e.box@linux.intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Chia-Lin Kao <acelan.kao@canonical.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, regressions@lists.linux.dev,
 FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
To: Manivannan Sadhasivam <mani@kernel.org>
References: <22594781424C5C98+22cb5d61-19b1-4353-9818-3bb2b311da0b@radxa.com>
 <20251014184905.GA896847@bhelgaas>
 <5ivvb3wctn65obgqvnajpxzifhndza65rsoiqgracfxl7iiimt@oym345d723o2>
 <823262AB21C8D981+8c1b9d50-5897-432b-972e-b7bb25746ba5@radxa.com>
 <7ugvxl3g5szxhc5ebxnlfllp46lhprjvcg5xp75mobsa44c6jv@h2j3dvm5a4lq>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <7ugvxl3g5szxhc5ebxnlfllp46lhprjvcg5xp75mobsa44c6jv@h2j3dvm5a4lq>
X-HM-Tid: 0a99e723b5cb09cckunm9e8b9439648be5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTEJJVk4aSRhMQ0saSE8fTVYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKSktVQ0hVTkpVSVlXWRYaDxIVHRRZQVlPS0hVSktJT09PSFVKS0tVSk
	JLS1kG
DKIM-Signature: a=rsa-sha256;
	b=UpuWgW52aHOlfv7QzqJdgKHIAtosG3wgzwhHN5rqcEzVPZvHuk8MNpCi9eh6jE+nnJUBuhEnDAt+v9PzjTnfkukeb7ou0GZtzBco7DmcUN922PskTdISP4ug3nmn20397LELaoL17SxL71wTEUpDubWJTZc9QWct9sVHaqT2MiQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tT8mYx9r8D/U1veSLAJ/A6tOtoL3jop8kIG2H0uvwss=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_021148_733682_4B4E5A54 
X-CRM114-Status: GOOD (  27.41  )
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

SGkgTWFuaQoK5ZyoIDIwMjUvMTAvMTUg5pif5pyf5LiJIDE1OjUwLCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0g5YaZ6YGTOgo+IE9uIFdlZCwgT2N0IDE1LCAyMDI1IGF0IDA0OjEzOjQxUE0gKzA5MDAs
IEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+IEhpLAo+Pgo+PiBPbiAxMC8xNS8yNSAxNToyNiwgTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIHdyb3RlOgo+Pj4gT24gVHVlLCBPY3QgMTQsIDIwMjUgYXQgMDE6
NDk6MDVQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+PiBbK2NjIHJlZ3Jlc3Npb25z
XQo+Pj4+Cj4+Pj4gT24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMDE6MzA6MTZBTSArMDkwMCwgRlVL
QVVNSSBOYW9raSB3cm90ZToKPj4+Pj4gSGkgTWFuaXZhbm5hbiBTYWRoYXNpdmFtLAo+Pj4+Pgo+
Pj4+PiBJJ3ZlIG5vdGljZWQgYW4gaXNzdWUgb24gUmFkeGEgUk9DSyA1QS81QiBib2FyZHMsIHdo
aWNoIGFyZSBiYXNlZCBvbiB0aGUKPj4+Pj4gUm9ja2NoaXAgUkszNTg4KFMpIFNvQy4KPj4+Pj4K
Pj4+Pj4gV2hlbiBydW5uaW5nIExpbnV4IHY2LjE4LXJjMSBvciBsaW51eC1uZXh0IHNpbmNlIDIw
MjUwOTI0LCB0aGUga2VybmVsIGVpdGhlcgo+Pj4+PiBmcmVlemVzIG9yIGZhaWxzIHRvIHByb2Jl
IE0uMiBXaS1GaSBtb2R1bGVzLiBUaGlzIGhhcHBlbnMgd2l0aCBzZXZlcmFsCj4+Pj4+IGRpZmZl
cmVudCBtb2R1bGVzIEkndmUgdGVzdGVkLCBpbmNsdWRpbmcgdGhlIFJlYWx0ZWsgUlRMODg1MkJF
LCBNZWRpYVRlawo+Pj4+PiBNVDc5MjFFLCBhbmQgSW50ZWwgQVgyMTAuCj4+Pj4+Cj4+Pj4+IEkn
dmUgZm91bmQgdGhhdCByZXZlcnRpbmcgdGhlIGZvbGxvd2luZyBjb21taXQgKGkuZS4sIHRoZSBw
YXRjaCBJJ20gcmVwbHlpbmcKPj4+Pj4gdG8pIHJlc29sdmVzIHRoZSBwcm9ibGVtOgo+Pj4+PiBj
b21taXQgZjNhYzJmZjE0ODM0YTBhYTA1NmVlM2FlMGU0YjhjNjQxYzU3OTk2MQo+Pj4+Cj4+Pj4g
VGhhbmtzIGZvciB0aGUgcmVwb3J0LCBhbmQgc29ycnkgZm9yIHRoZSByZWdyZXNzaW9uLgo+Pj4+
Cj4+Pj4gU2luY2UgdGhpcyBhZmZlY3RzIHNldmVyYWwgZGV2aWNlcyBmcm9tIGRpZmZlcmVudCBt
YW51ZmFjdHVyZXJzIGFuZCAoSQo+Pj4+IGFzc3VtZSkgZGlmZmVyZW50IGRyaXZlcnMsIGl0IHNl
ZW1zIGxpa2VseSB0aGF0IHRoZXJlJ3Mgc29tZSBpc3N1ZQo+Pj4+IHdpdGggdGhlIFJvY2tjaGlw
IGVuZCwgc2luY2UgQVNQTSBwcm9iYWJseSB3b3JrcyBvbiB0aGVzZSBkZXZpY2VzIGluCj4+Pj4g
b3RoZXIgc3lzdGVtcy4gIFNvIHdlIHNob3VsZCBmaWd1cmUgb3V0IGlmIHRoZXJlJ3Mgc29tZXRo
aW5nIHdyb25nCj4+Pj4gd2l0aCB0aGUgd2F5IHdlIGNvbmZpZ3VyZSBBU1BNLCB3aGljaCB3ZSBj
b3VsZCBwb3RlbnRpYWxseSBmaXgsIG9yIGlmCj4+Pj4gdGhlcmUncyBhIGhhcmR3YXJlIGlzc3Vl
IGFuZCB3ZSBuZWVkIHNvbWUga2luZyBvZiBxdWlyayB0byBwcmV2ZW50Cj4+Pj4gdXNhZ2Ugb2Yg
QVNQTSBvbiB0aGUgYWZmZWN0ZWQgcGxhdGZvcm1zLgo+Pj4+Cj4+Pgo+Pj4gSSBiZWxpZXZlIGl0
IGlzIHRoZSBsYXR0ZXIuIFRoZSBSb290IFBvcnQgaXMgaGF2aW5nIHRyb3VibGUgd2l0aCBBU1BN
Lgo+Pj4KPj4+IEZVS0FVTUkgTmFva2ksIGNvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgdGhlICdzdWRv
IGxzcGNpIC12dicgb3V0cHV0IHNvIHRoYXQgd2UKPj4+IGtub3cgd2hhdCBraW5kIG9mIFJvb3Qg
UG9ydCB3ZSBhcmUgZGVhbGluZyB3aXRoPyBZb3UgY2FuIHJldmVydCB0aGUgb2ZmZW5kaW5nCj4+
PiBwYXRjaCBhbmQgc2hhcmUgdGhlIG91dHB1dC4KPj4KPj4gSGVyZSBpcyBkbWVzZy9sc3BjaSBv
dXRwdXQgb24gUk9DSyA1QShSSzM1ODhTKToKPj4gICBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9S
YWR4YU5hb2tpLzEzNTVhMGI0Mjc4YjZlNTFhNjFkODlkZjdhNTM1YTVkCj4+Cj4gCj4gVGhhbmtz
ISBDb3VsZCB5b3UgcGxlYXNlIHRyeSB0aGUgYmVsb3cgZGlmZiB3aXRoIGYzYWMyZmYxNDgzNCBh
cHBsaWVkPwo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9xdWlya3MuYyBiL2RyaXZlcnMv
cGNpL3F1aXJrcy5jCj4gaW5kZXggMjE0ZWQwNjBjYTFiLi4wMDY5ZDA2YzI4MmQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9wY2kvcXVpcmtzLmMKPiArKysgYi9kcml2ZXJzL3BjaS9xdWlya3MuYwo+
IEBAIC0yNTI1LDYgKzI1MjUsMTUgQEAgc3RhdGljIHZvaWQgcXVpcmtfZGlzYWJsZV9hc3BtX2ww
c19sMShzdHJ1Y3QgcGNpX2RldiAqZGV2KQo+ICAgICovCj4gICBERUNMQVJFX1BDSV9GSVhVUF9G
SU5BTChQQ0lfVkVORE9SX0lEX0FTTUVESUEsIDB4MTA4MCwgcXVpcmtfZGlzYWJsZV9hc3BtX2ww
c19sMSk7Cj4gCj4gKwo+ICtzdGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX2FzcG1fYWxsKHN0cnVj
dCBwY2lfZGV2ICpkZXYpCj4gK3sKPiArICAgICAgIHBjaV9pbmZvKGRldiwgIkRpc2FibGluZyBB
U1BNXG4iKTsKPiArICAgICAgIHBjaV9kaXNhYmxlX2xpbmtfc3RhdGUoZGV2LCBQQ0lFX0xJTktf
U1RBVEVfQUxMKTsKPiArfQo+ICsKPiArREVDTEFSRV9QQ0lfRklYVVBfRklOQUwoUENJX1ZFTkRP
Ul9JRF9ST0NLQ0hJUCwgMHgzNTg4LCBxdWlya19kaXNhYmxlX2FzcG1fYWxsKTsKClRoYXQncyBu
b3QgdHJ1ZSBmcm9tIG15IFBPVi4gUm9ja2NoaXAgcGxhdGZvcm0gc3VwcG9ydHMgYWxsIEFTUE0g
cG9saWN5CmFmdGVyIG1hc3MgcHJvZHVjdGlvbiB2ZXJpZmljYXRpb24uIEkgYWxzbyB2ZXJpZmll
ZCBjdXJyZW50IHVwc3RyZWFtCmNvZGUgdGhpcyBtb3JuaW5nIHdpdGggUkszNTg4LUVWQiBhbmQg
Y2FuIGNoZWNrIEwwcy9MMS9MMXNzIHdvcmsgZmluZS4KClRoZSBsb2cgYW5kIGxzcGNpIG91dHB1
dCBjb3VsZCBiZSBmb3VuZCBoZXJlOgpodHRwczovL3Bhc3RlYmluLmNvbS9xaXplWUVENwoKTW9y
ZW92ZXIsIEkgZGlzc2N1c3NlZCB0aGlzIGlzc3VlIHdpdGggRlVLQVVNSSB0b2RheSBvZmYtbGlz
dCBhbmQgaGlzCmJvYXJkIHNlZW1zIHRvIHdvcmsgd2hlbiBvbmx5IGRpc2FibGUgTDFzcyBieSBw
YXRjaGluZzoKCi0tLSBhL2RyaXZlcnMvcGNpL3BjaWUvYXNwbS5jCisrKyBiL2RyaXZlcnMvcGNp
L3BjaWUvYXNwbS5jCkBAIC04MTMsNyArODEzLDcgQEAgc3RhdGljIHZvaWQgCnBjaWVfYXNwbV9v
dmVycmlkZV9kZWZhdWx0X2xpbmtfc3RhdGUoc3RydWN0IHBjaWVfbGlua19zdGF0ZSAqbGluaykK
CiAgICAgICAgIC8qIEZvciBkZXZpY2V0cmVlIHBsYXRmb3JtcywgZW5hYmxlIGFsbCBBU1BNIHN0
YXRlcyBieSBkZWZhdWx0ICovCiAgICAgICAgIGlmIChvZl9oYXZlX3BvcHVsYXRlZF9kdCgpKSB7
Ci0gICAgICAgICAgICAgICBsaW5rLT5hc3BtX2RlZmF1bHQgPSBQQ0lFX0xJTktfU1RBVEVfQVNQ
TV9BTEw7CisgICAgICAgICAgICAgICBsaW5rLT5hc3BtX2RlZmF1bHQgPSBQQ0lFX0xJTktfU1RB
VEVfTDBTIHwgClBDSUVfTElOS19TVEFURV9MMTsKICAgICAgICAgICAgICAgICBvdmVycmlkZSA9
IGxpbmstPmFzcG1fZGVmYXVsdCAmIH5saW5rLT5hc3BtX2VuYWJsZWQ7CiAgICAgICAgICAgICAg
ICAgaWYgKG92ZXJyaWRlKQogICAgICAgICAgICAgICAgICAgICAgICAgcGNpX2luZm8ocGRldiwg
IkFTUE06IERUIHBsYXRmb3JtLAoKClNvLCBpcyB0aGVyZSBhIHByb3BlciB3YXkgdG8ganVzdCBk
aXNhYmxlIHRoaXMgZmVhdHVyZSBmb3Igc3BlYyBib2FyZHMKaW5zdGVhZCBvZiB0aGlzIFNvYz8K
Cj4gKwo+ICAgLyoKPiAgICAqIFNvbWUgUGVyaWNvbSBQQ0llLXRvLVBDSSBicmlkZ2VzIGluIHJl
dmVyc2UgbW9kZSBuZWVkIHRoZSBQQ0llIFJldHJhaW4KPiAgICAqIExpbmsgYml0IGNsZWFyZWQg
YWZ0ZXIgc3RhcnRpbmcgdGhlIGxpbmsgcmV0cmFpbiBwcm9jZXNzIHRvIGFsbG93IHRoaXMKPiAK
PiAKPiAgRnJvbSB5b3VyIHByZXZpb3VzIGNvbW1lbnQsIEkgYmVsaWV2ZSB0aGUgUm9vdCBQb3J0
IGlzIGhhdmluZyB0aGUgaXNzdWVzIHdpdGgKPiBBU1BNIGFzIHlvdSBzZWVtIHRvIGhhdmUgdHJp
ZWQgY29ubmVjdGluZyBkaWZmZXJlbnQgZGV2aWNlcyB0byB0aGUgc2xvdC4gU28gSQo+IGRpc2Fi
bGVkIEFTUE0gZm9yIHRoZSBSb290IFBvcnQgd2l0aCB0aGUgYWJvdmUgZGlmZi4KPiAKPiAtIE1h
bmkKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
