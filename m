Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14BDECE7AEF
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 14:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Date:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QzPv4Gp6PPO5yY3kAQZffcDgEgAM+zJxBKRq5SBvdmo=; b=wj8jq8ZPfIhbHYk5M9zuFgfffJ
	yt6Af3IGBxqdv7MEc0ttA/c/5XbLa0kU4bqoC34RBpI81yPS0UlvC1KJxFj1TVq8X0l08bFRGG+s4
	2O4QGn/8NK9y+0ALbnkUD8RVm4rir/3QqI9iKaOaDGC3Kiqbq714wJ/td7j+tsB/3V5gEgVDhAF0L
	s2rx4xi0PAMT+/ygLYIKMrI+LL6YBleSE3RrbOXquqavSK2pWLyV1xg3KUIWGXZgBbOPVVjsHFn8L
	0SaqT2nK0eAFT6gp3tfRCEkDR6FQ4fkB1SRRJLbKyNT9O/B5Hsk/NwZTJFYHdwn44Sg5Vc5bqewbb
	Hoo+TiGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJupn-0000000CNzE-2O3H;
	Fri, 14 Nov 2025 14:31:31 +0000
Received: from toucan.tulip.relay.mailchannels.net ([23.83.218.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJupk-0000000CNyJ-2s8J;
	Fri, 14 Nov 2025 14:31:30 +0000
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 03BA17209BB;
	Fri, 14 Nov 2025 14:31:28 +0000 (UTC)
Received: from fr-int-smtpout25.hostinger.io (100-98-23-226.trex-nlb.outbound.svc.cluster.local [100.98.23.226])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id CF6F17215AC;
	Fri, 14 Nov 2025 14:31:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763130687;
	b=j2Xd1eETHQIS1/pUwSBTgVYMIjEYwjUIdBSaNw2yTC/KMxzJq9ef1/qNZioQ3ikibvIHlU
	hdCRGzL6VfB034mEucKduS9Jz1+ybZ4ZWX0XDdVr0P++Peo1gQgFR05lP8PiZbsJQvjS+1
	bqIFtoKZuWGFd4Ky5KHA7yrWchblrMkg/OjRmInB6cVzSW3XfsXTB/sk9Au/GNQlRM0ER8
	ynLheV3UcKua3ZJ5KZcGn3wGQuNRxvqIspwo5et0Jc0iF6qrnRPLrCHt6bRnLcWmhb9hEt
	bY4CR1rA5Jl+Dgj6nyDqvbCp8YPqUC+WYaOwNjqHyOCd7Rt/YCCS32e/1fKBZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763130687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=il5I2yAbj139BfkiCbdhTQ/d4/OE8/U6mDrW8QnzXAA=;
	b=m4siiYgwDRhmb3DaiVumIuE9oAOsCxFnZzPifZbUZaHL81Jm3kvcPLfauL0BN15TgkAAn6
	t4lC7kSrlF0YkodnZqdJkCE8rnDdzpEbCjPnunDip3RUpeMVkaG/ryTJQ3MOWI4s6T40lW
	wmzfVSCky7aC1kQgc/zp1OdUxaES/h9rXS6Ii1JtCsh5gRyHoZk74NPmNPo3ZQULZ50BBq
	CbMcEuikFjnZfrzN/mh3uCfjSzZxd0m/0FJI/2EbFxQQGP1WA+x5+4uDUt8LcuyDuzs0GE
	v9zgMcVKgpGzTA0QKlUICQPsYOjeBaw27KzgbZF1WaokZZlNf0kpu8eunNC3lQ==
ARC-Authentication-Results: i=1;
	rspamd-dd986fb9b-ccxbz;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Skirt-Quick: 0887cbb27111b2e8_1763130687686_4141335080
X-MC-Loop-Signature: 1763130687686:900645440
X-MC-Ingress-Time: 1763130687686
Received: from fr-int-smtpout25.hostinger.io (fr-int-smtpout25.hostinger.io
 [148.222.54.38])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.98.23.226 (trex/7.1.3);
	Fri, 14 Nov 2025 14:31:27 +0000
Received: from [IPV6:2a04:cec0:1227:4eff:55c6:1200:95e4:1a9a] (unknown [IPv6:2a04:cec0:1227:4eff:55c6:1200:95e4:1a9a])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d7KM93PQRz1y86;
	Fri, 14 Nov 2025 14:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763130679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=il5I2yAbj139BfkiCbdhTQ/d4/OE8/U6mDrW8QnzXAA=;
	b=sYY+2DUpTYdAdp99X6T+jyo6soz1A6X73YJxHx/bno2/wmtdWn8wjdkELIv+VHuJBqEL0w
	zQ+TrmxcftGicW0XpIjkLBAsKC00qZuQN2t9qj62yTJ6GGtQpQ2Jpd3p4iEYQ7emRexOva
	Lmi5IbcpqgB2wg5f8DOzRsxtUOPANHERhiDqS19gxjGTI38HUNiJtfm4K8oABfInIld0yS
	AIW/W3SG8o5KdY+xRxmvs6p3hNrmlFscZH5r2WFj07XBYNjROvk5mjd2q0yhjCb3rxbwJ2
	/xVYwNKTnK7y2/55Ny9x/DdZj7Z5nB77WzCWP3xBnrDzDOv3JKV8eqsUW+kXRw==
Message-ID: <8ad09a33-6464-4429-a58f-2769b78ada93@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Tinkerboard 3 and 3S device
 tree
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20251111172003.2324525-1-michael.opdenacker@rootcommit.com>
 <20251111172003.2324525-3-michael.opdenacker@rootcommit.com>
 <3310785.5fSG56mABF@diego>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <3310785.5fSG56mABF@diego>
Date: Fri, 14 Nov 2025 14:31:17 +0000 (UTC)
X-CM-Envelope: MS4xfMTWSdvcUwlWZ9Q9csUpnXvQelUJQs6K5ZjKFijmo7Y1NEtIdW0htQ8j/DgJjLDKou6/FEscxJFwsLVl/9GviAF9Kd89g/xlMIlibGkikIjrIe9UEXyp A/PH24lR7FWGuBGs/QO6HOb3xeEg8QLirPbMAPyh2uISFpDi7FwDnaiZF7iGm0FKEDva4OUCSMdwzKRgJpETiABraa3CF3/vRb2YXXF+f8RuNrvuHUNZ8t6a VXoh4CAiemM1VQeg+5wCxLEGB+4Xd3NqW/8hiSsK1FYOxgU8BNyZfpF7zTv8w/8T5Ks4pxNSuLT37wNvepmfANhHpLwPXGy7HTywTxWEjTXRaCgCKpoPOovV 2o4U6LKK3vKOVVf8I3wmE1kFqwaPhus/hSIvAcXWyZgEgw8+LE6daQvE2xmVmSnnMsgHkBFKrOAvb5KMKrnMOei7bvZvDR/SzjQtqxrSAnh8s4mps7Y3W4o0 7YEmZNXSpWRXGtYKYQJfsUAYD0x4pmuoF2UPmVsBV4HKloRQNKpIoqfH3Z5rO7zl7zIDFxN6eL7Wr58eeIqEtR+ze1za9bVmLCImsCaXRoIqhwZOt0Bs8TEw Zaj5u7Rm5qLfEMDy7JGJpeafc7D58ciDu4aO3zq0H2klMw==
X-CM-Analysis: v=2.4 cv=GbNFnhXL c=1 sm=1 tr=0 ts=69173d37 a=oqLoe7gRze/BHyD1ircVJQ==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=-Yt9tNsTAAAA:8 a=VwQbUJbxAAAA:8 a=d70CFdQeAAAA:8 a=xWdKMzntkUUiUo5u4OIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=qPQde0g9OtMA:10 a=HTceBwxjnJgA:10 a=5XHQ0vS7sDUA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_063128_886520_F4F52FF4 
X-CRM114-Status: GOOD (  15.23  )
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

SGkgSGVpa28KClRoYW5rcyBhIGxvdCBmb3IgdGhlIHJldmlldyEKCk9uIDExLzEzLzI1IDIzOjM1
LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBNaWNoYWVsLAo+Cj4gQW0gRGllbnN0YWcsIDEx
LiBOb3ZlbWJlciAyMDI1LCAxODoyMDoyMyBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBz
Y2hyaWViIG1pY2hhZWwub3BkZW5hY2tlckByb290Y29tbWl0LmNvbToKPj4gRnJvbTogTWljaGFl
bCBPcGRlbmFja2VyIDxtaWNoYWVsLm9wZGVuYWNrZXJAcm9vdGNvbW1pdC5jb20+Cj4+Cj4+IEFk
ZCBpbml0aWFsIGRldmljZSB0cmVlIHN1cHBvcnQgZm9yIEFzdXMgVGlua2VyYm9hcmQgMyBbMV0g
YW5kIDNTIFsyXSwKPj4gd2hpY2ggYXJlIFNCQ3MgYmFzZWQgb24gdGhlIFJvY2tjaGlwIDM1NjYg
U29DLgo+Pgo+PiBUaGUgIjNTIiB2ZXJzaW9uICgiUyIgZm9yICJzdG9yYWdlIikganVzdCBhZGRz
IGEgMTYgR0IgZU1NQwo+PiBhbmQgYSAibWFzayBST00iIERJUCBzd2l0Y2ggKHRvIG1hc2sgdGhl
IGVNTUMgYW5kIGVudGVyICJNYXNrIFJPTSIKPj4gbW9kZSBmb3IgcmVjb3ZlcnkpIHRvIHRoZSAi
MyIgdmVyc2lvbi4KPj4KPj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yOgo+PiAtIERlYnVnIFVBUlQg
KC9kZXYvdHR5UzIpCj4+IC0gU0QgY2FyZCAoL2Rldi9tbWNibGsxKQo+PiAtIGVNTUMgKC9kZXYv
bW1jYmxrMCwgb25seSBvbiBUaW5rZXJib2FyZCAzUykKPj4gLSBJMkM6Cj4+ICAgIC0gaTJjMCAo
aW50ZXJuYWwgYnVzIHdpdGggYSBQTUlDIGFuZCByZWd1bGF0b3JzKQo+PiAgICAtIGkyYzIgKGlu
dGVybmFsIGJ1cyB3aXRoIGFuIGF0MjQgZWVwcm9tIGFuZCBhbiBSVEMgZGV2aWNlKQo+PiAtIFVT
QiAyLjAgcG9ydHMKPj4gLSAyIEdQSU8gTEVEUwo+Pgo+PiBMaW5rOiBodHRwczovL3Rpbmtlci1i
b2FyZC5hc3VzLmNvbS9zZXJpZXMvdGlua2VyLWJvYXJkLTMuaHRtbCBbMV0KPj4gTGluazogaHR0
cHM6Ly90aW5rZXItYm9hcmQuYXN1cy5jb20vc2VyaWVzL3Rpbmtlci1ib2FyZC0zcy5odG1sIFsy
XQo+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIE9wZGVuYWNrZXIgPG1pY2hhZWwub3BkZW5hY2tl
ckByb290Y29tbWl0LmNvbT4KPj4gLS0tCj4gcGxlYXNlIGZvbGxvdyB0aGUgRFRTIGNvZGluZyBz
dHlsZQo+IGh0dHBzOi8vZG9jcy5rZXJuZWwub3JnL2RldmljZXRyZWUvYmluZGluZ3MvZHRzLWNv
ZGluZy1zdHlsZS5odG1sCkdyZWF0LCBJIHdhcyBsb29raW5nIGZvciBzdWNoIGEgZG9jdW1lbnQg
OikKPgo+Cj4+ICsvIHsKPj4gKwlhbGlhc2VzIHsKPj4gKwkJc2VyaWFsMiA9ICZ1YXJ0MjsKPj4g
KwkJbW1jMSA9ICZzZG1tYzA7Cj4+ICsJCWkyYzAgPSAmaTJjMDsKPj4gKwkJaTJjMiA9ICZpMmMy
Owo+IGFscGhhYmV0aWNhbCBwcm9wZXJ0eSBvcmRlcgpGaXhlZC4KPgo+Cj4+ICsJfTsKPj4gKwo+
PiArCWNob3NlbiB7Cj4+ICsJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKPj4g
Kwl9Owo+PiArCj4+ICsJdmNjM3YzX3N5czogcmVndWxhdG9yLTN2My12Y2Mtc3lzIHsKPj4gKwkJ
Y29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+PiArCQlyZWd1bGF0b3ItbmFtZSA9ICJ2
Y2MzdjNfc3lzIjsKPj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPj4gKwkJcmVndWxhdG9yLWJv
b3Qtb247Cj4+ICsJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+PiArCQly
ZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPj4gKwkJdmluLXN1cHBseSA9IDwm
dmNjNXYwX3N5cz47Cj4+ICsJfTsKPj4gKwo+PiArCXZjYzV2MF9zeXM6IHJlZ3VsYXRvci01djAt
dmNjLXN5cyB7Cj4+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4gKwkJcmVn
dWxhdG9yLW5hbWUgPSAidmNjNXYwX3N5cyI7Cj4+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+
ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1
MDAwMDAwPjsKPj4gKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+ICsJ
fTsKPj4gKwo+PiArCXZjYzV2MF91c2JfaG9zdDogcmVndWxhdG9yLTV2MC12Y2MtdXNiLWhvc3Qg
ewo+PiArCQljb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4+ICsJCWVuYWJsZS1hY3Rp
dmUtaGlnaDsKPj4gKwkJZ3Bpb3MgPSA8JmdwaW8wIFJLX1BBNiBHUElPX0FDVElWRV9ISUdIPjsK
Pj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwkJcGluY3RybC0wID0gPCZ1c2Jf
aG9zdF9wd3Jlbl9oPjsKPj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3VzYl9ob3N0IjsK
Pj4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4+ICsJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+PiArCQl2aW4tc3VwcGx5ID0gPCZ2Y2M1djBf
c3lzPjsKPj4gKwl9Owo+PiArCj4+ICsJZ3Bpb19sZWRzOiBncGlvLWxlZHMgewo+IGdwaW8tZm9v
IGJlZm9yZSByZWd1bGF0b3ItYmFyCkRvbmUKPgo+PiArCQljb21wYXRpYmxlID0gImdwaW8tbGVk
cyI7Cj4+ICsKPj4gKwkJYWN0LWxlZCB7Cj4+ICsJCQlncGlvcyA9IDwmZ3BpbzAgUktfUEQ0IEdQ
SU9fQUNUSVZFX0hJR0g+Owo+PiArCQkJbGludXgsZGVmYXVsdC10cmlnZ2VyPSJtbWMxIjsKPj4g
K307Cj4gbWlzc2luZyBpbmRlbnRhdGlvbgpPb3BzLCBmaXhlZC4KPgo+PiArCj4+ICsJCXJzdi1s
ZWQgewo+PiArCQkJZ3Bpb3MgPSA8JmdwaW8wIFJLX1BENiBHUElPX0FDVElWRV9ISUdIPjsKPj4g
KwkJCWxpbnV4LGRlZmF1bHQtdHJpZ2dlcj0ibm9uZSI7Cj4+ICsJCX07Cj4+ICsJfTsKPj4gK307
Cj4+Cj4+Cj4+PiBIZWlrbwo+Pj4KPj4+Cj4+ICsKPj4gKyZ1YXJ0MiB7Cj4gYWxwaGFiZXRpY2Fs
IG9yZGVyaW5nIG9mIHBoYW5kbGVzIHBsZWFzZSAodWFydDIgZGVmaW5pdGx5IHNvbWV3aGVyZSBh
ZnRlciBpMmMwKQpJbmRlZWQuIERvbmUuCj4KPj4gKwlzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+
PiArCj4+ICsmaTJjMCB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICsJcms4MDk6IHBt
aWNAMjAgewo+PiArCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrODA5IjsKPj4gKwkJcmVnID0g
PDB4MjA+Owo+PiArCQlhc3NpZ25lZC1jbG9ja3MgPSA8JmNydSBJMlMxX01DTEtPVVRfVFg+Owo+
PiArCQlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjcnUgQ0xLX0kyUzFfOENIX1RYPjsKPj4g
KwkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+PiArCQljbG9ja3MgPSA8JmNydSBJMlMxX01DTEtPVVRf
VFg+Owo+PiArCQljbG9jay1uYW1lcyA9ICJtY2xrIjsKPj4gKwkJY2xvY2stb3V0cHV0LW5hbWVz
ID0gInJrODA5LWNsa291dDEiLCAicms4MDktY2xrb3V0MiI7Cj4+ICsJCWludGVycnVwdC1wYXJl
bnQgPSA8JmdwaW8wPjsKPj4gKwkJaW50ZXJydXB0cyA9IDxSS19QQTMgSVJRX1RZUEVfTEVWRUxf
TE9XPjsKPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwkJcGluY3RybC0wID0g
PCZwbWljX2ludF9sPiwgPCZpMnMxbTBfbWNsaz47Cj4+ICsJCSNzb3VuZC1kYWktY2VsbHMgPSA8
MD47Cj4+ICsJCXN5c3RlbS1wb3dlci1jb250cm9sbGVyOwo+PiArCQl3YWtldXAtc291cmNlOwo+
PiArCj4+ICsJCXZjYzEtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPj4gKwkJdmNjMi1zdXBwbHkg
PSA8JnZjYzN2M19zeXM+Owo+PiArCQl2Y2MzLXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+ICsJ
CXZjYzQtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPj4gKwkJdmNjNS1zdXBwbHkgPSA8JnZjYzN2
M19zeXM+Owo+PiArCQl2Y2M2LXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+ICsJCXZjYzctc3Vw
cGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPj4gKwkJdmNjOC1zdXBwbHkgPSA8JnZjYzN2M19zeXM+Owo+
PiArCQl2Y2M5LXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4+ICsKPj4gKwkJcmVndWxhdG9ycyB7
Cj4+ICsJCQl2Y2NfMXY4OiBEQ0RDX1JFRzUgewo+PiArCQkJCXJlZ3VsYXRvci1uYW1lID0gInZj
Y18xdjgiOwo+PiArCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+ICsJCQkJcmVndWxhdG9yLWJv
b3Qtb247Cj4+ICsJCQkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4+ICsJ
CQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4+ICsKPj4gKwkJCQlyZWd1
bGF0b3Itc3RhdGUtbWVtIHsKPj4gKwkJCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOwo+PiAr
CQkJCX07Cj4+ICsJCQl9Owo+PiArCj4+ICsJCQl2Y2MzdjNfc2Q6IFNXSVRDSF9SRUcyIHsKPj4g
KwkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjNfc2QiOwo+PiArCQkJCXJlZ3VsYXRvci1hbHdh
eXMtb247Cj4+ICsJCQkJcmVndWxhdG9yLWJvb3Qtb247Cj4+ICsKPj4gKwkJCQlyZWd1bGF0b3It
c3RhdGUtbWVtIHsKPj4gKwkJCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5kOwo+PiArCQkJCX07
Cj4+ICsJCQl9Owo+PiArCj4+ICsJCQl2Y2Npb19zZDogTERPX1JFRzUgewo+PiArCQkJCXJlZ3Vs
YXRvci1uYW1lID0gInZjY2lvX3NkIjsKPj4gKwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiAr
CQkJCXJlZ3VsYXRvci1ib290LW9uOwo+PiArCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0g
PDE4MDAwMDA+Owo+PiArCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+
PiArCj4+ICsJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4+ICsJCQkJCXJlZ3VsYXRvci1vZmYt
aW4tc3VzcGVuZDsKPj4gKwkJCQl9Owo+PiArCQkJfTsKPj4gKwo+PiArCQkJdmNjXzN2MzogU1dJ
VENIX1JFRzEgewo+PiArCQkJCXJlZ3VsYXRvci1uYW1lID0gInZjY18zdjMiOwo+PiArCQkJCXJl
Z3VsYXRvci1hbHdheXMtb247Cj4+ICsJCQkJcmVndWxhdG9yLWJvb3Qtb247Cj4+ICsKPj4gKwkJ
CQlyZWd1bGF0b3Itc3RhdGUtbWVtIHsKPj4gKwkJCQkJcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5k
Owo+PiArCQkJCX07Cj4+ICsJCQl9Owo+PiArCQl9Owo+PiArCX07Cj4+ICsKPj4gKwl2ZGRfY3B1
OiByZWd1bGF0b3JANDAgewo+IHlvdSBwcm9iYWJseSBuZWVkICZjcHUwIHBoYW5kbGVzIHRvIHNl
dCB0aGlzIHJlZ3VsYXRvci1zdXBwbHk/CgoKT2gsIHlvdSdyZSB0aGUgbWFpbnRhaW5lciBvbiB0
aGlzIG9uZSA6KQpHb29kIGNhdGNoLiBJIHdhcyBpbWl0YXRpbmcgdGhlIE9yYW5nZSBQaSAzQiBE
VCwgYW5kIHNpbmNlIHRoZSBib2FyZCAKc2VlbWVkIHRvIGJvb3QgZmluZSwgSSBkaWRuJ3QgcGF5
IGF0dGVudGlvbiB0byB0aGUgZmFjdCB0aGF0IHZkZF9jcHUgd2FzIApuZWVkZWQgZWxzZXdoZXJl
LgpGaXhlZC4KCj4KPj4gKwkJY29tcGF0aWJsZSA9ICJzaWxlcmd5LHN5cjgyNyI7Cj4+ICsJCXJl
ZyA9IDwweDQwPjsKPj4gKwkJZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxlY3RvciA9IDwxPjsKPj4g
KwkJcmVndWxhdG9yLW5hbWUgPSAidmRkX2NwdSI7Cj4+ICsJCXJlZ3VsYXRvci1hbHdheXMtb247
Cj4+ICsJCXJlZ3VsYXRvci1ib290LW9uOwo+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9
IDw4MzAwMDA+Owo+PiArCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKPj4g
KwkJcmVndWxhdG9yLXJhbXAtZGVsYXkgPSA8MjMwMD47Cj4+ICsJCXZpbi1zdXBwbHkgPSA8JnZj
YzN2M19zeXM+Owo+PiArCj4+ICsJCXJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiArCQkJcmVndWxh
dG9yLW9mZi1pbi1zdXNwZW5kOwo+PiArCQl9Owo+PiArCX07Cj4+ICt9Owo+PiArCj4+ICsmaTJj
MiB7Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICsJbTI0YzA4QDUwIHsKPiBJIGd1ZXNz
IGVlcHJvbUA1MCA/CgpJbmRlZWQuIEZpeGVkIHRvby4KVGhhbmtzIGFnYWluLApNaWNoYWVsLgoK
LS0gCk1pY2hhZWwgT3BkZW5hY2tlcgpSb290IENvbW1pdApFbWJlZGRlZCBMaW51eCBUcmFpbmlu
ZyBhbmQgQ29uc3VsdGluZwpodHRwczovL3Jvb3Rjb21taXQuY29tCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
