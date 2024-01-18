Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7ADBC47422
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 23:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9sArAot0V1etGF1bVFoSvPuBT4eDc5LxMLbmtOVgQ4=; b=EEAfeyrkkrOqyu
	iuRy8Tu6qm3pjV73O0ZfYTTHpt1FQKLrgeG/PNy8ckP9MV30CM66llR59zSmErRBkwUxBJN+EbiUk
	l9WfJ4B1VP1JgqTi1Iy1QTB8/QwS69VzODd0gVmDAD7bKk5tpuGYUxEJt1AMR9AsKw55BF28c96Uy
	YOQL6uet1XvWZ3JMMGxdmnuOi5Qn5Y3G7y7I9xfw60uaKUZhR6w57mtj23F4kulhnREu7dvpEDxyD
	vJe9dHShl67WDL7tkAZhQkORbXR3xyRWNnGADTloaVTGtx/6G2RpLbvkLidunQfHgiEya1/+YDItP
	3I+i2hls/CpzwO9GrwVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQbPv-0042VX-2p;
	Thu, 18 Jan 2024 23:03:23 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQbPs-0042UF-0U;
	Thu, 18 Jan 2024 23:03:22 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-4298e866cd6so1451431cf.0;
        Thu, 18 Jan 2024 15:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705618995; x=1706223795; darn=lists.infradead.org;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GyY99aUjw/FofKAReIAGskDK6rAgz6yENKbvjBb0zfs=;
        b=Bg/86HraPFfEn1hn7EPI+kRJcGjN5oXVwLttk46w3sOtHUGAyMcHVzBi5QL1vvHIp/
         3L68et206xPa0jMrpKVzeZPVvUB0xgFLt36D+sU9cLOJXS7PmqMtD7WSmPNWjkaSjkQy
         T0dbB6eVWSpwcFbTA5N/UJBCX6WNIEPMZfeObOirk7TJ9pbDqkBeRLzvox5GcW3RoqVg
         vff+ATYLB4MnQafB9a5P94VLXyBITCGj6IC0UPjHHf2L+8/Uput7uKhm57z0lrr7T98b
         8lzVj81UyBGln6QKlHcAryrEs0Eojb806bgHmFNcCc7MnsmAG0lrdso++HYGNtGSlIDN
         l9VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705618995; x=1706223795;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GyY99aUjw/FofKAReIAGskDK6rAgz6yENKbvjBb0zfs=;
        b=oUTTvK+q+udLgPv7w4isJDO2PwXUetx4Dj3XnW8WNU8zxCV3phNEMQVLoiDzXZA8lK
         sIWYPzhnXFW/E0GkDSvO9rnhBJvlpJTiBkEkLOFNPy7kkEIhU7nCwNF9r1tcurhzPh+S
         yAlr1ozBTHENqRb0rHI1HHeBRzrccBH5A2HOiVqPpbRvwhWLsTeb/zrqXHVoYDF7cgGG
         eyzTZpE+d53lx0tuwq1b4Ht+fn2UzyyByPnSE/w1wflBS05klVohCRvAgMrKdP/iliBN
         VmrnUzUVgu9zbnQQpsVJ18TzTJrr22How6ni34M0kp0y5w/6WZO7lR97SM4RECA4Cunm
         WUEw==
X-Gm-Message-State: AOJu0YzyDI7XjU0uZSX4ocs0MDghUcruLrKCpFYhFliGlXQzrXnsv6yR
	sCTOY6PQ2kNwI1OxadkbFaZmmxIQhIUbyco04jWvmnmwprlvBq7I
X-Google-Smtp-Source: AGHT+IEOliJbiyiCQYLSMyfo06XQ48TVJ8jLZHaJ8slgAVZ5eveV12CzJq0tjpTX/BkZeKyYSUcasQ==
X-Received: by 2002:a05:622a:1c10:b0:42a:20ab:da20 with SMTP id bq16-20020a05622a1c1000b0042a20abda20mr1020521qtb.52.1705618995652;
        Thu, 18 Jan 2024 15:03:15 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id gc9-20020a05622a59c900b004181138e0c0sm7195712qtb.31.2024.01.18.15.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 15:03:14 -0800 (PST)
