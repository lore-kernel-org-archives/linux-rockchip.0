Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEE40C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 17:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9juVqRZgPGJ8dfHPYj1uMMbCUTJ8DLUQ8XmC1mxr9sI=; b=2NzbNjIcX8gRMo
	gA0vrQyUojfXpiuTzBi5sajrQwYGvh6Eh95q+aDpT+aMfEobaHRoaZAyC6x+WgD8T4LikkXTMfLXF
	79W3ljXiMQPrlzSCuyeSIPTq1RBz/g7QstAVXPpaEJCq5mXi5FgKlCVVYNvDaTyhmuBu6ZnUzyiA1
	R0Q7NY8e2tCsZmMqJzMOJzmbtn7/ERht0+UvjYNgCVzn0WXcuuLmw+vA+VBoIP/EGhKlu7sNI01TO
	KfkK1lg8DTGANWAP+M3vcGlwnbHndPl9/BBXRh3+bbP3ynpv80wzw9EpVDW0+/g7ZU1+/BkiHVPGV
	QjNYKwFZT0ZFCxbjdOHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDRNJ-00000004Q4H-3HFY;
	Fri, 09 May 2025 17:19:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDPOu-000000042qM-13bw;
	Fri, 09 May 2025 15:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=b08n98Unj3RXD1x5xIwGhemBZssytc919TmwiiYZy+s=; b=Xrnt6M6Za2VeS267+y4ojCxHxr
	py/RBMo7NCKATjxxO1eXfWb94Kpe/E1n04rJA2Hs1riZZxCKRs/9SNSMMwwoX5yaxBu+TXZb2mSTH
	sXn13t/GOhZ7shQSdeodBbM6xf6wbNlOm5xzj8s6YtE6AXn34OMO87iavQoF/467zcoSFbJTib3oE
	LMbhHpUGNY/ezfXd7uD5KB/SsGM7QzRGkTwLAJeXVs2z/3vsoMXmDxP6iaSd+Vk0oqNV/faZo0lsP
	70RQllGYrQIyTVFqHm5bLHssTK7NSe+W+P4isdalSXoU40PPseF7S0DiFHu3hzU/ilXG9lIS53EcD
	FcEaycog==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDPOh-0007hm-QA; Fri, 09 May 2025 17:12:23 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, kernel@collabora.com,
 FUKAUMI Naoki <naoki@radxa.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: add ROCK 5B+ support
Date: Fri, 09 May 2025 17:12:22 +0200
Message-ID: <1893373.atdPhlSkOF@diego>
In-Reply-To: <174679985287.3369051.14227124355079340433.robh@kernel.org>
References: <20250508-rock5bp-for-upstream-v2-0-677033cc1ac2@kernel.org>
 <174679985287.3369051.14227124355079340433.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_081236_310871_A7050777 
