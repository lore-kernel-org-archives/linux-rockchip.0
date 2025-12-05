Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A776CD2E035
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 08:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0dE4KKuGW5eDKzakoWUxikaYGy6iDMHUbYPxzeeNye0=; b=y7BxSYHYVahnmB
	3JrFP1vSH5a23PfR2CK7JZ4lfA+LYTzPj+T9LeA/Td6R0vxf1XhqgBhsG3f5VB/uOM3LP5O+ey8jw
	EieuEHL1nKu/JgZxU8iXYCWTHrG4bMYnsRQ5zxNpSagoaEksL4Fkhc9EiVbxzeNIqFXj3Bpxu9Oe2
	HL1Tedop6mSRqrcB5TYISDFwcifSkTk1N6AD5H3gPFdgVkslfi4vnacLfkKBLAiL5uqc4LF6CgWj9
	zp7kfld+jyE7H6j3HFox4W4BeSyhEyVIy9Y63GoeYR1n0SrZAr2UHpGpxYD0WiYbmvFgJb9q/voES
	vBgsNhU7oPWNknjsDhrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRRCb-00000009EAk-2AdK;
	Fri, 05 Dec 2025 08:30:09 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRRCX-00000009EAM-1zun
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 08:30:07 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-b79ea617f55so336269866b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Dec 2025 00:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764923403; x=1765528203; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zv9vpa6wctqmK3IhLoN91ZYlNtr4GKsApfMqJPja8ac=;
        b=exyN7kRlbl1CvkxFUVwuK7ylDcI4mKjOvuiLvdFcrxPCsc7U4iO4oqv6PwSEBN0ZWc
         f/khVPcvFtdULCDreRNCq/Mjp8tVseGGwtdImbPckugqPQMBsvmp+Ka44rzmRZvfIoH/
         8XzDvMZkRVBJGiSiYmVCgJuOJ9sqiv7Re1gW5jSUeIHFM165IJB9Xc/R/Op+ONORi760
         v0cunb3l/+A1Ho+DsYfElygIkw8rR1L30xccmKTIIks9BPqrfJ6gjVzZ5ThSk4ipR6hn
         cH1io6+k1ZXVFqELM4ZYLtCUpqpD71cDS6+SCdYhLs7zAxFV0yraq5OwSzTds+pRZgaP
         /caQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764923403; x=1765528203;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zv9vpa6wctqmK3IhLoN91ZYlNtr4GKsApfMqJPja8ac=;
        b=CYrIo8b0usaAvbKv+QyYb7EhW94atWXwAlQcht84WQsJmwZ2OYNjne4tC7gyLpo/sc
         x3RGwjcJBDKSDb9YfZybN9y0YqCTTlGoBHz0apT6drGjem5NYVZ5uNkb0mJV24SnddIS
         PJgdGCzXxaB6ECTrJ/dvpTBz5DAWQgEXogevt7jK7CG9UkKD/DWoD9xEFMH5QmyzsbZa
         mq6JATPNG5yTOEu3V/NK2TRSDGokeQhWPw8tDDVd7u20nvKGV6/1o+lOcq98dhJZPXP4
         EcuJ4sJm4hwzwvaIlrrUu/gUEXjgh2yWdKZkvA6PW+kbYlaOvlIlPUOLQk+vtOt43Fcf
         0+EQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1dY8sg3P20XMKKmJ8YSwzzIuGH5Fzy1KA1uo8dbVrB8bVHMO2ke5xtTpr/dqBAT0zUzxSwNv/9DtKBKXyow==@lists.infradead.org
X-Gm-Message-State: AOJu0YyE97WT9XJe/C5tR60l9E7KpI6tDcEcV7+WQxRT+cQOUw2fCKn1
	6gtURYDO/lFE1DCv6/yA/8irJzutrAjaaQrfqbqepj/X3mFz+maHkisvlKUOvtsQr4nS+yB3jJ0
	/56Royx9fowBI565VKNuwpZ6o5DvXoDY=
