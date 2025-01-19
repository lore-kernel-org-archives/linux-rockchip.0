Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D3F5C02187
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jan 2025 15:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TW2tNZxZvb342zFbev7WjVCTmYzyiICIinjBYBrlsuE=; b=LpKR32UQTrer77
	sMmigGQu/X8QpntGuvGqSMYmAsuliwfz6cr/GFQtTUCnCWw5dAV81asKg/d0ov0Jo6Vts94xLT15E
	0CiTsYpIznVLye2tPMyC4xoonEmtQ5eS4jSMiJIQWq+DlebSl0Ui4fa1syvbeFi+pPwsJl6ARs8vd
	jQOZp+phLoTDpzpCdYdgXcaRZ3o/JEdqiT2RT6cE0VUTLQeIlL+YsMBh0cG01IQRdQ2FgGe2/dlRL
	pY8cwk75NJ95TomNk1W5VTInZrLHrmqOgQnji10jXcW1LGBt58ZHFX9lx0fgo67f7nviGGpKDl8fp
	UQnFlll1jGFS7qNQoJFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZXYH-000000044e5-2FK0;
	Sun, 19 Jan 2025 15:49:29 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZXX0-000000044Z8-1pje;
	Sun, 19 Jan 2025 15:48:11 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2ef6c56032eso4695251a91.2;
        Sun, 19 Jan 2025 07:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737301689; x=1737906489; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TZAYLxkgTuJqE+KNkFf+UOOQy4pcqWaU6mHRJg10BxY=;
        b=EYjAH8tTnLAuZrugVDXQntbV/2or3AZReUEA0LKJ6PfZtqtFKAPxNqRInVUaXJ6Hn/
         7xKtv+tne8/9+2vFuUzK5mmN/CLATarTR7RmPBL3lp29T/whIO2eaUvf/PCGSqSaEoTy
         Cq0Qs17IuoM90NHEKicnapaoPysm4u2XnMw6WC2UlhOBpNsUn1b0E44VC+WQvbOSqz2j
         fYlpJAYUiASVK2RJLIL/JfXd2Wz4NE1NB1JNIbFbHWVxWhrAZk0/PWgHVgfBjRwFZ9l1
         r7H5bgcKHbP3GWYIONLvnDrezU4Y1W0sitqKVzCniAYyKUTKMa39NxCYcl3fzLkHZ61t
         sA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737301689; x=1737906489;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TZAYLxkgTuJqE+KNkFf+UOOQy4pcqWaU6mHRJg10BxY=;
        b=r8gUVoKPn1XUw39332f9q2kSm+2iRs8QYMb38QK4/jfHJtAMHifKzrpWj2s5xOMiBB
         TNJA5YL2NlPEJoO8bY6uTJ8OIo0W78z8HM0C+3y1XNqLrxtYagKZtw15JPUs3pIvnR45
         +pZSOH8J8/5sG+hZJAcLigfNNEfbEJjpYjzHWpvuCoTz/VM4FJET4M8Z/za23h51dBS7
         S0l34+B1QgugRmgeAc0Izro6sh8i4MuSjrXYUXeJBwxGeZMngrajeXLHPmRpjkndp5Zn
         G4jm6ZJcFgtBRrD+FBh3XFj+iB8vO83Hwwpb1tQA5tDVi4GzzrMWTaC9oylqwAlIHgUv
         0Y9w==
X-Forwarded-Encrypted: i=1; AJvYcCV7Zdp0uz8/gw51ajpj7g77uBEygknM8pJ+RO/b44fyP1HkgE7wOfwGqZUZDuFkSqLzNWHezcHQdYGuZW2mbunw@lists.infradead.org, AJvYcCXuhJFm0k6MykLzxrOfyasytBnr+Af4+VqE9kHQV2ssw/GoLmuUO3PWqolT+YpH0iaD9Zrs1linpeetD4QytDM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq9fAekmZBkBafsREz3Mx0jCSALLL8uPhmUROpJSRIOq+uvDnP
	dAGqyKhNN3OcVfBjEekpNZtaFPCyu93c9E5lzr29b/hojomDsLxj
X-Gm-Gg: ASbGncu7Sz2t3AdX52a0RXfEHLeegkR1IxXsfNMAcuEyCVZJz4tOPVIERen9Giov4Nj
	GjpZGnUxCVV2dkatCqfJehLRRvn4/278fD2xXLZ8gGm2mYPVIC5GaORcCdIMO5Ic7hy7nzUZze/
	4dHU06rPUbW9X/GVwXzNjUKaL/uKWNAv3+VlvEC+FscSqSlRy95OfL4uguOGzIXAneURrCZjhVv
	mEmaDsaBch4HWSj0MhJgFBOhuSIPqVxUHaHse5TT+ZwZ0+oQj3HGMHDvYlpIfZg+MPGEmp/3sBc
	CWCp5CBLt9Rzi3Uh6pEvnaYVO9i0PxPu7lz9
