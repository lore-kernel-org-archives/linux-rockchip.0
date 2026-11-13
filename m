Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A707E606A333
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 19:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=emYTh1p2;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=fVZBrCXJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GDgWkIKeFFSPTsd1aLRNnI6I+MOuGleetoZiH+7xMiQ=; b=emYTh1p2QTWyFsb0rXTt4f5y6k
	odFnVe63MXvCdPWj7uDHGUtuew+Pav7JMJfChreRjhKfyjFw9z1UpZ7IjhjCboW8fn0orwVbQYAKK
	AjlHq/uqKiRe23ndAZUX5O9kTNRhWPaek2CLxPSdKhQhVGlvgeaEUTJoShsMBKVY6nM/QYywARZFB
	J73CXHgpfCtbbnSVQ7rK0TCNR5lt3E9f3eWsYhdTQS+WtlAftGkBBOETsqapBNTPmhVmM/EgzXL52
	uEVQXZ9wgU588omi0+4aDNr8YjqkOFa013NC3zXQ95X4I6NFxUjIZRBe9ALJGSCtVcwtL1Us0BJVu
	JZV9ebOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRx1T-0000000EC9u-1nDS;
	Fri, 13 Nov 2026 19:33:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRx1O-0000000EC82-3Yxh;
	Fri, 13 Nov 2026 19:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=3cvVB8oLNqlQFPwFKMUuhi1X/vDmZWiN//JjPAVvjJ0=; b=fVZBrCXJTi5Hl1cAhnGXFJnaRu
	uMXsLtdE1sDHiPTxTusPdRssUAoUOYtakcLkZ/LWCPzewerEA1H1XO/EZ/1+lY8yrLmMxmnww+xHq
	TZhwZ4BjqUxm8JjFT1Hh3b49h1JZt9p7NQ94uXiguQuVByGvEoGY5VDTSNns4d+IwCt+VW1ca3SkI
	Axbdal++FeVlMIzagivufXUhlzcz4hKODHuTW4TjeORRK2WMgIdicX2nI4vrJdtK/sV4UNs1YY+sV
	7FFhJSFN9utZgqJg85ShL++yfXstm5Vo43AtuVyoyAEbPQkr2OLkSFMbocetyE+yxZ1lBA1TNVFRW
	w48brsbA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Tim Surber <me@timsurber.de>
Cc: Tim Surber <me@timsurber.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Valentin =?UTF-8?B?SMSDbG9pdQ==?= <valentin.haloiu@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: fix HDMI RX 5V detection pin on CM3588
 NAS
Date: Fri, 13 Nov 2026 20:33:09 +0100
Message-ID: <7ONBekS7Tj-N3VFFry-6aA@sntech.de>
In-Reply-To: <20261111210059.3489502-2-me@timsurber.de>
References: <20261111210059.3489502-1-me@timsurber.de>
 <20261111210059.3489502-2-me@timsurber.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_113314_890303_91144E20 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgVGltLAoKQW0gTWl0dHdvY2gsIDExLiBOb3ZlbWJlciAyMDI2LCAyMjowMDoyNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFRpbSBTdXJiZXI6Cj4gVGhlIEhETUkgcmVj
