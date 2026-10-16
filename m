Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30AC6CC6B38
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 05:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VCw/FYxnJEx30dGWCtf59ScYNbZhH5RD8JJcMAJdrcY=; b=BVV9IHHxOSpNmk
	gx8ehzHyC4HVaClTB5xcwCr11q08qhpunJx1tpj4etpPTw0RiScMR1rqcxcfI1Hgwiwkynp03pb6Z
	WoVDcCnHB/wD4jMD0gTnxhnxELvHjvtBOCh+vBlo/lWKn1Joy9fiJ1GI/qFglmXIreXJ6TPj6QFBy
	tDqfAHzYaAV4D63aJFjFX9Kn9eeed99B964PmjBmoHrbsG7B3M/l0aETZmpSkrwsOsMzxE2j94IIk
	JhOkqG3vdumlxXfjQSVTIsAzuGvQr30+WT9bQSGdtR+zDHp3Xq3Wn9cqlr3LMz1npFRkU0JWcCb6S
	LOcpVNV7Z+H3dIKTUc1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHald-000000023Pg-0N0P;
	Fri, 16 Oct 2026 05:46:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHalb-000000023PT-3vQ8
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 05:46:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5A56C43C7A
	for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 05:46:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 373A41F000C7
	for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 05:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792129567;
	bh=LoKtrw7hyNRnwwtzfdOXkXTi9AGhOrp6JERxAlqfWSs=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc;
	b=JWyV6FqOv9QQWa1oVzJgkTyXA0h1PgnXMa5/dRfAxiA9L9E/+kQI1uUr6tkciK5KX
	 4Ti73fLs44mN99sMYAWSNNVM3JnWOWl5LeudwYgQUdn4jCg+oGTGVZDMcAliLFRsGN
	 49u0h71/rNIcINv6KH4Hq0qOxoX7HN0D8P3loAaP0vtJp65rJ1FKa72xPOqoFLoMS5
	 nmMzFPMs1r2EB7QA9SLXH9AYz+SdN54asOWpwyE7vKsfp0CZCSqnRr68hXpXnqJCGf
	 3XQJk5kKMXgIYSuNZrVdBY/LsWN1P0he7gqlmhyJ2BqD1aDQGx9x+KvnJIzF8gi2iJ
	 +y0oEn6bx3yEw==
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3aae7df0971so10147571fa.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 22:46:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBzcDYQK0IBSXHWVxDRcSFdiKv6fI8cL3N3Fp0A5LnplUocx3einAGQLTgszYcBOL11NK5wZczkb3nj9yqoAlQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYK84cMKufgnxwhMYgl7VZ2VdG7nFP9vbzAabp+OnERWIUGSAzXf
	mHtWzTtrXYDPA5C2CW4euSZjuWyCokxbF+7dBEyvsb8e5jB6X/w1yQ2XRZFePHaCV7O6xzxlmjF
	h0LMb+aaDm1C9L5l6YhvzYYgg+X7yQ08=
X-Received: by 2002:a05:651c:211e:b0:3a9:8450:813e with SMTP id
 38308e7fff4ca-3a9c56df14cmr54234641fa.20.1792129565639; Thu, 15 Oct 2026
 22:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <20261016-helios64-power-tree-v1-0-31d6c8dc5092@iav.lv> <20261016-helios64-power-tree-v1-2-31d6c8dc5092@iav.lv>
In-Reply-To: <20261016-helios64-power-tree-v1-2-31d6c8dc5092@iav.lv>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 16 Oct 2026 14:45:51 +0900
X-Gmail-Original-Message-ID: <CAGb2v64pcvwak2kC7rPwiZm4=BCnb+Kh3WUps3J-19=DC6pkzw@mail.gmail.com>
X-Gm-Features: AclHuK8uVlitNY7i2NB9uFdKYW8oiH_IPPYtbAi4f1OZkEfiAEY-pnEtxZkD2cM
Message-ID: <CAGb2v64pcvwak2kC7rPwiZm4=BCnb+Kh3WUps3J-19=DC6pkzw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Describe the unused RK808
 outputs on Kobol Helios64
