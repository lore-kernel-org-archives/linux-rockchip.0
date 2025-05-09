Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 770F3C3ABBC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 17:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xy7iTv89t+FGf7bsek1JCikBWJTTSrbLxg/kFNv1Gs=; b=pJrrDBx71Anuqa
	qcc+1SgHDTbTVJYCuYAQ1MItyzI/meENp9kNxq6EVnCILDHKlMPFsvGrhrY/tAIKZu+mD5QirNIW+
	6tZc4NOENp6lyHkETvojp6Vh64ZGeZFI94cmQUcwGjQ+Hy4/A9Nmn0CcRCwijjX9+Y2ThmQ1oZww5
	vV6oCvq9CXmgX96Vpzag39ddN+9CZEc8THeFCBMPIHUS/0tY8Huft81fJ9Gy4T9OCY9TNhGrkz+J8
	ZS86sIbFg1lKBDCX5DozPi50LXA0TBz8mCk+yFzxh98rPug/+vT1pWuugx9LYE38fo6L0s0YFbsj/
	wjMkB/C5y2x3tyKjDhOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDRO3-00000004QLI-2OxN;
	Fri, 09 May 2025 17:19:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDPbf-000000044gU-0FbA;
	Fri, 09 May 2025 15:25:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1u/9AHjxuF+fL9JbBpUA4QHUKtPHQadXuBIe95ASyiM=; b=H1Ac4YzDwwc7Rsy+4pi8/x0KMf
	yRqkpwb7gEdn6AK8X+AmvI/ZhYSFD6Rn6g/IuKNLQ0Ammv59VKJC0nye4kvXGmjNtW3BScLZTnUIU
	7REiAD8fGLsy0ro34s1P6uEVq4I6zGlg1FPcoCFYBwQ3O5uCHZHHBFManD12Jg5mxUko6OOqUz8Sf
	Q8SNty50gZ/9rhiCGsKvoobzpxfspmypfSQqJah6qAYH5FW8hUUTumz6NVZSSZ7YP5H2a4HeFGOki
	WEuCRZnKMPOBJvJtgKaHfWuxAv7SslJUKL3rsXootV4oXXitOH3WmWtfgYmKlpI4M97qKP+5i13W+
	YtLZgdfg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uDPbb-0000000GIvH-21Fg;
	Fri, 09 May 2025 15:25:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=1u/9AHjxuF+fL9JbBpUA4QHUKtPHQadXuBIe95ASyiM=; b=QQOy5EUQ6mrW4Y7NTOI6eWoBZW
	IUrjR9PqGw7X/GJFgcjIYFP+xX1rG8LtZShgCsq93xF9eB00VSxzrgdvhPda2/s2MWlMvuSDKikGE
	8x+zH4WWBdkCzISTDGavK0qJ3ENnpFeGvd8I4HTz7Qm8Ln5Y++0gn509TNNHWtTlu3KKAcRNqnb93
	5GkFDOl0oFfMhBtUkPBye/n2CF+i/ICZ0VG6TrfsXWz08NFiDZqs3lFiv0/9iMRLAbPsWiuMgG3/h
	DMTaXJDguzHf6J2cgwiY0uU0rfDoyovICZLN0iRQu0YaLfxRx0oMedCjjfjAhlxLIRTO006rKRwTa
	byJNEomA==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDPba-0007vv-RI; Fri, 09 May 2025 17:25:42 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 0/3] Add RADXA ROCK 5T support
Date: Fri, 09 May 2025 17:25:41 +0200
Message-ID: <116456515.nniJfEyVGO@diego>
In-Reply-To: <174679985488.3369444.8126092781297328766.robh@kernel.org>
References: <20250509-add-rock5t-v1-0-cff1de74eced@collabora.com>
 <174679985488.3369444.8126092781297328766.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_162543_686716_A69E3DE4 
X-CRM114-Status: GOOD (  25.59  )
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

