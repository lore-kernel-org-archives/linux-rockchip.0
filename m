Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10D0AD68BC2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Dec 2025 23:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0dQ4qmK28/TQ6laUXqyQW6ax/cLjAhIimuXAJmS3Zs=; b=v3Spu1yIHuH68M
	snZAEj0OGJKQmy6KK/QThHmnv2XsDhS/cbTadIE8R4PGa8vCREBy5m15IIHycR3ad7ALUvTZMWddw
	c3O+4oSdOODrc8RMIT9iBoXPSUy6ch4Myg/3kmAmhiyND1cE/GIEgzCWsCCZK2eriBXh63MvjLgcM
	jGkrEY3OkNcOtmNvNfn1hoWiO6OQZVIySLSRD2Ty9nZ4VEGzurrxrHeeAtxyqamZJiloh/SC5fYcB
	WImkAdiQ8jOrRQJX5kPW3tTzr+4vmshUBazRVQ0xoxjC0ZhafeVDQx0tPzKbSgC55M461t2O/kVzq
	0zhTJC9hsUo5Z2BGsU4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW0zc-00000007Xr5-2Pkg;
	Wed, 17 Dec 2025 23:31:40 +0000
Received: from m1-out-mua-15.websupport.sk ([2a00:4b40:aaaa:2101:45:13:137:24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW0zZ-00000007XqY-0UW1;
	Wed, 17 Dec 2025 23:31:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=probably.group;
	s=mail; t=1766014290;
	bh=N2mq0Gx7GZeTynP2HqywdZDBMJbkGwWK5LlhAShzLmQ=;
	h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
	b=aH9uNQNkP+QzUUguji0xI1K+VchucuyeSDKy/54IGGTCPJC2kPIDnxalJ+VxlrCDy
	 1UR5LDchY6sRTknWwHKo9UKeCM8BSqkV5doFIsRvsd0Zqp9UeV3eOkUv2bR67bQrim
	 cv5+ObQZntiuEtbW4yeGhw3Lax1q6VADwJp1LxDuX5P/NnhJsrLyp4d7HYAwd+pdp7
	 I0mM8VOsOLFD5HivqkwVN8fKz1D3Ivp9qvnfdsSh2pxKtKXHh83splYpjoZpfN0mcG
	 bymuITuTmDGwXf/PdwTU8MqAtdIrFgQ3ElS5bth7/+g4FSGrPf0DLSeFhwaqs40c/u
	 OB0I/7mjG4UuQ==
Received: from m1-u6-ing.websupport.sk (unknown [10.30.6.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by m1-out-mua-15.websupport.sk (Postfix) with ESMTPS id 4dWqnG2CSGz1Md5;
	Thu, 18 Dec 2025 00:31:30 +0100 (CET)
X-Authenticated-Sender: mh@probably.group
Authentication-Results: m1-u6-ing.websupport.sk;
	auth=pass smtp.auth=mh@probably.group smtp.mailfrom=mh@probably.group
Received: from smtpclient.apple (unknown [109.164.127.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mh@probably.group)
	by m1-u6-ing.websupport.sk (Postfix) with ESMTPSA id 4dWqnF0STBzdMvK;
	Thu, 18 Dec 2025 00:31:28 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.300.41.1.7\))
Subject: Re: [PATCH] arm64: dts: rockchip: enable dual 2.5GbE on Rock 5T
From: =?utf-8?B?Ik1hcnRpbiBIb2xvdnNrw70gKFByb2JhYmx5IE5vdGhpbmcgcy5yLm8u?=
 =?utf-8?B?KSI=?= <mh@probably.group>
In-Reply-To: <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
Date: Thu, 18 Dec 2025 00:31:18 +0100
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-Id: <7A2ADADA-3FD8-4AAE-B7D8-9137399FBE6E@probably.group>
References: <96516D1F-9787-47FE-A67E-4745D11D9207@probably.group>
 <176580661874.1441131.12947657582985645446.b4-ty@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
X-Mailer: Apple Mail (2.3864.300.41.1.7)
X-Out-Spamd-Result: default: False [0.40 / 1000.00];
	MV_CASE(0.50)[];
	MIME_GOOD(-0.10)[text/plain];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[dt];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:44489, ipnet:109.164.0.0/17, country:CZ];
	ARC_NA(0.00)[];
	RCVD_COUNT_ZERO(0.00)[0];
	RCPT_COUNT_SEVEN(0.00)[8];
	HAS_X_AS(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+]
X-Out-Rspamd-Queue-Id: 4dWqnF0STBzdMvK
X-Rspamd-Action: no action
X-Out-Rspamd-Server: m1-rspamd-out-5
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) https://www.eleven.de
X-purgate: This mail is considered clean (visit https://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 1109
X-purgate-ID: 155908::1766014290-C0FE6043-56D75A65/0/0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_153137_438291_CE6ECCDF 
X-CRM114-Status: GOOD (  12.88  )
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

UGVyZmVjdCwgdGhhbmtzIGEgbG90IQoKPiBPbiAxNS4gMTIuIDIwMjUsIGF0IDE0OjUxLCBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiAKPiAKPiBPbiBGcmksIDEyIERl
YyAyMDI1IDE3OjIzOjM1ICswMTAwLCAiTWFydGluIEhvbG92c2vDvSAoUHJvYmFibHkgTm90aGlu
ZyBzLnIuby4gKSIgd3JvdGU6Cj4+IFRoZSBSYWR4YSBSb2NrIDVUIGJvYXJkIGZlYXR1cmVzIHR3
byBSVEw4MTI1QiAyLjVHYkUgRXRoZXJuZXQgY29udHJvbGxlcnMKPj4gY29ubmVjdGVkIHZpYSBQ
Q0llIGxhbmVzIHBjaWUyeDFsMCAoZmUxNzAwMDApIGFuZCBwY2llMngxbDIgKGZlMTkwMDAwKS4K
Pj4gQ3VycmVudGx5IG9ubHkgb25lIGludGVyZmFjZSBpcyBmdW5jdGlvbmFsIGJlY2F1c2UgdGhl
IFBDSWUgY29udHJvbGxlcgo+PiBub2RlcyBsYWNrIHRoZSBuZWNlc3NhcnkgcmVzZXQgR1BJTyBj
b25maWd1cmF0aW9uLgo+PiAKPj4gV2l0aG91dCB0aGUgcmVzZXQtZ3Bpb3MgcHJvcGVydHksIHRo
ZSBSVEw4MTI1QiBQSFlzIHJlbWFpbiBpbiByZXNldCBzdGF0ZQo+PiBhbmQgYXJlIG5vdCBlbnVt
ZXJhdGVkIGJ5IHRoZSBQQ0llIGJ1cy4gVGhpcyByZXN1bHRzIGluIG9ubHkgb25lIEV0aGVybmV0
Cj4+IGludGVyZmFjZSBiZWluZyBkZXRlY3RlZCwgb3Igbm9uZSBhdCBhbGwgZGVwZW5kaW5nIG9u
IFUtQm9vdCBpbml0aWFsaXphdGlvbi4KPj4gCj4+IFsuLi5dCj4gCj4gQXBwbGllZCwgdGhhbmtz
IQo+IAo+IFsxLzFdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgZHVhbCAyLjVHYkUgb24g
Um9jayA1VAo+ICAgICAgY29tbWl0OiA5NjAyOWZmZWNjZjY3N2IxZTRiYWE5OGYzMDkwOWE4M2E0
ODViNmQ3Cj4gCj4gSSd2ZSByZXNvcnRlZCBib3RoIHRoZSBwY2llIHBoYW5kbGVzIGFzIHdlbGwg
YXMgdGhlIHBpbmN0cmwgZW50cmllcwo+IHBjaWUyLTAgY29tZXMgYmVmb3JlIHBjaWUyLTEgZXRj
IDotKSAuCj4gCj4gQmVzdCByZWdhcmRzLAo+IC0tIAo+IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
