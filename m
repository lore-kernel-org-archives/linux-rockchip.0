Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 156B1CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Aug 2025 07:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dN+fC8LtST25+knEcfiTce9xWQ6SwbZ2OCNegdSFrk=; b=0jkCZDyXCrMqgF
	twIdJhCUp5n8Xv7YCBU0VeFaETCUwEjIUlrAG/MZWGHvtI/R1wI48iAhMe10mkKDxR2BdiZagGl92
	RqFkQkGO//HOy64ulGDd1eYdicYKbcZ3ujYkLwJB/YmqGETI/+g9isHPrt7eLxmcRV6m9Z5W9XEp3
	RpsCALdCPf9VrCIsfeNVdpByeY/1ADa7CdeB/5eWbTVueTRzPDjkaFkhNpNkYNwYqjqgynekz+sao
	2MJ+Q5SVrdYbo8xQfteawY2L6831ja7/YS+VYvJYlr4PPlYfiINcSt5DYATkwYOWRNLaMLhIhUA/z
	T5ZOuBuRO8cK/kD5xgpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq5Is-00000005q3o-02rG;
	Sun, 24 Aug 2025 07:38:14 +0000
Received: from smx-b.mailgw.jp ([210.171.6.216] helo=rmx-b.mailgw.jp)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uq5Io-00000005q3E-180z;
	Sun, 24 Aug 2025 07:38:12 +0000
Received: from bccml.bai.ne.jp (bccml-a.bai.ne.jp [210.171.3.161])
	by rmx-b.mailgw.jp  with ESMTP id 57O7bqps028395-57O7bqpt028395;
	Sun, 24 Aug 2025 16:37:52 +0900
Received: from [192.168.11.8] (bai859bcd79.bai.ne.jp [133.155.205.121])
	by bccml.bai.ne.jp (Postfix) with ESMTPA id 9DF3781AA6;
	Sun, 24 Aug 2025 16:37:51 +0900 (JST)
Message-ID: <5c5e6fe7-866c-4b79-bf52-35a393fbeb3d@bcc.bai.ne.jp>
Date: Sun, 24 Aug 2025 16:37:51 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] rm64: dts: rockchip: Enables sound output from the audio
 jack on OrangePI5 Plus
To: Maud Spierings <maud_spierings@hotmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org, robh@kernel.org
References: <20250821041555.4781-2-opi5plus@bcc.bai.ne.jp>
 <AM7P189MB1009A6BCD143F9BE5C3341FAE33CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Hide Hako <opi5plus@bcc.bai.ne.jp>