X-Gm-Gg: ASbGncuk30SV+/NCP2iUu1eR0Kd7JP5qUuRmjmGZCejLX48ZC0GZ+Pl+niYrDDO8o1c
	LCxSXC+rxeGJkjcLfKKb+wnjmShd/4HpctM7J86mvMUdF4jFGM9bI33aPz+g52LCS+lszq05djx
	xA4pi+4H/4PM27NWz5nvtgRMIfz2KPGl4qIwqrS2AKwzherDJ97nE3ygISnMcLzUTlIMZLyS6aI
	qpy/XJxsFsYbCEKJgiuvirP2OyWGAl+s8AW/6d2uKV9XnZHtp8K8iV2MboAMYTeOc6dhg==
X-Google-Smtp-Source: AGHT+IEoOFM1WzeqtiD/9WP1tZdp9AYcDEMhMdyuHmP+OE7FfFFESbCyBeckBwNIyYLRh20LnNqS00FXqnUMiQY20sQ=
X-Received: by 2002:a17:907:1c1a:b0:b76:d880:e70b with SMTP id
 a640c23a62f3a-b79dc78257amr998854266b.55.1764923403192; Fri, 05 Dec 2025
 00:30:03 -0800 (PST)
MIME-Version: 1.0
References: <20251027005220.22298-1-naoki@radxa.com> <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de> <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
 <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de> <acbbef49-02ad-47e9-9874-68d058b95f21@gmail.com>
 <60D749559660CD94+62b923bb-f852-4e83-b9fb-a2a25030ef73@radxa.com> <980092DD85519275+a4dd9cbd-12ad-4aec-b1a1-1b15f9932b8d@radxa.com>
In-Reply-To: <980092DD85519275+a4dd9cbd-12ad-4aec-b1a1-1b15f9932b8d@radxa.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 5 Dec 2025 13:59:46 +0530
X-Gm-Features: AWmQ_bn5ut5JK8KXRUIXSSDaNNc8gGtMY2sH0blDthYicM0yZTa3NxjE9zbjERk
Message-ID: <CANAwSgRW+vokpNUH1U34LDZx7=f0fUoipzDjLR7O85mS-ZM2mQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Alex Bee <knaerzche@gmail.com>, Quentin Schulz <quentin.schulz@cherry.de>, heiko@sntech.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_003005_704846_3530279F 
X-CRM114-Status: GOOD (  41.22  )
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