X-CRM114-Status: GOOD (  29.61  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgOS4gTWFpIDIwMjUsIDE2OjE3OjAyIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgUm9iIEhlcnJpbmcgKEFybSk6Cj4gCj4gT24gVGh1LCAwOCBNYXkgMjAy
NSAxOTo0ODo0OSArMDIwMCwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4gPiBUaGlzIHNlcmll
cyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBST0NLIDVCKywgd2hpY2ggKGFzIHRoZSBuYW1lIHN1Z2dl
c3RzKQo+ID4gaXMgYW4gaW1wcm92ZWQgdmVyc2lvbiBvZiB0aGUgUk9DSyA1Qi4gSXQgYWxzbyBh
ZGRzIGluaXRpYWwgVVNCLUMKPiA+IHN1cHBvcnQgZm9yIGJvdGggdGhlIFJPQ0sgNUIgYW5kIHRo
ZSA1QisuCj4gPiAKPiA+IENoYW5nZXMgaW4gUEFUQ0h2MjoKPiA+ICAtIExpbmsgdG8gdjE6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNTAzMjQtcm9jazVicC1mb3ItdXBzdHJlYW0tdjEt
MC02MjE3ZWRmMTViMTlAa2VybmVsLm9yZwo+ID4gIC0gUmVwbGFjZWQgRFQgYmluZGluZyBwYXRj
aCB3aXRoIHRoZSB2ZXJzaW9uIGZyb20gTkFPS0kKPiA+ICAtIERyb3BwZWQgdW51c2VkIHBpbmN0
cmwgZm9yIHZjYzV2MF9ob3N0X2VuIGZyb20gdGhlIHNoYXJlZCBEVAo+ID4gIC0gTW92ZWQgVVNC
LUMgU0JVIERDIHBpbnMgdG8gYm9hcmQgc3BlY2lmaWMgZmlsZXMsIHNpbmNlIHRoZXkgZGlmZmVy
Cj4gPiAgICBiZXR3ZWVuIFJvY2sgNUIgYW5kIFJvY2sgNUIrCj4gPiAgLSBBZGRlZCBwaW5tdXgg
Zm9yIFNCVSBEQyBwaW5zCj4gPiAgLSBSZWJhc2VkIHRvIGxhdGVzdCB2ZXJzaW9uIG9mIEhlaWtv
J3MgZm9yLW5leHQgYnJhbmNoCj4gPiAgLSBEaXNhYmxlIFVTQi1DIG9uIFJvY2sgNUIgZm9yIG5v
dwo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gRlVLQVVNSSBOYW9raSAoMSk6Cj4gPiAg
ICAgICBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIFJhZHhhIFJPQ0sgNUIrCj4gPiAK
PiA+IFNlYmFzdGlhbiBSZWljaGVsICg0KToKPiA+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlw
OiBtb3ZlIHJvY2sgNWIgdG8gaW5jbHVkZSBmaWxlCj4gPiAgICAgICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogbW92ZSByb2NrIDViIHRvIGluY2x1ZGUgZmlsZQo+ID4gICAgICAgYXJtNjQ6IGR0czog
cm9ja2NoaXA6IGFkZCBSb2NrIDVCKwo+ID4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFk
ZCBVU0ItQyBzdXBwb3J0IGZvciBST0NLIDVCKwo+ID4gCj4gPiAgLi4uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgICAgICAgICAgfCAgICA1ICsKPiA+ICBhcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICAgICB8ICAgIDEgKwo+ID4gIC4u
Li9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi1wbHVzLmR0cyAgICAgIHwgIDEyOSAr
KysKPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyAg
ICB8ICA5NzAgKy0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtcm9jay01Yi5kdHNpICAgfCAxMDgyICsrKysrKysrKysrKysrKysrKysrCj4g
PiAgNSBmaWxlcyBjaGFuZ2VkLCAxMjQ3IGluc2VydGlvbnMoKyksIDk0MCBkZWxldGlvbnMoLSkK
PiA+IC0tLQo+ID4gYmFzZS1jb21taXQ6IGI3Y2FlYjk1NDVkYjI1NjQ5ZWRhMzZjZTU5M2I3MGNj
MmFhODA0YWIKPiA+IGNoYW5nZS1pZDogMjAyNTAzMjQtcm9jazVicC1mb3ItdXBzdHJlYW0tZmQ4
NWIwMGI1OTNiCj4gPiAKPiA+IEJlc3QgcmVnYXJkcywKPiA+IC0tCj4gPiBTZWJhc3RpYW4gUmVp
Y2hlbCA8c3JlQGtlcm5lbC5vcmc+Cj4gPiAKPiA+IAo+ID4gCj4gCj4gCj4gTXkgYm90IGZvdW5k
IG5ldyBEVEIgd2FybmluZ3Mgb24gdGhlIC5kdHMgZmlsZXMgYWRkZWQgb3IgY2hhbmdlZCBpbiB0
aGlzCj4gc2VyaWVzLgo+IAo+IFNvbWUgd2FybmluZ3MgbWF5IGJlIGZyb20gYW4gZXhpc3Rpbmcg
U29DIC5kdHNpLiBPciBwZXJoYXBzIHRoZSB3YXJuaW5ncwo+IGFyZSBmaXhlZCBieSBhbm90aGVy
IHNlcmllcy4gVWx0aW1hdGVseSwgaXQgaXMgdXAgdG8gdGhlIHBsYXRmb3JtCj4gbWFpbnRhaW5l
ciB3aGV0aGVyIHRoZXNlIHdhcm5pbmdzIGFyZSBhY2NlcHRhYmxlIG9yIG5vdC4gTm8gbmVlZCB0
byByZXBseQo+IHVubGVzcyB0aGUgcGxhdGZvcm0gbWFpbnRhaW5lciBoYXMgY29tbWVudHMuCj4g
Cj4gSWYgeW91IGFscmVhZHkgcmFuIERUIGNoZWNrcyBhbmQgZGlkbid0IHNlZSB0aGVzZSBlcnJv
cihzKSwgdGhlbgo+IG1ha2Ugc3VyZSBkdC1zY2hlbWEgaXMgdXAgdG8gZGF0ZToKPiAKPiAgIHBp
cDMgaW5zdGFsbCBkdHNjaGVtYSAtLXVwZ3JhZGUKPiAKPiAKPiBUaGlzIHBhdGNoIHNlcmllcyB3
YXMgYXBwbGllZCAodXNpbmcgYjQpIHRvIGJhc2U6Cj4gIEJhc2U6IGJhc2UtY29tbWl0IGI3Y2Fl
Yjk1NDVkYjI1NjQ5ZWRhMzZjZTU5M2I3MGNjMmFhODA0YWIgbm90IGtub3duLCBpZ25vcmluZwo+
ICBCYXNlOiBhdHRlbXB0aW5nIHRvIGd1ZXNzIGJhc2UtY29tbWl0Li4uCj4gIEJhc2U6IHRhZ3Mv
djYuMTUtcmMxLTQwLWc0MjVhZjkxYzU4MDIgKGJlc3QgZ3Vlc3MsIDIvMyBibG9icyBtYXRjaGVk
KQo+IAo+IElmIHRoaXMgaXMgbm90IHRoZSBjb3JyZWN0IGJhc2UsIHBsZWFzZSBhZGQgJ2Jhc2Ut
Y29tbWl0JyB0YWcKPiAob3IgdXNlIGI0IHdoaWNoIGRvZXMgdGhpcyBhdXRvbWF0aWNhbGx5KQo+
IAo+IE5ldyB3YXJuaW5ncyBydW5uaW5nICdtYWtlIENIRUNLX0RUQlM9eSBmb3IgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC8nIGZvciAyMDI1MDUwOC1yb2NrNWJwLWZvci11cHN0cmVhbS12
Mi0wLTY3NzAzM2NjMWFjMkBrZXJuZWwub3JnOgo+IAo+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LXJvY2stNWItcGx1cy5kdGI6IC9lZHBAZmRlYzAwMDA6IGZhaWxlZCB0byBt
YXRjaCBhbnkgc2NoZW1hIHdpdGggY29tcGF0aWJsZTogWydyb2NrY2hpcCxyazM1ODgtZWRwJ10K
PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLXBsdXMuZHRiOiAv
ZWRwQGZkZWQwMDAwOiBmYWlsZWQgdG8gbWF0Y2ggYW55IHNjaGVtYSB3aXRoIGNvbXBhdGlibGU6
IFsncm9ja2NoaXAscmszNTg4LWVkcCddCgpUaGlzIHNob3VsZCBiZSBhbHJlYWR5IGZpeGVkIGJ5
IHRoZSByazM1ODgtZWRwIGFkZGl0aW9uIGluIGxpbnV4LW5leHQ6Cmh0dHBzOi8vZ2l0Lmtlcm5l
bC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgtbmV4dC5naXQvY29tbWl0
Lz9pZD1mODU1MTQ2MjYzYjE0YWJhZGQ4ZDViZDBlMjgwZTU0ZmJhYjNiZDE4CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
