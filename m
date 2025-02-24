Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AAE4C021B3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 09:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LV50PwhSXBcmPEpDqef9D6FcpBMxlCHRGxoxV1BsG3A=; b=Gqs17auu0DoHIK
	SYgjiKa8YhcdfS601YnvOPX1eVCsZLRVQX8c35rv5mnNq1z4pRz8qDxa+yBn70IruIsZ8EE+/W6Mj
	ruMohxx8XUPpT9l/+kzm89CrkZbAnrxnjyBY3LSjWm4F8dpo+l3a9tOJzDF9p3mFIwZqxs00Pgo2o
	7QENRqMF79C1cPdlDBpMtjip8hq8NlJMvhvS3Ph26dkd/8awleyJPzKWN1ui35F4DyXodDzxY14sC
	pGcsFnJ1KwtxeKfIBZCd4A1/0GC+JTIlOLvCnQ82Mvxkovb4VtsLSCGdZ+UCyoUM8CE5UK0O+/o/Q
	97nay3+3yLUvTg0Xcmvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmV8b-0000000CzSG-09as;
	Mon, 24 Feb 2025 09:52:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmUxx-0000000Cxfe-0Iep;
	Mon, 24 Feb 2025 09:41:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 836245C06DE;
	Mon, 24 Feb 2025 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1968C4CED6;
	Mon, 24 Feb 2025 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740390092;
	bh=K/BMaw7yksUW7asTY2fGFkaWht/cMbjJx1rTVr0UTP4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=KhmrJpQSqlbJvrog1f0QHlNyHDozd/5pew3gkhjaMJTlYGT1dzBQcpDRw+2p9FIy9
	 2s4YAtUkyEQJrSerisG7+sH5UJ5wmVt/YtRfMXCeDxnsbIZlxEhJIQstInwuBc4ZTP
	 v39bYkIaCO5hlX+4DgPv7tai36HwjkdHD6KsIgCNtRYsBCBWlqomWp45rP2SgXrlun
	 YG93mEu7sejdgpEfeiIyOL2ksJZ5oqdKEAhoF+2GWD5Q4RiQykZ1coUhVJjfYma2B3
	 NAYFriOCgVbjb3vzDNgGd2Ok0qMWCn6n3pudTyyFypOrY33ewo6We+XzuVMAYtnq9i
	 Imqk3pdx9QcrA==
Message-ID: <fa49d52f-0a55-4bce-8742-5b4f018c170c@kernel.org>
Date: Mon, 24 Feb 2025 10:41:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: add rk3562 cru bindings
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20241224092310.3814460-1-kever.yang@rock-chips.com>
 <krrqtjllx6akrurefbtuhgxw6bwmkiro5rtvdexoevjyufm2uz@r5biw7kbttyr>
 <23c84fd5-83f4-46b3-a247-56e4a2c06d1d@rock-chips.com>
 <3234236.fEcJ0Lxnt5@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <3234236.fEcJ0Lxnt5@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_014133_222121_E53C52F4 
X-CRM114-Status: GOOD (  14.24  )
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

