Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D3E3EEA867
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 22:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=25ZwekMEms8K9REdIoeTPfA3lkTplqas6L6Fclm5JRw=; b=Ne5fXfeoO0/qim3r+omfeyplMl
	94R+0WpYX7zFEb/Kg95fHYAQoHKaL9darpFhUR4yHvl608l52wl2TPW7CGujaL+61PMFo30u/3dtX
	HrE/o7XZYs+V3rAoYOrKBsMN44Gh/khq+fd/odtW1Ugz2XkiYj+vKllQ8pcBUG9VJ7wpQYWF+23sp
	pLFgRjYJNCUFtllo09gilmVQ+bAvwhH+nqCxfVizOlKg1zbzkA4l63HLdNmkW/AiLorNPZy1fINGa
	0Vz0+PhUzljHuFcYuaGT/PHjhyswxbxQrXAmBnTGmeN4yc962QcXXjitqWBMfatF4RY3bluGGu03f
	giJ8PEBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqf6E-00000002hPP-2Kpo;
	Thu, 12 Feb 2026 22:23:50 +0000
Received: from mtafr.prnet.org ([54.38.152.168])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqf6B-00000002hP3-2oV9
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 22:23:49 +0000
Received: from secure.prnet.org (unknown [10.1.0.1])
	by mtafr.prnet.org (Postfix) with ESMTP id 5409B2004D;
	Thu, 12 Feb 2026 23:24:10 +0100 (CET)
Received: from [IPV6:2001:7e8:cf00:bc01:8cac:7fff:fe9e:52] (unknown [IPv6:2001:7e8:cf00:bc01:8cac:7fff:fe9e:52])
	by secure.prnet.org (Postfix) with ESMTPSA id 86CC810003F;
	Thu, 12 Feb 2026 23:23:44 +0100 (CET)
Message-ID: <de166323-bb9d-4240-bc42-08ae32067284@prnet.org>
Date: Thu, 12 Feb 2026 23:23:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Orange PI 5 MAX: very unstable using kernel 6.19.0 and 6.18.10,
 6.18.9 perfectly stable
To: Qu Wenruo <wqu@suse.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, Btrfs BTRFS <linux-btrfs@vger.kernel.org>
References: <8ebe4d76-eb07-499b-b140-1f300c1b8d7e@prnet.org>
 <f95f0d27-5bee-4363-b0f0-75e95b2a470d@suse.com>
Content-Language: en-US
From: David Arendt <admin@prnet.org>
In-Reply-To: <f95f0d27-5bee-4363-b0f0-75e95b2a470d@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_142347_892369_B0A7A00B 
X-CRM114-Status: GOOD (  25.09  )
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

