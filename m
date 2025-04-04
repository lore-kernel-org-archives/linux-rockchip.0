Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17DDAC36010
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Apr 2025 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztOYblyyTeaMANrq2iem5yQnD/HVShaQP49aD5Rlh+k=; b=Aje0M7qzkMUjyy
	7tp5LWf9aiRbI5xSNuJlyZgwwx/lis/qnVjm2JavcVwny6JG+oZukow0CvLa9vepN8HM7bG3qEoS2
	D2ycQLESIBbchwFhIDJJ2DMVSKuioW7YkaJK0Utu80nM434DqK9DHhuQvnhoVQWBU8za6M203tNeS
	hbWLtOqJlAMMziwDZMdLMU7Z5MZacDM/ozURd9K/WeyfMJslPKR+o28oPgLMpQeZ53MfEFdNeJq2d
	PMmDB0t5nuycKsWz7m3vheYJQU5WUgskRgWp9PoTLjc6gMDX1o7qBVjZmWWhFUa108WNuK501IIgq
	UiEoyOTep+vyE8bUUcsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0d4b-0000000BFMh-2Dzm;
	Fri, 04 Apr 2025 09:10:49 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0d4Z-0000000BFLx-10fK;
	Fri, 04 Apr 2025 09:10:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1743757830; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lUShNtcKP1QxHgS4zTd/vp7ntLnSv7ce/K//cMKvdkE+oeS+qBHF7vuMBBWk8Uw4iK1EqD7l/fOn+KFpR9s4HREZ9mrFHyaq/TIjq9Aj24C1zjQunajzXJ3piXyyLNDAmfVjXd+paiG6lDNsIuoA6Anp73qbGEe8oqjA8yKvyPQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1743757830; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=V7vYC1DmOY7g/IbhaQA2XCL8pgap2RluhVGOxgHTG9M=; 
	b=laSlUDswAfoz779JiV1FURK9iKl0vfezQNSgAe3e5nTU+9mZW19jKnIPeU5NOsjljlV3e3u3uHj+W7MyrJR7HaY0MKwQ43/GanaCdVQM0t+OuzRiUim42ZSZ1NQAc9zZcIe3XoCpIMEzgaoOPc7SoulFJb+l5ZbJR3aCqBgiW38=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743757830;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=V7vYC1DmOY7g/IbhaQA2XCL8pgap2RluhVGOxgHTG9M=;
	b=E44qa2+1o1cOfxADZeHmQ/I6MSeEi+WlMmoO+Hbbt8vFwQdzCKSQatPq4tBP/hjx
	IrtF49UKs5kx/TU5k7GStPdlySyhxwxMOJoztqymr/CK3mVKRLQsCVWP5DeLojEdCoU
	TkYJhh6rYuPjnhxp1AcBHyg5g2q6GX47CiqA+qQk=
Received: by mx.zohomail.com with SMTPS id 1743757829476256.0475616658215;
	Fri, 4 Apr 2025 02:10:29 -0700 (PDT)
Message-ID: <133924c6-57ca-47ed-9e32-87b75b975f1c@collabora.com>
Date: Fri, 4 Apr 2025 11:10:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: Enable wide 4K in AV1 decoder
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20250403-hantro-av1-wuhd-v1-1-334629cb7f63@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250403-hantro-av1-wuhd-v1-1-334629cb7f63@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_021047_344369_85D33348 
X-CRM114-Status: GOOD (  12.23  )
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

