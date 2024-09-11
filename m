Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E78DEE0219
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 08:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p1QNbghCKDk2T2Qms7mvrtnRH1HpnQnpSW/q9/9stPs=; b=V2Npiry1I0f9iY
	VsFNDkAW667YpWoJ18CXTWy0jol5netjinxCSIJav3Tcq1AiEA7Yag/4MeTHb6T2N79g4LwYV70sI
	XwGxeNJ8IWcVGnF2Nl6wr4C00CboxWhd2WIe3EJWKJ8du+lowBzEeQ74lhHnsjeTjCn7Xc+GuAfc3
	vly1z1p8T9uKIlNdW0eFQoAbLdnjPVUJZ2xJEUAIbs6F0ipv+3FSxMJkZaBK09ALQcPwkVuh2Zsje
	3z8dSA3XTvXI5NE6zO1kD44VlqVaIgMPC+crC0FKh4nCGqbm4QD6lNfH7ZnY5Tmip0cpbc3Ir4ze/
	nmFmIHY+eO2ATiA4I8cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIru-00000008hQx-36Rf;
	Wed, 11 Sep 2024 08:38:30 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIq1-00000008gQ0-0JZ4;
	Wed, 11 Sep 2024 08:36:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1726043782; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TIDGdcdMMfBpc3GHbU4HsJZjhc84rJnvMihZNDhRlLz0ZnDlnRBbV3jBBVzHA8tSwthmFj6xJquZAd0Fr0OhsPPMh5cPIry7w9oZMNuzcT0gg8Cj88I2qpQCYBdLsJiz8tKi5HSMKdIfG86DRhLil1ptb6wV+BDX2CdbNFqIsIM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1726043782; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=mT3ADEMXwV/Ibk5Ee+fwaO68r9xxRfMHx8SLf6Y/bbY=; 
	b=bG7/b18qTJfrInI0H64mfKIG3XrP9/+zBZ9NwrjVWWbRM/yvFCt8W37AjVlYe2Lmi16/3iLFKBjLOzTJy8boBYjpcdHNBsAtYcY/kqnphah7P/twS/uYxu9gnbtBG01gVaXsH8XucatAq4Ho3jboGcA1zklsmWrfxdYa0NKjWTg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1726043782;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=mT3ADEMXwV/Ibk5Ee+fwaO68r9xxRfMHx8SLf6Y/bbY=;
	b=ThBWrKYLX5PZ30+1eyNiC+HqemAmvx0PJ6nvsfCKx71okggGmjGioItyiudqEuXJ
	1bV39Fm/MsFwdlI7SBqIl15mqZD2hqUTnA5gmpwZ19j3x+QeAeMMUqVXnqCL3ld1xom
	UdHqI7gjZZm2w8ia/INBZ9g9LDRrFHhShXeFEr7Y=
Received: by mx.zohomail.com with SMTPS id 1726043780360437.0100803082877;
	Wed, 11 Sep 2024 01:36:20 -0700 (PDT)
Message-ID: <6c6e00fd-334c-41ae-963c-eeffb368b727@collabora.com>
Date: Wed, 11 Sep 2024 10:36:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: av1: Fix reference video buffer
 pointer assignment
To: Nicolas Dufresne <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de,
 hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <01020191dc45365b-26b103cd-153a-4b74-a663-ed7beecc1713-000000@eu-west-1.amazonses.com>
 <10f107089cf679bcabd03e49fc469bb89518deeb.camel@ndufresne.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <10f107089cf679bcabd03e49fc469bb89518deeb.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_013633_209204_130978B5 
X-CRM114-Status: GOOD (  10.97  )
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

