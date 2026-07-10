Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9458CC43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 14:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdzmfwb+rrKQI7fkQQSJOEgsCureAIs7GG8LkmWezAU=; b=m7n2/6tzyx45jw
	VHaijTQA1s8lRk7LVzW4/Q9pqu6S3s6tqZZe76eEoKfuKwHN84DU73r5MIBHm4Vd17C/7TJMopIbM
	GeHO+t047n7tb7rKsZOaMy/eSg+zvckQVD2JUvVFyOj+fe7NhTbCpSsvfq7M86dakMc9F2+CTGO55
	Ve45Bp+W1T+T3LIHJk/Dh0WiIehvBWJAXJewijdaDpt+2Ap1S8JPm94OuPvF+GMz3wo2t9/AcFjdY
	OXZ+SnxUIlnRiw1kz6UnJU6OZoFyge3B3IoSsbRWICZ/2ChnMGOLArcWFUXX3ZemxFUr/i8Jurx2A
	wDCOkbsDNoyv3iHw+3Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiCF9-000000055Kx-3Hfo;
	Fri, 10 Jul 2026 14:30:19 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiCF7-000000055K4-2WZQ
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 14:30:18 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-493f6de72faso2461185e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 07:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783693815; x=1784298615; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VI6XbHCkQw0BYyxRAEJxXVAGqyrCldWfR9mQ71QbnBw=;
        b=Pk6zeKFcpl/zp7HWtHm+5cqFFikXWBBeOYZCgJM1Rwl0MFUs/21WZspoPlv1pTexAO
         nJoIzE8KUCdFO2CfDP2zyOuYkI1BpxEvYLL2bUW0Pb998oxuO/LGurixZcPA8XP3iiTN
         nvlgEmXYYmfOeRMhvQ2UrvUPAoUi+6fr80bPs49nCZ3wJnHtkCoTv6EhmrvSdjl2eTob
         r5HLuGCsWpx5xn/JUvpqcYEjVRCUCndxbb2Xkwfqc+eOIQLUIg91ipRN/167LYu2EswI
         SEodXbllG9lgF++XWuLJD/4eZaqWoXpZVSr6R6Cxsvw+LyykvLcM4Y3SgDwPwG4/s4UP
         +Yrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783693815; x=1784298615;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VI6XbHCkQw0BYyxRAEJxXVAGqyrCldWfR9mQ71QbnBw=;
        b=IGTOtEMykJT96DXAy7j3hvXoa4SDSteb0sUvDfxm31JIE9xEl0XMYifXqLv/+1p5sJ
         fcatc0CvPiva5QPfeeUtdSC/xuOmWC5Sg3cvE2Uc5xdQzgzD8Ep0XjYUyN+tCQF2YS/+
         EpdhWSvSc9ZvIp2MdrEJHMqELWvTBF/QWHiGcVPHsMKs8CCOh/t4z7lXDehG5fPNdfRt
         hWYXOGd9+WsLDIoydsNID1ap21tO3xDJAr7dPVnHRtgaGWxboDcOa07vlXL2nqETeHGE
         wsS8xhXRvwo8toiWZa+wW0F7gZ6acz9BjVa6P+79iAoM4hKV6DiyH1MXJHUz8iy+D0kP
         psHg==
X-Forwarded-Encrypted: i=1; AHgh+RqJT+Cgsw2ype0HsVbBpltTCPE3qj5pTfIcZtQra5wj0/hkuJlHQvdmonXUE9myWrmtRuWQojIgBqcfXkUdWg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzNEbIBbB/u43hl58esiUJ17q/+3FW3Pkj7lYxN6MSh9Zj9WIgR
	JLkrSvJZ4Trunjw/w1A2tC8cYfIUVPNulI+ri722rJYclTJVgow4f9hW