T24gMjQvMDIvMjAyNSAxMDowNSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAy
NC4gRmVicnVhciAyMDI1LCAwOTo1MjoxMiBNRVogc2NocmllYiBLZXZlciBZYW5nOgo+PiBIaSBL
cnp5c3p0b2YsCj4+Cj4+IE9uIDIwMjQvMTIvMjcgMTY6MjUsIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6Cj4+PiBPbiBUdWUsIERlYyAyNCwgMjAyNCBhdCAwNToyMzowOFBNICswODAwLCBLZXZl
ciBZYW5nIHdyb3RlOgo+Pj4+IERvY3VtZW50IHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5ncyBvZiB0
aGUgcm9ja2NoaXAgcmszNTYyIFNvQwo+Pj4+IGNsb2NrIGFuZCByZXNldCB1bml0Lgo+Pj4+Cj4+
Pj4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4K
Pj4+PiAtLS0KPj4+IEEgbml0LCBzdWJqZWN0OiBkcm9wIHNlY29uZC9sYXN0LCByZWR1bmRhbnQg
ImJpbmRpbmdzIi4gVGhlCj4+PiAiZHQtYmluZGluZ3MiIHByZWZpeCBpcyBhbHJlYWR5IHN0YXRp
bmcgdGhhdCB0aGVzZSBhcmUgYmluZGluZ3MuCj4+PiBTZWUgYWxzbzoKPj4+IGh0dHBzOi8vZWxp
eGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2LjctcmM4L3NvdXJjZS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCNMMTgKPj4+Cj4+Pgo+Pj4gcy9y
azM1NjIvUm9jY2hpcCBSSzM1NjIvCj4+PiBvciB3aGF0ZXZlciB5b3VyIHByb3BlciBuYW1lIGlz
IChhbmQgdXNlIHByb3BlciBjYXBpdGFsaXplZCBwYXJ0cyBvZgo+Pj4gcHJvZHVjdHMpCj4+IFdp
bGwgdXBkYXRlLgo+Pj4KPj4+PiArcHJvcGVydGllczoKPj4+PiArICBjb21wYXRpYmxlOgo+Pj4+
ICsgICAgY29uc3Q6IHJvY2tjaGlwLHJrMzU2Mi1jcnUKPj4+PiArCj4+Pj4gKyAgcmVnOgo+Pj4+
ICsgICAgbWF4SXRlbXM6IDEKPj4+PiArCj4+Pj4gKyAgIiNjbG9jay1jZWxscyI6Cj4+Pj4gKyAg
ICBjb25zdDogMQo+Pj4+ICsKPj4+PiArICAiI3Jlc2V0LWNlbGxzIjoKPj4+PiArICAgIGNvbnN0
OiAxCj4+Pj4gKwo+Pj4+ICsgIGNsb2NrczoKPj4+PiArICAgIG1heEl0ZW1zOiAyCj4+Pgo+Pj4g
V2h5IGNsb2NrcyBhcmUgbm90IHJlcXVpcmVkPwo+PiBUaGUgY3J1IGlzIHRoZSBjbG9jay1jb250
cm9sbGVyLCB3aGljaCBpcyBhbHdheXMgb24gbW9kdWxlIGluIFNvQywKPj4gc28gd2UgZG9uJ3Qg
bmVlZCB0byBlbmFibGUgImNsb2NrIiBmb3IgdGhpcyBjbG9jay1jb250cm9sbGVyLgo+IAo+IGht
bSwgc2hvdWxkbid0IGNsb2NrcyBiZQo+IAo+ICAgY2xvY2tzOgo+ICAgICBtaW5JdGVtczogMQo+
ICAgICBtYXhJdGVtczogMgo+IAo+IFRoZSBDUlUgX25lZWRzXyB0aGUgeGluMjRtIGJlY2F1c2Ug
dGhhdCBpcyB0aGUgbWFpbiBvc2NpbGxhdG9yCj4gc3VwcGx5aW5nIGV2ZXJ5dGhpbmcsIGJ1dCBf
Y2FuXyB3b3JrIHdvcmsgd2l0aG91dCB4aW4zMmsgLgo+IAo+IFNpZGVub3RlOiBpdHNlZW1zIHdl
J3JlIGRvaW5nIHRoaXMgd3Jvbmcgb24gcmszNTg4CgoKS2V2ZXIgcmVzcG9uZGVkIHRvIGEgcmV2
aWV3IDIgbW9udGhzIGFnby4gTm9uZSBvZiB0aGVzZSBlbWFpbHMgYXJlIGluIG15CmluYm94IGFu
eW1vcmUuIEFsbCBjb250ZXh0IGlzIGdvbmUgYXMgd2VsbC4KCk5vLCBJIGV4cGVjdCB0aGUgY29t
bWVudHMgdG8gYmUgYXBwbGllZCBmdWxsIGluIHN1Y2ggY2FzZS4gVGhpcyBpcyBhIGJpdApyaWRp
Y2lsb3VzICB0aGF0IG5vdyBJIG5lZWQgdG8gbG9vayBmb3IgdGhhdCBlbWFpbCBzb213aGVyZSB0
byBjaGVjawp3aGV0aGVyIGltcGxlbWVudGF0aW9uIGZvbGxvd3MgcmVjZWl2ZWQgcmVzcG9uc2Uu
IFJlc3BvbnNlIGFmdGVyIDIgbW9udGhzIQoKCgo+IAo+IEhlaWtvCj4gCj4gCgoKQmVzdCByZWdh
cmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
