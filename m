Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C58DC4829A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVCm+YTd+SII9EIaL9s1jLlyiKPK0wds8EPOSRUYRvE=; b=fErwAhTyc60cMW
	5CaKXVjBdCD6PdQUbKHWdUd2cMlasA8NPQBS9sxQff23bcUA5PD843oFHpuLF4ROmqrwHlHl3Q14G
	OkHnZnu7vMETLG2gvnLUzRIvtbNbuOb1CnSfn2mg0+/YbtqzHQROS/uPPFeWqN2sx2wpG/LzZLcAh
	S7K42rnBzWvGtTxHzGmIPqPMvVLJcrrVvAae/KehdYIBoQeDLDbIsjJZ9v4Ye2RMB9qFlHDVq5QlX
	qZlaBn0AToCq4GFjYJF/KwVZww8VS3DT7ywG/GHFCLHKQSNf7x+JSh4mxvywcKnlnMkLBz29r4eyv
	sH/GF568ZIfMnImkYq9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6Rc-0000000BjkZ-36hk;
	Wed, 14 Feb 2024 04:00:24 +0000
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6RY-0000000Bjit-2TVj;
	Wed, 14 Feb 2024 04:00:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id E7C8211400D7;
	Tue, 13 Feb 2024 23:00:15 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 13 Feb 2024 23:00:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1707883215; x=1707969615; bh=eSqa5vOfrNq3JhkGEjhlTovtf3Fms65Y
	5Wl9KASJnhQ=; b=bVoF6owyQdmalEip/o/0JXNG/IaQitreZFqqWh3mHLjkIDyh
	NtMm1YhHFe28g3s1afs4NpvpRGsZSCoVMkYZaIlHzCG7KF3TWoyata9fe869Srlt
	KtIq0kYFqXsIY0rG3FFu3RODA0pEhwvGcAyAeShwiez0ZcChygqSOfrncaxKNmyY
	PhayC7Jzc9ARYflnxguggFzxJNZs6V4Ugm7tCBmjtzOKJU1DrRIID766rg2PTZj3
	m1YIMLRuoHbFIXxRawA4f0Ua9Kh+ZKC/NsloKDXJMYGG+i6v+uVe45Kqt/iJ9XDm
	prK/kIAauCnkejz4QLkYvEj0WIWu5qXhtEddhg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707883215; x=
	1707969615; bh=eSqa5vOfrNq3JhkGEjhlTovtf3Fms65Y5Wl9KASJnhQ=; b=Q
	u3kXAZpLHb2gSNJio3rMDMMrtdUquV/3uM1FSeylMK2/0fKZ/mFCQJhSFoxj+hPl
	ZOAjbY6VILrDbBvmouIGZx6oysoBxyFY5HW4Hb30paTZFAnX2m6Y11D/ODMgSK8h
	vMAfcF5Kkrns/3hYNWWALugz1yYMMYAsjCTBNZXNAnbJ0ox7Hpcv1A6OuXqWCAQb
	YcQkJk/BmVTOJcslTJXd47ItpUI77paVjSLN35xd+ofDv+KURp41KZ7IyrMOIOVo
	IENPsAe1du+CX3XW0CB8R6fkr/IoB4MoKg1c5u//xFy7Z3iRD2zsWigKWHE62yi6
	NHtdE5anHlvmxyMexCdmw==
X-ME-Sender: <xms:zzrMZfnZ8_epbNtUEmqlLfnsT-7kvx1hYhnZ5aHwM89nR-20eDxAQA>
    <xme:zzrMZS2hK9Bb0YjRPf87hTp24R7e0Z6qgH09ByENLOwWycMCV_ftxmORVYSvDUP_Y
    R10oaXVeg>
X-ME-Received: <xmr:zzrMZVpmPmjj6EnCU260QAdScGKNcJs0aE1zkiyDQiQSyfQGzgu_IEfIaUHiPrRbSrGOUrzUa1YUMAKgRezmOtjefACor31rspdNMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdeikecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeetfeefheettdffheeggefhtdegfeeltdekjeeiteevtdefieevvedtheejfedvteen
    ucffohhmrghinheplhhinhgrrhhordhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepthhimhesfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:zzrMZXncYR6XbSIcg5M2AiPhJpbPBT-am3_L1eDdi4D2BhkSaX2vkw>
    <xmx:zzrMZd1Zj0WSrjxCoHajH3LQJGCmppcyd5NrGDi9K0mXBGJqK5O-zA>
    <xmx:zzrMZWttaGcUbmaWDYLD3wLLW-V8zdFPwsiqbKEPFfQQ_1tHV2uOCQ>
    <xmx:zzrMZc3ogRcU6nKwH_AKPyL9DIO1eu1TnbLMwFTgDrlodNvPLjshbA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 23:00:09 -0500 (EST)