CkxlIDEwLzA5LzIwMjQgw6AgMjE6NDQsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBI
aSwKPgo+IExlIG1hcmRpIDEwIHNlcHRlbWJyZSAyMDI0IMOgIDE0OjEwICswMDAwLCBCZW5qYW1p
biBHYWlnbmFyZCBhIMOpY3JpdMKgOgo+PiBBbHdheXMgZ2V0IG5ldyBkZXN0aW5hdGlvbiBidWZm
ZXIgZm9yIHJlZmVyZW5jZSBmcmFtZSBiZWNhdXNlIG5vdGhpbmcKPj4gZ2FyYW50eSB0aGUgb25l
IHNldCBwcmV2aW91c2x5IGlzIHN0aWxsIHZhbGlkIG9yIHVudXNlZC4KPiBNaW5kIGRvY3VtZW50
aW5nIGhlcmUgd2hpY2ggdGVzdHMgZ290IGZpeGVkIHdpdGggdGhpcyBjaGFuZ2UgPwoKT25seSBv
bmUgZnJvbSBjaHJvbWl1bSB0ZXN0IHN1aXRlOgpodHRwczovL2Nocm9taXVtLmdvb2dsZXNvdXJj
ZS5jb20vY2hyb21pdW0vc3JjL21lZGlhLysvcmVmcy9oZWFkcy9tYWluL3Rlc3QvZGF0YS90ZXN0
LTI1ZnBzLmF2MS5pdmYKCkZsdXN0ZXIgQVYxIHNjb3JlIHJlbWFpbnMgdW5jaGFuZ2VkLgoKPgo+
PiBGaXhlczogNzI3YTQwMDY4NmEyICgibWVkaWE6IHZlcmlzaWxpY29uOiBBZGQgUm9ja2NoaXAg
QVYxIGRlY29kZXIiKQo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgLi4uL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVjLmMgICAgfCAzICstLQo+PiAg
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1
OTgxX2h3X2F2MV9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9j
a2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+PiBpbmRleCAzNzJkZmNkMGZjZDkuLjJiOWExMDQ3
NDc5YyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9y
b2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+PiBAQCAtMTYxLDgg
KzE2MSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfZnJhbWVfcmVmKHN0
cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4+ICAgCQlhdjFfZGVjLT5mcmFtZV9yZWZzW2ldLnRpbWVz
dGFtcCA9IHRpbWVzdGFtcDsKPj4gICAJCWF2MV9kZWMtPmZyYW1lX3JlZnNbaV0uZnJhbWVfdHlw
ZSA9IGZyYW1lLT5mcmFtZV90eXBlOwo+PiAgIAkJYXYxX2RlYy0+ZnJhbWVfcmVmc1tpXS5vcmRl
cl9oaW50ID0gZnJhbWUtPm9yZGVyX2hpbnQ7Cj4+IC0JCWlmICghYXYxX2RlYy0+ZnJhbWVfcmVm
c1tpXS52YjJfcmVmKQo+PiAtCQkJYXYxX2RlYy0+ZnJhbWVfcmVmc1tpXS52YjJfcmVmID0gaGFu
dHJvX2dldF9kc3RfYnVmKGN0eCk7Cj4+ICsJCWF2MV9kZWMtPmZyYW1lX3JlZnNbaV0udmIyX3Jl
ZiA9IGhhbnRyb19nZXRfZHN0X2J1ZihjdHgpOwo+IEdvb2QgY2F0Y2gsIHdvdWxkIHN0aWxsIGJl
IG5pY2UgdG8gaW1wcm92ZSB0aGUgY29tbWl0IG1lc3NhZ2UuCj4KPiBSZXZpZXdlZC1ieTogTmlj
b2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+Cj4+ICAgCj4+
ICAgCQlmb3IgKGogPSAwOyBqIDwgVjRMMl9BVjFfVE9UQUxfUkVGU19QRVJfRlJBTUU7IGorKykK
Pj4gICAJCQlhdjFfZGVjLT5mcmFtZV9yZWZzW2ldLm9yZGVyX2hpbnRzW2pdID0gZnJhbWUtPm9y
ZGVyX2hpbnRzW2pdOwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
