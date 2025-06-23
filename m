Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE91C77B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 00:33:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJ14XlQbwZYUT2/5+9acUP/u6I/ToicGux95aWtxGQg=; b=L3tOwq0uOAaSp4
	Iy88Sp7xtMESIyeF9VD5dv7Hbb0LEsgQzjiPmfVlIp38T5b2HTIIMFDPuGq8JZk/kt0w3AurzNA+P
	dAXoCWFVZNVIbyWvMk04viFNlYAWWmOSOs7voxyVOYJDeDgg0vmQAj1AaNW2DKw7lh4RA0f86UtT6
	ZUEb0eqH7fzUPpBug52XPlS3Cn3NMRznZnT4H+uRiR7zXfDNm1fsEd0hzxgqhr65eF0+Kv8kqKGke
	xfMgpIxWwaSSEI64qsuSdNrqWnHC4SaN4CR7ZqlhOTac5PFsOXmm5Iu9pPLdjBeUBMASFZKRhPcS7
	g32EGQgH5GpW3Uju07BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTrb7-00000004HZ6-2uz9;
	Tue, 24 Jun 2025 00:33:13 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uToOg-00000003ypf-1358
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 21:08:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: References: Cc:
 To: From: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1750712889;
 bh=gEB9Uu/BrBrdgfsB6ag5zH9CJIrem98ugMHj5C+RaBk=;
 b=EUh8stVcTijao1rWnyQM8Tqwijtby71BhH8HEIMMPm6tJaoqTznw4HTMIlPElYwlUTlL9b8il
 kG8BLOaYG+zk6J+cTZc7qqqcG1hGNsV1Py2GgVZDxHRoJsF7n36BNDw7zr8uuiMpW2lfx0Y+Vvi
 Uakmf+U5LCRpgubFABcvLsgG5F+gKqAj3z82lSIV0yVUImlLF8Q3Vux7kSN0w4xEDXuM5b+mFSZ
 OerY3GXDfWv2TxgXIBSKl68QuSb3p9Kz0ftTzWIZ5h8LE8cyZPAZyJBT3/19y5QXI3EWxmloqWX
 zL1+OcgNfZwAF85I3Pd8w9IFiavEqjh5Sf8x0l+UH9eQ==
X-Forward-Email-ID: 6859c22e294ea86d0db707c3
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <90b7a1b6-bc49-414d-9cde-e6fad46d2650@kwiboo.se>
Date: Mon, 23 Jun 2025 23:07:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM
 Sige5
From: Jonas Karlman <jonas@kwiboo.se>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 Alexey Charkov <alchark@gmail.com>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <3286000.Y6S9NjorxK@phil>
 <CABjd4YyaNF1zosFFi6hEsZanPDxoaa1h4Dpd6uTPRwA3BZn0=w@mail.gmail.com>
 <5897576.DvuYhMxLoT@phil>
 <CABjd4Yy8WeXKmmxh2-TjjF5-ABy-NzzJsWpt1KvSjJqTHh0Xwg@mail.gmail.com>
 <CABjd4Yz4NbqzZH4Qsed3ias56gcga9K6CmYA+BLDBxtbG915Ag@mail.gmail.com>
 <36711B65-DD45-4539-BD9C-0382936FD0A3@gmail.com>
 <dd1d0676-4eaa-4df7-b557-676b3de9a52e@kwiboo.se>