X-Gm-Gg: AfdE7cl15mF3tiTJC4pkzNCtQ8c2Jgk5dNMvug5JbrM9Tmr6aQp8LknKgBfmMSGDSV1
	RMIHfI+iBVbBMMzKYHhxXrX+n+F/I0qyjB8CMFcVpeYcqbz0+L6m9s9SljO7nI2mMWgV2wIU3DT
	8e3hnGDsPZElTOUV3raQv9Evk96XszKllQrUp4NF/vyawpwzZ5jzzW5VKzGDjRa2Ti9vFFhHwd2
	HZeBAUE2TKw0okUejMQG9VsTetCN6aNK4j1kniDZj0gjj4/yooWsBbGw1HoBlo9XdKKTmoRSN70
	a0htGKzDvXdDObuOX8YwkZNPmeNluIc+nbqpEcGw5TdCHOwPejkmLVf0K83fJyQuHnXHWvP3KQs
	pILxGdefD2022oioTfPoLMB3qadCIPRxkIb6zdO+7SsZzMR6hNHB88m5P2UL0+UC3llZ4ijX6sF
	uyvg==
X-Received: by 2002:a05:600c:1908:b0:493:c566:7bd6 with SMTP id 5b1f17b1804b1-493f2b4baa1mr35892515e9.18.1783693814906;
        Fri, 10 Jul 2026 07:30:14 -0700 (PDT)