ZWl2ZXIgbm9kZSB1c2VzIEdQSU8zX0Q0IGJvdGggYXMgdGhlIHJlY2VpdmVyJ3MgSFBEIG91dHB1
dAo+IChoZG1pbTFfcnhfaHBkaW4pIGFuZCBhcyBpdHMgNVYgZGV0ZWN0aW9uIGlucHV0IChocGQt
Z3Bpb3MgYW5kIHRoZQo+IGhkbWlyeF9ocGQgcGluIGdyb3VwKS4gQm90aCBwaW4gZ3JvdXBzIGFy
ZSBpbiB0aGUgc2FtZSBwaW5jdHJsIHN0YXRlIGFuZAo+IHRoZSBsYXRlciBvbmUgd2lucywgc28g
dGhlIHBpbiBlbmRzIHVwIGFzIGEgR1BJTyBpbnB1dCB3aXRoIHB1bGwtdXAuCj4gVGhlIGNvbnRy
b2xsZXIgY2FuIHRoZW4gbmV2ZXIgZHJpdmUgSFBEOiB0aGUgc291cmNlIHNlZXMgSFBEIGFzc2Vy
dGVkCj4gYWxsIHRoZSB0aW1lLCBhbmQgdGhlIDVWIGRldGVjdGlvbiByZWFkcyBiYWNrIHRoZSBI
UEQgbGluZSBpbnN0ZWFkIG9mCj4gdGhlIHNvdXJjZSdzIDVWLgo+IAo+IFRoZSBkcml2ZXIgcmVs
aWVzIG9uIEhQRCBiZWluZyBsb3cgd2hpbGUgaXQgd3JpdGVzIHRoZSBFRElELCBhdCBwcm9iZQo+
IGFuZCBvbiBWSURJT0NfU19FRElELiBXaXRoIEhQRCBzdHVjayBoaWdoLCBhIHNvdXJjZSBtYXkg
cmVhZCB0aGUgRURJRAo+IHdoaWxlIGl0IGlzIGJlaW5nIHdyaXR0ZW4uIEEgc291cmNlIHRoYXQg
ZG9lcyBzbyBhdCBib290IGtlZXBzIHRoZQo+IGRhbWFnZWQgY29weSwgYXMgaXQgbmV2ZXIgc2Vl
cyB0aGUgSFBEIHB1bHNlIHRoYXQgc2hvdWxkIG1ha2UgaXQgcmVhZAo+IHRoZSBFRElEIGFnYWlu
LiBPbiBhIENNMzU4OCBOQVMgd2l0aCBIRE1JMCBsb29wZWQgYmFjayBpbnRvIEhETUkgUlgKPiB0
aGlzIGhhcHBlbmVkIG9uIDMgb2YgMTAgYm9vdHM6IEhETUkwIGxvZ2dlZCAiRURJRCBoYXMgY29y
cnVwdCBoZWFkZXIiLAo+IGZvdW5kIG5vIHZhbGlkIEVESUQgYW5kIGZlbGwgYmFjayB0byAxMDI0
eDc2OC4gQ2hhbmdpbmcgdGhlIEVESUQgd2l0aAo+IFZJRElPQ19TX0VESUQgd2FzIG5vdCBub3Rp
Y2VkIGJ5IHRoZSBzb3VyY2UgYXQgYWxsLgo+IAo+IEZyaWVuZGx5RWxlYydzIHZlbmRvciBkZXZp
Y2UgdHJlZSBmb3IgdGhlIENNMzU4OCB1c2VzIEdQSU8xX0Q1LCBhY3RpdmUKPiBsb3cgd2l0aCBw
dWxsLXVwLCBmb3IgdGhlIDVWIGRldGVjdGlvbi4gVGhlIE5hbm9QQy1UNiB1c2VzIHRoZSBzYW1l
IHBpbgo+IHVwc3RyZWFtLiBVc2UgdGhhdCBwaW4gYW5kIGxlYXZlIEdQSU8zX0Q0IHRvIHRoZSBI
UEQgZnVuY3Rpb24uCj4gCj4gV2l0aCB0aGlzIGNoYW5nZSB0aGUgcGluIG11bHRpcGxleGluZyBz
aG93cyBHUElPM19ENCBpbiB0aGUgSFBECj4gZnVuY3Rpb24sIHRoZSBzb3VyY2UncyBIUEQgaW50
ZXJydXB0IGZpcmVzIG9uIGV2ZXJ5IEVESUQgdXBkYXRlLCBhbmQgYQo+IGNoYW5nZWQgRURJRCBy
ZWFjaGVzIHRoZSBzb3VyY2Ugd2l0aGluIDAuNSBzLiBJbiAxMCBib290cyAoNSBwb3dlcgo+IGN5
Y2xlcywgNSByZWJvb3RzKSB0aGUgRURJRCByZWFkIGJ5IEhETUkwIGFsd2F5cyBtYXRjaGVkIHRo
ZSBvbmUKPiB3cml0dGVuIGJ5IHRoZSByZWNlaXZlciwgYW5kIEhETUkwIGNhbWUgdXAgYXQgaXRz
IG5hdGl2ZSBtb2RlIGV2ZXJ5Cj4gdGltZS4gVGhlIHJlY2VpdmVyIHN0aWxsIGRldGVjdHMgdGhl
IHNvdXJjZSdzIDVWIGFuZCBsb2NrcyB0byBpdHMKPiBzaWduYWwuCj4gCj4gVXNpbmcgdGhlIHBp
biBpbiB0d28gZ3JvdXBzIGFsc28gbWFkZSBwaW5jdHJsIHdhcm4gb24gZXZlcnkgdW5iaW5kIG9m
Cj4gdGhlIHJlY2VpdmVyICgibm90IGZyZWVpbmcgcGluIDEyNCAoZ3BpbzMtMjgpIGFzIHBhcnQg
b2YgZGVhY3RpdmF0aW5nCj4gZ3JvdXAgaGRtaW0xLXJ4LWhwZGluIC0gaXQgaXMgYWxyZWFkeSB1
c2VkIGZvciBzb21lIG90aGVyIHNldHRpbmciKSwKPiBhbmQgaW4gZWFybGllciB0ZXN0aW5nIHRo
ZSBmb2xsb3dpbmcgYmluZCBzb21ldGltZXMgZmFpbGVkIHdpdGgKPiAtRUlOVkFMLiBXaXRoIHRo
aXMgY2hhbmdlIHRoZSB3YXJuaW5nIGlzIGdvbmUuCgp5b3UncmUgZml4aW5nIF9vbmVfIGdwaW8s
IHRoaXMgZG9lcyBub3QgbmVlZCBhIG5vdmVsIHNpemUgZXhwbGFuYXRpb24uClBsZWFzZSBtYWtl
IHN1cmUgeW91J3JlIHdyaXRpbmcgY29tbWl0IGRlc2NyaXB0aW9ucyB5b3Vyc2VsZiBhbmQgbm90
CmxldCBhbiBMTE0gcnVuIGFtb2sgb24gaXQgcGxlYXNlLgoKClRoYW5rcwpIZWlrbwoKCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
