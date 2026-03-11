Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6738E112580D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 13:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1D9ZGfvS9XyLYuJQwXjUuf8K9G0H0lHL1m3Qgm4K4U=; b=YgPeSg8U1Ul0U+
	RK2pKaEFQPFjYCvpnRi2JRvdDlb3tzNzuYQ/4zYKVBdWEKO0lvo6pKTIuLA1RDk6yGwBcEpW9D4cb
	pYSjoWdRppMvIjQO3GcXVzieQUP096EebOpdTCrL6YBRMByKVPMZyoboTuZMkW2ZUDse3hXAE8hbA
	9X4VBTT8BnfrNTYhM/SGb6X3NRA68XZqW07X3MePCG+QD42iXbbQxlJVrHs1KQ1UCaUBvtt7q3h7F
	Iht6QMsL0Rw5dGYOGfHgVh6KQbbw4+9wk2JlR/Vt8vZArsQXSCEgGueGqsyVE4M1oqZ1i0wKbJ5yz
	7ylFu+JdZwEu9nYSXJWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Jm2-0000000Becg-40pD;
	Wed, 11 Mar 2026 13:38:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0Jm1-0000000BecZ-2Zem
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 13:38:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 98D6E60122;
	Wed, 11 Mar 2026 13:38:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB64AC4CEF7;
	Wed, 11 Mar 2026 13:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773236332;
	bh=83+AL1G5IjctdEzN79fL2AQOUtbDP1LaT+2LvqXasSQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n0jPqmxHMmhrWuCJw/ogpqucrTqJxBu+5CxqPDRZIymfmJVosYpzOY1OJ7ZQrm7Ao
	 /AdPSw3h3gS0e/fbGkz9jckrpfqLY0Qk3AQYN9tgiNY9L3PO56cHMlNxuCJoHB8APB
	 Gd/celBIM771LyMe0P2K4s2ikT5ekFTnUCLN5bmdGjVDEiyEBPEA3jUraEW1drM5RF
	 obWLIxyQlSDubUErZsu/yJf6bTNWDUzdLGjG6F9T+jaguElvi44TevTl0Ia3zGTWCY
	 KpACuXEH2/cWsk0PK4fh6sWfAkOztqhgaIpfJu/hYCNB/UBhzNxY0r82Q6QGuKx7sr
	 c745PV7nvkpqg==
Message-ID: <f6ac4bb9-2a4d-4432-93e4-111cad73fc85@kernel.org>
Date: Wed, 11 Mar 2026 14:38:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add
 new mphy reset item
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
 <1773193218-215988-2-git-send-email-shawn.lin@rock-chips.com>
 <20260311-ultraviolet-shrew-of-management-ca536b@quoll>
 <6d4e61eb-0b1b-c61f-faba-f790774b6cec@rock-chips.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <6d4e61eb-0b1b-c61f-faba-f790774b6cec@rock-chips.com>
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

