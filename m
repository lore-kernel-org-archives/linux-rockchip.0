Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 538DCCF07CA
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHYYAfZEi3AAyk4ioV/u2FYkLcT8njvhxLf83U6VWhA=; b=r0A82V+mY9+FDV
	VPDa7sJrCRR/FZgbIhUP7Fe/G6BwT2MzXeETsrtAbCUZyQoO+mofaM9jq6XWP3H2m3c8ktj4SsaHg
	H4kuxfnzSNlsyJ1dlxhCgkG+vNrOWUwt8tXXCIblWhyADhrfaaiSxqp+pGo78RJTgL1FH2VV5SAMM
	uvB0gKHtlNJ9eCrDZt/5/CDF5kne/NSm5iC7tVv1NEdfyDhO6zoUj5oqTAi9i4cnjNMnYSiqjSxYa
	nT4wMVy/VosaAQe9Cvn51DgtWs5B9qi49nYmlKiujXaaWPtLF28XgQJWJBmoOsojcqO3tw4zKgJQV
	6TJhY4+FiXjbZnpNFoJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syooH-0000000C4Gy-0isZ;
	Thu, 10 Oct 2024 08:46:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synCK-0000000Bm1v-2Rg7
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Oct 2024 07:02:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=ofdLwK0e1Hu9/kT0oZI4oEAcowiTCCVHzyg8IA1AEgg=; b=BX2JWR5DpoK331zC5pcL34uOOu
	F96EdqZxxP/DPr6C6bVHQjFJSsXOkszX7OqL6N0pQgM0CnmTDpbrM+G/xeUnb7HrAY6FeosFELUEE
	ZbbheoC2BtkuMp97bTgnaeolZMsQ+ovSMzkVMpwQQrwK+u0W/PJERb6/ulm7cxjK2meWN0BbElTtr
	SH2+Iw5ZV2Xcl3GTxac3d3qPDA1AJBNegSnf/9/P8Sg49jzEkJav+8cLSJUPXhZXw3RjfdbSqo5JK
	PFTIg3Spf28lM3eSo2ecyUnWr6wCMqbhkWJkJagbEZPHZVvTd86og8GBwuGaHRn1Owhy90lJzgNsc
	xJwIkNnw==;
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1synCF-00000005DAG-3Zqm
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 07:02:55 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-7db908c9c83so382557a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 00:02:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728543768; x=1729148568; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ofdLwK0e1Hu9/kT0oZI4oEAcowiTCCVHzyg8IA1AEgg=;
        b=qdQFrBCQ6TiovUmhtbmi/x1SCmlkWqF+BmwW0M3uFvoYSKY6xU/CA23lUAAvpRPaey
         yWyZBaoQls6/lQXHuvqJR2P/2E0pPid1D+0kIBXMhidl+bl7Sp9jiKaU5Iyl5jIdxXl8
         RQMqu2QRDJvpkdknsbTZ/QxBAWYijkFHyal0H3eNxX86trFmYNuhCCTYeYWOqKAF9hXE
         v0Bpx8rPrM27UxdfUT1MTWX8JSknNgQxnkLw91/ngNA/1VP2RoPk6IGc77g8odbdrTZh
         FRTh2yjw/xNe6HqTcaSVTfe5SwVjafUllUrcKDuJo+RrfcptLYW0sWBatHJVY2qrfk1I
         j+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728543768; x=1729148568;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ofdLwK0e1Hu9/kT0oZI4oEAcowiTCCVHzyg8IA1AEgg=;
        b=gNW9MPpWSZt8FzAYApGu47dNO7gie9qY+v6YA6QVHiowhJcf4KNHnCNbDbo0qHnJSI
         FfA1Me4u6Zu8LmI5QATWywuJFdsAV/LBfEp983ZGAOB9S4peeQax4L4sj0Ly6zbECf+2
         O4BHAVkPz7lDysYnjirFXiVbvaP68YI6j74lMKUs3kItpEc4og0wDEkvoJg3esP0OYoq
         Meby0cmjERj1hT9IxSN6JAdz6oekrt0sCbbG7IvMni+8Hq0Yhf6yDEEtbJp4Xpbauv/s
         6uax6iMusvyWgIwzFuFeAGokjotUktUfUGMlwNCLbzZiITAdI9nhUJYIl77HGWInwISd
         Bj8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVXa80pg/LC2BZmhltxlrYOxatXbRjA/2FQP7XhhyJAXrU63KOA+ONdW+xWa8bzHeF8LCpMWZ5IHil3p4lRhg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzcOKAmRVJllnRjjRTll19EDRRhJtzf5CqZd9gHvj5UkuNdZDS7
	dJ2U0RMB77tCy+R6HAIcpSok9+D5yPO6cYQOpIkA8/pyoVOL1iiTlsgbXfkkyQ==
X-Google-Smtp-Source: AGHT+IGrFANFlLTmXxVWE2c2rxdYcnB/6DqzwfWYMOWliLnPwjikVFZe+VCkCjaG/hnETvmtC6uc9g==
X-Received: by 2002:a05:6a21:8ccc:b0:1cf:38cf:df92 with SMTP id adf61e73a8af0-1d8a3c1e1cemr9627803637.30.1728543767753;
        Thu, 10 Oct 2024 00:02:47 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2a9ea2b2sm456025b3a.3.2024.10.10.00.02.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:02:47 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:32:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 01/12] PCI: rockchip-ep: Fix address translation unit
 programming