X-Google-Smtp-Source: AGHT+IGvCdSeQSGbyX+8aN4u/Fdvmx1BdTLz8cpVCt8/MNmK2Wh5evJPRODkKIm2pkBBFPhYUCnl6A==
X-Received: by 2002:a17:90b:6c3:b0:2f6:d266:f461 with SMTP id 98e67ed59e1d1-2f782d8c839mr14076613a91.30.1737301688910;
        Sun, 19 Jan 2025 07:48:08 -0800 (PST)
Received: from ?IPV6:2408:8362:245d:4738:bc4b:53ff:fead:2724? ([2401:b60:5:867d:3631:b7db:c3f4:aae2])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f72c14ffaasm8954154a91.4.2025.01.19.07.48.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2025 07:48:08 -0800 (PST)
Message-ID: <65f4e27f-3dc4-4eaf-be4d-265ce0325ade@gmail.com>
Date: Sun, 19 Jan 2025 23:48:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: change eth phy mode to rgmii-id for
 orangepi r1 plus lts
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
References: <20250119091154.1110762-1-cnsztl@gmail.com>
 <ce15f141688c4c537ac3307b6fbed283@manjaro.org>
 <59893a67-18c7-4ab3-9b2a-5a17091d4b6c@gmail.com>
 <dffd06a341b58e9689f578c3456cc11d@manjaro.org>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <dffd06a341b58e9689f578c3456cc11d@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_074810_500530_63DC83D2 
X-CRM114-Status: GOOD (  19.35  )
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

