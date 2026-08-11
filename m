Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA59CC5B572
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 16:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPLILE68Gk3Nq5t5ZJShj1CE3DWshIa4xz7DgBJ+DTU=; b=loSG1Mmw9iDBY5
	J8gw3iXLePkYJUNwjvSbGUH8z1VlVV9hHQ8Pt1BnPafIV0ZQMPj70Iu+LirdmVXITHgiqsmStyilw
	t6AMBs3ip7jXf+OI06eFfmTFhbf5Pnd049MoWaDLqHhEgZ2FIVtWKm/1mVfHBl2nndgOE7+1TYjU9
	K2Z4y2NLuD3OvoJXCBBwS6Zsoe6exrkg61Ga08/3ZsMk9X3/uYssQpJgFuTygZFaxWRlJ71ifTYFN
	sYAqIsN3TYBB+UDF+ME9DivtIThuUuORhiEEZx3D+rTSXmxTHptPPCTL6EFF4s83W6zg5PqmKDz5d
	Q92cocXDM7oQxodp3CFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpVP-0000000EWZE-3whE;
	Tue, 11 Aug 2026 16:39:11 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtpVO-0000000EWYT-0sEt
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Aug 2026 16:39:11 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-92ed19f4d60so6235985a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Aug 2026 09:39:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786466348; cv=none;
        d=google.com; s=arc-20260327;
        b=i7vDonit0fOzs+ibhcIE1BY5zjamgLwjjWccepeqD7TDWSm/zbiBAobk6Hw4SaEsNr
         iiM2gl9ylPoKm1se+ercogo5jwkrWd7Kd3NBt9L0mObiVHRV5M9CnjOhbJ1H/s6RKvZx
         4bGRW80KqVjK0/a4cxbR7Ovs4s+zi20AHRtZjgU2u+PmHLqrQzifl2OeGTVF3E7S/TjI
         G0Iv51piYi28831dV2iFFkcX5OWpBuMKAMx0PvnL4GM+C03pdVkCa3RjDCi+IoLeowea
         MBOJFpVZDgUxyPWVuGKITh0+N3itpVOKUhry0iMn2kzGTLDpjp5hIPoxD+SVyeqvSIHD
         qxXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4bcFHmkU9nSJ0MDbVyrPBqiYyAs1hPGT8G7FVHkOHZ4=;
        fh=905E/STsnTrJh7lQ6tNNnNOzqo4hNUaYD9kq27rqk6A=;
        b=GlJdUE0otXBb7ArgRuIuMtHefWSJXDkh9uMWfJYbuvaThaQhae0/9yZwwauQ4IqYFP
         Ql1g1CSaAQJZ8WBHTT4bueLu7LJuKeefqev9D1PD8ikrNmQDeoxAhV/tSUBSlv24pAKd
         VPkZHOzPeSH04aWoO1VJU1bbMWk/DI6AjeZ0NKasv0knprLrkvkFsEJZDt0dM/04pBsk
         ASkDX/pqXcTIGqDSpGZj84aOhDXMg+35KHP2lnM8xhuLJvBTRijdIZ6BUGFG/i+VJEwG
         M7ordlt//1PCZL780TpHwjflpuEYb+/TxLUcD8/Fx+21XYpiskElDcWwiVPot2nS5RLr
         AFGA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786466348; x=1787071148; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=4bcFHmkU9nSJ0MDbVyrPBqiYyAs1hPGT8G7FVHkOHZ4=;
        b=hbuR8kGcowL5Ri6ZWFsDRKB+MXQ4OS+n3z0tJW/49vu1NzFq14c4g7/u/KlGK5+iS3
         ZUE/wrqzU3deAznPyGM1cifk5qdxOu2JomHFKRCZ4vzUTsWn469NRtZLWAmSgBW3Vdtr
         HyqjDsalJOhuS5zpykQcMHO+y1C1uAY8wDRx/zwsJ4doGbf+B1fKsQ6TxECmaAr9nhBf
         BG1QpeLr0ZBi8XDurFaPQwbfmel5ZcFoxyrIAscSrJPZzuToQ6TavpTRnWSHWlz2BzsF
         3znfdghPYOxYHtbW6mJi9N6IdIz5sujQ9hDGkvKd4SvqvXMoMegCRqHrvFLGb2p5gGpw
         OESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786466348; x=1787071148;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4bcFHmkU9nSJ0MDbVyrPBqiYyAs1hPGT8G7FVHkOHZ4=;
        b=rlyhQiX5TXAdxe30VVJ0sQxkKS+pXxZkIRlQnTkTT4JhFqFAGejr0m4+zprP9Be587
         n/udi8SLW00PoEjzIJO8mZehBoKVKvYIwTR7qFAItZXv+V7sZDAQWHF8PaTUr8S+CPYC
         MOEcWZqpcW8bce/X5nNgVuVeBNBGOgWdC6vOAngVsni5DOhhAY1JzuWfikgGlCzOMCny
         KXoqSs7nlr0hckM8m0uNGKWthvuMB02OtL1vTn1YDADgZwKcHeCET0e0eiPiqs46X9Gt
         AWpM6+uilHO8Xy2mFBYBNPCGhVRm+FLQaR8/n7nvkhIrKREVcF4bGhkPs06De2D/CZ4L
         TnTw==
