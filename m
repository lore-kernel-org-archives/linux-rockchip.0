Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D32E5C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 12:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BdQegGeHmF40yGniLK6TaTjy/fiQ+uMXB7HTcSZPKCE=; b=W0y+tpcAPcXxuo
	R73XAV1dWY6kqF0Dm4FSeUHx6xfhaVLFCMDzrAhWKZl+wRB9Vc6ZttyZA1XVItdEmIMgbdsQSVsWd
	Kvkpr8G9xGjOE5YU6n1Dc1JWTHWDKxi8Y1NtNIyQFoMNx3KbLjhbCjzJ73GhW4w49iXxnP5c4wVFK
	EKwL7m+NyTE7fYzzfP7CwQAYmBPT9Q92NaBS1P4v/DGa9Epg9aO5ME1hNxYJ0wLg98I/ttgcXlEm1
	/TnMW5zE0vwOc3TMIFmFZLz/65r5w/DAuKHC7cG+DzNGYV5CSuTEqDHz9cngLoNLNr2tyvIPSSOD2
	cgKHiDCbl1en549GE1Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nacju-008hSX-23; Sat, 02 Apr 2022 12:20:22 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nacji-008hPe-4J; Sat, 02 Apr 2022 12:20:11 +0000
Received: by mail-ej1-x62d.google.com with SMTP id bg10so10994377ejb.4;
 Sat, 02 Apr 2022 05:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=COt2euqRR3p6qNdVYbNstxwNnTYl7gJdBogMLtEgqTA=;
 b=Mg6rc54xEGKqf6Sr62HIXx7/S6VwcgCxSYr4+lVSZnE1JT+1Miaoyi8dFVRIHtZSdu
 5SULIpO3nKYYjA631kbta3mcFuJe2Y7ob2/PBHjSznzQfBpLvbBBYSR/YMxvMHELN1W6
 kgqKhmdovoiMgzEGZ2a5glCn4FFJmRb/FWQ4H94SPDOuQR7HRSX8NINW82ibyoBbpl/a
 8jAKy9r+WNjdm5Y33ocCMfZmZdTapku1kbkM4N08jm1YfqxE/zrNTZLVv2725+FIw50K
 fZoW+UJYI4Q+Uvy84+Tl1UynjcRquxnS3g2vifcDgU8hPca4LAIMSSStxzazcNwCxyVY
 K0nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=COt2euqRR3p6qNdVYbNstxwNnTYl7gJdBogMLtEgqTA=;
 b=PPp7A0jBtIhhpDNYRtWdLcIGKR1M48w6wqIjCx+ZaAKeqPVkm8VLc4WFSx46KX8Eeb
 VJWsBnCiQVIhBOUrFFR3Jd0IyatfWpN13z/YUeLQsIa1Jtjch7VAIueaJT8rpZPC1QMf
 o3QiBC5PqXkTSdeH6nJqiKGm4BmHSxUaAfiV4D7Zi7/CbJztIsGChwB/ienj7PwHeQHW
 mlwDJHiGF7IFQpVU92IHz39mUM1hSqvlBbmCqk6ZQOaDpYpQdOLf7FOpXJu8oTxZlNhv
 FHX9Gg8EnBU3iY3GYOrTvFVk1+kBbPbuaSHKFCa3B+HvMfrDOtR4bpdgJBD8FK1dp381
 BBfg==
X-Gm-Message-State: AOAM533tG1tNNSdV0rjkU79aE7mH7LgYPjqfRnbyTORBjjRWESCRnSFM
 27yBdcCMBrVz6yJsQ58n+74=
X-Google-Smtp-Source: ABdhPJyCmCQjhb3s6usKGbvexqkR+YJgkUTkRVz71aLf6bCa6lioWwmFQnVrVCOqCIttMycVJO4N6A==
X-Received: by 2002:a17:907:9626:b0:6da:6c6f:9825 with SMTP id
 gb38-20020a170907962600b006da6c6f9825mr3541752ejc.600.1648902003785; 
 Sat, 02 Apr 2022 05:20:03 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 dk21-20020a0564021d9500b0041b501eab8csm2414432edb.57.2022.04.02.05.20.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 05:20:03 -0700 (PDT)
Message-ID: <0eed395b-ca02-2308-a5c6-7c4a72720175@gmail.com>
Date: Sat, 2 Apr 2022 14:20:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert
 rockchip,rk3188-cru.txt to YAML
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, zhangqing@rock-chips.com,
 Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220329111323.3569-1-jbx6244@gmail.com>
 <20220331225134.7A0A9C340ED@smtp.kernel.org> <3107512.vfdyTQepKt@diego>
 <c212c994-fc5d-6ad0-3cd6-88dc2c719e38@linaro.org>
 <7c786619-6fcf-21dd-8e5a-0ec67da2a63d@gmail.com>
 <5e1b6c09-0a8f-f1d9-728b-90ffbaedae83@linaro.org>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <5e1b6c09-0a8f-f1d9-728b-90ffbaedae83@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_052010_226249_7C2847FE 
