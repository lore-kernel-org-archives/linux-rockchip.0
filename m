Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84F4FC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 07:45:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2D9B613AA
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 07:45:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F2D9B613AA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fuNTBZx6+j65Sh1oXCRuSXi1qUyKBFQHLWfELdUp0JU=; b=ENiZMTsCMbm6n8RyxSdBPDhvD
	CjIXLGJFGKiZWrM0MyZMTXeklgaxuB9sJr4fml+mEDnqVlaRfvJePFxgjZ7BluAQhtqCEMT+Exlit
	MS5dJ/hE1AsURm7nOL1kwNJKwR4TlEUor+A8MPAGgEKvzvHwOpGvVnonoJurLY1c5IASHHUPBdpzn
	/+ZFLHCQyDB+SlbrKrO9MtZemi6r7vLkliu+eyB1TD9iAimwVpST5hKddZgCNchL04zlbp3tzZ0+b
	dFCLZ3+Lq9au6xBryVTdamLIj3mSSSC4lkGO8w4e7RYph15rZZKj+HChG4uy86PfP7Z9jBafxhTIh
	0Oxx0+fiA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldpkY-00Fdjd-Ve; Tue, 04 May 2021 07:45:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldpkI-00Fdi2-Se; Tue, 04 May 2021 07:45:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=J1C0AA4NeiHf4w7oWNIxL+wP4h6wP9P3uy3jKK50LJQ=; b=Gwqvx+gKYxFpLaN2jeJtIGTLgi
 OheuYxl8ko6N+QG5vga79UwPkaoPAuh742sai6eTcDS6FyGLxjsdJQjkzIu60FqriUXyGP+hfCakx
 tZC13H68JRuEbh1yjZAobIPMR9r/H42GhHMY8lN+och36O2GICXiDCUGVhFldV3o5SdWOE8TcTeKu
 NAlLgyb2JJ/v73sSBnx/WopHw9obeny3r4wBf4Mn7eECWXe4t95vaQgngWY+thQRbZ6Gc8V5mwsBU
 q8Rn+9PW921pJ1vzehaPLM6VpOw8tJRMVsV7fUhaiuXN6LLmJmTAN8c9VVouMyRPCwYT6hsRVXXR2
 1ktc9ppg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldpkF-003mEN-Fd; Tue, 04 May 2021 07:45:29 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:3951:839d:24c0:e20d] (unknown
 [IPv6:2a01:e0a:4cb:a870:3951:839d:24c0:e20d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 6BE641F420E7;
 Tue,  4 May 2021 08:45:21 +0100 (BST)
Subject: Re: [PATCH v2 1/4] dt-bindings: iommu: rockchip: Convert IOMMU to DT
 schema
To: Rob Herring <robh@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, heiko@sntech.de, xxm@rock-chips.com,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Kever Yang <kever.yang@rock-chips.com>
References: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
 <20210422141602.350746-2-benjamin.gaignard@collabora.com>
 <7557bc8aaaa1924ad39676b32ba6a3f6474a3722.camel@collabora.com>
 <20210430221442.GA3970483@robh.at.kernel.org>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <28edc185-6aa9-a657-0f2d-4ed2e3b9ddd4@collabora.com>
Date: Tue, 4 May 2021 09:45:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210430221442.GA3970483@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_004527_816371_C528398F 
X-CRM114-Status: GOOD (  25.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CkxlIDAxLzA1LzIwMjEgw6AgMDA6MTQsIFJvYiBIZXJyaW5nIGEgw6ljcml0wqA6Cj4gT24gVGh1
LCBBcHIgMjIsIDIwMjEgYXQgMDI6MTY6NTNQTSAtMDMwMCwgRXplcXVpZWwgR2FyY2lhIHdyb3Rl
Ogo+PiAoQWRkaW5nIEtldmVyKQo+Pgo+PiBIaSBCZW5qYW1pbiwKPj4KPj4gVGhhbmtzIGEgbG90
IGZvciB3b3JraW5nIG9uIHRoaXMsIGl0IGxvb2tzIGFtYXppbmcuIFRvZ2V0aGVyIHdpdGggdGhl
IGdyZWF0IHdvcmsKPj4gdGhhdCBSb2NrY2hpcCBpcyBkb2luZywgaXQgc2VlbXMgUkszNTY2L1JL
MzU2OCB3aWxsIGhhdmUgZGVjZW50IHN1cHBvcnQgdmVyeSBzb29uLgo+Pgo+PiBPbmUgY29tbWVu
dCBoZXJlOgo+Pgo+PiBPbiBUaHUsIDIwMjEtMDQtMjIgYXQgMTY6MTUgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+Pj4gQ29udmVydCBSb2NrY2hpcCBJT01NVSB0byBEVCBzY2hlbWEK
Pj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gdmVyc2lvbiAyOgo+Pj4gIMKgLSBDaGFuZ2Ug
bWFpbnRhaW5lcgo+Pj4gIMKgLSBDaGFuZ2UgcmVnIG1heEl0ZW1zCj4+PiAgwqAtIENoYW5nZSBp
bnRlcnJ1cHQgbWF4SXRlbXMKPj4+Cj4+PiAgwqAuLi4vYmluZGluZ3MvaW9tbXUvcm9ja2NoaXAs
aW9tbXUudHh0wqDCoMKgwqDCoMKgwqDCoCB8IDM4IC0tLS0tLS0tLQo+Pj4gIMKgLi4uL2JpbmRp
bmdzL2lvbW11L3JvY2tjaGlwLGlvbW11LnlhbWzCoMKgwqDCoMKgwqDCoCB8IDc5ICsrKysrKysr
KysrKysrKysrKysKPj4+ICDCoDIgZmlsZXMgY2hhbmdlZCwgNzkgaW5zZXJ0aW9ucygrKSwgMzgg
ZGVsZXRpb25zKC0pCj4+PiAgwqBkZWxldGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2lvbW11L3JvY2tjaGlwLGlvbW11LnR4dAo+Pj4gIMKgY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9yb2NrY2hp
cCxpb21tdS55YW1sCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9pb21tdS9yb2NrY2hpcCxpb21tdS50eHQgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvaW9tbXUvcm9ja2NoaXAsaW9tbXUudHh0Cj4+PiBkZWxldGVkIGZpbGUg
bW9kZSAxMDA2NDQKPj4+IGluZGV4IDZlY2VmZWExYzZmOS4uMDAwMDAwMDAwMDAwCj4+PiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW9tbXUvcm9ja2NoaXAsaW9tbXUu
dHh0Cj4+PiArKysgL2Rldi9udWxsCj4+PiBAQCAtMSwzOCArMCwwIEBACj4+PiAtUm9ja2NoaXAg
SU9NTVUKPj4+IC09PT09PT09PT09PT09PQo+Pj4gLQo+Pj4gLUEgUm9ja2NoaXAgRFJNIGlvbW11
IHRyYW5zbGF0ZXMgaW8gdmlydHVhbCBhZGRyZXNzZXMgdG8gcGh5c2ljYWwgYWRkcmVzc2VzIGZv
cgo+Pj4gLWl0cyBtYXN0ZXIgZGV2aWNlLsKgIEVhY2ggc2xhdmUgZGV2aWNlIGlzIGJvdW5kIHRv
IGEgc2luZ2xlIG1hc3RlciBkZXZpY2UsIGFuZAo+Pj4gLXNoYXJlcyBpdHMgY2xvY2tzLCBwb3dl
ciBkb21haW4gYW5kIGlycS4KPj4+IC0KPj4+IC1SZXF1aXJlZCBwcm9wZXJ0aWVzOgo+Pj4gLS0g
Y29tcGF0aWJsZcKgwqDCoMKgwqAgOiBTaG91bGQgYmUgInJvY2tjaGlwLGlvbW11Igo+Pj4gLS0g
cmVnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDogQWRkcmVzcyBzcGFjZSBmb3IgdGhlIGNvbmZp
Z3VyYXRpb24gcmVnaXN0ZXJzCj4+PiAtLSBpbnRlcnJ1cHRzwqDCoMKgwqDCoCA6IEludGVycnVw
dCBzcGVjaWZpZXIgZm9yIHRoZSBJT01NVSBpbnN0YW5jZQo+Pj4gLS0gaW50ZXJydXB0LW5hbWVz
IDogSW50ZXJydXB0IG5hbWUgZm9yIHRoZSBJT01NVSBpbnN0YW5jZQo+Pj4gLS0gI2lvbW11LWNl
bGxzwqDCoMKgIDogU2hvdWxkIGJlIDwwPi7CoCBUaGlzIGluZGljYXRlcyB0aGUgaW9tbXUgaXMg
YQo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJzaW5nbGUtbWFz
dGVyIiBkZXZpY2UsIGFuZCBuZWVkcyBubyBhZGRpdGlvbmFsIGluZm9ybWF0aW9uCj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdG8gYXNzb2NpYXRlIHdpdGggaXRz
IG1hc3RlciBkZXZpY2UuwqAgU2VlOgo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9pb21tdS50
eHQKPj4+IC0tIGNsb2Nrc8KgwqDCoMKgwqDCoMKgwqDCoCA6IEEgbGlzdCBvZiBjbG9ja3MgcmVx
dWlyZWQgZm9yIHRoZSBJT01NVSB0byBiZSBhY2Nlc3NpYmxlIGJ5Cj4+PiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhlIGhvc3QgQ1BVLgo+Pj4gLS0gY2xvY2stbmFt
ZXPCoMKgwqDCoCA6IFNob3VsZCBjb250YWluIHRoZSBmb2xsb3dpbmc6Cj4+PiAtwqDCoMKgwqDC
oMKgwqAiaWZhY2UiIC0gTWFpbiBwZXJpcGhlcmFsIGJ1cyBjbG9jayAoUENMSy9IQ0wpIChyZXF1
aXJlZCkKPj4+IC3CoMKgwqDCoMKgwqDCoCJhY2xrIsKgIC0gQVhJIGJ1cyBjbG9jayAocmVxdWly
ZWQpCj4+PiAtCj4+PiAtT3B0aW9uYWwgcHJvcGVydGllczoKPj4+IC0tIHJvY2tjaGlwLGRpc2Fi
bGUtbW11LXJlc2V0IDogRG9uJ3QgdXNlIHRoZSBtbXUgcmVzZXQgb3BlcmF0aW9uLgo+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
U29tZSBtbXUgaW5zdGFuY2VzIG1heSBwcm9kdWNlIHVuZXhwZWN0ZWQgcmVzdWx0cwo+Pj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
d2hlbiB0aGUgcmVzZXQgb3BlcmF0aW9uIGlzIHVzZWQuCj4+PiAtCj4+PiAtRXhhbXBsZToKPj4+
IC0KPj4+IC3CoMKgwqDCoMKgwqDCoHZvcGxfbW11OiBpb21tdUBmZjk0MDMwMCB7Cj4+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxpb21tdSI7
Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4ZmY5NDAzMDAgMHgx
MDA+Owo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVycnVwdHMgPSA8R0lD
X1NQSSAxNiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpbnRlcnJ1cHQtbmFtZXMgPSAidm9wbF9tbXUiOwo+Pj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGNsb2NrcyA9IDwmY3J1IEFDTEtfVk9QMT4sIDwmY3J1IEhDTEtfVk9Q
MT47Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xvY2stbmFtZXMgPSAiYWNs
ayIsICJpZmFjZSI7Cj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI2lvbW11LWNl
bGxzID0gPDA+Owo+Pj4gLcKgwqDCoMKgwqDCoMKgfTsKPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW9tbXUvcm9ja2NoaXAsaW9tbXUueWFtbCBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pb21tdS9yb2NrY2hpcCxpb21tdS55YW1s
Cj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi4wZGIyMDhj
ZjcyNGEKPj4+IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9pb21tdS9yb2NrY2hpcCxpb21tdS55YW1sCj4+PiBAQCAtMCwwICsxLDc5IEBA
Cj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5Cj4+PiArJVlBTUwg
MS4yCj4+PiArLS0tCj4+PiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9pb21t
dS9yb2NrY2hpcCxpb21tdS55YW1sIwo+Pj4gKyRzY2hlbWE6IGh0dHA6Ly9kZXZpY2V0cmVlLm9y
Zy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+Pj4gKwo+Pj4gK3RpdGxlOiBSb2NrY2hpcCBJT01N
VQo+Pj4gKwo+Pj4gK21haW50YWluZXJzOgo+Pj4gK8KgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtv
QHNudGVjaC5kZT4KPj4+ICsKPj4+ICtkZXNjcmlwdGlvbjogfCsKPj4+ICvCoCBBIFJvY2tjaGlw
IERSTSBpb21tdSB0cmFuc2xhdGVzIGlvIHZpcnR1YWwgYWRkcmVzc2VzIHRvIHBoeXNpY2FsIGFk
ZHJlc3NlcyBmb3IKPj4+ICvCoCBpdHMgbWFzdGVyIGRldmljZS4gRWFjaCBzbGF2ZSBkZXZpY2Ug
aXMgYm91bmQgdG8gYSBzaW5nbGUgbWFzdGVyIGRldmljZSBhbmQKPj4+ICvCoCBzaGFyZXMgaXRz
IGNsb2NrcywgcG93ZXIgZG9tYWluIGFuZCBpcnEuCj4+PiArCj4+PiArwqAgRm9yIGluZm9ybWF0
aW9uIG9uIGFzc2lnbmluZyBJT01NVSBjb250cm9sbGVyIHRvIGl0cyBwZXJpcGhlcmFsIGRldmlj
ZXMsCj4+PiArwqAgc2VlIGdlbmVyaWMgSU9NTVUgYmluZGluZ3MuCj4+PiArCj4+PiArcHJvcGVy
dGllczoKPj4+ICvCoCBjb21wYXRpYmxlOgo+Pj4gK8KgwqDCoCBjb25zdDogcm9ja2NoaXAsaW9t
bXUKPj4+ICsKPj4+ICvCoCByZWc6Cj4+PiArwqDCoMKgIG1pbkl0ZW1zOiAxCj4+PiArwqDCoMKg
IG1heEl0ZW1zOiAyCj4+PiArCj4+PiArwqAgaW50ZXJydXB0czoKPj4+ICvCoMKgwqAgbWluSXRl
bXM6IDEKPj4+ICvCoMKgwqAgbWF4SXRlbXM6IDIKPj4+ICsKPj4+ICvCoCBpbnRlcnJ1cHQtbmFt
ZXM6Cj4+PiArwqDCoMKgIG1pbkl0ZW1zOiAxCj4+PiArwqDCoMKgIG1heEl0ZW1zOiAyCj4+PiAr
Cj4+IEFGQUlDUywgdGhlIGRyaXZlciBzdXBwb3J0cyBoYW5kbGluZyBtdWx0aXBsZSBNTVVzLCBh
bmQgdGhlcmUncyBvbmUgcmVnIGFuZAo+PiBpbnRlcnJ1cHQgY2VsbCBmb3IgZWFjaCBNTVUuIElP
VywgdGhlcmUncyBubyByZXF1aXJlbWVudCB0aGF0IG1heEl0ZW1zIGlzIDIuCj4+Cj4+IElzIHRo
ZXJlIGFueSB3YXkgd2UgY2FuIGRlc2NyaWJlIHRoYXQ/IE9yIG1heWJlIGp1c3QgYWxsb3cgYSBi
aWdnZXIgbWF4aW11bT8KPiBXaXRoICNpb21tdS1jZWxscyA9PSAwLCBob3cgd291bGQgb25lIGRp
c3Rpbmd1aXNoIHdoaWNoIElPTU1VIGlzCj4gYXNzb2NpYXRlZCB3aXRoIGEgZGV2aWNlPyBJT1cs
IGlzIG1vcmUgdGhhdCAxIHJlYWxseSB1c2FibGU/Cj4KPiBJZiB5b3UgbmVlZCBtb3JlIGp1c3Qg
cGljayBhIG1heEl0ZW1zIHZhbHVlIHRoYXQncyBlaXRoZXIgdGhlIG1vc3Qgc2Vlbgo+IG9yICdz
aG91bGQgYmUgZW5vdWdoJ1RNLiBJZiB0aGUgZW50cmllcyBhcmUganVzdCBtdWx0aXBsZSBpbnN0
YW5jZXMgb2YKPiB0aGUgc2FtZSB0aGluZywgcGxlYXNlIG5vdGUgdGhhdCBoZXJlLgoKSW4gY3Vy
cmVudCBkdHMgZmlsZXMgaXQgaXMgdXAgdG8gdHdvIGludGVycnVwdGlvbnMgcGVyIElPTU1VIGhh
cmR3YXJlIGJsb2NrcwpzbyBJIHdpbGwga2VlcCBpdCB0byB0aGlzIHZhbHVlLgoKQmVuamFtaW4K
Cj4KPiBSb2IKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
