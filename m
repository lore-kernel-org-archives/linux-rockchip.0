Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFF23D4A5F4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jan 2026 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=55dpOzpZZ+5KFXk/8PDVYg5psRzlKgk0eicSFmqf9ms=; b=DcLafSfjQZfNNZ
	EC+P45fMiLJ0U4sw/69OcqPD+8phae/qPQA9Ik2Hwb0aOqfvlcl9zTXR43xu9YH8e62TJnj+GQ8xj
	RLsr4dRbZfRuuI/9GRvyFmVW3dw8Ir/3etjeJ2QMd3iFvRS4Bnr68o5Hjzyu2+TP2UoUsYWm0EFs0
	ymfDb49RLtYM7aBUP/7kTPnf0jQbjebvhySKYNlRfvNaJATNxHllczfyhmaxkIbbry/0Xw8CTAnBS
	leI4Qj2b6bZEezKYot6HljP+/MOKhALjKyWWQOFTwHx1+KoOwRvq4Y0nknfSokSaM3TjuRkogaJyb
	hXLt6YrmZ4N1BAkvA12A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhSow-000000006n5-0Rsj;
	Sun, 18 Jan 2026 13:27:58 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhSor-000000006k9-380Q;
	Sun, 18 Jan 2026 13:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Message-ID:Date:MIME-Version:Subject:To:From:
	Content-Type; bh=j9NWfNLMXfGmHPrhiqbEiqJKeYZj3TN2WzPDL/gZWhI=;
	b=YrYP8roGqofgIqAVcaNc940Qub9UHHLMiANIrDKfmbiUMqFshjCXo3/Medm7Td
	y7kWOIYVzjIUkgfbE4gXUTVDFDaKEgFuitq+lyWf8YQkeWrznysDRaInK2paKuIH
	D9XNUmIqDsXRkjNgOa2ZFFZsdmT5D4AL8e5dZmqCrwyl4=
Received: from [IPV6:240e:b8f:927e:1000:e94b:3b22:e2ce:7986] (unknown [])
	by gzsmtp3 (Coremail) with SMTP id PigvCgDnuOCV32xpJgqjLw--.141S2;
	Sun, 18 Jan 2026 21:26:48 +0800 (CST)
Message-ID: <1ff0d069-14f0-439a-afca-4ecc1b569834@163.com>
Date: Sun, 18 Jan 2026 21:26:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/2] PCI: Configure Root Port MPS during host probing
To: Ricardo Pardini <ricardo@pardini.net>, lpieralisi@kernel.org,
 kwilczynski@kernel.org, bhelgaas@google.com, helgaas@kernel.org,
 heiko@sntech.de, mani@kernel.org, yue.wang@Amlogic.com
Cc: pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
 jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
 martin.blumenstingl@googlemail.com, cassel@kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20251127170908.14850-1-18255117159@163.com>
 <f5322597-c6dd-494a-863b-2caf24363f2d@pardini.net>
Content-Language: en-US
From: Hans Zhang <18255117159@163.com>
In-Reply-To: <f5322597-c6dd-494a-863b-2caf24363f2d@pardini.net>
X-CM-TRANSID: PigvCgDnuOCV32xpJgqjLw--.141S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxZF1UAr48WFyktF4rtr13Jwb_yoW5Xr18pF
	WYganIyFs3GFyfC34qqw4kCFW5Za4kKF43GryvqwnxJan8uF1DWFy8tws5twnFgrn3A3WS
	vF1qg3WxZwn0vaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UxPEhUUUUU=
X-Originating-IP: [240e:b8f:927e:1000:e94b:3b22:e2ce:7986]
X-CM-SenderInfo: rpryjkyvrrlimvzbiqqrwthudrp/xtbCwxiTN2ls35hqSAAA3f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_052754_440160_A75C0691 
X-CRM114-Status: GOOD (  14.02  )
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

