Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A73D2504E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 08:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LMNHbhalhUz7hCFB6HzDEI4SV8Onoce7uMOD0LHtR8=; b=j943jiCTk4BK4b
	bHrU5HMyFYRyShgfpfvNdE5mDjNcI9Gz2evQlGyvizWDKqCoJtOPX1vTzJ8S5JaXR8hX+OCNcjtvv
	/+qq+g3yNNvKyI/l7bsmJDqxShWg0CI6c8xD6JzcjXno/MYvnoFaUvbytNX2kkc0LWrYDKCQYH1CK
	0vB/OqT0sc9DSAm7IIESJEXsn4qh3htdGNAd/hCyZUz3Vod7a7JPS5BGRIV7r/+Q11j2j4tjRg2bE
	DpnpEZAKXTTscz+hJieOkNkjfmP4wbbOQXSS9GZYVZ1pGQ9EOfEJXp5+BXLEZC7w+bzvCEdh71sl7
	zCSGvKWvCRHh/nEVtoYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDFn-00000004zDp-45AP;
	Mon, 12 Jan 2026 08:26:23 +0000
Received: from mail-m49231.qiye.163.com ([45.254.49.231])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDFh-00000004zCa-3JmK
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Jan 2026 08:26:22 +0000
Received: from [172.16.12.163] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 304ebf58b;
	Mon, 12 Jan 2026 16:26:10 +0800 (GMT+08:00)
Message-ID: <143cd9e0-5920-4cce-b544-184aa62373a5@rock-chips.com>
Date: Mon, 12 Jan 2026 16:26:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: mfd: Add rk801 binding
To: Krzysztof Kozlowski <krzk@kernel.org>, lee@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251231030951.818-1-chenjh@rock-chips.com>
 <20251231030951.818-2-chenjh@rock-chips.com>
 <ab933944-6a5f-4418-92fd-e77997656861@kernel.org>
From: Joseph Chen <chenjh@rock-chips.com>
In-Reply-To: <ab933944-6a5f-4418-92fd-e77997656861@kernel.org>
X-HM-Tid: 0a9bb150079d09d2kunm95938ed44b0845
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk8fH1YdTUxCH00dHkgeTRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=RiTaAr66ETFxlGayKoGRlJ8opTlkrf89KROqI7PiR5wM4kisJ0OrgGPuNP+3MTfW/tE9+kszmO9nUedz97tBFCejuZc78m7KyGlEb6fkcyQNR3eQHl1X3Y7iPwjSJNwi0PI+31g+P9XEThjQ7Py2KZMDkHhzZgMLYDYImccCe88=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=9BosJ6TqXxeRAhIHFZ+GY3svJkC+gr/506vJlDBIfhs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_002618_314015_6D630871 
X-CRM114-Status: GOOD (  18.16  )
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

