Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1B90C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 09:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+/1E22VEKYVayeECT4/MCxOft7ISt2ResABWppU3VU=; b=Ed5H4njOQw070Y
	JJY3L3cZPchF5mZ31hQNnyU502djbw1RxBe5V4Rx3AUwNUpKYFUII3QIJgcxsvxGbocMa+2bNfiWI
	VeesxkZ84nE14KWXrGs6xU1gymsynvwA5x2AjuuHC1kXrJiGgznCG+LIKTxLq4tf7nTWcoW5hgve3
	oSdZpJNRJZUEpPDupar+MTv61I6T3L0bAPkGelks7zW8OKZd/74MeOjgJ09bJHDArRsls8oOPHBTN
	mgplXFqFQlgeIE4wtuBtno8YKeruwlPTW57epfIpke4VlHfjsZX7CFqFZxaXZ1f5Y5fb7JxYbT9sd
	kEcevrwZB7Ogmezi+oCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2hR-00FBLa-1W;
	Wed, 17 Jan 2024 09:59:09 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2hN-00FBK6-0a;
	Wed, 17 Jan 2024 09:59:06 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 418985C01BD;
	Wed, 17 Jan 2024 04:59:04 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 17 Jan 2024 04:59:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705485544; x=1705571944; bh=FDqjaZ03gFkn9ORtPEiPxozWQL1Qp2mV
	EXyd5abNaqU=; b=el1d9IgECykrWvy2Dn3AKGmFwsnowYik3h06zjECRGi4+y4I
	QH6Xrg5k3ZzIrdrhOj3jwaleoK7bh12DYolGADB/gkp8wyBQP+K75znWZKIL3FBj
	8Zex3DKGbFe4lCbHHkGp79msfJwgSeFV8N5Y1elBdu7TwfPCwEYs24aV/RN2VEVg
	q3h/vDm5fF/7AJFnQk2arbSGQqdB0QY828I9cdrX+ld8Nyg+d7v0Tg/YZIBHq/g7
	gEZx8IK22N8V3xEDJe87LJblm6Xq6q7Wy+BI9niDmuUPk8ozCUVP1lxyUc4Nw7kg
	o/AYp9qdWief0Qn7JY51AhQSyNK0qjQXLKtxWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705485544; x=
	1705571944; bh=FDqjaZ03gFkn9ORtPEiPxozWQL1Qp2mVEXyd5abNaqU=; b=y
	7RMsG2jIPO+QzvMxqt/FW9cL/6QkWznRjH8MAQX8zlcSg/nWg+T0TxJCB513UjSf
	ZzPn9PY4VWJFRoqTSlHe456lmufIl/C3ZeyErx3ndtN0F9q+6jK1fd6+X7ILWm8n
	Kj+fDVIQ4fLnrnEN3PC8tMUcAyt5Lksaz45mOkG/PewTXZW9QI5ZRaTDzcwA9gJK
	QrwBIydoa3YPgHPdaNb+jXjOqk4Ad6IUaMUvLIlnQmQ2Sg+7EdZ5h/cciECgRbOW
	yq0OHRSfy1aBR+urZqtH0GQoKzIsOsIodQdq2sRzHUVN3x9N4GR6NlQRhGNcln62
	0huKsvg6fP8KTw9xH837Q==
X-ME-Sender: <xms:56SnZX2nXUkAYbhOcjgGwpkCH1aLPc4_qM8hb9Vw0iUH3mMMzkuf2w>
    <xme:56SnZWG6jHaB2pVIvBHMGUtyitbqRdM1kmMiXDR0rre3_-J2ZcWWImQ7sFUd3i8ZS
    HlTvj4khA>
X-ME-Received: <xmr:56SnZX7ZKtBrx5mtrUHTmhYR-mGSl1PDN_qOA9r3i-MTPOOPkT5G7avUUNobOAq0TqHaBpHEt8H_h_FYkNk9HyS2GM2sZ42PkJD5Gw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgtdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:56SnZc06sSo7kXK53_9jJ6gjrv334GReo3Ufsv8YBRFLMcSgl0y8lQ>
    <xmx:56SnZaH7iZ97AohgmTeahkKtLtgiz3e4Z-kdPYq5ymQGr565uZptBg>
    <xmx:56SnZd9lJf3AOLT-EjNKayic3rbT_k5djkSKen-9kblokQXmbkBMKQ>
    <xmx:6KSnZV-u7JgdL-RQOv2D54bq9ir1EKDtf7HOWR-89LcpLpRgzoEEeA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 04:58:59 -0500 (EST)