Message-ID: <20241010070242.3i2f53kpdpr4fgl6@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-2-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-2-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_080252_114708_26004D7C 
X-CRM114-Status: GOOD (  26.30  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MDdQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhlIHJvY2tjaGlwIFBDSWUgZW5kcG9pbnQgY29udHJvbGxlciBoYW5kbGVzIFBD
SWUgdHJhbnNmZXJzIGFkZHJlc3Nlcwo+IGJ5IG1hc2tpbmcgdGhlIGxvd2VyIGJpdHMgb2YgdGhl
IHByb2dyYW1tZWQgUENJIGFkZHJlc3MgYW5kIHVzaW5nIHRoZQo+IHNhbWUgbnVtYmVyIG9mIGxv
d2VyIGJpdHMgbWFza2VkIGZyb20gdGhlIENQVSBhZGRyZXNzIHNwYWNlIHVzZWQgZm9yIHRoZQo+
IG1hcHBpbmcuIEZvciBhIFBDSSBtYXBwaW5nIG9mIDxzaXplPiBieXRlcyBzdGFydGluZyBmcm9t
IDxwY2lfYWRkcj4sCj4gdGhlIG51bWJlciBvZiBiaXRzIG1hc2tlZCBpcyB0aGUgbnVtYmVyIG9m
IGFkZHJlc3MgYml0cyBjaGFuZ2luZyBpbiB0aGUKPiBhZGRyZXNzIHJhbmdlIFtwY2lfYWRkci4u
cGNpX2FkZHIgKyBzaXplIC0gMV0uCj4gCj4gSG93ZXZlciwgcm9ja2NoaXBfcGNpZV9wcm9nX2Vw
X29iX2F0dSgpIGNhbGN1bGF0ZXMgbnVtX3Bhc3NfYml0cyBvbmx5Cj4gdXNpbmcgdGhlIHNpemUg
b2YgdGhlIG1hcHBpbmcsIHJlc3VsdGluZyBpbiBhbiBpbmNvcnJlY3QgbnVtYmVyIG9mIG1hc2sK
PiBiaXRzIGRlcGVuZGluZyBvbiB0aGUgdmFsdWUgb2YgdGhlIFBDSSBhZGRyZXNzIHRvIG1hcC4K
PiAKPiBGaXggdGhpcyBieSBpbnRyb2R1Y2luZyB0aGUgaGVscGVyIGZ1bmN0aW9uCj4gcm9ja2No
aXBfcGNpZV9lcF9vYl9hdHVfbnVtX2JpdHMoKSB0byBjb3JyZWN0bHkgY2FsY3VsYXRlIHRoZSBu
dW1iZXIgb2YKPiBtYXNrIGJpdHMgdG8gdXNlIHRvIHByb2dyYW0gdGhlIGFkZHJlc3MgdHJhbnNs
YXRpb24gdW5pdC4gVGhlIG51bWJlciBvZgo+IG1hc2sgYml0cyBpc2NhbGN1bGF0ZWQgZGVwZW5k
aW5nIG9uIGJvdGggdGhlIFBDSSBhZGRyZXNzIGFuZCBzaXplIG9mIHRoZQo+IG1hcHBpbmcsIGFu
ZCBjbGFtcGVkIGJldHdlZW4gOCBhbmQgMjAgdXNpbmcgdGhlIG1hY3Jvcwo+IFJPQ0tDSElQX1BD
SUVfQVRfTUlOX05VTV9CSVRTIGFuZCBST0NLQ0hJUF9QQ0lFX0FUX01BWF9OVU1fQklUUy4KPiAK
CkhvdyBkaWQgeW91IGVuZCB1cCB3aXRoIHRoZXNlIGNsYW1waW5nIHZhbHVlcz8gQXJlIHRoZSB2
YWx1ZXMgKGF0IGxlYXN0IE1BWAphcHBsaWNhYmxlIHRvIGFsbCBTb0NzKT8KCkJ0dywgaXQgd291
bGQgYmUgaGVscGZ1bCBpZiB5b3UgcmVmZXJlbmNlZCB0aGUgVFJNIGFuZCB0aGUgc2VjdGlvbiB0
aGF0CmRlc2NyaWJlcyB0aGUgb3V0Ym91bmQgbWFwcGluZy4gSSdtIGFibGUgdG8gZmluZCB0aGUg
cmVmZXJlbmNlOgoKUm9ja2NoaXAgUkszMzk5IFRSTSBWMS4zIFBhcnQyLCBTZWN0aW9uIDE3LjUu
NS4xLjEKCi0gTWFuaQoKPiBGaXhlczogY2Y1OTBiMDc4MzkxICgiUENJOiByb2NrY2hpcDogQWRk
IEVQIGRyaXZlciBmb3IgUm9ja2NoaXAgUENJZSBjb250cm9sbGVyIikKPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IERhbWllbiBMZSBNb2FsIDxkbGVtb2FsQGtl
cm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1l
cC5jIHwgMTUgKysrKysrKysrKystLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC5oICAgIHwgIDQgKysrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tj
aGlwLWVwLmMKPiBpbmRleCAxMzYyNzQ1MzM2NTYuLjI3YTdmZWJiNzRlMCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gQEAgLTYzLDE2ICs2MywyMyBA
QCBzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2NsZWFyX2VwX29iX2F0dShzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXAsCj4gIAkJCSAgICBST0NLQ0hJUF9QQ0lFX0FUX09CX1JFR0lPTl9E
RVNDMShyZWdpb24pKTsKPiAgfQo+ICAKPiArc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX29i
X2F0dV9udW1fYml0cyhzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAsCj4gKwkJCQkJICAg
IHU2NCBwY2lfYWRkciwgc2l6ZV90IHNpemUpCj4gK3sKPiArCWludCBudW1fcGFzc19iaXRzID0g
ZmxzNjQocGNpX2FkZHIgXiAocGNpX2FkZHIgKyBzaXplIC0gMSkpOwo+ICsKPiArCXJldHVybiBj
bGFtcChudW1fcGFzc19iaXRzLCBST0NLQ0hJUF9QQ0lFX0FUX01JTl9OVU1fQklUUywKPiArCQkg
ICAgIFJPQ0tDSElQX1BDSUVfQVRfTUFYX05VTV9CSVRTKTsKPiArfQo+ICsKPiAgc3RhdGljIHZv
aWQgcm9ja2NoaXBfcGNpZV9wcm9nX2VwX29iX2F0dShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9j
a2NoaXAsIHU4IGZuLAo+ICAJCQkJCSB1MzIgciwgdTY0IGNwdV9hZGRyLCB1NjQgcGNpX2FkZHIs
Cj4gIAkJCQkJIHNpemVfdCBzaXplKQo+ICB7Cj4gLQlpbnQgbnVtX3Bhc3NfYml0cyA9IGZsczY0
KHNpemUgLSAxKTsKPiArCWludCBudW1fcGFzc19iaXRzID0KPiArCQlyb2NrY2hpcF9wY2llX2Vw
X29iX2F0dV9udW1fYml0cyhyb2NrY2hpcCwgcGNpX2FkZHIsIHNpemUpOwo+ICAJdTMyIGFkZHIw
LCBhZGRyMSwgZGVzYzA7Cj4gIAo+IC0JaWYgKG51bV9wYXNzX2JpdHMgPCA4KQo+IC0JCW51bV9w
YXNzX2JpdHMgPSA4Owo+IC0KPiAgCWFkZHIwID0gKChudW1fcGFzc19iaXRzIC0gMSkgJiBQQ0lF
X0NPUkVfT0JfUkVHSU9OX0FERFIwX05VTV9CSVRTKSB8Cj4gIAkJKGxvd2VyXzMyX2JpdHMocGNp
X2FkZHIpICYgUENJRV9DT1JFX09CX1JFR0lPTl9BRERSMF9MT19BRERSKTsKPiAgCWFkZHIxID0g
dXBwZXJfMzJfYml0cyhwY2lfYWRkcik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC5oIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tj
aGlwLmgKPiBpbmRleCA2MTExZGUzNWY4NGMuLjE1ZWU5NDlmMjQ4NSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaAo+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gQEAgLTI0NSw2ICsyNDUsMTAgQEAKPiAgCShQ
Q0lFX0VQX1BGX0NPTkZJR19SRUdTX0JBU0UgKyAoKChmbikgPDwgMTIpICYgR0VOTUFTSygxOSwg
MTIpKSkKPiAgI2RlZmluZSBST0NLQ0hJUF9QQ0lFX0VQX1ZJUlRfRlVOQ19CQVNFKGZuKSBcCj4g
IAkoUENJRV9FUF9QRl9DT05GSUdfUkVHU19CQVNFICsgMHgxMDAwMCArICgoKGZuKSA8PCAxMikg
JiBHRU5NQVNLKDE5LCAxMikpKQo+ICsKPiArI2RlZmluZSBST0NLQ0hJUF9QQ0lFX0FUX01JTl9O
VU1fQklUUyAgOAo+ICsjZGVmaW5lIFJPQ0tDSElQX1BDSUVfQVRfTUFYX05VTV9CSVRTICAyMAo+
ICsKPiAgI2RlZmluZSBST0NLQ0hJUF9QQ0lFX0FUX0lCX0VQX0ZVTkNfQkFSX0FERFIwKGZuLCBi
YXIpIFwKPiAgCShQQ0lFX0NPUkVfQVhJX0NPTkZfQkFTRSArIDB4MDgyOCArIChmbikgKiAweDAw
NDAgKyAoYmFyKSAqIDB4MDAwOCkKPiAgI2RlZmluZSBST0NLQ0hJUF9QQ0lFX0FUX0lCX0VQX0ZV
TkNfQkFSX0FERFIxKGZuLCBiYXIpIFwKPiAtLSAKPiAyLjQ2LjIKPiAKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