X-Forwarded-Encrypted: i=1; AHgh+RrHNSDxRIRt16hpM/+sxnWEPm5z5ODPpww2OjFM3uWVDjh879VNIJu8cGao/OtprA+9oPHa44v/DzD7ZYUK+Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzDpdU7McU7390efRlOfMqEuo9/cRNlGGbFjhrxp/X2MBfcZSbz
	sU9976YMXPr5QKqq51Db6YMN0eXqgjbghDHM2GvVViVDXJ1BNLr0s2u+FajRdhLvQFh9VNSvJGQ
	3ZoYr6bOOE2drCRxygsjpbyKaWXSpvpo=
X-Gm-Gg: AR+sD11rUYbYeeWIre0Om/a1muPCtXxIwZMiqwOkbO+VD9nMaGKTvw6Btac9sraFm8Y
	cDmlA1wd7gzPwnyVY4p+mLavWhg3rp6RII4IDlyIku8kZLz6nosa9zooVD6SA0GOR/9Yd9k1g8W
	4rdHDL9moOFS8O/DAdbAJ5tQHZtRmdaXi6gpftPTEpTB7V7tW2WXC9qjmuHN1EiuRiErLNWbcxP
	rSC/TUsR1XrQhvI4AMsUUMwfDpMGtcN/X15TWlZppF/ABwHdXi33qi1C3t0thavSU2E6o3DLny+
	+K5LTsgt+A4R5yEDjAeVVJgVpij3Lrl1hc6cK9YGrq88upwg0Z8W4N6ysx4sjRRGS1ZqduA/2yT
	hmUEt+t55YqfytSKBpAH9aM+7Y9UyC67NSnk=
X-Received: by 2002:a05:620a:6018:b0:936:9f49:69ca with SMTP id
 af79cd13be357-936ae1b6195mr122622585a.21.1786466348494; Tue, 11 Aug 2026
 09:39:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260730153603.5721-1-tharitt97@gmail.com> <3cfca6fd11f39c6ce161d5a2e7fb650b2e9289ec.camel@collabora.com>
In-Reply-To: <3cfca6fd11f39c6ce161d5a2e7fb650b2e9289ec.camel@collabora.com>
From: Tharit Tangkijwanichakul <tharitt97@gmail.com>
Date: Tue, 11 Aug 2026 23:38:56 +0700
X-Gm-Features: AUfX_mxbavY404ZnMz9OyorTzYiN16EACxukLGAUaARpCgqkofGP15kHe_8MlHk
Message-ID: <CACak8wPrEJ6hj2hL=5yQVY1oUPcJV0GwZChbVGT+n0C924jR6g@mail.gmail.com>
Subject: Re: [PATCH] media: rkvdec: fix v4l2-compliance failure
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil+cisco@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev, 
	skhan@linuxfoundation.org, me@brighamcampbell.com, jkoolstra@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_093910_266695_65FA005F 
X-CRM114-Status: GOOD (  24.66  )
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