Message-ID: <9636bcb9-6b4b-41ef-bcfc-ff39c11d127e@feathertop.org>
Date: Wed, 17 Jan 2024 20:58:56 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: rockchip: Document rk809 support for
 rk817 audio codec
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Conor Dooley <conor@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-2-tim@feathertop.org>
 <20240116-mangle-parish-93b5cd672d17@spud>
 <72ed509c-f754-4e65-a65e-130185777c53@feathertop.org>
 <b798a7cc-c9fd-4bc3-bb14-401e10e4eeb8@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <b798a7cc-c9fd-4bc3-bb14-401e10e4eeb8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_015905_311283_ABB88385 
X-CRM114-Status: GOOD (  20.14  )
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

Ck9uIDEvMTcvMjQgMjA6MjIsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMTcvMDEv
MjAyNCAxMDoxOSwgVGltIEx1bm4gd3JvdGU6Cj4+IE9uIDEvMTcvMjQgMDQ6MDYsIENvbm9yIERv
b2xleSB3cm90ZToKPj4+IE9uIFdlZCwgSmFuIDE3LCAyMDI0IGF0IDEyOjIxOjAwQU0gKzExMDAs
IFRpbSBMdW5uIHdyb3RlOgo+Pj4+IFJvY2tjaGlwIFJLODA5IHNoYXJlcyB0aGUgc2FtZSBhdWRp
byBjb2RlYyBhcyB0aGUgcms4MTcgbWZkLCBpdCBpcyBhbHNvCj4+Pj4gdXNpbmcgdGhlIHNhbWUg
cms4MTdfY29kZWMgZHJpdmVyLiBIb3dldmVyIGl0IGlzIG1pc3NpbmcgZnJvbSB0aGUKPj4+PiBi
aW5kaW5ncy4KPj4+Pgo+Pj4+IFVwZGF0ZSBkdC1iaW5kaW5nIGRvY3VtZW50YXRpb24gZm9yIHJr
ODA5IHRvIGluY2x1ZGUgdGhlIGF1ZGlvIGNvZGVjCj4+Pj4gcHJvcGVydGllcy4gVGhpcyBmaXhl
cyB0aGUgZm9sbG93aW5nIHdhcm5pbmcgZnJvbSBkdGIgY2hlY2s6Cj4+Pj4KPj4+PiBwbWljQDIw
OiAnI3NvdW5kLWRhaS1jZWxscycsICdhc3NpZ25lZC1jbG9jay1wYXJlbnRzJywgJ2Fzc2lnbmVk
LWNsb2NrcycsCj4+Pj4gICAgICAnY2xvY2stbmFtZXMnLCAnY2xvY2tzJywgJ2NvZGVjJyBkbyBu
b3QgbWF0Y2ggYW55IG9mIHRoZSByZWdleGVzOgo+Pj4+ICAgICAgJ3BpbmN0cmwtWzAtOV0rJwo+
Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogVGltIEx1bm48dGltQGZlYXRoZXJ0b3Aub3JnPgo+Pj4+
IC0tLQo+Pj4+Cj4+Pj4gKG5vIGNoYW5nZXMgc2luY2UgdjEpCj4+Pj4KPj4+PiAgICAuLi4vYmlu
ZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA5LnlhbWwgICAgICAgICAgfCAzMCArKysrKysrKysrKysr
KysrKystCj4+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDI5IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA5LnlhbWwKPj4+PiBpbmRleCA4MzljMDUyMWYxZTUu
LmJhYzJlNzUxZTJmMiAxMDA2NDQKPj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA5LnlhbWwKPj4+PiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA5LnlhbWwKPj4+PiBAQCAtMTIs
NyArMTIsNyBAQCBtYWludGFpbmVyczoKPj4+PiAgICAKPj4+PiAgICBkZXNjcmlwdGlvbjogfAo+
Pj4+ICAgICAgUm9ja2NoaXAgUks4MDkgc2VyaWVzIFBNSUMuIFRoaXMgZGV2aWNlIGNvbnNpc3Rz
IG9mIGFuIGkyYyBjb250cm9sbGVkIE1GRAo+Pj4+IC0gIHRoYXQgaW5jbHVkZXMgcmVndWxhdG9y
cywgYW4gUlRDLCBhbmQgcG93ZXIgYnV0dG9uLgo+Pj4+ICsgIHRoYXQgaW5jbHVkZXMgcmVndWxh
dG9ycywgYW4gUlRDLCBhIHBvd2VyIGJ1dHRvbiwgYW5kIGFuIGF1ZGlvIGNvZGVjLgo+Pj4+ICAg
IAo+Pj4+ICAgIHByb3BlcnRpZXM6Cj4+Pj4gICAgICBjb21wYXRpYmxlOgo+Pj4+IEBAIC05Myw2
ICs5MywzNCBAQCBwcm9wZXJ0aWVzOgo+Pj4+ICAgICAgICAgICAgdW5ldmFsdWF0ZWRQcm9wZXJ0
aWVzOiBmYWxzZQo+Pj4+ICAgICAgICB1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4+Pj4g
ICAgCj4+Pj4gKyAgY2xvY2tzOgo+Pj4+ICsgICAgZGVzY3JpcHRpb246Cj4+Pj4gKyAgICAgIFRo
ZSBpbnB1dCBjbG9jayBmb3IgdGhlIGF1ZGlvIGNvZGVjLgo+Pj4+ICsKPj4+PiArICBjbG9jay1u
YW1lczoKPj4+PiArICAgIGRlc2NyaXB0aW9uOgo+Pj4+ICsgICAgICBUaGUgY2xvY2sgbmFtZSBm
b3IgdGhlIGNvZGVjIGNsb2NrLgo+Pj4+ICsgICAgaXRlbXM6Cj4+Pj4gKyAgICAgIC0gY29uc3Q6
IG1jbGsKPj4+IFlvdSBoYXZlIG9uZSBjbG9jayBvbmx5LCB3aHkgZG8geW91IG5lZWQgdG8gaGF2
ZSBjbG9jay1uYW1lcz8KPj4gVGhpcyBpcyBqdXN0IGRvY3VtZW50aW5nIHRoZSBleGlzdGluZyBy
azgxNyBjb2RlYyBkcml2ZXIsIHdoaWNoIGlzIHVzaW5nCj4+IHRoZSBuYW1lIHRvIGdldCB0aGUg
Y2xvY2s6Cj4+Cj4+IGRldm1fY2xrX2dldChwZGV2LT5kZXYucGFyZW50LCAibWNsayIpOwo+Pgo+
PiBUaHVzIGkgZG9udCB0aGluayBjbG9jay1uYW1lcyBjYW7CoCBiZSByZW1vdmVkIGluIHRoaXMg
Y2FzZT8gYXRsZWFzdCBub3QKPj4gd2l0aG91dCBwYXRjaGluZyB0aGUgZHJpdmVyIGFzIHdlbGw/
Cj4gWW91ciBjb21taXQgbXNnIGNsYWltcyB0aGlzIGlzIGZvciBleGlzdGluZyBkcml2ZXIgdXNp
bmcgcms4MTdfY29kZWMuIFNvCj4gd2hhdCBhYm91dCByazgxNz8gSXQgZG9lcyBub3QgdXNlIGNs
b2Nrcz8KPgpyazgxNyB1c2VzIGV4YWN0bHkgdGhlIHNhbWUgcHJvcGVydGllcyBhcyB3aGF0IEkg
aW5jbHVkZWQgaGVyZS4gaS5lIGl0IAppbmNsdWRlcyBib3RoIGNsb2NrcyBhbmQgY2xvY2stbmFt
ZXMuCk15IHBvaW50IGFib3ZlIHdhcyB0aGF0IEkgZG9udCB0aGluayBJIGNhbiBqdXN0IHJlbW92
ZSB0aGUgY2xvY2stbmFtZXMgCnByb3BlcnR5IGFzIENvbm9yIHN1Z2dlc3RlZD8gSSBjb3VsZCBi
ZSB3cm9uZyB0aG91Z2guCj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