X-CRM114-Status: GOOD (  18.06  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

CgpPbiA0LzIvMjIgMTQ6MTYsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMDIvMDQv
MjAyMiAxMzo0NSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+Pgo+Pgo+PiBPbiA0LzIvMjIgMTM6NDEs
IEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+PiBPbiAwMS8wNC8yMDIyIDA5OjU1LCBIZWlr
byBTdMO8Ym5lciB3cm90ZToKPj4+PiBIaSBTdGVwaGVuLAo+Pj4+Cj4+Pj4gQW0gRnJlaXRhZywg
MS4gQXByaWwgMjAyMiwgMDA6NTE6MzIgQ0VTVCBzY2hyaWViIFN0ZXBoZW4gQm95ZDoKPj4+Pj4g
UXVvdGluZyBKb2hhbiBKb25rZXIgKDIwMjItMDMtMjkgMDQ6MTM6MjIpCj4+Pj4+PiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJr
MzE4OC1jcnUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9y
b2NrY2hpcCxyazMxODgtY3J1LnlhbWwKPj4+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+Pj4+
PiBpbmRleCAwMDAwMDAwMDAuLmRkZDdlNDZhZgo+Pj4+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+Pj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJr
MzE4OC1jcnUueWFtbAo+Pj4+Pj4gQEAgLTAsMCArMSw3OCBAQAo+Pj4+Pj4gKyMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPj4+Pj4+ICslWUFNTCAxLjIKPj4+Pj4+ICstLS0KPj4+
Pj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Nsb2NrL3JvY2tjaGlwLHJr
MzE4OC1jcnUueWFtbCMKPj4+Pj4+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0
YS1zY2hlbWFzL2NvcmUueWFtbCMKPj4+Pj4+ICsKPj4+Pj4+ICt0aXRsZTogUm9ja2NoaXAgUksz
MTg4L1JLMzA2NiBDbG9jayBhbmQgUmVzZXQgVW5pdCAoQ1JVKQo+Pj4+Pj4gKwo+Pj4+Pj4gK21h
aW50YWluZXJzOgo+Pj4+Pj4gKyAgLSBFbGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBz
LmNvbT4KPj4+Pj4+ICsgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPj4+Pj4+
ICsKPj4+Pj4+ICtkZXNjcmlwdGlvbjogfAo+Pj4+Pj4gKyAgVGhlIFJLMzE4OC9SSzMwNjYgY2xv
Y2sgY29udHJvbGxlciBnZW5lcmF0ZXMgYW5kIHN1cHBsaWVzIGNsb2NrcyB0byB2YXJpb3VzCj4+
Pj4+PiArICBjb250cm9sbGVycyB3aXRoaW4gdGhlIFNvQyBhbmQgYWxzbyBpbXBsZW1lbnRzIGEg
cmVzZXQgY29udHJvbGxlciBmb3IgU29DCj4+Pj4+PiArICBwZXJpcGhlcmFscy4KPj4+Pj4+ICsg
IEVhY2ggY2xvY2sgaXMgYXNzaWduZWQgYW4gaWRlbnRpZmllciBhbmQgY2xpZW50IG5vZGVzIGNh
biB1c2UgdGhpcyBpZGVudGlmaWVyCj4+Pj4+PiArICB0byBzcGVjaWZ5IHRoZSBjbG9jayB3aGlj
aCB0aGV5IGNvbnN1bWUuIEFsbCBhdmFpbGFibGUgY2xvY2tzIGFyZSBkZWZpbmVkIGFzCj4+Pj4+
PiArICBwcmVwcm9jZXNzb3IgbWFjcm9zIGluIHRoZSBkdC1iaW5kaW5ncy9jbG9jay9yazMxODgt
Y3J1LmggYW5kCj4+Pj4+PiArICBkdC1iaW5kaW5ncy9jbG9jay9yazMwNjYtY3J1LmggaGVhZGVy
cyBhbmQgY2FuIGJlIHVzZWQgaW4gZGV2aWNlIHRyZWUgc291cmNlcy4KPj4+Pj4+ICsgIFNpbWls
YXIgbWFjcm9zIGV4aXN0IGZvciB0aGUgcmVzZXQgc291cmNlcyBpbiB0aGVzZSBmaWxlcy4KPj4+
Pj4+ICsgIFRoZXJlIGFyZSBzZXZlcmFsIGNsb2NrcyB0aGF0IGFyZSBnZW5lcmF0ZWQgb3V0c2lk
ZSB0aGUgU29DLiBJdCBpcyBleHBlY3RlZAo+Pj4+Pj4gKyAgdGhhdCB0aGV5IGFyZSBkZWZpbmVk
IHVzaW5nIHN0YW5kYXJkIGNsb2NrIGJpbmRpbmdzIHdpdGggZm9sbG93aW5nCj4+Pj4+PiArICBj
bG9jay1vdXRwdXQtbmFtZXM6Cj4+Pj4+PiArICAgIC0gInhpbjI0bSIgICAgLSBjcnlzdGFsIGlu
cHV0ICAgICAgICAgICAgICAgICAtIHJlcXVpcmVkCj4+Pj4+PiArICAgIC0gInhpbjMyayIgICAg
LSBSVEMgY2xvY2sgICAgICAgICAgICAgICAgICAgICAtIG9wdGlvbmFsCj4+Pj4+PiArICAgIC0g
InhpbjI3bSIgICAgLSAyN21oeiBjcnlzdGFsIGlucHV0IG9uIFJLMzA2NiAtIG9wdGlvbmFsCj4+
Pj4+PiArICAgIC0gImV4dF9oc2FkYyIgLSBleHRlcm5hbCBIU0FEQyBjbG9jayAgICAgICAgICAt
IG9wdGlvbmFsCj4+Pj4+PiArICAgIC0gImV4dF9jaWYwIiAgLSBleHRlcm5hbCBjYW1lcmEgY2xv
Y2sgICAgICAgICAtIG9wdGlvbmFsCj4+Pj4+PiArICAgIC0gImV4dF9ybWlpIiAgLSBleHRlcm5h
bCBSTUlJIGNsb2NrICAgICAgICAgICAtIG9wdGlvbmFsCj4+Pj4+PiArICAgIC0gImV4dF9qdGFn
IiAgLSBleHRlcm5hbCBKVEFHIGNsb2NrICAgICAgICAgICAtIG9wdGlvbmFsCj4+Pj4+Cj4+Pj4+
IEknZCBleHBlY3QgYWxsIHRoZXNlIGNsa3MgaGVyZSB0byBiZSBpbnB1dHMgdG8gdGhpcyBub2Rl
Lgo+Pj4+Cj4+Pj4gVGhlIG9wdGlvbmFsIGNsb2NrcyBhcmUgYWxsIHBhcnQgb2YgYSBjaXJjdWxh
ciBkZXBlbmRlbmN5Lgo+Pj4+Cj4+Pj4gU28gZm9yIGV4YW1wbGUgeGluMzJrIG5vcm1hbGx5IGlz
IGdlbmVyYXRlZCBieSB0aGUgcG1pYyBhbmQgZmVkCj4+Pj4gYmFjayBpbnRvIHRoZSBzeXN0ZW0s
IHNvIHRvIGdldCB4aW4zMmssIHdlIG5lZWQgdGhlIHBtaWMgdG8gcHJvYmUsCj4+Pj4gd2hpY2gg
bmVlZHMgaTJjLCB3aGljaCBpbiB0dXJuIGFscmVhZHkgbmVlZHMgdGhlIGNsb2NrIGNvbnRyb2xs
ZXIuCj4+Pgo+Pj4gQXJlIHlvdSBzdXJlIHRoYXQgeGluMzJrIChSVEMpIGNsb2NrIHNob3VsZCBi
ZSBpbnB1dCB0byB0aGUgY2xvY2sKPj4+IGNvbnRyb2xsZXI/IEkgd291bGQgZXhwZWN0IGl0IGlz
IHRoZSBpbnB1dCB0byB0aGUgU29DIFJUQyBibG9jaywgc28KPj4+IHRoZXJlIGlzIG5vIGNpcmN1
bGFyIGRlcGVuZGVuY3kuCj4+Cj4+IGNsay1yazMxODguYzoKPj4KPj4gUE5BTUUobXV4X3BsbF9w
KQkJPSB7ICJ4aW4yNG0iLCAieGluMzJrIiB9Owo+IAo+IFRoYW5rcywgYnV0IHRoYXQncyBub3Qg
dGhlIGFuc3dlciB3aGV0aGVyIGl0IGlzIGFuIGlucHV0IHRvIHRoZSBjbG9jawo+IGNvbnRyb2xs
ZXIuIEl0J3MgdGhlIGFuc3dlciBob3cgdGhlIGRyaXZlciBpbXBsZW1lbnRzIHRoaXMuIDopCgpQ
WDIgPT0gcmszMDY2CgpSb2NrY2hpcCBQWDIgVFJNIFYxLjAucGRmCgpwYWdlIDMwCgpDaGlwIENs
b2NrIEFyY2hpdGVjdHVyZSBEaWFncmFtIDEKCj4gCj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRv
ZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