CkxlIDAzLzA0LzIwMjUgw6AgMjE6MDcsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBU
ZXN0ZWQgb24gUkszNTg4LCB0aGlzIGRlY29kZXIgaXMgY2FwYWJsZSBvZiBoYW5kbGluZyBXVUhE
LCBzbyBidW1wIHRoZQo+IG1heGltdW0gd2lkdGggYW5kIGhlaWdodCBhY2NvcmRpbmdseS4KPgo+
IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFi
b3JhLmNvbT4KClRoYW5rcyBmb3IgdGhlIHBhdGNoLgoKUmV2aWV3ZWQtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgfCAyMCArKysr
KysrKysrLS0tLS0tLS0tLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEw
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vcm9ja2NoaXBfdnB1X2h3LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL3JvY2tjaGlwX3ZwdV9ody5jCj4gaW5kZXggOTY0MTIyZTdjMzU1OTM0Y2Q4MGViNDQy
MjE5ZjZiYTUxYmJhOGI3MS4uYjY0ZjA2NThmN2YxZTc3YjNlZmQ5NjBiMzVjZDU0ZGVjNGVkZjRl
ZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tj
aGlwX3ZwdV9ody5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9y
b2NrY2hpcF92cHVfaHcuYwo+IEBAIC04NSwxMCArODUsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVj
dCBoYW50cm9fZm10IHJvY2tjaGlwX3ZwdTk4MV9wb3N0cHJvY19mbXRzW10gPSB7Cj4gICAJCS5w
b3N0cHJvY2Vzc2VkID0gdHJ1ZSwKPiAgIAkJLmZybXNpemUgPSB7Cj4gICAJCQkubWluX3dpZHRo
ID0gUk9DS0NISVBfVlBVOTgxX01JTl9TSVpFLAo+IC0JCQkubWF4X3dpZHRoID0gRk1UX1VIRF9X
SURUSCwKPiArCQkJLm1heF93aWR0aCA9IEZNVF80S19XSURUSCwKPiAgIAkJCS5zdGVwX3dpZHRo
ID0gTUJfRElNLAo+ICAgCQkJLm1pbl9oZWlnaHQgPSBST0NLQ0hJUF9WUFU5ODFfTUlOX1NJWkUs
Cj4gLQkJCS5tYXhfaGVpZ2h0ID0gRk1UX1VIRF9IRUlHSFQsCj4gKwkJCS5tYXhfaGVpZ2h0ID0g
Rk1UXzRLX0hFSUdIVCwKPiAgIAkJCS5zdGVwX2hlaWdodCA9IE1CX0RJTSwKPiAgIAkJfSwKPiAg
IAl9LAo+IEBAIC05OSwxMCArOTksMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fZm10
IHJvY2tjaGlwX3ZwdTk4MV9wb3N0cHJvY19mbXRzW10gPSB7Cj4gICAJCS5wb3N0cHJvY2Vzc2Vk
ID0gdHJ1ZSwKPiAgIAkJLmZybXNpemUgPSB7Cj4gICAJCQkubWluX3dpZHRoID0gUk9DS0NISVBf
VlBVOTgxX01JTl9TSVpFLAo+IC0JCQkubWF4X3dpZHRoID0gRk1UX1VIRF9XSURUSCwKPiArCQkJ
Lm1heF93aWR0aCA9IEZNVF80S19XSURUSCwKPiAgIAkJCS5zdGVwX3dpZHRoID0gTUJfRElNLAo+
ICAgCQkJLm1pbl9oZWlnaHQgPSBST0NLQ0hJUF9WUFU5ODFfTUlOX1NJWkUsCj4gLQkJCS5tYXhf
aGVpZ2h0ID0gRk1UX1VIRF9IRUlHSFQsCj4gKwkJCS5tYXhfaGVpZ2h0ID0gRk1UXzRLX0hFSUdI
VCwKPiAgIAkJCS5zdGVwX2hlaWdodCA9IE1CX0RJTSwKPiAgIAkJfSwKPiAgIAl9LAo+IEBAIC0z
MTgsMTAgKzMxOCwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgcm9ja2NoaXBf
dnB1OTgxX2RlY19mbXRzW10gPSB7Cj4gICAJCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4gICAJCS5m
cm1zaXplID0gewo+ICAgCQkJLm1pbl93aWR0aCA9IFJPQ0tDSElQX1ZQVTk4MV9NSU5fU0laRSwK
PiAtCQkJLm1heF93aWR0aCA9IEZNVF9VSERfV0lEVEgsCj4gKwkJCS5tYXhfd2lkdGggPSBGTVRf
NEtfV0lEVEgsCj4gICAJCQkuc3RlcF93aWR0aCA9IE1CX0RJTSwKPiAgIAkJCS5taW5faGVpZ2h0
ID0gUk9DS0NISVBfVlBVOTgxX01JTl9TSVpFLAo+IC0JCQkubWF4X2hlaWdodCA9IEZNVF9VSERf
SEVJR0hULAo+ICsJCQkubWF4X2hlaWdodCA9IEZNVF80S19IRUlHSFQsCj4gICAJCQkuc3RlcF9o
ZWlnaHQgPSBNQl9ESU0sCj4gICAJCX0sCj4gICAJfSwKPiBAQCAtMzMxLDEwICszMzEsMTAgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fZm10IHJvY2tjaGlwX3ZwdTk4MV9kZWNfZm10c1td
ID0gewo+ICAgCQkubWF0Y2hfZGVwdGggPSB0cnVlLAo+ICAgCQkuZnJtc2l6ZSA9IHsKPiAgIAkJ
CS5taW5fd2lkdGggPSBST0NLQ0hJUF9WUFU5ODFfTUlOX1NJWkUsCj4gLQkJCS5tYXhfd2lkdGgg
PSBGTVRfVUhEX1dJRFRILAo+ICsJCQkubWF4X3dpZHRoID0gRk1UXzRLX1dJRFRILAo+ICAgCQkJ
LnN0ZXBfd2lkdGggPSBNQl9ESU0sCj4gICAJCQkubWluX2hlaWdodCA9IFJPQ0tDSElQX1ZQVTk4
MV9NSU5fU0laRSwKPiAtCQkJLm1heF9oZWlnaHQgPSBGTVRfVUhEX0hFSUdIVCwKPiArCQkJLm1h
eF9oZWlnaHQgPSBGTVRfNEtfSEVJR0hULAo+ICAgCQkJLnN0ZXBfaGVpZ2h0ID0gTUJfRElNLAo+
ICAgCQl9LAo+ICAgCX0sCj4gQEAgLTM0NCwxMCArMzQ0LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaGFudHJvX2ZtdCByb2NrY2hpcF92cHU5ODFfZGVjX2ZtdHNbXSA9IHsKPiAgIAkJLm1heF9k
ZXB0aCA9IDIsCj4gICAJCS5mcm1zaXplID0gewo+ICAgCQkJLm1pbl93aWR0aCA9IFJPQ0tDSElQ
X1ZQVTk4MV9NSU5fU0laRSwKPiAtCQkJLm1heF93aWR0aCA9IEZNVF9VSERfV0lEVEgsCj4gKwkJ
CS5tYXhfd2lkdGggPSBGTVRfNEtfV0lEVEgsCj4gICAJCQkuc3RlcF93aWR0aCA9IE1CX0RJTSwK
PiAgIAkJCS5taW5faGVpZ2h0ID0gUk9DS0NISVBfVlBVOTgxX01JTl9TSVpFLAo+IC0JCQkubWF4
X2hlaWdodCA9IEZNVF9VSERfSEVJR0hULAo+ICsJCQkubWF4X2hlaWdodCA9IEZNVF80S19IRUlH
SFQsCj4gICAJCQkuc3RlcF9oZWlnaHQgPSBNQl9ESU0sCj4gICAJCX0sCj4gICAJfSwKPgo+IC0t
LQo+IGJhc2UtY29tbWl0OiBmMjE1MTYxM2UwNDA5NzNjODY4ZDI4YzhiMDA4ODVkZmFiNjllYjc1
Cj4gY2hhbmdlLWlkOiAyMDI1MDQwMy1oYW50cm8tYXYxLXd1aGQtMTFlMmNmNWJlMWE0Cj4KPiBC
ZXN0IHJlZ2FyZHMsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
