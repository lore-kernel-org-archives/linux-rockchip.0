Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A40F9CE7B0E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 13:55:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Date:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hS8BDPhB6in/I0DaVYy4HsM+uj5Zo4giXEIf8lmQcJ4=; b=E9cNZe4cv6UNwIcBSImndolaKa
	DE48fOFQ8I5l94e0OxiQDcm4j6iLRXEDO9gHjoVAoxHaYsz2fMeTeKddlP/8J7/ciDySnlnfzer+i
	/uF6ROxNidh44xy4JevPeqA0fIQJI5dP+o0r8m19f0QMKFNymoE7c/YZ0gNAN0LobyVKS9IaHoma0
	2fxFV/LqLF7mOx3XgT/+Yp+NRVv1+E2VaHhxXha7nn4j1G+ozge7hTG1oPiOuQHR2zgE9hKBr0Ljq
	p24dginHu3RXxPhzgXG85wU7ff2zZVwA3eNudXfZl0gEyfgdWPRoDp577ofLrRvygrMbRp7Sn0hDo
	2USF7alQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuGc-0000000CIdO-2GyA;
	Fri, 14 Nov 2025 13:55:10 +0000
Received: from hedgehog.birch.relay.mailchannels.net ([23.83.209.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuGY-0000000CIci-454b;
	Fri, 14 Nov 2025 13:55:08 +0000
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 8FC12161F68;
	Fri, 14 Nov 2025 13:55:03 +0000 (UTC)
Received: from fr-int-smtpout19.hostinger.io (trex-green-2.trex.outbound.svc.cluster.local [100.98.40.135])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id 54EE0163561;
	Fri, 14 Nov 2025 13:55:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1763128503;
	b=Qq3djHHUXLtIV0KOA7zP8oAJw3dPCAlJGlUFEw6bwzxOo9dGby0E/5MGeAfis6dUmixBNt
	ZaW6gIiVuh1Mzup3daV0RFgTaIFVIxF3cY3U625eCESUw3v/K1B5rYgqg0rWnAzzbAkQ2b
	NBNArOuttj5srfJOr66rnOS3eRTC9a1KR1HlF9JG1wCsw1Cku+3RTEYIVLabUlSlkwHTmS
	4GuWhCjkjnlbkEqSvWyvZ+aflABlV4RGUWQpjya4GzlX8u41LCk+DfYNFAupdt0Jv0kPvO
	aMfsVky2pg97o96LGDMUqNAN1BXOlIZwaog4EBjxl5vQzIx8CTVTCIWB7vidug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1763128503;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=Ltz8k3u8rZmtIjFXvmlVeL7Na3l8yY1CcI29CIDeBH8=;
	b=2o6typ87Ts0i6aeT4wTh4gUwo+IHN0jUaYCl7y2pTDTD7UKMZS0HoFtTwGcnXzcc/A0CuT
	RF5mPK6wzGqTyVoQne0JYNcv48HYsEin4H5sLfU7cB0nCTub1ELqcFq0qwTIR2oBJrBG17
	RIQXuqK/3zm2eE8XagGYDvxtgohZRZzyFaO4lQ6lWInXMQYgV6ahEl7zMpATL+MZMRB7Ia
	el4x6uK282H9G5Z8gyZWyCHS+bI6YihFn2+Tx6VsEIVNCUwZh2j7zgb2B78xqhf2nK/V2I
	XiP48s/ALwMO98YXMvPdl4NBNMy+duX3llbeuUWrq3Xv48fz5I0FVT0BHNlJuw==
ARC-Authentication-Results: i=1;
	rspamd-dd986fb9b-ccxbz;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Whistle-Fumbling: 5252974a637cccd2_1763128503386_793807060
X-MC-Loop-Signature: 1763128503386:147308783
X-MC-Ingress-Time: 1763128503385
Received: from fr-int-smtpout19.hostinger.io (fr-int-smtpout19.hostinger.io
 [148.222.54.35])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.98.40.135 (trex/7.1.3);
	Fri, 14 Nov 2025 13:55:03 +0000
Received: from [IPV6:2a04:cec0:1201:fec6:d861:b290:3e40:1173] (unknown [IPv6:2a04:cec0:1201:fec6:d861:b290:3e40:1173])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4d7JYG2YsGz1xyq;
	Fri, 14 Nov 2025 13:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1763128499;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Ltz8k3u8rZmtIjFXvmlVeL7Na3l8yY1CcI29CIDeBH8=;
	b=Ev0W1DzaQhLaH39wLycBBuQ74jxm2sddJyHSXF/ujEEYl8iQKsW5CMt+iJ7kTr15fH8UBI
	LsJOuJgJmAlXzSKBHYjfDLX4t5AClGaM3iihVy+BWqhdudZ1fXHfbLnI3ao/iLvJfelUYr
	HA9YEUTjY7j60fCDimnb7gwU6d6G+s2oqMIXmcPmQDp0JKDlDWo3iJwFdhKmL7zfcgxBHS
	AiTQY5i1g1r8urXZFdg30pcETtWUQ56r7mSgSr3htsjAVBqakkOc7OXQLCqU1mc2aUsI9I
	Pdnr0P638u00eMrVxUTPM7oPkYBJuuVNy8tlY3SBzwNkhFs5Z2WNcrYeyY1GLA==
Message-ID: <01b16ed0-472d-49f5-a4ad-fce03a651de8@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add Tinkerboard 3 and 3S device
 tree
To: Dragan Simic <dsimic@manjaro.org>
References: <20251111172003.2324525-1-michael.opdenacker@rootcommit.com>
 <20251111172003.2324525-3-michael.opdenacker@rootcommit.com>
 <dbacc018-2631-6606-7562-27371cf45d6f@manjaro.org>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Organization: Root Commit
In-Reply-To: <dbacc018-2631-6606-7562-27371cf45d6f@manjaro.org>
Date: Fri, 14 Nov 2025 13:54:58 +0000 (UTC)
X-CM-Analysis: v=2.4 cv=GbNFnhXL c=1 sm=1 tr=0 ts=691734b3 a=LRNdxPJjO8fBCW461cpSgw==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=XU-i12MY3MkkrgIIfjsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-CM-Envelope: MS4xfH1NsvoHEagDFqN4Q3Nj5b3nuNkZONXrz4OXe7Xkc9XckaqoDH1DT6+bV5y6YD5x+Jk1Y9Pqkj5ncPYuO4BSvh8NP18oJKeso1utprbmAubK6eOJA2GN qXRBGYWeG9gZhswh1PaFjRSicWO6ABaLChtkGQown0d0PVlfeAveLqLFLb/A1XfjCz9ym7PDIQgDpIEwV3XhNhzgN6e9qeWqB5nSSZ1s+d1ofUmZcc2cLYZM l0m1XNm9tbr9hgELAgyi+aLm7m08Kjd8OXn3NV/7QHttYmZziW/firkgYNg1IQY2H8uoDS8132dVAS4Qa6Xd3g3Fle2GLoOJzEW6gzvhf/fHH/1/rl5iq0rV 019fR9F/YWhNDliuQ+9ewz1Q0sbY+TYUMNN7UFHJJc3Op13eNfW1r+d/WgOzcZ0/dASnIfrKKNuzNFhyF4pNKasHm4yYTWiKjH+mgsUKrjQ/KB6x3XaYAxMk RhK+ylHdjKnPIFpCVNmK2Q59VGBitvFs180CM++FzT64WiMv+xDnitlj1VEypH33XtKwZ1f50IZ/5JdBTZmxYWD87njRadEa2YOzpsV3W1kxPxoYsmDy4l+0 QQrq8sQIptJH3FFw2YambYQdSOOeIjCWtEiEnHn64hUwYkUDQ5OLC/kC+jEPNYhw8gR7I1T3RuNopXJ+N1fnjrot
X-AuthUser: michael.opdenacker@rootcommit.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_055507_259279_EC9B5840 
X-CRM114-Status: GOOD (  24.18  )
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

SGkgRHJhZ2FuLAoKVGhhbmtzIGEgbG90IGZvciB5b3VyIHJldmlldyBhbmQgZmVlZGJhY2shCgpP
biAxMS8xNC8yNSAwMzoyNiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIE1pY2hhZWwsCj4K
PiBUaGFua3MgZm9yIHRoaXMgcGF0Y2ghICBQbGVhc2UsIHNlZSBzb21lIGNvbW1lbnRzIGJlbG93
Lgo+Cj4gT24gVHVlc2RheSwgTm92ZW1iZXIgMTEsIDIwMjUgMTg6MjAgQ0VULCBtaWNoYWVsLm9w
ZGVuYWNrZXJAcm9vdGNvbW1pdC5jb20gd3JvdGU6Cj4+IEZyb206IE1pY2hhZWwgT3BkZW5hY2tl
ciA8bWljaGFlbC5vcGRlbmFja2VyQHJvb3Rjb21taXQuY29tPgo+Pgo+PiBBZGQgaW5pdGlhbCBk
ZXZpY2UgdHJlZSBzdXBwb3J0IGZvciBBc3VzIFRpbmtlcmJvYXJkIDMgWzFdIGFuZCAzUyBbMl0s
Cj4+IHdoaWNoIGFyZSBTQkNzIGJhc2VkIG9uIHRoZSBSb2NrY2hpcCAzNTY2IFNvQy4KPiBGb3Ig
Y29uc2lzdGVuY3kgYW5kIGJlY2F1c2UgaXQncyBhIHByb3BlciBub3VuLCB0aGlzIHNob3VsZCBi
ZQo+IHMvVGlua2VyYm9hcmQvVGlua2VyIEJvYXJkLy4KCkZpeGVkIGluIGFsbCB0aGUgcGF0Y2hl
cy4KCj4KPiBUaGUgYm9hcmQgLmR0cy8uZHRiIGZpbGVzIHNob3VsZCBpbmNsdWRlICItYm9hcmQi
LCBpLmUuIHRoZXNlIHNob3VsZAo+IGJlICJyazM1NjYtdGlua2VyLWJvYXJkLTMuZHRiIiBhbmQg
InJrMzU2Ni10aW5rZXItYm9hcmQtM3MuZHRiIgo+IGluc3RlYWQsIGJlY2F1c2UgdGhlcmUncyBu
byByZWFsIG5lZWQgZm9yIHNob3J0ZW5pbmcuICBUaGVzZSBib2FyZHMKPiBhcmUgc2ltcGx5IG5h
bWVkICJUaW5rZXIgQm9hcmQiLCB3aGljaCBzaG91bGQgYmUgcHJlc2VydmVkLgoKRG9uZSB0b28u
IEhvd2V2ZXIsIEkgdXNlZCB0aGVzZSBuYW1lcyBmb3IgY29uc2lzdGVuY3kgd2l0aCB3aGF0IHdh
cyB1c2VkIApvbiBhcm0oMzIpIGZvciB0aGUgb3JpZ2luYWwgVGlua2VyIEJvYXJkOgphcmNoL2Fy
bS9ib290L2R0cy9yb2NrY2hpcC9yazMyODgtdGlua2VyLmR0cwphcmNoL2FybS9ib290L2R0cy9y
b2NrY2hpcC9yazMyODgtdGlua2VyLXMuZHRzCmFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzI4OC10aW5rZXIuZHRzaQoKSSBndWVzcyBpdCdzIGZpbmUgdG8gaWdub3JlIHdoYXQgYXJtIGRp
ZCByaWdodD8gSXQgd29uJ3QgbGl2ZSBhcyBsb25nIGFzIAphcm02NCAoSSBhdHRlbmQgQXJuZCdz
IHRhbGsgYWJvdXQgYXJtIDMyKS4KCj4KPj4gICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkg
Kz0gcmszNTY4LWJwaS1yMi1wcm8uZHRiCj4+ICAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVAp
ICs9IHJrMzU2OC1ldmIxLXYxMC5kdGIKPj4gICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkg
Kz0gcmszNTY4LWZhc3RyaGluby1yNjZzLmR0Ygo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NjYtdGlua2VyLTMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjYtdGlua2VyLTMuZHRzCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+
IGluZGV4IDAwMDAwMDAwMDAwMC4uOTM4YWYzNWI5MDA0Cj4+IC0tLSAvZGV2L251bGwKPj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtdGlua2VyLTMuZHRzCj4+IEBA
IC0wLDAgKzEsMTQgQEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBP
UiBNSVQpCj4+ICsvKgo+PiArICogQ29weXJpZ2h0IChDKSAyMDI1IE1pY2hhZWwgT3BkZW5hY2tl
ciA8bWljaGFlbC5vcGRlbmFja2VyQHJvb3Rjb21taXQuY29tPgo+PiArICovCj4+ICsKPj4gKy9k
dHMtdjEvOwo+PiArCj4+ICsjaW5jbHVkZSAicmszNTY2LXRpbmtlci0zLmR0c2kiCj4gVGhlIHNh
bWUgY29tbWVudCBmcm9tIGFib3ZlIGFib3V0IHRoZSBuYW1pbmcgYXBwbGllcyBoZXJlIChhcyB3
ZWxsCj4gYXMgaW4gb3RoZXIgcGxhY2VzKSwgc28gd2Ugc2hvdWxkIGhhdmUgInJrMzU2Ni10aW5r
ZXItYm9hcmQtMy5kdHNpIgo+IGhlcmUgaW5zdGVhZC4KPgo+PiArCj4+ICsvIHsKPj4gKwltb2Rl
bCA9ICJSb2NrY2hpcCBSSzM1NjYgQXN1cyBUaW5rZXIgQm9hcmQgMyI7Cj4gRm9yIGNvbnNpc3Rl
bmN5IGFuZCB0byBhdm9pZCByZWR1bmRhbmN5LCB0aGUgIlJvY2tjaGlwIFJLMzU2NiIKPiBwYXJ0
IHNob3VsZCBiZSByZW1vdmVkLgoKCkRvbmUuCgo+Cj4+ICsJY29tcGF0aWJsZSA9ICJhc3VzLHJr
MzU2Ni10aW5rZXItMyIsICJyb2NrY2hpcCxyazM1NjYiOwo+IEFjdHVhbGx5LCB0aGUgY29tcGF0
aWJsZSBzaG91bGQgYmUgImFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zIgo+IGluc3RlYWQsIGJl
Y2F1c2UgdGhlcmUncyBubyByZWFsIG5lZWQgZm9yIHNob3J0ZW5pbmcgaXQuCgoKTm8gcHJvYmxl
bSB0byBkbyBpdC4gSG93ZXZlciwgaGVyZSB3ZSBoYXZlIGEgc2xpZ2h0bHkgYmlnZ2VyIHByb2Js
ZW06IGl0IAp3b3VsZCBiZSBpbmNvbnNpc3RlbnQgd2l0aCB0aGUgYmluZGluZ3MgZm9yIHRoZSBv
cmlnaW5hbCBUaW5rZXIgQm9hcmQgaW4gCnRoZSBzYW1lIHJvY2tjaGlwLnlhbWwgZmlsZToKCiDC
oCDCoCDCoCAtIGRlc2NyaXB0aW9uOiBBc3VzIFRpbmtlciBib2FyZAogwqAgwqAgwqAgwqAgaXRl
bXM6CiDCoCDCoCDCoCDCoCDCoCAtIGNvbnN0OiBhc3VzLHJrMzI4OC10aW5rZXIKIMKgIMKgIMKg
IMKgIMKgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzI4OAoKIMKgIMKgIMKgIC0gZGVzY3JpcHRpb246
IEFzdXMgVGlua2VyIGJvYXJkIFMKIMKgIMKgIMKgIMKgIGl0ZW1zOgogwqAgwqAgwqAgwqAgwqAg
LSBjb25zdDogYXN1cyxyazMyODgtdGlua2VyLXMKIMKgIMKgIMKgIMKgIMKgIC0gY29uc3Q6IHJv
Y2tjaGlwLHJrMzI4OAoKV2hhdCBkbyB5b3UgdGhpbms/IFRoZSBkaXNjcmVwYW5jeSB3b3VsZCBi
ZSBxdWl0ZSB2aXNpaWJsZS4KCj4+ICsJY29tcGF0aWJsZSA9ICJhc3VzLHJrMzU2Ni10aW5rZXIt
M3MiLCAiYXN1cyxyazM1NjYtdGlua2VyLTMiLCAicm9ja2NoaXAscmszNTY2IjsKPiBUaGUgY29t
cGF0aWJsZXMgc2hvdWxkIGJlIGFzIGJlbG93IGluc3RlYWQsIGZvciB0aGUgc2FtZSByZWFzb25z
Cj4gYXMgYWxyZWFkeSBleHBsYWluZWQgYWJvdmUuCj4KPiAgICAiYXN1cyxyazM1NjYtdGlua2Vy
LWJvYXJkLTNzIiwgImFzdXMscmszNTY2LXRpbmtlci1ib2FyZC0zIiwgInJvY2tjaGlwLHJrMzU2
NiIKClllcywgd2hhdGV2ZXIgaXMgZGVjaWRlZCBmb3IgdGhlIGNvbXBhdGlibGUgc3RyaW5ncy4K
Pgo+IFRob3VnaCwgcGVyaGFwcyBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gbm90IGluY2x1ZGUgdGhl
ICJhc3VzLHJrMzU2Ni0KPiB0aW5rZXItYm9hcmQtMyIgcGFydCwgYmVjYXVzZSBJIHRoaW5rIGl0
J3MgcHJldHR5IG11Y2ggcmVkdW5kYW50LgoKCk15IHJlYXNvbmluZyB3YXMgdGhhdCBUaW5rZXIg
Qm9hcmQgM1MgaXMgYSBzdXBlcnNldCBvZiBUaW5rZXIgQm9hcmQgMyAKKGFkZGl0aW9uYWwgZU1N
QyBhbmQgaGVhZGVycykuCklmIHNvbWVkYXkgc29tZSBjb2RlIGlzIGFzc29jaWF0ZWQgdG8gdGhl
IGNvbXBhdGlibGUgc3RyaW5nIGZvciBUaW5rZXIgCjMsIHRoYW4gVGlua2VyIDNTIHNob3VsZCB1
c2UgaXQgdG9vLCByaWdodD8gVW5sZXNzIHdlIHdhbnQgdG8gaGF2ZSB0aGUgCnBvc3NpYmlsaXR5
IHRvIGlnbm9yZSBzb21lIFRpbmtlcjMgY29kZSBpbiBUaW5rZXIgM1MgZm9yIHNvbWUgcmVhc29u
LiAKVGhlbiwgaXQncyBiZXR0ZXIgaW5kZWVkIHRoYXQgM1MgZG9lc24ndCB1c2UgdGhlIFRpbmtl
ciAzIGNvbXBhdGlibGUgCnN0cmluZy4gSXQgc2VlbXMgd2UgaGF2ZSBtb3JlIG9wdGlvbnMgd2l0
aCB3aGF0IHlvdSdyZSBzdWdnZXN0aW5nLgoKV2hhdCBkbyB5b3UgdGhpbms/CgpUaGFua3MgYWdh
aW4sCkNoZWVycwpNaWNoYWVsLgoKLS0gCk1pY2hhZWwgT3BkZW5hY2tlcgpSb290IENvbW1pdApF
bWJlZGRlZCBMaW51eCBUcmFpbmluZyBhbmQgQ29uc3VsdGluZwpodHRwczovL3Jvb3Rjb21taXQu
Y29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