T24gMi8xMi8yNiAxMDowNSBQTSwgUXUgV2VucnVvIHdyb3RlOgo+Cj4KPiDlnKggMjAyNi8yLzEz
IDA2OjQxLCBEYXZpZCBBcmVuZHQg5YaZ6YGTOgo+PiBIZWxsbywKPj4KPj4gSSBhbSB1c2luZyBh
IEt1YmVybmV0ZXMgQ2x1c3RlciB3aXRoIDMgT3JhbmdlIFBJNSBNQVggbm9kZXMuIFRoZSBkYXRh
IAo+PiBpcyBzdG9yZWQgdXNpbmcgYSBidHJmcyBmaWxlc3lzdGVtIGFzIGJhY2tlbmQuIElmIHVz
aW5nIGtlcm5lbCA2LjE5LjAgCj4+IG9yIGtlcm5lbCA2LjE4LjEwIEkgaGF2ZSBleHBlcmllbmNl
ZCBtYW55IGNyYXNoZXMgZHVyaW5nIGhpZ2ggSU8gbG9hZCAKPj4gb24gYWxsIDMgbm9kZXMuIFJl
dmVydGluZyBiYWNrIHRvIDYuMTguOSBzb2x2ZXMgdGhlIHByb2JsZW1zIAo+PiBjb21wbGV0ZWx5
LiBVbmZvcnR1bmF0ZWx5IHRoZSBjcmFzaGVzIGFyZSBzcG9udGFuZW91cyByZWJvb3RzIHdpdGhv
dXQgCj4+IGxlYXZpbmcgYSB0cmFjZSBpbiBhbnkgbG9nZmlsZSwgc28gSSBoYXZlIG5vIHN0YWNr
dHJhY2Ugb2YgdGhlbS4gCj4+IEFmdGVyIHRoZSBjcmFzaGVzIEkgaGF2ZSBzb21ldGltZXMgaW5j
b3JyZWN0IGJ0cmZzIGNzdW1zIGZvciBhIGZpbGUgCj4+IGJ1dCB0aGVzZSBtYXkgYWxzbyBiZSBh
IHJlc3VsdCBvZiBhIHBhcnRpYWwgd3JpdGUgZHVlIHRvIHRoZSBjcmFzaC4gCj4+IE9uIG9uZSBu
b2RlIEkgaGFkIGEgYnRyZnMgZXJyb3IgbG9nZ2VkIHdpdGhvdXQgY3Jhc2hpbmcsIGJ1dCBJIGFt
IG5vdCAKPj4gc3VyZSBpZiB0aGlzIGlzIHRoZSByb290IGNhdXNlIG9yIGEgcmVzdWx0IG9mIGEg
cHJpb3IgY3Jhc2guIEEgc2NydWIgCj4+IGFmdGVyIHJlYm9vdCByZXR1cm5lZCBubyBlcnJvciB3
aXRoIDYuMTkuMC4KPgo+IFRoZSBvZmZlbmRpbmcgdHJlZSBkdW1wIGl0ZW1zIGFyZToKPgo+IEZl
YiAxMCAxMzozMTowNyBvcGkwMiBrZXJuZWw6wqAgaXRlbSA5MiBrZXkgKDEzMjE4MzU2MTAxMTIw
Cj4gRmViIDEwIDEzOjMxOjA3IG9waTAyIGtlcm5lbDrCoCBpdGVtIDkzIGtleSAoMTMyMTYyMDg2
NDIwNDgKPiBGZWIgMTAgMTM6MzE6MDcgb3BpMDIga2VybmVsOsKgIGl0ZW0gOTQga2V5ICgxMzIx
ODM1NjE2MjU2MAo+Cj4gT2J2aW91c2x5IGl0ZW0gOTMgaXMgc21hbGxlciB0aGFuIGFsbCBpdHMg
cHJldmlvdXMgYW5kIG5leHQgaXRlbSBrZXlzLgo+Cj4gaGV4KDEzMjE4MzU2MTAxMTIwKSA9IDB4
YzA1YTM2YjgwMDAKPiBoZXgoMTMyMTYyMDg2NDIwNDgpID0gMHhjMDUyMzZiZTAwMAo+IGhleCgx
MzIxODM1NjE2MjU2MCkgPSAweGMwNWEzNmM3MDAwCj4KPiBJdCBsb29rcyBsaWtlIHNvbWV0aGlu
ZyBmbGlwZWQsICIweGMwNWEzIiAtPiAiMHhjMDUyMyIKPgo+IDB4YSAtPiAweDIgaXMgZXhhY3Rs
eSBvbmUgYml0IGZsaXBwZWQuCj4KPiBTbyBlaXRoZXIgdGhlIG1lbW9yeSBoYXJkd2FyZSBoYXMg
c29tZXRoaW5nIHdyb25nIGFuZCByZXN1bHRpbmcgYSAKPiBzdGlja2luZyBiaXQgKGFsd2F5cyAw
KSwgb3IgdGhlcmUgaXMgc29tZXRoaW5nIGluc2lkZSB0aGUga2VybmVsIAo+IHRvdWNoaW5nIG1l
bW9yeSBpdCBzaG91bGRuJ3QuCj4KPiBBbmQgdGhpcyBleGFjdGx5IG1hdGNoZXMgdGhlIHN5bXB0
b20sIGNoYW5naW5nIHJhbmRvbSBiaXQgb2YgeW91ciAKPiBrZXJuZWwsIGNyYXNoIGFsd2F5cyBl
eHBlY3RlZC4KPgo+Cj4gQ2FuIHlvdSBydW4gYSBtZW10ZXN0IHRvIG1ha2Ugc3VyZSBpdCBpcyBu
b3QgaGFyZHdhcmUgcHJvYmxlbXMgZmlyc3Q/CgpIZWxsbywKCkkgZG9uJ3Qga25vdyBvZiBhbnl0
aGluZyBsaWtlIG1lbXRlc3Q4NiBmb3IgdGhlIGFybTY0IHBsYXRmb3JtIGZvciAKdGVzdGluZyB0
aGUgd2hvbGUgbWVtb3J5LCBzbyBJIHVzZWQgdGhlIHVzZXIgc3BhY2UgbWVtdGVzdGVyIHRvIGNo
ZWNrIAp0aGUgMTRHIG9mIHVudXNlZCByYW0gb24gYWxsIDMgbWFjaGluZXMgd2hpbGUgdXNpbmcg
a2VybmVsIDYuMTguMTAuCgpIZXJlIGlzIHRoZSByZXN1bHQgb2YgdGhlIGZpcnN0IGl0ZXJhdGlv
biAoc2FtZSBvbiBldmVyeSBtYWNoaW5lKToKCm1lbXRlc3RlciB2ZXJzaW9uIDQuNy4xICg2NC1i
aXQpCkNvcHlyaWdodCAoQykgMjAwMS0yMDI0IENoYXJsZXMgQ2F6YWJvbi4KTGljZW5zZWQgdW5k
ZXIgdGhlIEdOVSBHZW5lcmFsIFB1YmxpYyBMaWNlbnNlIHZlcnNpb24gMiAob25seSkuCgpwYWdl
c2l6ZSBpcyA0MDk2CnBhZ2VzaXplbWFzayBpcyAweGZmZmZmZmZmZmZmZmYwMDAKd2FudCAxNDAw
ME1CICgxNDY4MDA2NDAwMCBieXRlcykKZ290wqAgMTQwMDBNQiAoMTQ2ODAwNjQwMDAgYnl0ZXMp
LCB0cnlpbmcgbWxvY2sgLi4ubG9ja2VkLgpMb29wIDE6CiDCoCBTdHVjayBBZGRyZXNzwqAgwqAg
wqAgwqA6IG9rCiDCoCBSYW5kb20gVmFsdWXCoCDCoCDCoCDCoCA6IG9rCiDCoCBDb21wYXJlIFhP
UsKgIMKgIMKgIMKgIMKgOiBvawogwqAgQ29tcGFyZSBTVULCoCDCoCDCoCDCoCDCoDogb2sKIMKg
IENvbXBhcmUgTVVMwqAgwqAgwqAgwqAgwqA6IG9rCiDCoCBDb21wYXJlIERJVsKgIMKgIMKgIMKg
IMKgOiBvawogwqAgQ29tcGFyZSBPUsKgIMKgIMKgIMKgIMKgIDogb2sKIMKgIENvbXBhcmUgQU5E
wqAgwqAgwqAgwqAgwqA6IG9rCiDCoCBTZXF1ZW50aWFsIEluY3JlbWVudDogb2sKIMKgIFNvbGlk
IEJpdHPCoCDCoCDCoCDCoCDCoCA6IG9rCiDCoCBCbG9jayBTZXF1ZW50aWFswqAgwqAgOiBvawog
wqAgQ2hlY2tlcmJvYXJkwqAgwqAgwqAgwqAgOiBvawogwqAgQml0IFNwcmVhZMKgIMKgIMKgIMKg
IMKgIDogb2sKIMKgIEJpdCBGbGlwwqAgwqAgwqAgwqAgwqAgwqAgOiBvawogwqAgV2Fsa2luZyBP
bmVzwqAgwqAgwqAgwqAgOiBvawogwqAgV2Fsa2luZyBaZXJvZXPCoCDCoCDCoCA6IG9rCgpJIGRv
bid0IHRoaW5rIGl0IGlzIGhhcmR3YXJlIGEgZmFpbHVyZSBhcyBpdCBpcyBoYXBwZW5pbmcgb24g
MyBkaWZmZXJlbnQgCm1hY2hpbmVzLiBDcmFzaGVzIG9jY3VyIHNvbWV3aGVyZSBiZXR3ZWVuIDMw
IG1pbnV0ZXMgYW5kIDEyIGhvdXJzIG9uIGFsbCAKMyBtYWNoaW5lcyB0aGF0IGhhdmUgYmVlbiBy
dW5uaW5nIHdpdGhvdXQgYSBzaW5nbGUgY3Jhc2ggZm9yIG1vcmUgdGhhbiBhIAp5ZWFyIG5vdyB3
aXRoIG9sZGVyIGtlcm5lbCB2ZXJzaW9ucyBpbmNsdWRpbmcgNCBkYXlzIHdpdGggNi4xOC45IGFu
ZCBhbGwgCnZlcnNpb24gZnJvbSA2LjE4LjAgdG8gNi4xOC45LCBzbyBpdCBzZWVtcyB0byBiZSBj
YXVzZWQgYnkgc29tZXRoaW5nIAp0aGF0IGhhcyBjaGFuZ2VkIGJldHdlZW4gNi4xOC45IGFuZCA2
LjE4LjEwLgoKVGhhbmtzLAoKRGF2aWQgQXJlbmR0Cgo+Cj4gVGhhbmtzLAo+IFF1Cj4KPgo+Pgo+
PiBVbmZvcnR1bmF0ZWx5IEkgZG9uJ3QgaGF2ZSBtb3JlIGluZm9ybWF0aW9uIGF0IHRoZSBtb21l
bnQuCj4+Cj4+IFRoYW5rcyBpbiBhZHZhbmNlLAo+Pgo+PiBEYXZpZCBBcmVuZHQKPj4KPj4KPgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