QW0gRnJlaXRhZywgOS4gTWFpIDIwMjUsIDE2OjE3OjA3IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgUm9iIEhlcnJpbmcgKEFybSk6Cj4gCj4gT24gRnJpLCAwOSBNYXkgMjAy
NSAxNDozMTo0MCArMDIwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+ID4gVGhpcyBpcyBh
IHNtYWxsIHNlcmllcywgZGVwZW5kaW5nIG9uIFNlYmFzdGlhbiBSZWljaGVsJ3MgUk9DSyA1QisK
PiA+IHNlcmllc1sxXSwgdG8gYWxzbyBhZGQgc3VwcG9ydCBmb3IgdGhlIFJPQ0sgNVQuCj4gPiAK
PiA+IFRoZSBST0NLIDVUIGlzIHF1aXRlIHNpbWlsYXIgdG8gdGhlIFJPQ0sgNUIrIGFuZCB0aGUg
Uk9DSyA1Qiwgc28gdG8KPiA+IHNoYXJlIGFzIG11Y2ggRFQgYm9pbGVycGxhdGUgYmV0d2VlbiB0
aGVtIGFzIHdlIGNhbiwgdGhpcyBzZXJpZXMKPiA+IHJlb3JnYW5pc2VzIHRoaW5ncyBhIGJpdCBh
bmQgdGhlbiBhZGRzIHRoZSBST0NLIDVUIC5kdHMuCj4gPiAKPiA+IExpbms6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwNTA4LXJvY2s1YnAtZm9yLXVwc3RyZWFt
LXYyLTAtNjc3MDMzY2MxYWMyQGtlcm5lbC5vcmcvVC8gWzFdCj4gPiBTaWduZWQtb2ZmLWJ5OiBO
aWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgo+ID4g
LS0tCj4gPiBOaWNvbGFzIEZyYXR0YXJvbGkgKDMpOgo+ID4gICAgICAgZHQtYmluZGluZ3M6IGFy
bTogcm9ja2NoaXA6IGFkZCBSQURYQSBST0NLIDVUCj4gPiAgICAgICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogcmVvcmdhbmlzZSBjb21tb24gcm9jazUqIG5vZGVzCj4gPiAgICAgICBhcm02NDogZHRz
OiByb2NrY2hpcDogYWRkIFJPQ0sgNVQgZGV2aWNlIHRyZWUKPiA+IAo+ID4gIC4uLi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICAgICAgIHwgICAgNSArCj4gPiAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgICAxICsK
PiA+ICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kgICB8
IDEwMTIgKysrKysrKysrKysrKysrKysrKysKPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0c2kgICB8IDEwMTIgKy0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTV0LmR0cyAgICB8ICAx
MDUgKysKPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDExMzEgaW5zZXJ0aW9ucygrKSwgMTAwNCBkZWxl
dGlvbnMoLSkKPiA+IC0tLQo+ID4gYmFzZS1jb21taXQ6IDE5YzU0MWZlODcyMzg3Nzk4YTI1ZGY5
NDdmNTZhMjYyMTJhYTlhOTcKPiA+IGNoYW5nZS1pZDogMjAyNTA1MDktYWRkLXJvY2s1dC1mZGU1
OTI3ZGUzNmIKPiA+IHByZXJlcXVpc2l0ZS1tZXNzYWdlLWlkOiA8MjAyNTA1MDgtcm9jazVicC1m
b3ItdXBzdHJlYW0tdjItMC02NzcwMzNjYzFhYzJAa2VybmVsLm9yZz4KPiA+IHByZXJlcXVpc2l0
ZS1wYXRjaC1pZDogMDJiZjE1OTUzM2JiNTNkMmNiMWI2YzhjN2NhZjFkM2ZjZmJmYTRlYQo+ID4g
cHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBmYzE1M2QxZDQ4ZjE5ZDYzNTIwMDg2YTZlYWFkZmVjMmRi
OTYwNDcwCj4gPiBwcmVyZXF1aXNpdGUtcGF0Y2gtaWQ6IGY0NDViODkzZWRmMzFjY2YzMzExZTE0
NmE1M2U1ZDI0ODYxYzI0NzUKPiA+IHByZXJlcXVpc2l0ZS1wYXRjaC1pZDogNWRjNDEwYTQzOGFk
NWE3YWE4OTYyZTM4MGQyNzMzNzgyZjVkN2QxOAo+ID4gcHJlcmVxdWlzaXRlLXBhdGNoLWlkOiBj
NzBhZTBlMzBiZTJhMzM4NWQyZjJhMDlmNDc0ZmYyYjc2MjkzODQzCj4gPiAKPiA+IEJlc3QgcmVn
YXJkcywKPiA+IC0tCj4gPiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBj
b2xsYWJvcmEuY29tPgo+ID4gCj4gPiAKPiA+IAo+IAo+IAo+IE15IGJvdCBmb3VuZCBuZXcgRFRC
IHdhcm5pbmdzIG9uIHRoZSAuZHRzIGZpbGVzIGFkZGVkIG9yIGNoYW5nZWQgaW4gdGhpcwo+IHNl
cmllcy4KPiAKPiBTb21lIHdhcm5pbmdzIG1heSBiZSBmcm9tIGFuIGV4aXN0aW5nIFNvQyAuZHRz
aS4gT3IgcGVyaGFwcyB0aGUgd2FybmluZ3MKPiBhcmUgZml4ZWQgYnkgYW5vdGhlciBzZXJpZXMu
IFVsdGltYXRlbHksIGl0IGlzIHVwIHRvIHRoZSBwbGF0Zm9ybQo+IG1haW50YWluZXIgd2hldGhl
ciB0aGVzZSB3YXJuaW5ncyBhcmUgYWNjZXB0YWJsZSBvciBub3QuIE5vIG5lZWQgdG8gcmVwbHkK
PiB1bmxlc3MgdGhlIHBsYXRmb3JtIG1haW50YWluZXIgaGFzIGNvbW1lbnRzLgo+IAo+IElmIHlv
dSBhbHJlYWR5IHJhbiBEVCBjaGVja3MgYW5kIGRpZG4ndCBzZWUgdGhlc2UgZXJyb3IocyksIHRo
ZW4KPiBtYWtlIHN1cmUgZHQtc2NoZW1hIGlzIHVwIHRvIGRhdGU6Cj4gCj4gICBwaXAzIGluc3Rh
bGwgZHRzY2hlbWEgLS11cGdyYWRlCj4gCj4gCj4gVGhpcyBwYXRjaCBzZXJpZXMgd2FzIGFwcGxp
ZWQgKHVzaW5nIGI0KSB0byBiYXNlOgo+ICBCYXNlOiB1c2luZyBzcGVjaWZpZWQgYmFzZS1jb21t
aXQgMTljNTQxZmU4NzIzODc3OThhMjVkZjk0N2Y1NmEyNjIxMmFhOWE5Nwo+ICBEZXBzOiBsb29r
aW5nIGZvciBkZXBlbmRlbmNpZXMgbWF0Y2hpbmcgNSBwYXRjaC1pZHMKPiAgRGVwczogQXBwbHlp
bmcgcHJlcmVxdWlzaXRlIHBhdGNoOiBbUEFUQ0ggdjIgMS81XSBhcm02NDogZHRzOiByb2NrY2hp
cDogbW92ZSByb2NrIDViIHRvIGluY2x1ZGUgZmlsZQo+ICBEZXBzOiBBcHBseWluZyBwcmVyZXF1
aXNpdGUgcGF0Y2g6IFtQQVRDSCB2MiAyLzVdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBtb3ZlIHJv
Y2sgNWIgdG8gaW5jbHVkZSBmaWxlCj4gIERlcHM6IEFwcGx5aW5nIHByZXJlcXVpc2l0ZSBwYXRj
aDogW1BBVENIIHYyIDMvNV0gZHQtYmluZGluZ3M6IGFybTogcm9ja2NoaXA6IEFkZCBSYWR4YSBS
T0NLIDVCKwo+ICBEZXBzOiBBcHBseWluZyBwcmVyZXF1aXNpdGUgcGF0Y2g6IFtQQVRDSCB2MiA0
LzVdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgUm9jayA1QisKPiAgRGVwczogQXBwbHlpbmcg
cHJlcmVxdWlzaXRlIHBhdGNoOiBbUEFUQ0ggdjIgNS81XSBhcm02NDogZHRzOiByb2NrY2hpcDog
YWRkIFVTQi1DIHN1cHBvcnQgZm9yIFJPQ0sgNUIrCj4gCj4gSWYgdGhpcyBpcyBub3QgdGhlIGNv
cnJlY3QgYmFzZSwgcGxlYXNlIGFkZCAnYmFzZS1jb21taXQnIHRhZwo+IChvciB1c2UgYjQgd2hp
Y2ggZG9lcyB0aGlzIGF1dG9tYXRpY2FsbHkpCj4gCj4gTmV3IHdhcm5pbmdzIHJ1bm5pbmcgJ21h
a2UgQ0hFQ0tfRFRCUz15IGZvciBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwLycgZm9yIDIw
MjUwNTA5LWFkZC1yb2NrNXQtdjEtMC1jZmYxZGU3NGVjZWRAY29sbGFib3JhLmNvbToKPiAKPiBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLXBsdXMuZHRiOiBlZHBA
ZmRlZDAwMDAgKHJvY2tjaGlwLHJrMzU4OC1lZHApOiBjbG9jay1uYW1lczoyOiAnZ3JmJyB3YXMg
ZXhwZWN0ZWQKPiAJZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1h
cy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGFuYWxvZ2l4LWRwLnlhbWwjCj4gYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01dC5kdGI6IGVkcEBmZGVkMDAwMCAocm9j
a2NoaXAscmszNTg4LWVkcCk6IGNsb2NrLW5hbWVzOjI6ICdncmYnIHdhcyBleHBlY3RlZAo+IAlm
cm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Rpc3BsYXkvcm9j
a2NoaXAvcm9ja2NoaXAsYW5hbG9naXgtZHAueWFtbCMKCkZpeGVkIHRoYXQgaW4KaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwNTA5MTUyMzI5LjIwMDQwNzMtMS1oZWlrb0BzbnRlY2gu
ZGUvCgooZWRwMCBub2RlIHdhcyBjb3JyZWN0LCBlZHAxIG5vZGUgY29udGFpbmVkIGEgY2xvY2sg
bmFtZWQgc3BkaWYsIHRoYXQKcHJvYmFibHkgY2FtZSBmcm9tIHRoZSB2ZW5kb3ItdHJlZSkKCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