Date: Thu, 18 Jan 2024 18:03:12 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of
 snps properties
Message-ID: <20240118230312.GB14779@localhost>
References: <20240116204103.29318-1-twoerner@gmail.com>
 <20240116204103.29318-2-twoerner@gmail.com>
 <CAGb2v67KfNR_U_Qz85aqY1D0DKE9mo-X_L8MGvT7cdcZGUHVUg@mail.gmail.com>
 <20240117054705.GA33225@localhost>
 <852071ad-24e8-40a8-9b10-623abf1dc4bf@kwiboo.se>
 <df78489b-7546-46ea-b09f-39a80692a962@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df78489b-7546-46ea-b09f-39a80692a962@kwiboo.se>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_150320_191788_581D0B41 
X-CRM114-Status: GOOD (  42.87  )
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

T24gVGh1IDIwMjQtMDEtMTggQCAwODozMTozMCBBTSwgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBP
biAyMDI0LTAxLTE3IDA5OjE1LCBKb25hcyBLYXJsbWFuIHdyb3RlOgo+ID4gT24gMjAyNC0wMS0x
NyAwNjo0NywgVHJldm9yIFdvZXJuZXIgd3JvdGU6Cj4gPj4gT24gV2VkIDIwMjQtMDEtMTcgQCAx
MjozODozOSBQTSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4+PiBPbiBXZWQsIEphbiAxNywgMjAy
NCBhdCA0OjQx4oCvQU0gVHJldm9yIFdvZXJuZXIgPHR3b2VybmVyQGdtYWlsLmNvbT4gd3JvdGU6
Cj4gPj4+Pgo+ID4+Pj4gQSBudW1iZXIgb2Ygc25wcyAoU3lub3BzeXMpIHByb3BlcnRpZXMgYXJl
IG5vdCBpbiB0aGVpciBjb3JyZWN0IGxvY2F0aW9uLgo+ID4+Pgo+ID4+PiBOb3BlLiBJZiB5b3Ug
cmVhZCB0aGUgc25wcyxkd21hYy55YW1sIGJpbmRpbmcgZmlsZSwgeW91J2xsIHNlZSB0aGF0IHRo
ZXNlCj4gPj4+IHByb3BlcnRpZXMgaGF2ZSBiZWVuIGRlcHJlY2F0ZWQuIFRoZXkgYXJlIHByb3Bl
cnRpZXMgcGVydGFpbmluZyB0byB0aGUgUEhZCj4gPj4+IGFuZCBzaG91bGQgYmUgZGVzY3JpYmVk
IHVuZGVyIHRoZSBQSFkgbm9kZS4gU3VwcG9ydCBmb3IgcmVzZXQgR1BJT3Mgb24gUEhZCj4gPj4+
IGRldmljZXMgaW4gcGh5bGliIGhhcyBiZWVuIHRoZXJlIHNpbmNlIHY0LjE2LiBUaGUgc25wcyBw
cmVmaXhlZCBwcm9wZXJ0aWVzCj4gPj4+IHdlcmUgZGVwcmVjYXRlZCBpbiB2NS4zLgo+ID4+Cj4g
Pj4gSWYgdGhhdCdzIHRoZSBjYXNlLCB0aGVuIHRoZSBiaW5kaW5ncyBhbmQgdGhlIGRyaXZlcnMg
YXJlIG91dCBvZiBzeW5jIGluIGJvdGgKPiA+PiBVLUJvb3QgYW5kIExpbnV4LiBJIGRpc2NvdmVy
ZWQgdGhpcyBpc3N1ZSB3aGlsZSB3b3JraW5nIHdpdGggb2xkZXIgYW5kIG5ld2VyCj4gPj4gcmV2
aXNpb25zIG9mIHRoZSByb2NrLXBpLWUgYm9hcmQuIFRoZSBmaXJzdCB0aHJlZSBzcGlucyBvZiB0
aGUgcm9jay1waS1lIGhhdmUKPiA+PiB0aGUgcnRsODIxMWUgUEhZIGJ1dCB0aGUgbGFzdCBvbmUg
KHYxLjIxKSBoYXMgdGhlIHJ0bDgyMTFmIFBIWS4KPiA+Pgo+ID4+IFdpdGggdGhlIGV4aXN0aW5n
IGxheW91dCBub3RoaW5nIHdvcmtzIGluIFUtQm9vdCBhbmQgaW4gTGludXggdGhlIHJ0bDgyMTFl
Cj4gPj4gd29ya3MgYnV0IG5vdCB0aGUgcnRsODIxMWYuIFdpdGggdGhpcyBwYXRjaCBib3RoIHRo
ZSBydGw4MjExZSBhbmQgdGhlIHJ0bDgyMTFmCj4gPj4gUEhZcyB3b3JrIHVzaW5nIHRoZSBleGFj
dCBzYW1lIGRldmljZSB0cmVlcyBvbiBib3RoIG9sZGVyIGFuZCBuZXdlciByb2NrLXBpLWUKPiA+
PiBib2FyZHMgaW4gYm90aCBVLUJvb3QgYW5kIExpbnV4Lgo+ID4gCj4gPiBGb3IgbGludXggdGhp
cyBpcyBwcm9iYWJseSByZWxhdGVkIHRvIHRoZSBzYW1lIGNoaWNrZW4tYW5kLWVnZyByZXNldAo+
ID4gaXNzdWUgb3V0bGluZWQgYXQgWzFdLiBUaGUgcGh5IGlzIG5vdCByZXNldCBiZWZvcmUgaXQg
aXMgcHJvYmVkIGFuZAo+ID4gY2Fubm90IGJlIHByb2JlZCBiZWNhdXNlIGl0IGlzIG5vdCByZXNl
dC4KPiA+IAo+ID4gQXMgZm9yIFUtQm9vdCB0aGUgZGVzaWdud2FyZS9nbWFjX3JvY2tjaGlwIGV0
aGVybmV0IGRyaXZlciBtYXkgbmVlZCBzb21lCj4gPiBhZGp1c3RtZW50cyB0byBwcm9wZXJseSBp
bnRlZ3JhdGUgd2l0aCBldGgtcGh5IHVjbGFzcyB0byBwcm9wZXJseSByZXNldAo+ID4gdGhlIHBo
eSBkZXNjcmliZWQgaW4gYSBldGhlcm5ldC1waHkgbm9kZSBiZWZvcmUgaXQgY2FuIGJlIHByb2Jl
ZC4KPiA+IAo+ID4gRm9sbG93aW5nIGNvbmZpZyBvcHRpb25zIGlzIGRpc2FibGVkIGZvciByb2Nr
LXBpLWUtcmszMzI4IGRlZmNvbmZpZzoKPiA+IAo+ID4gIyBDT05GSUdfRE1fRVRIX1BIWSBpcyBu
b3Qgc2V0Cj4gPiAjIENPTkZJR19QSFlfUkVBTFRFSyBpcyBub3Qgc2V0Cj4gPiAKPiA+IEFsc28g
dGhlIGRyaXZlciBuZWVkcyB0byBiZSB1cGRhdGVkIHRvIG1ha2UgdXNlIGV0aC1waHkgdWNsYXNz
IGZvciBpdCB0bwo+ID4gd29yayBjb3JyZWN0bHkuIE1vcmUgc2ltaWxhciB0byBob3cgdGhlIGR3
Y19ldGhfcW9zIGRyaXZlciB3b3JrcyByZWxhdGVkCj4gPiB0byBldGhlcm5ldCBwaHkuCj4gCj4g
SSBoYXZlIGp1c3Qgc2VudCBvdXQgYSBVLUJvb3Qgc2VyaWVzIHRoYXQgZml4IGV0aGVybmV0IG9u
IHRoZSB2MS4yMQo+IHJldmlzaW9uIG9mIHRoZSBST0NLIFBpIEUgYm9hcmQsIHNlZSBbMl0uCgpU
aGFuayB5b3UhIEkgaGF2ZSB0ZXN0ZWQgeW91ciBwYXRjaGVzIGJvdGggaW4gVS1Cb290IGFuZCBM
aW51eCBhbmQgdGhleSB3b3JrCnBlcmZlY3RseS4KCj4gV291bGQgZXhwZWN0IHRoYXQgZXRoZXJu
ZXQgYWxzbyBzdGFydHMgdG8gd29yayBpbiBsaW51eCB3aXRoIHRob3NlCj4gcGF0Y2hlcyBhcHBs
aWVkIHRvIFUtQm9vdC4gSSBvbmx5IHRlc3RlZCBhbmQgdmVyaWZpZWQgZXRoZXJuZXQgaW4gVS1C
b290Lgo+IAo+IEhvcGVmdWxseSBzb21lb25lIGNhbiB0YWtlIGEgY2xvc2VyIGxvb2sgYXQgdGhl
IGlzc3VlIG9uIGxpbnV4IHNpZGUKPiBzbyB0aGF0IGl0IGRvZXMgbm90IG5lZWQgdG8gZGVwZW5k
IG9uIFBIWSBiZWluZyByZXNldCBieSB0aGUgYm9vdGxvYWRlci4KClllcywgYXMgeW91IHN1c3Bl
Y3RlZCB0aGlzIGlzIGV4YWN0bHkgd2hhdCBoYXBwZW5lZDogcHJvdmlkaW5nIGEgZml4IGluIFUt
Qm9vdApjYXVzZWQgZXZlcnl0aGluZyB0byB3b3JrIGFnYWluIGluIExpbnV4LiBJdCB3b3VsZCBh
cHBlYXIgYXMgdGhvdWdoIExpbnV4IGlzCmV4cGVjdGluZyB0aGUgUEhZIHRvIGJlIHJlc2V0L3Nl
dHVwL2NvbmZpZ3VyZWQgYnkgdGhlIGJvb3Rsb2FkZXIgaW4gdGhlIGNhc2UKb2YgdGhpcyBib2Fy
ZC9Tb0MvUEhZLgoKPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvdS1ib290LzIwMjQwMTE4
MDcxOTQ5LjkyNzA4OS0xLWpvbmFzQGt3aWJvby5zZS9ULwo+IAo+IFJlZ2FyZHMsCj4gSm9uYXMK
PiAKPiA+IAo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzQ3
ZDU1YWNhLWJlZTYtODEwZi0zNzlmLTk0MzE2NDlmZWZhNkBrd2lib28uc2UvCj4gPiAKPiA+IFJl
Z2FyZHMsCj4gPiBKb25hcwo+ID4gCj4gPj4KPiA+PiBDb21wYXJpbmcgdGhlIHJvY2stcGktZSdz
IGR0cyBmaWxlIHdpdGggdGhlIG9uZSBmcm9tIHRoZSByb2MtcmszMzI4LWNjIGJvYXJkLAo+ID4+
IHdoaWNoIGFsc28gdXNlcyB0aGUgbGF5b3V0IGluIHRoaXMgcGF0Y2gsIGFuZCB3aGljaCBhbHNv
IHVzZXMgdGhlIHJ0bDgyMTFlCj4gPj4gZXh0ZXJuYWwgUEhZLCBpcyB3aGF0IGxlZCBtZSBpbiB0
aGlzIGRpcmVjdGlvbi4KPiA+Pgo+ID4+Pgo+ID4+PiBDaGVuWXUKPiA+Pj4KPiA+Pj4+IEZpeGVz
OiBiOTE4ZTgxZjIxNDUgKCJhcm02NDogZHRzOiByb2NrY2hpcDogcmszMzI4OiBBZGQgUmFkeGEg
Uk9DSyBQaSBFIikKPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFRyZXZvciBXb2VybmVyIDx0d29lcm5l
ckBnbWFpbC5jb20+Cj4gPj4+PiAtLS0KPiA+Pj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1yb2NrLXBpLWUuZHRzIHwgMTAgKysrKystLS0tLQo+ID4+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPj4+Pgo+ID4+Pj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS5k
dHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2NrLXBpLWUuZHRzCj4g
Pj4+PiBpbmRleCAwOTZjZmExOTAzNmUuLjA3MzliOGZlYzg2ZSAxMDA2NDQKPiA+Pj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS5kdHMKPiA+Pj4+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS5kdHMK
PiA+Pj4+IEBAIC0xNTAsOCArMTUwLDExIEBAICZnbWFjMmlvIHsKPiA+Pj4+ICAgICAgICAgcGh5
LW1vZGUgPSAicmdtaWkiOwo+ID4+Pj4gICAgICAgICBwaHktc3VwcGx5ID0gPCZ2Y2NfaW8+Owo+
ID4+Pj4gICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+Pj4gLSAgICAgICBw
aW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47Cj4gPj4+PiArICAgICAgIHBpbmN0cmwtMCA9IDwm
cmdtaWltMV9waW5zPiwgPCZldGhfcGh5X3Jlc2V0X3Bpbj47Cj4gPj4+PiAgICAgICAgIHNucHMs
YWFsOwo+ID4+Pj4gKyAgICAgICBzbnBzLHJlc2V0LWdwaW8gPSA8JmdwaW8xIFJLX1BDMiBHUElP
X0FDVElWRV9MT1c+Owo+ID4+Pj4gKyAgICAgICBzbnBzLHJlc2V0LWFjdGl2ZS1sb3c7Cj4gPj4+
PiArICAgICAgIHNucHMscmVzZXQtZGVsYXlzLXVzID0gPDAgMTAwMDAgNTAwMDA+Owo+ID4+Pj4g
ICAgICAgICBzbnBzLHJ4cGJsID0gPDB4ND47Cj4gPj4+PiAgICAgICAgIHNucHMsdHhwYmwgPSA8
MHg0PjsKPiA+Pj4+ICAgICAgICAgdHhfZGVsYXkgPSA8MHgyNj47Cj4gPj4+PiBAQCAtMTY1LDEz
ICsxNjgsMTAgQEAgbWRpbyB7Cj4gPj4+Pgo+ID4+Pj4gICAgICAgICAgICAgICAgIHJ0bDgyMTE6
IGV0aGVybmV0LXBoeUAxIHsKPiA+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwx
PjsKPiA+Pj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmZXRoX3BoeV9p
bnRfcGluPiwgPCZldGhfcGh5X3Jlc2V0X3Bpbj47Cj4gPj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICBwaW5jdHJsLTAgPSA8JmV0aF9waHlfaW50X3Bpbj47Cj4gPj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzE+Owo+ID4+Pj4gICAgICAgICAg
ICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDwyNCBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ID4+
Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmVzZXQtYXNzZXJ0LXVzID0gPDEwMDAwPjsKPiA+
Pj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHJlc2V0LWRlYXNzZXJ0LXVzID0gPDUwMDAwPjsK
PiA+Pj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvMSBSS19Q
QzIgR1BJT19BQ1RJVkVfTE9XPjsKPiA+Pj4+ICAgICAgICAgICAgICAgICB9Owo+ID4+Pj4gICAg
ICAgICB9Owo+ID4+Pj4gIH07Cj4gPj4+PiAtLQo+ID4+Pj4gMi40My4wLjc2LmcxYTg3Yzg0MmVj
ZTMKPiA+Pj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