T24gMTEvMDMvMjAyNiAxNDoyOSwgU2hhd24gTGluIHdyb3RlOgo+IEhpIEtyenlzenRvZgo+IAo+
IOWcqCAyMDI2LzAzLzExIOaYn+acn+S4iSAyMToxMCwgS3J6eXN6dG9mIEtvemxvd3NraSDlhpnp
gZM6Cj4+IE9uIFdlZCwgTWFyIDExLCAyMDI2IGF0IDA5OjQwOjE3QU0gKzA4MDAsIFNoYXduIExp
biB3cm90ZToKPj4+IEFkZCB0aGUgbXBoeSByZXNldCBwcm9wZXJ0eSB0byB0aGUgZGV2aWNldHJl
ZSBiaW5kaW5ncyBmb3IgdGhlIFJvY2tjaGlwCj4+PiBSSzM1NzYgVUZTIGhvc3QgY29udHJvbGxl
ci4gVGhlIG1waHkgcmVzZXQgc2lnbmFsIGlzIHVzZWQgdG8gcmVzZXQgdGhlCj4+PiBwaHlzaWNh
bCBhZGFwdGVyLiBSZXNldHRpbmcgb3RoZXIgY29tcG9uZW50cyB3aGlsZSBsZWF2aW5nIHRoZSBt
cGh5Cj4+PiB1bnJlc2V0IG1heSBvY2Nhc2lvbmFsbHkgcHJldmVudCB0aGUgVUZTIGNvbnRyb2xs
ZXIgZnJvbSBzdWNjZXNzZnVsbHkKPj4+IGxpbmtpbmcgdXAgd2l0aCB0aGUgZGV2aWNlLgo+Pj4K
Pj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+
Pj4gLS0tCj4+Pgo+Pj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Jv
Y2tjaGlwLHJrMzU3Ni11ZnNoYy55YW1sIHwgNyArKysrLS0tCj4+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcm9ja2NoaXAscmszNTc2LXVmc2hj
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3JvY2tjaGlwLHJr
MzU3Ni11ZnNoYy55YW1sCj4+PiBpbmRleCBjN2QxN2NmNC4uZTczODE1MyAxMDA2NDQKPj4+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91ZnMvcm9ja2NoaXAscmszNTc2
LXVmc2hjLnlhbWwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
ZnMvcm9ja2NoaXAscmszNTc2LXVmc2hjLnlhbWwKPj4+IEBAIC00MSw3ICs0MSw3IEBAIHByb3Bl
cnRpZXM6Cj4+PiAgICAgICBtYXhJdGVtczogMQo+Pj4gICAKPj4+ICAgICByZXNldHM6Cj4+PiAt
ICAgIG1heEl0ZW1zOiA0Cj4+PiArICAgIG1heEl0ZW1zOiA1Cj4+PiAgIAo+Pj4gICAgIHJlc2V0
LW5hbWVzOgo+Pj4gICAgICAgaXRlbXM6Cj4+PiBAQCAtNDksNiArNDksNyBAQCBwcm9wZXJ0aWVz
Ogo+Pj4gICAgICAgICAtIGNvbnN0OiBzeXMKPj4+ICAgICAgICAgLSBjb25zdDogdWZzCj4+PiAg
ICAgICAgIC0gY29uc3Q6IGdyZgo+Pj4gKyAgICAgIC0gY29uc3Q6IG1waHkKPj4KPj4gQUJJIGJy
ZWFrIGhlcmUgYW5kIGluIHRoZSBkcml2ZXIuIENvbnNpZGVyaW5nIHRoaXMgd2FzIG1lcmdlZCB5
ZWFyIGFnbywKPj4gc28gZm9yIHN1cmUgaXQgd2FzIHRlc3RlZCBhbmQgd2FzIHdvcmtpbmcuIE90
aGVyd2lzZSBjb21taXQgbXNnIHdvdWxkCj4+IGV4cGxhaW4gdGhlIGFjdHVhbCBidWcgYWZmZWN0
aW5nIHVzZXJzLgo+Pgo+IAo+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcuCj4gCj4gWW91IGFyZSBh
YnNvbHV0ZWx5IHJpZ2h0IHRoYXQgdGhpcyBjaGFuZ2UgdGVjaG5pY2FsbHkgYnJlYWtzIHRoZSBB
QkkgaW4KPiB0aGUgZGV2aWNlIHRyZWUgYmluZGluZ3MgYnkgaW5jcmVhc2luZyBtYXhJdGVtcyBh
bmQgYWRkaW5nIGEgbmV3IGVudHJ5Lgo+IEFsdGhvdWdoIHRoZSBkcml2ZXIgaXMgdXNpbmcgZGV2
bV9yZXNldF9jb250cm9sX2FycmF5X2dldF9leGNsdXNpdmUoKSwKPiBzbyB0aGUgb2xkIERUQiBh
bmQgbmV3IERUQiBzaG91bGQgYm90aCB3b3JrLgoKQWgsIEkgbWlzc2VkIHRoYXQuIFBsZWFzZSBt
ZW50aW9uIGl0IGJyaWVmbHkgaW4gY29tbWl0IG1zZyB0byBpbmRpY2F0ZQp0aGF0IExpbnV4IGlz
IG5vdCBhZmZlY3RlZC4KCj4gCj4gVGhlIGlzc3VlIHRoaXMgc2VyaWVzIGZpeGVzIChVRlMgbGlu
ay11cCBmYWlsdXJlIHdoZW4gbXBoeSBpcyBub3QKPiBleHBsaWNpdGx5IHJlc2V0KSBpcyBhbiBp
bnRlcm1pdHRlbnQgaGFyZHdhcmUgYnVnIHRoYXQgaXMgZGlmZmljdWx0IHRvCj4gcmVwcm9kdWNl
LiBJdCBvbmx5IG9jY3VycyB1bmRlciBzcGVjaWZpYyB0aW1pbmcgY29uZGl0aW9ucyB3aXRoIGNl
cnRhaW4KPiBjaGlwcy4gV2UgcmVjZW50bHkgZW5jb3VudGVyZWQgdGhpcyBpc3N1ZSBjb25zaXN0
ZW50bHkgaW4gb3VyIGRvd25zdHJlYW0KPiB0ZXN0aW5nIGFuZCBpZGVudGlmaWVkIHRoZSByb290
IGNhdXNlLiBXZSBhcmUgc3luY2luZyB0aGlzIGNyaXRpY2FsIGZpeAo+IHRvIHVwc3RyZWFtIGlt
bWVkaWF0ZWx5IHRvIHByZXZlbnQgc3RhYmlsaXR5IGlzc3VlcyBmb3IgdXNlcnMuIEkgd2lsbAo+
IHVwZGF0ZSB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gZXhwbGljaXRseSBkZXNjcmliZSB0aGlzIGhh
cmQtdG8tcmVwcm9kdWNlCj4gYnVnIGFuZCB0aGUgc3BlY2lmaWMgZmFpbHVyZSBtb2RlLCBhbmQg
cHJvYmFibHkgYWRkIGEgZml4ZXMgdGFnLgo+IAo+IERvZXMgdGhlIGFib3ZlIHNvdW5kIHRoZSBy
aWdodCBhcHByb2FjaCB0byB5b3U/CgpZZXMsIHBsZWFzZSBpbmNsdWRlIHBhcnRzIG9mIGFib3Zl
LCB0aGF0IGl0IGlzIGhhcmQgdG8gcmVwcm9kdWNlIGJ1dCBpdApkb2VzIGhhcHBlbiwgaW4gdGhl
IGNvbW1pdCBtc2cuCgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