Received: from enyo ([2a0a:ef40:ea3:3f01:ca44:4cd5:cfae:605b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493f2d88698sm65315605e9.1.2026.07.10.07.30.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 07:30:14 -0700 (PDT)
Date: Fri, 10 Jul 2026 15:30:12 +0100
From: Dawid Olesinski <dawidro@gmail.com>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Corentin Labbe <clabbe@baylibre.com>,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add crypto node to
 rk356x-base
Message-ID: <20260710153012.0a840512@enyo>
In-Reply-To: <4011768.FjKLVJYuhi@diego>
References: <20260708175837.1718437-1-dawidro@gmail.com>
	<20260708175837.1718437-4-dawidro@gmail.com>
	<ak7jEYTAGgeDdi1W@venus>
	<4011768.FjKLVJYuhi@diego>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_073017_658569_2DE24EEC 
X-CRM114-Status: GOOD (  25.71  )
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

T24gVGh1LCAwOSBKdWwgMjAyNiAwOTowNzoyMyArMDIwMApIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gQW0gRG9ubmVyc3RhZywgOS4gSnVsaSAyMDI2LCAwMTo1Njox
MCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdAo+IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNo
ZWw6Cj4gPiBIaSwKPiA+IAo+ID4gT24gV2VkLCBKdWwgMDgsIDIwMjYgYXQgMDY6NTg6MjRQTSAr
MDEwMCwgRGF3aWQgT2xlc2luc2tpIHdyb3RlOiAgCj4gPiA+IEFkZCB0aGUgZGV2aWNlIHRyZWUg
bm9kZSBmb3IgdGhlIFYyIGNyeXB0b2dyYXBoaWMgaGFyZHdhcmUKPiA+ID4gYWNjZWxlcmF0b3Ig
b24gUkszNTZ4IFNvQ3MgKFJLMzU2NiwgUkszNTY4KS4KPiA+ID4gCj4gPiA+IFRoZSBJUCBibG9j
ayBzaXRzIGluIHRoZSBub24tc2VjdXJlIHBlcmlwaGVyYWwgZG9tYWluLiBJdHMgdGhyZWUKPiA+
ID4gY2xvY2tzIChjb3JlLCBhY2xrLCBoY2xrKSBhbmQgcmVzZXQgbGluZSBhcmUgYWNjZXNzaWJs
ZSBkaXJlY3RseQo+ID4gPiB0aHJvdWdoIHRoZSBtYWluIG5vbi1zZWN1cmUgQ1JVLCBzbyBubyBm
aXJtd2FyZSBpbnRlcm1lZGlhcnkgaXMKPiA+ID4gcmVxdWlyZWQuCj4gPiA+IAo+ID4gPiBUaGUg
bm9kZSBpcyBkaXNhYmxlZCBieSBkZWZhdWx0OyBib2FyZCBmaWxlcyB0aGF0IHdpc2ggdG8gdXNl
Cj4gPiA+IGhhcmR3YXJlIGNyeXB0byBvZmZsb2FkIG11c3QgZW5hYmxlIGl0LiAgCj4gPiAKPiA+
IFdoeSBpcyBpdCBkaXNhYmxlZCBieSBkZWZhdWx0PyBJdCBkb2Vzbid0IHNlZW0gdG8gYmUgYm9h
cmQgc3BlY2lmaWMKPiA+IGF0IGFsbCB0byBtZSAodGhlIHNhbWUgcXVlc3Rpb24gYXBwbGllcyB0
byB0aGUgUkszNTg4IERUKS4gIAo+IAo+IFlvdSdyZSBkZWZpbml0bHkgcmlnaHQgYWJvdXQgdGhh
dCAuLi4gdGhlcmUgYXJlIG5vIGJvYXJkIHNwZWNpZmljCj4gcmVzb3VyY2VzIG5lZWRlZCwgc28g
RGF3aWQgcGxlYXNlIGRyb3AgdGhlIHN0YXR1cyBmcm9tIGJvdGggbm9kZXMuCj4gCj4gCj4gSGVp
a28KPiAKCkknbGwgZHJvcCB0aGUgYHN0YXR1cyA9ICJkaXNhYmxlZCI7YCAKbGluZXMgZnJvbSBi
b3RoIHRoZSBSSzM1NnggYW5kIFJLMzU4OCBkZXZpY2UgdHJlZXMgaW4gdjMuCgpUaGFua3MgZm9y
IHRoZSByZXZpZXchCgpEYXdpZAoKPiA+ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IERhd2lkIE9s
ZXNpbnNraSA8ZGF3aWRyb0BnbWFpbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpIHwgMTIgKysrKysrKysrKysrCj4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaQo+ID4gPiBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaSBpbmRleAo+ID4g
PiBhNTgzMjg5NWJkMzkuLjlkZTdlNzQ4N2NhMSAxMDA2NDQgLS0tCj4gPiA+IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NngtYmFzZS5kdHNpICsrKwo+ID4gPiBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LWJhc2UuZHRzaSBAQCAtMTExMiw2Cj4gPiA+ICsx
MTEyLDE4IEBAIHNkaGNpOiBtbWNAZmUzMTAwMDAgeyBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4g
PiAgCX07Cj4gPiA+ICAKPiA+ID4gKwljcnlwdG86IGNyeXB0b0BmZTM4MDAwMCB7Cj4gPiA+ICsJ
CWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWNyeXB0byI7Cj4gPiA+ICsJCXJlZyA9IDww
eDAgMHhmZTM4MDAwMCAweDAgMHgyMDAwPjsKPiA+ID4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJ
IDQgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4gPiA+ICsJCWNsb2NrcyA9IDwmY3J1IENMS19DUllQ
VE9fTlNfQ09SRT4sIDwmY3J1Cj4gPiA+IEFDTEtfQ1JZUFRPX05TPiwKPiA+ID4gKwkJCSA8JmNy
dSBIQ0xLX0NSWVBUT19OUz47Cj4gPiA+ICsJCWNsb2NrLW5hbWVzID0gImNvcmUiLCAiYWNsayIs
ICJoY2xrIjsKPiA+ID4gKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9DUllQVE9fTlNfQ09SRT47Cj4g
PiA+ICsJCXJlc2V0LW5hbWVzID0gImNvcmUiOwo+ID4gPiArCQlzdGF0dXMgPSAiZGlzYWJsZWQi
Owo+ID4gPiArCX07Cj4gPiA+ICsKPiA+ID4gIAkvKgo+ID4gPiAgCSAqIFRlc3Rpbmcgc2hvd2Vk
IHRoYXQgdGhlIEhXUk5HIGZvdW5kIGluIFJLMzU2Ngo+ID4gPiBwcm9kdWNlcyB1bmFjY2VwdGFi
bHkKPiA+ID4gIAkgKiBsb3cgcXVhbGl0eSBvZiByYW5kb20gZGF0YSwgc28gdGhlIEhXUk5HIGlz
bid0Cj4gPiA+IGVuYWJsZWQgZm9yIGFsbCBSSzM1NnggIAo+ID4gICAKPiAKPiAKPiAKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