SGkgRlVLQVVNSSwKCgpPbiBTYXQsIDI5IE5vdiAyMDI1IGF0IDA5OjM0LCBGVUtBVU1JIE5hb2tp
IDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+Cj4gSSBmb3Jnb3QgdG8gbWVudGlvbiB0aGlzOgo+
ICAgaHR0cHM6Ly9mb3J1bS5yYWR4YS5jb20vdC9wcm9ibGVtLXVzaW5nLWkycy1hbmQtc3BpLW9u
LXRoZS1ncGlvLWhlYWRlci1vZi10aGUtcm9jay1waS00Yi8yNTM5MC8xNAo+Ckl0IHNlZW1zIHRo
YXQgU1BJNSBpcyBhc3NvY2lhdGVkIHdpdGggdGhlIGF1ZGlvIHBvd2VyIGRvbWFpbiBpbiB0aGUK
UkszMzk5LCB0aG91Z2gKSeKAmW0gbm90IGVudGlyZWx5IGNlcnRhaW4uCgpbMV0gaHR0cHM6Ly9n
aXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LWJhc2UuZHRzaSNMOTA0LUw5MTgKCj4gQmVzdCByZWdhcmRzLAo+Cj4g
LS0KPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4K
PgpUaGFua3MKLUFuYW5kCgo+IE9uIDExLzI5LzI1IDEyOjQwLCBGVUtBVU1JIE5hb2tpIHdyb3Rl
Ogo+ID4gSGkgQWxleCwKPiA+Cj4gPiBPbiAxMS8yOS8yNSAxMDozNiwgQWxleCBCZWUgd3JvdGU6
Cj4gPj4gSGksCj4gPj4KPiA+PiBBbSAyOC4xMS4yNSB1bSAxMzozMyBzY2hyaWViIFF1ZW50aW4g
U2NodWx6Ogo+ID4+PiBIaSBOYW9raSwKPiA+Pj4KPiA+Pj4gT24gMTEvMjgvMjUgMTowOSBQTSwg
RlVLQVVNSSBOYW9raSB3cm90ZToKPiA+Pj4+IEhpIFF1ZW50aW4sCj4gPj4+Pgo+ID4+Pj4gT24g
MTEvMjgvMjUgMTk6MjQsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+ID4+Pj4+IEhpIE5hb2tpLAo+
ID4+Pj4+Cj4gPj4+Pj4gT24gMTEvMjcvMjUgNDoyMCBQTSwgUXVlbnRpbiBTY2h1bHogd3JvdGU6
Cj4gPj4+Pj4+IEhpIE5hb2tpLAo+ID4+Pj4+Pgo+ID4+Pj4+PiBPbiAxMC8yNy8yNSAxOjUyIEFN
LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+ID4+Pj4+Pj4gVGhpcyByZXZlcnRzIGNvbW1pdCA4MjQw
ZTg3ZjE2ZDE3ICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGZpeAo+ID4+Pj4+Pj4gYXVkaW8tc3Vw
cGx5IGZvciBSb2NrIFBpIDQiKS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBGaXggdGhlIEFQSU81X1ZE
RCBwb3dlciBzdXBwbHkgdG8gdmNjXzN2MCBhcyBwZXIgdGhlCj4gPj4+Pj4+PiBzY2hlbWF0aWNz
WzFdWzJdCj4gPj4+Pj4+PiBbM11bNF1bNV0uCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gVGhpcyBmaXhl
cyB0aGUgU1BJLU5PUiBmbGFzaCBwcm9iZSBmYWlsdXJlIHdoZW4gdGhlIGJsdWUgTEVEIGlzCj4g
Pj4+Pj4+PiBvbls2XSwKPiA+Pj4+Pj4+IGFuZCB0aGUgZ2FyYmxlZCBzZXJpYWwgY29uc29sZSBv
dXRwdXQgb24gTGludXguCj4gPj4+Pj4+Pgo+ID4+Pj4+Pj4gVGhlIEVTODMxNiBoZWFkcGhvbmUg
YW5kIG1pY3JvcGhvbmUgYXJlIGNvbmZpcm1lZCB0byB3b3JrIGNvcnJlY3RseQo+ID4+Pj4+Pj4g
YWZ0ZXIgdGhpcyBmaXguCj4gPj4+Pj4+Pgo+ID4+Pj4+Cj4gPj4+Pj4gUGxlYXNlIHRlc3QgdGhl
IEVTODMxNiB3b3JrcyB3aGVuIGJvb3RpbmcgTGludXggZnJvbSBhIFUtQm9vdCB3aGVyZQo+ID4+
Pj4+IFJPQ0tDSElQX0lPRE9NQUlOIGFuZCBTUExfUk9DS0NISVBfSU9ET01BSU4gaXMgKmRpc2Fi
bGVkKi4KPiA+Pj4+Cj4gPj4+PiBJIHRyaWVkIGJlbG93LCBhbmQgY29uZmlybWVkIHRoYXQgRVM4
MzE2IGlzIHN0aWxsIHdvcmtpbmcuCj4gPj4+Pgo+ID4+Pj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3Mv
cm9jay1waS00LXJrMzM5OV9kZWZjb25maWcgYi9jb25maWdzL3JvY2stcGktNC0KPiA+Pj4+IHJr
MzM5OV9kZWZjb25maWcKPiA+Pj4+IGluZGV4IDIxOWY0MmJjN2Q0Li4yNzZjYTk2MWMxMCAxMDA2
NDQKPiA+Pj4+IC0tLSBhL2NvbmZpZ3Mvcm9jay1waS00LXJrMzM5OV9kZWZjb25maWcKPiA+Pj4+
ICsrKyBiL2NvbmZpZ3Mvcm9jay1waS00LXJrMzM5OV9kZWZjb25maWcKPiA+Pj4+IEBAIC01Myw2
ICs1Myw3IEBAIENPTkZJR19ST0NLQ0hJUF9HUElPPXkKPiA+Pj4+ICAgQ09ORklHX1NZU19JMkNf
Uk9DS0NISVA9eQo+ID4+Pj4gICBDT05GSUdfTEVEPXkKPiA+Pj4+ICAgQ09ORklHX0xFRF9HUElP
PXkKPiA+Pj4+ICsjIENPTkZJR19ST0NLQ0hJUF9JT0RPTUFJTiBpcyBub3Qgc2V0Cj4gPj4+PiAg
IENPTkZJR19NTUNfRFc9eQo+ID4+Pj4gICBDT05GSUdfTU1DX0RXX1JPQ0tDSElQPXkKPiA+Pj4+
ICAgQ09ORklHX01NQ19TREhDST15Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHRzL3Vwc3RyZWFtL3Ny
Yy9hcm02NC9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0c2kKPiA+Pj4+IGIvIGR0cy91cHN0
cmVhbS9zcmMvYXJtNjQvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNC5kdHNpCj4gPj4+PiBpbmRl
eCAwNDZkYmUzMjkwMS4uYzczNGY3ODI0YzAgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9kdHMvdXBzdHJl
YW0vc3JjL2FybTY0L3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTQuZHRzaQo+ID4+Pj4gKysrIGIv
ZHRzL3Vwc3RyZWFtL3NyYy9hcm02NC9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0c2kKPiA+
Pj4+IEBAIC01MSw3ICs1MSw3IEBACj4gPj4+Pgo+ID4+Pj4gICAgICAgICAgc291bmQ6IHNvdW5k
IHsKPiA+Pj4+ICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhdWRpby1ncmFwaC1jYXJk
IjsKPiA+Pj4+IC0gICAgICAgICAgICAgICBsYWJlbCA9ICJBbmFsb2ciOwo+ID4+Pj4gKyAgICAg
ICAgICAgICAgIGxhYmVsID0gInJrMzU4OC1lczgzMTYiOwo+ID4+Pj4gICAgICAgICAgICAgICAg
ICBkYWlzID0gPCZpMnMwX3AwPjsKPiA+Pj4+ICAgICAgICAgIH07Cj4gPj4+Pgo+ID4+Pj4gQEAg
LTUxNiw3ICs1MTYsNyBAQAo+ID4+Pj4gICB9Owo+ID4+Pj4KPiA+Pj4+ICAgJmlvX2RvbWFpbnMg
ewo+ID4+Pj4gLSAgICAgICBhdWRpby1zdXBwbHkgPSA8JnZjY2ExdjhfY29kZWM+Owo+ID4+Pj4g
KyAgICAgICBhdWRpby1zdXBwbHkgPSA8JnZjY18zdjA+Owo+ID4+Pj4gICAgICAgICAgYnQ2NTYt
c3VwcGx5ID0gPCZ2Y2NfM3YwPjsKPiA+Pj4+ICAgICAgICAgIGdwaW8xODMwLXN1cHBseSA9IDwm
dmNjXzN2MD47Cj4gPj4+PiAgICAgICAgICBzZG1tYy1zdXBwbHkgPSA8JnZjY19zZGlvPjsKPiA+
Pj4+Cj4gPj4+PiBOb3RlczoKPiA+Pj4+IC0gU1BMX1JPQ0tDSElQX0lPRE9NQUlOIGlzIG5vdCBz
ZXQgYnkgZGVmYXVsdAo+ID4+Pj4gLSBJIGRvbid0IHVuZGVyc3RhbmQgYWxzYSB1Y20yIDspIHNv
IEkgbW9kaWZpZWQgL3NvdW5kL2xhYmVsCj4gPj4+Pgo+ID4+Pgo+ID4+PiBUaGFua3MgZm9yIHRl
c3RpbmcuIExldCdzIGhvcGUgdGhlIG9yaWdpbmFsIGlzc3VlIGRvZXNuJ3QgYXBwZWFyIGZvcgo+
ID4+PiAqc29tZSogYm9vdHMgKGRlcGVuZGluZyBvbiBwcm9iZSBvcmRlciBvciBzb21lIHRpbWlu
ZyBmb3IgZXhhbXBsZSkuCj4gPj4+IEZvciBub3cgSSBndWVzcyB0aGlzIHdpbGwgZG8uIEFkZGlu
ZyBBbGV4IGluIENjIG1heWJlIHRoZXkgYXJlIGFibGUKPiA+Pj4gdG8gcmVwcm9kdWNlIHRoZSBp
c3N1ZSB0aGV5IGhhZCA0IHllYXJzIGFnbyB3aXRoIHRoZWlyIGJvYXJkPwo+ID4+Pgo+ID4+PiBD
aGVlcnMsCj4gPj4+IFF1ZW50aW4KPiA+Pgo+ID4+Cj4gPj4gSSBjYW4gY29uZmlybSB0aGF0IHdp
dGggdGhpcyBjaGFuZ2UgYW5hbG9nIGF1ZGlvIGlzIF9icm9rZW5fIGZvciBtZQo+ID4+IGFnYWlu
Lgo+ID4+Cj4gPj4gSSBuZXZlciBoYWQgYW55IGlzc3VlcyB3aXRoIHVhcnQyIG9yIHNwaSAtIG5l
aXRoZXIgaW4ga2VybmVsIG5vciBpbiB1LQo+ID4+IGJvb3QKPiA+PiAoYWxzbyBub3QgYWZ0ZXIg
aW8tZG9tYWluIGRyaXZlciBoYXMgYmVlbiBhZGRlZCB0byB1LWJvb3QgZm9yIFJLMzM5OSkuCj4g
Pj4gR2l2ZW4gdGhpcyBjb21taXQgaXMgbm93IH40IHllYXJzIGluIHRyZWUgIEknZCBndWVzcyB0
aGF0IHNvbWVvbmUgZWxzZQo+ID4+IHdvdWxkIGhhdmUgcmVwb3J0ZWQgdGhhdCBpc3N1ZSBlYXJs
aWVyLiBJdCdzIGNvcnJlY3QgdGhhdCB0aGlzCj4gPj4gaW5mb3JtYXRpb24KPiA+PiBjYW1lIGZy
b20gYSAiUG93ZXIgRG9tYWluIE1hcCIgIHdoaWNoIHlvdSBjYWxsICJub24gc2NoZW1hdGljIiBh
bmQgdGhlCj4gPj4gInNjaGVtYXRpYyBwYXJ0IiAgc2F5cyBzb21ldGhpbmcgZWxzZSAtICBpdCB3
b3VsZCBoYXZlIGJlZW4gaW5kZWVkIGJlCj4gPj4gYmV0dGVyIHRvIGhhdmUgY2xlYXJlciBpbmZv
cm1hdGlvbi4KPiA+Cj4gPiBXZSBjYW4gY29uZmlybSB0aGF0ICJzY2hlbWF0aWMgcGFydCIgaXMg
Y29ycmVjdC4KPiA+Cj4gPj4gQW55d2F5OiBJIGNhbid0IG5laXRoZXIgc2VlIGhvdyB0aGlzIGNo
YW5nZSBzaG91bGQgcmVsYXRlIHRvIHVhcnQyIG9yIHNwaQo+ID4+IHdoaWNoIGFyZSBib3RoIGlu
IGRpZmZlcmVudCBpby1kb21haW4sIG5vciB3aHkgaXQgd291bGQgaGFwcGVuIG9ubHkgaW4KPiA+
PiB1LWJvb3QuIE15IHN0cm9uZ2VzdCBndWVzcyBpcywgdGhhdCByYWR4YSBjaGFuZ2VkIHNvbWV0
aGluZyBhbG9uZyB0aGUKPiA+PiB3YXkuCj4gPgo+ID4gSSdtIHNvcnJ5LCBJIGNhbid0IGV4cGxh
aW4gdGhlIHJlbGF0aW9uc2hpcCBiZXR3ZWVuIFVBUlQyL1NQSSBhbmQgQVBJTzUuCj4gPgo+ID4g
SG93ZXZlciwgSSBoYWQgYmVlbiBzZWVpbmcgInRoZSBnYXJibGVkIHNlcmlhbCBjb25zb2xlIG91
dHB1dCBvbiBMaW51eCIKPiA+IGZvciBhIGxvbmcgdGltZSwgYW5kIGNvdWxkbid0IGZpZ3VyZSBv
dXQgaG93IHRvIGZpeCBpdC4KPiA+Cj4gPiBXaGF0IHZlcnNpb24gb2YgeW91ciBST0NLIFBpIDQg
Ym9hcmQgZG8geW91IGhhdmU/Cj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+ID4KPiA+IC0tCj4gPiBG
VUtBVU1JIE5hb2tpCj4gPiBSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgo+ID4K
PiA+PiBPciBtYXliZSBpdCB3b3VsZCBiZSB3b3J0aCB0byBkb3VibGUtY2hlY2sgdGhlIGlvLWRv
bWFpbiBkcml2ZXIgaW4gdS0KPiA+PiBib290Lgo+ID4+Cj4gPj4KPiA+PiBSZWdhcmRzLAo+ID4+
IEFsZXgKPiA+Pgo+ID4+Cj4gPj4KPiA+Cj4gPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+
IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