To: iav@iav.lv
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBPY3QgMTYsIDIwMjYgYXQgMjozNOKAr1BNIElnb3IgVmVsa292IHZpYSBCNCBSZWxh
eQo8ZGV2bnVsbCtpYXYuaWF2Lmx2QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gRnJvbTogSWdvciBW
ZWxrb3YgPGlhdkBpYXYubHY+Cj4KPiBUaGUgSGVsaW9zNjQgc2NoZW1hdGljIGxpc3RzIFJLODA4
IExET19SRUcxLCBMRE9fUkVHMiwgTERPX1JFRzUsCj4gTERPX1JFRzcgYW5kIFNXSVRDSF9SRUcy
IGFzIHVudXNlZCAoc2hlZXQgMikuIEVhY2ggb3V0cHV0IGhhcyBvbmx5IGEKPiAwLjEgdUYgY2Fw
YWNpdG9yIGFuZCBnb2VzIG5vd2hlcmUgZWxzZSAoc2hlZXQgNikuCj4KPiBEZXNjcmliZSB0aGVt
IHdpdGggdGhlIG5hbWVzIGZyb20gdGhlIHNjaGVtYXRpYyBhbmQgbm8gY29uc3RyYWludHMsIHNv
Cj4gdGhlIHJlZ3VsYXRvciBjb3JlIHN3aXRjaGVzIHRoZW0gb2ZmIGFzIHVudXNlZC4KClRvIGJl
IGhvbmVzdCB0aGlzIHNlZW1zIGEgYml0IG9kZC4gSWYgc29tZXRoaW5nIGlzIHVudXNlZCB5b3Ug
c2hvdWxkCm5vdCBuZWVkIHRvIGRlc2NyaWJlIGl0LgoKQ2hlbll1CgoKPiBMaW5rOiBodHRwczov
L3dpa2kua29ib2wuaW8vaGVsaW9zNjQvZmlsZXMvc2NoZW1hdGljcy9IZWxpb3M2NF9TY2hlbWF0
aWNzX1JldjEuMi5wZGYKPiBBc3Npc3RlZC1ieTogTExNCj4gU2lnbmVkLW9mZi1ieTogSWdvciBW
ZWxrb3YgPGlhdkBpYXYubHY+Cj4gLS0tCj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
a29ib2wtaGVsaW9zNjQuZHRzICAgICAgfCAyMCArKysrKysrKysrKysrKysrKysrKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cwo+IGluZGV4IGNmMjQ3
ZDZjNjIxMi4uMzVlOTJlMWM4ZmY4IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cwo+IEBAIC00MzYsNiArNDM2
LDE0IEBAIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfTsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgdmNjMXY4X2R2cDogTERPX1JFRzEgewo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjMXY4X2R2cCI7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgfTsKPiArCj4gKyAgICAgICAgICAgICAgICAgICAgICAgdmNjM3YwX3RvdWNoOiBM
RE9fUkVHMiB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFt
ZSA9ICJ2Y2MzdjBfdG91Y2giOwo+ICsgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gKwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgIHZjYzF2OF9zMzogTERPX1JFRzMgewo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjMXY4X3MzIjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gQEAgLTQ2
Miw2ICs0NzAsMTAgQEAgcmVndWxhdG9yLXN0YXRlLW1lbSB7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4KPiArICAgICAg
ICAgICAgICAgICAgICAgICB2Y2NhM3YwX2NvZGVjOiBMRE9fUkVHNSB7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2NhM3YwX2NvZGVjIjsKPiAr
ICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsKPiAgICAgICAgICAgICAgICAgICAgICAgICB2
Y2MxdjVfczM6IExET19SRUc2IHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJl
Z3VsYXRvci1uYW1lID0gInZjYzF2NV9zMyI7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+IEBAIC00NzUsNiArNDg3LDEwIEBAIHJlZ3VsYXRv
ci1zdGF0ZS1tZW0gewo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICB9Owo+Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgdmNjYTF2
OF9jb2RlYzogTERPX1JFRzcgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVn
dWxhdG9yLW5hbWUgPSAidmNjYTF2OF9jb2RlYyI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
fTsKPiArCj4gICAgICAgICAgICAgICAgICAgICAgICAgdmNjM3YwX3MzOiBMRE9fUkVHOCB7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBf
czMiOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1v
bjsKPiBAQCAtNDk3LDYgKzUxMywxMCBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW9mZi1pbi1zdXNwZW5k
Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAgICAgICAg
ICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAgICAgICAgICAgICB2Y2MzdjNfczA6IFNXSVRD
SF9SRUcyIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1l
ID0gInZjYzN2M19zMCI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICAg
ICAgICAgfTsKPiAgICAgICAgIH07Cj4KPgo+IC0tCj4gMi40My4wCj4KPgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