CgpPbiAyMDI1LzEyLzMxIDEwOjU4LCBSaWNhcmRvIFBhcmRpbmkgd3JvdGU6Cj4gT24gMjcvMTEv
MjAyNSAxODowOSwgSGFucyBaaGFuZyB3cm90ZToKPj4gQ3VycmVudCBQQ0llIGluaXRpYWxpemF0
aW9uIGV4aGliaXRzIGEga2V5IG9wdGltaXphdGlvbiBnYXA6IFJvb3QgUG9ydHMKPj4gbWF5IG9w
ZXJhdGUgd2l0aCBub24tb3B0aW1hbCBNYXhpbXVtIFBheWxvYWQgU2l6ZSAoTVBTKSBzZXR0aW5n
cy4gV2hpbGUKPj4gZG93bnN0cmVhbSBkZXZpY2UgY29uZmlndXJhdGlvbiBpcyBoYW5kbGVkIGR1
cmluZyBidXMgZW51bWVyYXRpb24sIFJvb3QKPj4gUG9ydCBNUFMgdmFsdWVzIGluaGVyaXRlZCBm
cm9tIGZpcm13YXJlIG9yIGhhcmR3YXJlIGRlZmF1bHRzIG9mdGVuIGZhaWwKPj4gdG8gdXRpbGl6
ZSB0aGUgZnVsbCBjYXBhYmlsaXRpZXMgc3VwcG9ydGVkIGJ5IGNvbnRyb2xsZXIgaGFyZHdhcmUu
IFRoaXMKPj4gcmVzdWx0cyBpbiBzdWJvcHRpbWFsIGRhdGEgdHJhbnNmZXIgZWZmaWNpZW5jeSB0
aHJvdWdob3V0IHRoZSBQQ0llCj4+IGhpZXJhcmNoeS4KPj4KPj4gVGhpcyBwYXRjaCBzZXJpZXMg
YWRkcmVzc2VzIHRoaXMgYnk6Cj4+Cj4+IDEuIENvcmUgUENJIGVuaGFuY2VtZW50IChQYXRjaCAx
KToKPj4gLSBQcm9hY3RpdmVseSBjb25maWd1cmVzIFJvb3QgUG9ydCBNUFMgZHVyaW5nIGhvc3Qg
Y29udHJvbGxlciBwcm9iaW5nCj4+IC0gU2V0cyBpbml0aWFsIE1QUyB0byBoYXJkd2FyZSBtYXhp
bXVtICgxMjggPDwgZGV2LT5wY2llX21wc3MpCj4+IC0gQ29uZGl0aW9uYWwgb24gUENJZSBidXMg
dHVuaW5nIGJlaW5nIGVuYWJsZWQgKFBDSUVfQlVTX1RVTkVfT0ZGIHVuc2V0KQo+PiDCoMKgIGFu
ZCBub3QgaW4gUENJRV9CVVNfUEVFUjJQRUVSIG1vZGUgKHdoaWNoIHJlcXVpcmVzIGRlZmF1bHQg
MTI4IGJ5dGVzKQo+PiAtIE1haW50YWlucyBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHZpYSBQQ0lF
X0JVU19UVU5FX09GRiBjaGVjawo+PiAtIFByZXNlcnZlcyBzdGFuZGFyZCBNUFMgbmVnb3RpYXRp
b24gZHVyaW5nIGRvd25zdHJlYW0gZW51bWVyYXRpb24KPj4KPj4gMi4gRHJpdmVyIGNsZWFudXAg
KFBhdGNoIDIpOgo+PiAtIFJlbW92ZXMgcmVkdW5kYW50IE1QUyBjb25maWd1cmF0aW9uIGZyb20g
TWVzb24gUENJZSBjb250cm9sbGVyIGRyaXZlcgo+PiAtIEZ1bmN0aW9uYWxpdHkgaXMgbm93IGNl
bnRyYWxpemVkIGluIFBDSSBjb3JlCj4+IC0gU2ltcGxpZmllcyBkcml2ZXIgbWFpbnRlbmFuY2Ug
bG9uZy10ZXJtCj4+Cj4+IC0tLQo+PiBDaGFuZ2VzIGluIHY3Ogo+PiAtIEV4Y2x1ZGUgUENJRV9C
VVNfUEVFUjJQRUVSIG1vZGUgZnJvbSBSb290IFBvcnQgTVBTIGNvbmZpZ3VyYXRpb24KPj4gLSBS
ZW1vdmUgcmVkdW5kYW50IGNoZWNrIGZvciB1cHN0cmVhbSBicmlkZ2UgKFJvb3QgUG9ydHMgZG9u
J3QgaGF2ZSBvbmUpCj4+IC0gSW1wcm92ZSBjb21taXQgbWVzc2FnZSBhbmQgY29kZSBjb21tZW50
cyBhcyBwZXIgQmpvcm4uCj4gSGkgSGFucywKPiAKPiBJJ3ZlIHRlc3RlZCBvbiBhbiBPZHJvaWQt
SEM0IHdpdGggYSBTQVRBIFNTRCAodmlhIGFuIEFTTTEwNjEpIGJ5IAo+IGFwcGx5aW5nIHlvdXIg
djcgb24gdjYuMTktcmMzICsgQmpvcm4ncyAyMDI1MTEwMzIyMTkzMC4xODMxMzc2LTEtIAo+IGhl
bGdhYXNAa2VybmVsLm9yZyAoIlBDSTogbWVzb246IFJlbW92ZSBtZXNvbl9wY2llX2xpbmtfdXAo
KSB0aW1lb3V0LCAKPiBtZXNzYWdlLCBzcGVlZCBjaGVjayIgd2hpY2ggaXMgcmVxdWlyZWQgdG8g
Z2V0IHRoZSBtZXNvbiBQQ0llIHRvIHdvcmsgYXQgCj4gYWxsIHNpbmNlIDYuMTgpLiBXaXRoIHRo
YXQgc2V0dXAgSSBnZXQ6Cj4gCj4gIyBoZHBhcm0gLS1kaXJlY3QgLXQgL2Rldi9zZGEKPiAgwqBU
aW1pbmcgT19ESVJFQ1QgZGlzayByZWFkczogODMyIE1CIGluwqAgMy4wMCBzZWNvbmRzID0gMjc3
LjMzIE1CL3NlYwo+IAo+IEkndmUgYW4gaWRlbnRpY2FsIG1hY2hpbmUsIHdpdGggYSBzaW1pbGFy
IGRpc2sgKGV2ZW4gc2xpZ2h0bHkgZmFzdGVyLCBvbiAKPiBwYXBlciksIHJ1bm5pbmcgcGxhaW4g
Ni4xMi55IGFuZCB0aGVyZSBJIGdldDoKPiAKPiAjIGhkcGFybSAtLWRpcmVjdCAtdCAvZGV2L3Nk
YQo+ICDCoFRpbWluZyBPX0RJUkVDVCBkaXNrIHJlYWRzOiA3NjQgTUIgaW7CoCAzLjAwIHNlY29u
ZHMgPSAyNTQuMjYgTUIvc2VjCj4gCj4gSSByZXBlYXRlZCB0aG9zZSBhIGZldyB0aW1lcywgbm90
IHZlcnkgc2NpZW50aWZpYywgSSBrbm93OyBidXQgYW55d2F5Ogo+IAo+IFRlc3RlZC1ieTogUmlj
YXJkbyBQYXJkaW5pIDxyaWNhcmRvQHBhcmRpbmkubmV0PiAjIG9uIE9kcm9pZC1IQzQKPiAKPiBJ
J3ZlIGFsc28gZmVlZGJhY2sgZnJvbSBhbm90aGVyIHVzZXIgcnVubmluZyB3aXRoIHRoaXMgc2Vy
aWVzIHdpdGggCj4gc3VjY2VzcyBvbiBhIGRpZmZlcmVudCBtZXNvbiBQQ0llIG1hY2hpbmUsIHdp
bGwgYXNrIHRoZW0gdG8gVEIgYXMgd2VsbDsgCj4gdGhleSBoYWQgcmVwb3J0ZWQgYSBzaWduaWZp
Y2FudCBkcm9wIGluIHBlcmZvcm1hbmNlIHNpbmNlIHY2LjE4IHdpdGhvdXQgCj4gdGhpcy4KSGks
CgpUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHRlc3QuIExldCdzIHdhaXQgZm9yIEJqb3Ju
J3MgcmVwbHkuCgpCZXN0IHJlZ2FyZHMsCkhhbnMKCj4gCj4gVGhhbmtzLAo+IFJpY2FyZG8KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