T24gMjAyNS8xLzE5IDE5OjM2LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gT24gMjAyNS0wMS0xOSAx
MjoxNSwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPj4gT24gMjAyNS8xLzE5IDE3OjU0LCBEcmFnYW4g
U2ltaWMgd3JvdGU6Cj4+PiBUaGFua3MgZm9yIHRoZSBwYXRjaC7CoCBQbGVhc2UsIHNlZSBhIGNv
bW1lbnQgYmVsb3cuCj4+Pgo+Pj4gT24gMjAyNS0wMS0xOSAxMDoxMSwgVGlhbmxpbmcgU2hlbiB3
cm90ZToKPj4+PiBJbiBnZW5lcmFsIHRoZSBkZWxheSBzaG91bGQgYmUgYWRkZWQgYnkgdGhlIFBI
WSBpbnN0ZWFkIG9mIHRoZSBNQUMsCj4+Pj4gYW5kIHRoaXMgaW1wcm92ZXMgbmV0d29yayBzdGFi
aWxpdHkgb24gc29tZSBib2FyZHMgd2hpY2ggc2VlbSB0bwo+Pj4+IG5lZWQgZGlmZmVyZW50IGRl
bGF5Lgo+Pj4+Cj4+Pj4gRml4ZXM6IDM4N2IzYmJhYzVlYSAoImFybTY0OiBkdHM6IHJvY2tjaGlw
OiBBZGQgWHVubG9uZyBPcmFuZ2VQaSBSMSAKPj4+PiBQbHVzIExUUyIpCj4+Pj4gQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcgIyA2LjYrCj4+Pj4gU2lnbmVkLW9mZi1ieTogVGlhbmxpbmcgU2hl
biA8Y25zenRsQGdtYWlsLmNvbT4KPj4+PiAtLS0KPj4+PiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMtbHRzLmR0cyB8IDMgKy0tCj4+Pj4gwqBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c8Kg
wqDCoMKgIHwgMSArCj4+Pj4gwqBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1v
cmFuZ2VwaS1yMS1wbHVzLmR0c2nCoMKgwqAgfCAxIC0KPj4+PiDCoDMgZmlsZXMgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdAo+Pj4+
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1cy1s
dHMuZHRzCj4+Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2Vw
aS1yMS1wbHVzLWx0cy5kdHMKPj4+PiBpbmRleCA2N2MyNDZhZDhiOGMuLmVjMmNlODk0ZGExZiAx
MDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFu
Z2VwaS1yMS1wbHVzLWx0cy5kdHMKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLWx0cy5kdHMKPj4+PiBAQCAtMTcsOCArMTcsNyBA
QCAvIHsKPj4+Pgo+Pj4+IMKgJmdtYWMyaW8gewo+Pj4+IMKgwqDCoMKgIHBoeS1oYW5kbGUgPSA8
Jnl0ODUzMWM+Owo+Pj4+IC3CoMKgwqAgdHhfZGVsYXkgPSA8MHgxOT47Cj4+Pj4gLcKgwqDCoCBy
eF9kZWxheSA9IDwweDA1PjsKPj4+PiArwqDCoMKgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPj4+
Cj4+PiBTaG91bGRuJ3QgdGhlICJ0eF9kZWxheSIgYW5kICJyeF9kZWxheSIgRFQgcGFyYW1ldGVy
cyBiZSBjb252ZXJ0ZWQKPj4+IGludG8gdGhlICJ0eC1pbnRlcm5hbC1kZWxheS1wcyIgYW5kICJy
eC1pbnRlcm5hbC1kZWxheS1wcyIgcGFyYW1ldGVycywKPj4+IHJlc3BlY3RpdmVseSwgc28gdGhl
IE1vdG9yY29tbSBQSFkgZHJpdmVyIGNhbiBwaWNrIHRoZW0gdXAgYW5kCj4+PiBhY3R1YWxseSBj
b25maWd1cmUgdGhlIGludGVybmFsIFBIWSBkZWxheXM/Cj4+Cj4+IFRoZSBkb2N1bWVudGF0aW9u
WzFdIHNheXMgInt0LHJ9eC1pbnRlcm5hbC1kZWxheS1wcyIgZGVmYXVsdCB0byAxOTUwCj4+IGFu
ZCB0aGF0IHZhbHVlIGFscmVhZHkgd29ya3MgZmluZSBvbiBteSBib2FyZC4KPj4KPj4gMS4gaHR0
cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC8gCj4+IG1vdG9yY29tbSUyQ3l0OHh4eC55YW1sCj4gCj4gSSBzZWUsIGJ1dCB0aG9zZSB2
YWx1ZXMgZGlmZmVyIGZyb20gdGhlIHZhbHVlcyBmb3VuZCBpbiB0aGUKPiAidHhfZGVsYXkiIGFu
ZCAicnhfZGVsYXkiIERUIHBhcmFtZXRlcnMsIHNvIEkgdGhpbmsgdGhpcyBwYXRjaAo+IHNob3Vs
ZCBiZSB0ZXN0ZWQgd2l0aCBhdCBsZWFzdCBvbmUgbW9yZSBPcmFuZ2UgUGkgUjEgUGx1cyBMVFMK
PiBib2FyZCwgdG8gbWFrZSBzdXJlIGl0J3MgYWxsIHN0aWxsIGZpbmUuCgpUaGlzIHBhdGNoIGhh
cyBiZWVuIHRlc3RlZCBvbiAyIGJvYXJkcywgYW5kIHdlIHdpbGwgZG8gbW9yZSB0ZXN0cyBpbiAK
bmV4dCB3ZWVrLgoKVGhhbmtzLApUaWFubGluZy4KCj4gCj4+Pgo+Pj4+IMKgwqDCoMKgIHN0YXR1
cyA9ICJva2F5IjsKPj4+Pgo+Pj4+IMKgwqDCoMKgIG1kaW8gewo+Pj4+IGRpZmYgLS1naXQgYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0cwo+
Pj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtb3JhbmdlcGktcjEtcGx1
cy5kdHMKPj4+PiBpbmRleCAzMjRhOGU5NTFmN2UuLjg0NmI5MzFlMTZkMiAxMDA2NDQKPj4+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1vcmFuZ2VwaS1yMS1wbHVz
LmR0cwo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5n
ZXBpLXIxLXBsdXMuZHRzCj4+Pj4gQEAgLTE1LDYgKzE1LDcgQEAgLyB7Cj4+Pj4KPj4+PiDCoCZn
bWFjMmlvIHsKPj4+PiDCoMKgwqDCoCBwaHktaGFuZGxlID0gPCZydGw4MjExZT47Cj4+Pj4gK8Kg
wqDCoCBwaHktbW9kZSA9ICJyZ21paSI7Cj4+Pj4gwqDCoMKgwqAgdHhfZGVsYXkgPSA8MHgyND47
Cj4+Pj4gwqDCoMKgwqAgcnhfZGVsYXkgPSA8MHgxOD47Cj4+Pj4gwqDCoMKgwqAgc3RhdHVzID0g
Im9rYXkiOwo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzMyOC1vcmFuZ2VwaS1yMS1wbHVzLmR0c2kKPj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+Pj4+IGluZGV4IDRmMTkzNzA0ZTVk
Yy4uMDk1MDhlMzI0YTI4IDEwMDY0NAo+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LW9yYW5nZXBpLXIxLXBsdXMuZHRzaQo+Pj4+IEBAIC0x
MDksNyArMTA5LDYgQEAgJmdtYWMyaW8gewo+Pj4+IMKgwqDCoMKgIGFzc2lnbmVkLWNsb2NrcyA9
IDwmY3J1IFNDTEtfTUFDMklPPiwgPCZjcnUgU0NMS19NQUMySU9fRVhUPjsKPj4+PiDCoMKgwqDC
oCBhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZnbWFjX2Nsaz4sIDwmZ21hY19jbGs+Owo+Pj4+
IMKgwqDCoMKgIGNsb2NrX2luX291dCA9ICJpbnB1dCI7Cj4+Pj4gLcKgwqDCoCBwaHktbW9kZSA9
ICJyZ21paSI7Cj4+Pj4gwqDCoMKgwqAgcGh5LXN1cHBseSA9IDwmdmNjX2lvPjsKPj4+PiDCoMKg
wqDCoCBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47Cj4+Pj4gwqDCoMKgwqAgcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