Content-Language: en-US
In-Reply-To: <dd1d0676-4eaa-4df7-b557-676b3de9a52e@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_140810_626007_DA2771BE 
X-CRM114-Status: GOOD (  12.92  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, XiaoDong Huang <derrick.huang@rock-chips.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNS0wNi0yMyAxOTo0MCwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBPbiAyMDI1LTA2LTIz
IDE3OjAyLCBQaW90ciBPbmlzemN6dWsgd3JvdGU6Cj4+Cj4+Cj4+PiBXaWFkb21vxZvEhyBuYXBp
c2FuYSBwcnpleiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHcgZG5pdSAyMyBj
emUgMjAyNSwgbyBnb2R6LiAxNTo1ODoKPj4+Cj4+PiBPbiBNb24sIEp1biAyMywgMjAyNSBhdCAx
OjE54oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPiB3cm90ZToKPj4+Pgo+
Pj4+Cj4+Pgo+Pj4gT2theSwgSSd2ZSBiaXNlY3RlZCB0aGlzLgo+Pj4KPj4+IFRMRFI6IExpbnV4
IGFuZCB1LWJvb3Qgc2VlbSB0byBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCBpdCwgb3BlbnNvdXJj
ZQo+Pj4gVEYtQSBkb2Vzbid0IHdvcmssIGJpbmFyeSBCTDMxIHN0YXJ0aW5nIHdpdGggdjEuMDkg
ZG8gbm90IHdvcmsuIEJMMzEKPj4+IHYxLjA4IGFuZCBlYXJsaWVyIHdvcmsgZmluZS4KPiAKPiB2
MS4wOSBhZGRlZCBzdXBwb3J0IGZvciAxIEdIeiBocnRpbWVyIGluIGFkZGl0aW9uIHRvIHRoZSBu
b3JtYWwgMjQgTUh6Cj4gcmF0ZS4gTWFpbmxpbmUgVS1Cb290IG1heSBvbmx5IHN1cHBvcnQgdXNl
IG9mIDI0IE1IeiBocnRpbWVyLCB1bnN1cmUKPiB3aGF0IGltcGFjdCB0aGUgaHJ0aW1lciByYXRl
IGhhcy4gTWl4aW5nIGJsb2JzIHdpdGgvd2l0aG91dCAxIEdIego+IHN1cHBvcnQgaXMga25vd24g
dG8gY2F1c2UgaXNzdWVzLiBBdCBvbmUgcG9pbnQgdGhlIGxhdGVzdCBya2JpbiB0cmVlIG1heQo+
IGhhdmUgY29udGFpbmVkIGluY29tcGF0aWJsZSByazM1NzYgYmxvYnMgKG1peGVkIDEgZ2h6IHZz
IDI0IG1oeiByYXRlKS4KCkNsYXJpZmljYXRpb246CkZvbGxvd2luZyBib290MSBwYXJhbWV0ZXIg
YWN0aXZhdGVzIHVzZSBvZiAxIEdIeiBocnRpbWVyLCBzZWUgWzNdLgoKVGhpcyBwYXJhbWV0ZXIg
d2FzIGFkZGVkIHRvIHJrYmluIHJlcG8gYmVmb3JlIGFsbCBibG9icyB3YXMgdXBkYXRlZCB0bwpm
dWxseSBzdXBwb3J0IHVzZSBvZiB0aGUgMSBnaHogbW9kZSwgYW5kIGlzIHRoZSBzb3VyY2UgZm9y
IGluY29tcGF0aWJsZQpibG9icyBJIHJlZmVyZW5jZWQgYWJvdmUuCgogIFtCT09UMV9QQVJBTV0K
ICBXT1JEXzI9MHgxMDAKClszXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgvcmti
aW4vY29tbWl0L2NiYmM2ODY4MjIxZmI0MTZkNGYwZDg2YTEwZTQ5M2RiYmJjMWYxMTcKClJlZ2Fy
ZHMsCkpvbmFzCgo+IAo+IERpZCB5b3UgdHJ5IHdpdGggbmV3ZXIgYmxvYnMsIGkuZS4gZGRyIGlu
aXQgdjEuMDksIGJsMzEgdjEuMTkgYmxvYnMgWzFdCj4gYW5kIG1haW5saW5lIFUtQm9vdCBbMl0g
Pwo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vcmFkeGEvcmtiaW4vY29tbWl0cy9kZXZlbG9w
LXYyMDI1LjA0Lwo+IFsyXSBodHRwczovL3NvdXJjZS5kZW54LmRlL3UtYm9vdC9jb250cmlidXRv
cnMva3dpYm9vL3UtYm9vdC8tL2NvbW1pdHMvcmszNTc2Cj4gCj4gUmVnYXJkcywKPiBKb25hcwo+
IAo+Pgo+Pgo+PiBqdXN0IGZ5aTogCj4+IHRvIGNvbmZpcm06IHJlcGxhY2luZyBvbmx5IGJsMzEg
dG8gMS4wOCBtYWtlcyBhbGwgZ29vZAo+PiB3aXRoIHBlcmYgZ292LiBjbG9ja3Mgc3RheWluZyBv
biAyMjAwLzIzMDAKPj4gY2xvY2sgZXN0aW1hdGlvbnMgYXJlIHByZWRpY3RhYmxlLCBjb25zdGFu
dCBhbmQgZXN0aW1hdGluZyBjb25zdGFudGx5IDI0MDAKPj4gdXggaXMg4oCebGlrZeKAnSBvbiAz
NTg4Cj4+Cj4+IEFsZXhleTogbWFueSB0aHggZm9yIGZpbmRpbmcgcm9vdCBjYXVzZSBjb21wb25l
bnQhCj4+ICAgCj4+ICAgIAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