In-Reply-To: <AM7P189MB1009A6BCD143F9BE5C3341FAE33CA@AM7P189MB1009.EURP189.PROD.OUTLOOK.COM>
X-FE-Last-Public-Client-IP: 210.171.3.161
X-FE-Policy-ID: 3:1:2:SYSTEM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; d=bcc.bai.ne.jp; s=20240516; c=relaxed/relaxed;
 h=message-id:date:mime-version:subject:to:cc:references:from:content-type;
 bh=b612zyZuwwWZsTfE+gJ72Y9isVumaiaCq1dyAr8cbwI=;
 b=e2L96bCAWEGTgj74lXbRoZnxCIbWVL3ppVqDGlL0ZnVtS7RoSJm2HWDELDPzNuqRkIYFGDW1EkJ5
	rpHcIPzY025bY5XYdVQTqXqPXJIGgfV7VWbrEhojVRuwnePBlI83Sew7IpdlAL91zFnWDrnuAVy5
	ieE4VEQrqIqoxC7Vu5j4A+rkFKucGIzVg0AwKXnK971z1rYMff+5hFbB9GCcTKNTaP03rJvyZEb6
	d3rBs8470uc7P0ZW1bJ9bg9Ge0vfA9vu1rB8Ic32JvSApbE5QqIJj3wmoZklAY+CugAfxanWNy0w
	/g7lLA3rXnPXxcislm2I01rkBglnTvpUA4F+HA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_003810_873040_C693967E 
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gTXVhZAoKT24gMjAyNS8wOC8yMyAxOTowMCwgTWF1ZCBTcGllcmluZ3Mgd3JvdGU6Cj4g
SGVsbG8gSGlkZSwKPgo+PiBDdXJyZW50bHksIGFuYWxvZyBzb3VuZCBpcyBub3Qgb3V0cHV0IGZy
b20gdGhlIGF1ZGlvIGphY2suCj4+IFRoaXMgcGF0Y2ggYWxsb3dzIHlvdSB0byBzZWxlY3QgYW5h
bG9nIGhlYWRwaG9uZXMgaW4gYWxzYW1peGVyLgo+PiBXb3JrcyB3aXRoIGtlcm5lbCA2LjE2LjEs
IGJ1dCBub3QgNi4xNy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSGlkZSBIYWtvIDxvcGk1cGx1c0Bi
Y2MuYmFpLm5lLmpwPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtb3JhbmdlcGktNS5kdHNpIAo+PiA8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjUwODIxMDQxNTU1LjQ3ODEtMi1vcGk1cGx1c0BiY2MuYmFpLm5lLmpwLyNaMmUuOjIwMjUwODIx
MDQxNTU1LjQ3ODEtMi1vcGk1cGx1czo6NDBiY2MuYmFpLm5lLmpwOjFhcmNoOmFybTY0OmJvb3Q6
ZHRzOnJvY2tjaGlwOnJrMzU4OC1vcmFuZ2VwaS01LmR0c2k+IAo+PiB8IDEgKwo+PiDCoCAxIGZp
bGVjaGFuZ2VkIAo+PiA8aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUwODIxMDQxNTU1
LjQ3ODEtMi1vcGk1cGx1c0BiY2MuYmFpLm5lLmpwLyNyZWxhdGVkPiwgCj4+IDEgaW5zZXJ0aW9u
KCspCj4+Cj4+IGRpZmYgCj4+IDxodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA4MjEw
NDE1NTUuNDc4MS0yLW9waTVwbHVzQGJjYy5iYWkubmUuanAvI2laMmUuOjIwMjUwODIxMDQxNTU1
LjQ3ODEtMi1vcGk1cGx1czo6NDBiY2MuYmFpLm5lLmpwOjFhcmNoOmFybTY0OmJvb3Q6ZHRzOnJv
Y2tjaGlwOnJrMzU4OC1vcmFuZ2VwaS01LmR0c2k+IAo+PiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUuZHRzaSAKPj4gYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LmR0c2kgaW5kZXggCj4+IDkxZDU2YzM0
YS4uNjU2YWFjMmRmIDEwMDY0NCAtLS0gCj4+IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtb3JhbmdlcGktNS5kdHNpICsrKyAKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LmR0c2kgQEAgLTExMyw2IAo+PiArMTEzLDcgQEAgYW5h
bG9nX3NvdW5kOiBzb3VuZCB7IHNpbXBsZS1hdWRpby1jYXJkLG1jbGstZnMgPSA8MjU2PjsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgIHNpbXBsZS1hdWRpby1jYXJkLGJpdGNsb2NrLW1hc3RlciA9IDwm
ZGFpY3B1PjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNpbXBsZS1hdWRpby1jYXJkLGZyYW1lLW1h
c3RlciA9IDwmZGFpY3B1PjsKPj4gKyBzaW1wbGUtYXVkaW8tY2FyZCxwaW4tc3dpdGNoZXMgPSAi
SGVhZHBob25lcyI7IC8qVE9ETzogU0FSQURDX0lOMyAKPj4gaXMgdXNlZCBhcyBNSUMgZGV0ZWN0
aW9uIC8ga2V5IGlucHV0ICovCj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDCoCBkYWljcHU6IHNpbXBs
ZS1hdWRpby1jYXJkLGNwdSB7Cj4+IC0tIAo+PiAyLjQ4LjEKPiBJIHRyaWVkIHRoaXMgcGF0Y2gs
IGJ1dCBJIGFtIG5vdCBhYmxlIHRvIGdldCBhbnkgYXVkaW8gb3V0IG9uIG15IAo+IGhlYWRwaG9u
ZXMuIHVzaW5nIGtlcm5lbCA2LjE2LjEKPgo+IEkgZGlkIHNlZSBoZWFkcGhvbmVzIGluIGFsc2Ft
aXhlciwgYnV0IGNhbm5vdCBnZXQgaXQgdG8gYWN0dWFsbHkgCj4gb3V0cHV0IGFueSBhdWRpby4g
QW55IGhpbnRzPwpJIHVzZSB1YnVudHUgMjUuMDQuClNldHRpbmcgLT4gU291bmQgLT4gT3V0cHV0
IERldmljZS4KVHdvIEFuYWxvZyBPdXRwdXQtQnVpbHQtaW4tQXVkaW8gYXJlIGRpc3BsYXllZC4K
UGxlYXNlIHNlbGVjdCBzZWNvbmQgQW5hbG9nIE91dHB1dC1CdWlsdC1pbi1BdWRpby4KCkknbSBj
dXJyZW50bHkgd29ya2luZyBvbiBhbm90aGVyIHBhdGNoLiBBcyBwb2ludGVkIG91dCBieSBKaW1t
eSwgSSdtIApjcmVhdGluZyBhIHBhdGNoIGZvciByazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cy4K
VGhhbmsgeW91IE11YWQuCgpIaWRlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