SGkgTmljb2xhcywKClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24uCgpJIG1vdmVkIHRoZSBkZWZh
dWx0IG91dCBvZiBya3ZkZWMgYW5kIGludG8gdGhlIGNvbW1vbiBWNEwyIGNvbXBvdW5kCmNvbnRy
b2wgaW5pdGlhbGl6YXRpb24sIG1ha2luZyBWNEwyX0NUUkxfVFlQRV9IRVZDX1NQUyBkZWZhdWx0
CmNocm9tYV9mb3JtYXRfaWRjIHRvIDEgKDQ6MjowKS4KCkknbGwgc2VuZCB0aGlzIGFzIHYyLgoK
VGhhbmtzLApUaGFyaXQKCk9uIE1vbiwgQXVnIDEwLCAyMDI2IGF0IDk6MDXigK9QTSBOaWNvbGFz
IER1ZnJlc25lCjxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gSGks
Cj4KPiBMZSBqZXVkaSAzMCBqdWlsbGV0IDIwMjYgw6AgMTU6MzYgKzAwMDAsIFRoYXJpdCBUYW5n
a2lqd2FuaWNoYWt1bCBhIMOpY3JpdCA6Cj4gPiBya3ZkZWMgZmFpbHMgdjRsMi1jb21wbGlhbmNl
IGluIHR3byB0ZXN0cyByZWxhdGVkIHRvCj4gPiBWNEwyX0NJRF9TVEFURUxFU1NfSEVWQ19TUFMu
IFRoZSBDb250cm9sIGlvY3RscyB0ZXN0IHJlYWRzIHRoZSBjb250cm9sCj4gPiB3aXRoIEdFVF9F
WFRfQ1RSTFMgYW5kIHdyaXRlcyB0aGUgc2FtZSB2YWx1ZSBiYWNrOyBUUllfRVhUX0NUUkxTIHRo
ZW4KPiA+IHJldHVybnMgLUVJTlZBTCBiZWNhdXNlIHRoZSBWRFBVMzh4IHJrdmRlY19oZXZjX3Zh
bGlkYXRlX3NwcygpIHJlamVjdHMKPiA+IHNwcy0+Y2hyb21hX2Zvcm1hdF9pZGMgPT0gMCwgd2hp
Y2ggaXMgdGhlIHZhbHVlIHJldHVybmVkIHdoZW4gdGhlCj4gPiBjb250cm9sIGhhcyBubyBkZWZh
dWx0Lgo+ID4KPiA+ICAgICB2NGwyLWNvbXBsaWFuY2UgMS4zMy4wLTU0OTEsIDY0IGJpdHMsIDY0
LWJpdCB0aW1lX3QKPiA+ICAgICB2NGwyLWNvbXBsaWFuY2UgU0hBOiBiMzI1ODljNTE0ODEgMjAy
Ni0wNy0xNiAwODo1MTozOAo+ID4gICAgIENvbnRyb2wgaW9jdGxzOgo+ID4gICAgICAgICBmYWls
OiB2NGwyLXRlc3QtY29udHJvbHMuY3BwKDk0Mik6Cj4gPiAgICAgICB0cnlfZXh0X2N0cmxzIHJl
dHVybmVkIGFuIGVycm9yICgyMikKPiA+ICAgICAgIHRlc3QgVklESU9DX0cvUy9UUllfRVhUX0NU
UkxTOiBGQUlMCj4gPiAgICAgQnVmZmVyIGlvY3RsczoKPiA+ICAgICAgICAgZmFpbDogdjRsMi10
ZXN0LWJ1ZmZlcnMuY3BwKDMxMDIpOiBub2RlLT5zdHJlYW1vbihxLmdfdHlwZSgpKQo+ID4gICAg
ICAgICBmYWlsOiB2NGwyLXRlc3QtYnVmZmVycy5jcHAoMzE1Nyk6IHRlc3RCbG9ja2luZ0RRQnVm
KG5vZGUsIG0ybV9xKQo+ID4gICAgICAgdGVzdCBibG9ja2luZyB3YWl0OiBGQUlMCj4gPgo+ID4g
UHJvdmlkZSBhIGNvbnRyb2wgZGVmYXVsdCB2aWEgcF9kZWYgd2l0aCBjaHJvbWFfZm9ybWF0X2lk
YyA9IDEgKDQ6MjowKSwKPiA+IHdoaWNoIGlzIHRoZSBvbmx5IHZhbHVlIHRoZSBWRFBVMzh4IFNQ
UyB2YWxpZGF0aW9uIGFjY2VwdHMuCj4gPiBUaGlzIGZpeGVzIGJvdGggdGhlIENvbnRyb2wgaW9j
dGxzIGFuZCB0aGUgQnVmZmVyIGlvY3RscyBmYWlsdXJlcy4KPiA+Cj4gPiBUZXN0ZWQgb24gUmFk
eGEgUm9jayA1QiAoUkszNTg4KS4KPiA+Cj4gPiBGaXhlczogYzlhNTlkYzJhY2M3ICgibWVkaWE6
IHJrdmRlYzogQWRkIEhFVkMgc3VwcG9ydCBmb3IgdGhlIFZEUFUzODEgdmFyaWFudCIpCj4gPiBT
aWduZWQtb2ZmLWJ5OiBUaGFyaXQgVGFuZ2tpandhbmljaGFrdWwgPHRoYXJpdHQ5N0BnbWFpbC5j
b20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JrdmRlYy9y
a3ZkZWMuYyB8IDUgKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4g
Pgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVj
L3JrdmRlYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVj
LmMKPiA+IGluZGV4IDFkMWU5YmZlZjhlOS4uMzc2MDNmMDQ5Nzg4IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLmMKPiA+ICsrKyBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jCj4gPiBAQCAt
MjM2LDYgKzIzNiwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jdHJscyBya3ZkZWNf
aGV2Y19jdHJscyA9IHsKPiA+ICAgICAgIC5udW1fY3RybHMgPSBBUlJBWV9TSVpFKHJrdmRlY19o
ZXZjX2N0cmxfZGVzY3MpLAo+ID4gIH07Cj4gPgo+ID4gK3N0YXRpYyBzdHJ1Y3QgdjRsMl9jdHJs
X2hldmNfc3BzIHZkcHUzOHhfaGV2Y19zcHNfZGVmYXVsdCA9IHsKPiA+ICsgICAgIC5jaHJvbWFf
Zm9ybWF0X2lkYyA9IDEsCj4gPiArfTsKPiA+ICsKPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHJr
dmRlY19jdHJsX2Rlc2MgdmRwdTM4eF9oZXZjX2N0cmxfZGVzY3NbXSA9IHsKPiA+ICAgICAgIHsK
PiA+ICAgICAgICAgICAgICAgLmNmZy5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX0RFQ09E
RV9QQVJBTVMsCj4gPiBAQCAtMjQzLDYgKzI0Nyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcmt2
ZGVjX2N0cmxfZGVzYyB2ZHB1Mzh4X2hldmNfY3RybF9kZXNjc1tdID0gewo+ID4gICAgICAgewo+
ID4gICAgICAgICAgICAgICAuY2ZnLmlkID0gVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNfU1BTLAo+
ID4gICAgICAgICAgICAgICAuY2ZnLm9wcyA9ICZya3ZkZWNfY3RybF9vcHMsCj4gPiArICAgICAg
ICAgICAgIC5jZmcucF9kZWYucF9oZXZjX3NwcyA9ICZ2ZHB1Mzh4X2hldmNfc3BzX2RlZmF1bHQs
Cj4KPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2guIEhhdmUgeW91IGNvbnNpZGVyZWQgc2V0dGluZyB0
aGlzIGRlZmF1bHQgaW4gdjRsMi1jb21tb24KPiBpbnN0ZWFkID8gTW9ub2Nocm9tZSBpcyByYXJl
bHkgc3VwcG9ydGVkIG9mIGltcGxlbWVudGVkIGluIGNvZGVjcywgc28gc2V0dGluZwo+IHRoZSBn
bG9iYWwgZGVmYXVsdCB0byA0OjI6MCBzZWVtcyBsaWtlIGl0IHdvdWxkIGJlIHZhbGlkIGZvciBh
bGwgZHJpdmVycy4KPgo+IE5pY29sYXMKPgo+ID4gICAgICAgfSwKPiA+ICAgICAgIHsKPiA+ICAg
ICAgICAgICAgICAgLmNmZy5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19IRVZDX1BQUywKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