CuWcqCAyMDI1LzEyLzMxIDE1OjMzLCBLcnp5c3p0b2YgS296bG93c2tpIOWGmemBkzoKPiBPbiAz
MS8xMi8yMDI1IDA0OjA5LCBKb3NlcGggQ2hlbiB3cm90ZToKPj4gQWRkIERUIGJpbmRpbmcgZG9j
dW1lbnQgZm9yIFJvY2tjaGlwJ3MgUks4MDEgUE1JQwo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb3Nl
cGggQ2hlbiA8Y2hlbmpoQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPgo+IDEuIFBsZWFzZSB1c2Ug
c2NyaXB0cy9nZXRfbWFpbnRhaW5lcnMucGwgdG8gZ2V0IGEgbGlzdCBvZiBuZWNlc3NhcnkKPiBw
ZW9wbGUgYW5kIGxpc3RzIHRvIENDLiBJdCBtaWdodCBoYXBwZW4sIHRoYXQgY29tbWFuZCB3aGVu
IHJ1biBvbiBhbgo+IG9sZGVyIGtlcm5lbCwgZ2l2ZXMgeW91IG91dGRhdGVkIGVudHJpZXMuIFRo
ZXJlZm9yZSBwbGVhc2UgYmUgc3VyZSB5b3UKPiBiYXNlIHlvdXIgcGF0Y2hlcyBvbiByZWNlbnQg
TGludXgga2VybmVsLgo+Cj4gVG9vbHMgbGlrZSBiNCBvciBzY3JpcHRzL2dldF9tYWludGFpbmVy
LnBsIHByb3ZpZGUgeW91IHByb3BlciBsaXN0IG9mCj4gcGVvcGxlLCBzbyBmaXggeW91ciB3b3Jr
Zmxvdy4gVG9vbHMgbWlnaHQgYWxzbyBmYWlsIGlmIHlvdSB3b3JrIG9uIHNvbWUKPiBhbmNpZW50
IHRyZWUgKGRvbid0LCBpbnN0ZWFkIHVzZSBtYWlubGluZSkgb3Igd29yayBvbiBmb3JrIG9mIGtl
cm5lbAo+IChkb24ndCwgaW5zdGVhZCB1c2UgbWFpbmxpbmUpLiBKdXN0IHVzZSBiNCBhbmQgZXZl
cnl0aGluZyBzaG91bGQgYmUKPiBmaW5lLCBhbHRob3VnaCByZW1lbWJlciBhYm91dCBgYjQgcHJl
cCAtLWF1dG8tdG8tY2NgIGlmIHlvdSBhZGRlZCBuZXcKPiBwYXRjaGVzIHRvIHRoZSBwYXRjaHNl
dC4KPgo+IFlvdSBtaXNzZWQgYXQgbGVhc3QgZGV2aWNldHJlZSBsaXN0IChtYXliZSBtb3JlKSwg
c28gdGhpcyB3b24ndCBiZQo+IHRlc3RlZCBieSBhdXRvbWF0ZWQgdG9vbGluZy4gUGVyZm9ybWlu
ZyByZXZpZXcgb24gdW50ZXN0ZWQgY29kZSBtaWdodCBiZQo+IGEgd2FzdGUgb2YgdGltZS4KPgo+
IFBsZWFzZSBraW5kbHkgcmVzZW5kIGFuZCBpbmNsdWRlIGFsbCBuZWNlc3NhcnkgVG8vQ2MgZW50
cmllcy4KPgo+Cj4gMi4gTm9kZSBuYW1lcyBzaG91bGQgYmUgZ2VuZXJpYy4gU2VlIGFsc28gYW4g
ZXhwbGFuYXRpb24gYW5kIGxpc3Qgb2YKPiBleGFtcGxlcyAobm90IGV4aGF1c3RpdmUpIGluIERU
IHNwZWNpZmljYXRpb246Cj4gaHR0cHM6Ly9kZXZpY2V0cmVlLXNwZWNpZmljYXRpb24ucmVhZHRo
ZWRvY3MuaW8vZW4vbGF0ZXN0L2NoYXB0ZXIyLWRldmljZXRyZWUtYmFzaWNzLmh0bWwjZ2VuZXJp
Yy1uYW1lcy1yZWNvbW1lbmRhdGlvbgo+IElmIHlvdSBjYW5ub3QgZmluZCBhIG5hbWUgbWF0Y2hp
bmcgeW91ciBkZXZpY2UsIHBsZWFzZSBjaGVjayBpbiBrZXJuZWwKPiBzb3VyY2VzIGZvciBzaW1p
bGFyIGNhc2VzIG9yIHlvdSBjYW4gZ3JvdyB0aGUgc3BlYyAodmlhIHB1bGwgcmVxdWVzdCB0bwo+
IERUIHNwZWMgcmVwbykuCj4KPiAzLiBVbmRlcnNjb3JlIGlzIG5vdCBhbGxvd2VkIGluIG5vZGUg
bmFtZXMuIE5laXRoZXIgY2FwaXRhbCBsZXR0ZXJzLgo+IFBsZWFzZSByZWFkIERUUyBjb2Rpbmcg
c3R5bGUuCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KVGhhbmtzIGZvciB0aGUgcmV2
aWV3IGFuZCBhZHZpY2UgLiBJIHdpbGwgZml4IGFsbCB0aGVzZSBwcm9ibGVtcyBpbiB2Mi4KCi0t
IApCZXN0IHJlZ2FyZHMsCkpvc2VwaCBDaGVuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