Message-ID: <3aa1fe01-0d7d-4d42-af31-8cdd24363910@feathertop.org>
Date: Wed, 14 Feb 2024 15:00:06 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board
 bindings
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>
Cc: KyuHyuk Lee <lee@kyuhyuk.kr>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Tianling Shen <cnsztl@gmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240115145142.6292-1-lee@kyuhyuk.kr> <47795047.XUcTiDjVJD@diego>
 <194a0894-a9f9-4c5e-b304-e7278104d8e7@feathertop.org>
 <2185016.Icojqenx9y@phil>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <2185016.Icojqenx9y@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_200021_082180_62F75C85 
X-CRM114-Status: GOOD (  17.59  )
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

SGkgSGVpa28sCgpPbiAyLzE0LzI0IDA2OjMxLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBIaSBU
aW0sCj4KPiBBbSBNaXR0d29jaCwgMTcuIEphbnVhciAyMDI0LCAxMTowMzoyNiBDRVQgc2Nocmll
YiBUaW0gTHVubjoKPj4gT24gMS8xNy8yNCAwNjo1NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+
PiBBbSBEaWVuc3RhZywgMTYuIEphbnVhciAyMDI0LCAyMDoyNjowNSBDRVQgc2NocmllYiBSb2Ig
SGVycmluZzoKPj4+PiBPbiBUdWUsIEphbiAxNiwgMjAyNCBhdCAwOTozMTozNUFNICswMTAwLCBI
ZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4+Pj4gQW0gRGllbnN0YWcsIDE2LiBKYW51YXIgMjAyNCwg
MDg6MjQ6NDQgQ0VUIHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPj4+Pj4+IE9uIDE2LzAx
LzIwMjQgMDM6MDAsIFRpbSBMdW5uIHdyb3RlOgo+Pj4+Pj4+IE9uIDEvMTYvMjQgMDE6NTgsIEty
enlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4+Pj4+IE9uIDE1LzAxLzIwMjQgMTU6NTEsIEt5
dUh5dWsgTGVlIHdyb3RlOgo+Pj4+Pj4+Pj4gVGhlIHZlbmRvciBpbiBPRFJPSUQtTTEgaXMgaGFy
ZGtlcm5lbCwgYnV0IGl0IHdhcyBpbmNvcnJlY3RseSB3cml0dGVuCj4+Pj4+Pj4+PiBhcyByb2Nr
Y2hpcC4gRml4ZWQgdGhlIHZlbmRvciBwcmVmaXggY29ycmVjdGx5Lgo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IFNpZ25lZC1vZmYtYnk6IEt5dUh5dWsgTGVlIDxsZWVAa3l1aHl1ay5rcj4KPj4+Pj4+Pj4+
IC0tLQo+Pj4+Pj4+Pj4gICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbCB8IDIgKy0KPj4+Pj4+Pj4+ICAgICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+Pj4+Pj4gWW91IG5lZWQgdG8gc3RhcnQgdGVzdGlu
ZyB5b3VyIHBhdGNoZXMuIFlvdXIgbGFzdCBNMSBmYWlscyBhcyB3ZWxsIGluCj4+Pj4+Pj4+IG11
bHRpcGxlIHBsYWNlcy4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSXQgZG9lcyBub3QgbG9vayBsaWtlIHlv
dSB0ZXN0ZWQgdGhlIERUUyBhZ2FpbnN0IGJpbmRpbmdzLiBQbGVhc2UgcnVuCj4+Pj4+Pj4+IGBt
YWtlIGR0YnNfY2hlY2sgVz0xYCAoc2VlCj4+Pj4+Pj4+IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy93cml0aW5nLXNjaGVtYS5yc3Qgb3IKPj4+Pj4+Pj4gaHR0cHM6Ly93d3cubGlu
YXJvLm9yZy9ibG9nL3RpcHMtYW5kLXRyaWNrcy1mb3ItdmFsaWRhdGluZy1kZXZpY2V0cmVlLXNv
dXJjZXMtd2l0aC10aGUtZGV2aWNldHJlZS1zY2hlbWEvCj4+Pj4+Pj4+IGZvciBpbnN0cnVjdGlv
bnMpLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBUaGUgRFRTIGNoYW5nZSB3aWxsIGJyZWFrIHRoZSB1c2Vy
cywgc28gd291bGQgYmUgbmljZSB0byBtZW50aW9uIHRoaXMgaW4KPj4+Pj4+Pj4gaXRzIGNvbW1p
dCBtc2cuCj4+Pj4+Pj4gSSBub3RpY2UgdGhlcmUgYXJlIGEgY291cGxlIG9mIG90aGVyIGJvYXJk
cyB0aGF0IGluY29ycmVjdGx5IHVzZQo+Pj4+Pj4+IHJvY2tjaGlwIGFzIHRoZSB2ZW5kb3IgYWxz
bzoKPj4+Pj4+Pgo+Pj4+Pj4+ICAgICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTkt
b3JhbmdlcGkKPj4+Pj4+PiAgICAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTY4LWJw
aS1yMnBybwo+Pj4+Pj4+Cj4+Pj4+Pj4gUGVyaGFwcyB0aGVzZSBzaG91bGQgYWxzbyBiZSBmaXhl
ZCBhdCB0aGUgc2FtZSB0aW1lPwo+Pj4+Pj4gV2hhdCBpcyBoYXBwZW5pbmcgd2l0aCByb2NrY2hp
cCBib2FyZHM/Cj4+Pj4+IENvcHktcGFzdGUgc3R1ZmYgLi4uIGJvYXJkcyB1c2luZyByb2NrY2hp
cCxib2FyZG5hbWUgaW5zdGVhZCBvZgo+Pj4+PiB2ZW5kb3IsYm9hcmRuYW1lIGZvciB0aGVpciBj
b21wYXRpYmxlLgo+Pj4+Pgo+Pj4+PiBJIGRvIHJlbWVtYmVyIHVzIG5vdGljaW5nIHRoaXMgYSBu
dW1iZXIgb2YgdGltZXMgb24gc29tZSBib2FyZHMKPj4+Pj4gYW5kIHJlcXVlc3RpbmcgZml4ZXMs
IGJ1dCBsb29rcyBsaWtlIHNvbWUgc2xpcHBlZCB0aHJvdWdoLgo+Pj4+Pgo+Pj4+PiBTbyBJIGd1
ZXNzIFRpbSBpcyBzdWdnZXN0aW5nIGNoYW5naW5nIHRoZSBjb21wYXRpYmxlLCBidXQgd2l0aCBi
b2FyZHMKPj4+Pj4gYmVpbmcgbWVyZ2VkIGEgd2hpbGUgYWdvLCB0aGlzIHdvdWxkIGJyZWFrIGJh
Y2t3YXJkcyBjb21wYXRpYmlsaXR5Lgo+Pj4+PiBTbyBJIGd1ZXNzIGJvdGggdGhlIE9yYW5nZSBh
bmQgQmFuYW5hIFBpZXMgd2lsbCBuZWVkIHRvIGxpdmUgd2l0aCB0aGF0Lgo+Pj4+IFlvdSBtYXkg
Z2V0IGF3YXkgd2l0aCBpdCBiZWNhdXNlIHdlIGdlbmVyYWxseSBkb24ndCB1c2UgdGhlIG5hbWVz
Li4uCj4+Pj4KPj4+PiBUaG91Z2ggdGhlcmUgYXJlIHNvbWUgZGlzY3Vzc2lvbnMgdG8gc3RhcnQg
dXNpbmcgdGhlbSB0byBzZWxlY3QgZHRicyBieQo+Pj4+IGJvb3Rsb2FkZXJzLgo+Pj4gQWgsIHRo
YXQncyBnb29kIHRvIGtub3cgKGJvdGggcG9pbnRzKSAuLi4gc28gZXNzZW50aWFsbHkgcmlnaHQg
bm93IHdvdWxkIGJlCj4+PiBhIGdvb2QgdGltZSB0byBkbyB3aGF0IFRpbSBzdWdnZXN0ZWQsIGJl
Zm9yZSB0aGUgbmFtZXMgZ2V0IGFjdHVhbCB1c2FnZS4KPj4+Cj4+PiBAVGltOiBpcyB0aGF0IHNv
bWV0aGluZyB5b3UnZCB3YW50IHRvIGRvPwo+Pj4KPj4gU3VyZSwgSSB3aWxsIHByZXBhcmUgcGF0
Y2hlcyBhbmQgc2VuZCB0aGVtIG91dCBzb29uLgo+IEFzIEkgc3R1bWJsZWQgdXBvbiB0aGlzIHBh
dGNoIGp1c3Qgbm93LCBob3cgaXMgdGhhdCBjb21pbmcgYWxvbmc/IDotKQoKClRoYW5rcyBmb3Ig
dGhlIHJlbWluZGVyLCBJIHdpbGwgc2VuZCB0aGVtIG5vdyA7KQoKUmVnYXJkcwogwqAgVGltCgo+
Cj4gVGhhbmtzCj4gSGVpa28KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
