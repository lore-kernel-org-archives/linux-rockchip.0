Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A760EC47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 13:39:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 73FDA60FE3
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 13:39:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 73FDA60FE3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ie6T2MHsf7ugbJNb7EgPsXhVMM35qEtn/bNgMhqjEZA=; b=1Vmqye/qThujUNzrx/zUbN8SG6
	Yj63OgJ8dfVGKi6SyTNM+ePvSM8tfJmccezWcVms73heokKMJbkYsRJZR31px0C9ja8SlZTdDwxu4
	+yu6bIIrkj7Qs7eWRWAbeWZpYOM/cXZ8BJYj7VLLLMQwM8gNlvyjNSnbcadc7vJUOYUyD6fAxV4Tu
	1qbMkfXp1bQya3tFwPJFwD/zun5U3BRuK8lyMVMJeYDH0UCFTUsLWy8RjuMMuTk11BNfk1B/TJuMl
	srFNo2NyVMTyBQprpbX7G+6dhjHqFLbCi0HmGVwxYoRpkCKPO0I7SFdsk43aq17ncGUb3ZVINmJAU
	k4BL/pUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqFTn-003rl2-Rk; Mon, 07 Jun 2021 13:39:47 +0000
Received: from mail-ed1-f54.google.com ([209.85.208.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqFTG-003rVh-GU; Mon, 07 Jun 2021 13:39:17 +0000
Received: by mail-ed1-f54.google.com with SMTP id r11so20357614edt.13;
 Mon, 07 Jun 2021 06:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oGFBlgBLyzhRt0x9A/yUTSQ7KPpouVWWWPkzxriHNTE=;
 b=A/E/yimhVnbc1uUYCbaeLg0ecA/qAyFuYjFBJ1ZEXy7XYnZTXJdhcyC0bP9th1Rb6f
 5Ds5M+91RdnLCDhBVVGzHskwarMMhlFucQ6L+fGt+J/y/WEpNnTWX4vszKR69m/jktAo
 nJ2Ktoac/pCqFrWLZrRAYkP0/0+oCIZKNm65zVyxZEROBAAhQqKOs8Hm6tVCLENmjVg/
 nK+ZNmRo5Scrw+i85YeJHKMJIGQ6I2H6/GLwsYgHUbX++wZFS4pOJAHry2L+M2bsAG8X
 EEad3KztdPZombtI5QN2y0g9ZW4SmeT29eyDIPqxbkGd+aFBIa1EyRpHQ2jVCPgrseqo
 1c8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oGFBlgBLyzhRt0x9A/yUTSQ7KPpouVWWWPkzxriHNTE=;
 b=ghyrBb/Da6c4+/4V1eAoyxEiBqFppMK42H4Ewo9m7uIxEuRdtiz8taI77yI+xxkO0I
 1vG3XpnmJeUJORWeCoCMC0yETYaQrbv9u1AK7vn2R/OE0SMb5ym6dpbQtOO6llKZIZGd
 qPHv/1SkEx/EZEjvpvxwkpRmzCMyw7kpicn6iQApBkuqwoO1qeFkvEwkZSeyl0nX4+Jr
 oebU17QahxkoJruNe3xnvgDN0BCry5nEzsj+evXM6leRKroAC+Nx/dTQYRLQCXWKDusO
 1oiBRDUlkXorSykGHq7odPxFzC4imEv3AH6rp86o3nSvrym2z4K6kAkVOxxSnddXFdRY
 bQZQ==
X-Gm-Message-State: AOAM533cYfL/Ea6obg2wqZ5XQc6UDt8Ny4Y+hREDOj9vPbOPTRPC2INd
 S/jEjJomgUOUfr/Y8MAqNSiV3j/Yg4N4WQ==
X-Google-Smtp-Source: ABdhPJxO0xm6ZNPBn+B1ByLwe5VVdM+n8YQh/IbYgE+i1X+odT456LvWSWJ2iRa0NVOa3HxwH1Ax8A==
X-Received: by 2002:aa7:db90:: with SMTP id u16mr19836591edt.106.1623073092593; 
 Mon, 07 Jun 2021 06:38:12 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 r29sm995173edc.52.2021.06.07.06.38.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Jun 2021 06:38:12 -0700 (PDT)
Subject: Re: [PATCH v7 1/5] dt-bindings: phy: rename phy nodename in
 phy-rockchip-inno-usb2.yaml
To: Rob Herring <robh+dt@kernel.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Tobias Schramm <t.schramm@manjaro.org>, linux-phy@lists.infradead.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20210601164800.7670-1-jbx6244@gmail.com>
 <20210601164800.7670-2-jbx6244@gmail.com> <YLhukPL7jSx3+dBj@vkoul-mobl>
 <3601774.Dhsi8hcfAM@diego>
 <CAL_Jsq+xE7UfXcr-RTkxB8gZej8M52Fk-yM3yYA3KA7mMn50ng@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <e7e09072-9cac-413e-dca2-e2a668c1807e@gmail.com>
Date: Mon, 7 Jun 2021 15:38:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+xE7UfXcr-RTkxB8gZej8M52Fk-yM3yYA3KA7mMn50ng@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_063914_605464_42E06D90 
X-CRM114-Status: GOOD (  17.22  )
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

CgpPbiA2LzcvMjEgMzoxNiBQTSwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gVGh1LCBKdW4gMywg
MjAyMSBhdCAzOjU4IEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+
Pgo+PiBIaSBWaW5vZCwKPj4KPj4gQW0gRG9ubmVyc3RhZywgMy4gSnVuaSAyMDIxLCAwNzo1NDoy
NCBDRVNUIHNjaHJpZWIgVmlub2QgS291bDoKPj4+IE9uIDAxLTA2LTIxLCAxODo0NywgSm9oYW4g
Sm9ua2VyIHdyb3RlOgo+Pj4+IFRoZSBwYXR0ZXJuOiAiXih8dXNiLXx1c2IyLXx1c2IzLXxwY2kt
fHBjaWUtfHNhdGEtKXBoeShAWzAtOWEtZixdKykqJCIKPj4+PiBpbiBwaHktcHJvdmlkZXIueWFt
bCBoYXMgcmVxdWlyZWQgIiNwaHktY2VsbHMiIGZvciBwaHkgbm9kZXMuCj4+Pj4gVGhlICJwaHkt
Y2VsbHMiIGluIHJvY2tjaGlwLWlubm8tdXNiMiBub2RlcyBhcmUgbG9jYXRlZCBpbiBzdWJub2Rl
cy4KPj4+PiBSZW5hbWUgdGhlIG5vZGVuYW1lIHRvIHBhdHRlcm4gInVzYjJwaHlAWzAtOWEtZl0r
JCIgdG8gcHJldmVudAo+Pj4+IG5vdGlmaWNhdGlvbnMuIFJlbW92ZSB1bm5lZWRlZCAiI3BoeS1j
ZWxscyIgZnJvbSBwYXJlbnQgbm9kZS4KPj4+PiBBbHNvIHNvcnQgZXhhbXBsZS4KPj4+Pgo+Pj4+
IG1ha2UgQVJDSD1hcm0gZHRic19jaGVjawo+Pj4+IERUX1NDSEVNQV9GSUxFUz1+Ly5sb2NhbC9s
aWIvcHl0aG9uMy41L3NpdGUtcGFja2FnZXMvZHRzY2hlbWEvc2NoZW1hcy8KPj4+PiBwaHkvcGh5
LXByb3ZpZGVyLnlhbWwKPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEpvbmtlciA8amJ4
NjI0NEBnbWFpbC5jb20+Cj4+Pj4gQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5v
cmc+Cj4+Pj4gLS0tCj4+Pj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2No
aXAtaW5uby11c2IyLnlhbWwgICAgICAgfCAxMSArKystLS0tLS0tLQo+Pj4+ICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sICAgICAgIHwgIDQg
KystLQo+Pj4KPj4+IEkgZG9udCBoYXZlIGdyZi55YW1sLCBJIGd1ZXNzIGl0IHdvdWxkIGJlIGVh
c2llciB0byBzcGxpdCB0aGlzIGludG8gdHdvCj4+PiBvciBhcHBseSB0aGlzIHRocnUgcm9ja2No
aXAgdHJlZS4gSWYgeW91IHByZWZlciBsYXR0ZXI6Cj4+Pgo+Pj4gQWNrZWQtQnk6IFZpbm9kIEtv
dWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4+Cj4+IGJlZm9yZSB3ZSBkbyBhbnkgbW9yZSByb3VuZHMs
IEknbGwganVzdCBkbyB0aGF0IHdpdGggeW91ciBBY2ssIHRoYW5rcyA6LSkKPiAKPiBUaGlzIGlz
IGdlbmVyYXRpbmcgd2FybmluZ3Mgb24gbGludXgtbmV4dCBub3c6Cj4gCj4gL2J1aWxkcy9yb2Jo
ZXJyaW5nL2xpbnV4LWR0L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2Mvcm9j
a2NoaXAvZ3JmLmV4YW1wbGUuZHQueWFtbDoKPiBzeXNjb25AZmY3NzAwMDA6IHVzYjJwaHlAZTQ1
MDogJyNwaHktY2VsbHMnIGRvZXMgbm90IG1hdGNoIGFueSBvZiB0aGUKPiByZWdleGVzOiAncGlu
Y3RybC1bMC05XSsnCj4gRnJvbSBzY2hlbWE6IC9idWlsZHMvcm9iaGVycmluZy9saW51eC1kdC9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3JvY2tjaGlwL2dyZi55YW1sCj4g
L2J1aWxkcy9yb2JoZXJyaW5nL2xpbnV4LWR0L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9zb2Mvcm9ja2NoaXAvZ3JmLmV4YW1wbGUuZHQueWFtbDoKPiB1c2IycGh5QGU0NTA6ICcj
cGh5LWNlbGxzJyBkb2VzIG5vdCBtYXRjaCBhbnkgb2YgdGhlIHJlZ2V4ZXM6Cj4gJ3BpbmN0cmwt
WzAtOV0rJwo+IEZyb20gc2NoZW1hOiAvYnVpbGRzL3JvYmhlcnJpbmcvbGludXgtZHQvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtaW5uby11c2IyLnlh
bWwKPiAKPiBSb2IKPiAKCkhpIFJvYiwgSGVpa28sCgpTb3JyeS4uLgpUaGF0ICcjcGh5LWNlbGxz
JyBpbiB0aGUgZ3JmLnlhbWwgZXhhbXBsZSBhbHNvIG5lZWRzIHRvIGdvLgoKSXMgdGhhdCBzb21l
dGhpbmcgSGVpa28gY2FuIGZpeCBpbiBoaXMgZ2l0IHRyZWUgb3IKZG8gSSBoYXZlIHRvIHJlc3Vi
bWl0IHRoZSBjb21wbGV0ZSBwYXRjaCBvciBqdXN0IGEgZml4PwpQbGVhc2UgYWR2aXNlLgoKS2lu
ZCByZWdhcmRzLAoKSm9oYW4KCj09PQo+IAo+IGV4YW1wbGVzOgo+ICAgLSB8Cj4gICAgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9jbG9jay9yazMzOTktY3J1Lmg+Cj4gICAgICNpbmNsdWRlIDxkdC1i
aW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4gICAgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9wb3dlci9yazMzOTktcG93ZXIuaD4KPiAgICAgZ3JmOiBzeXNjb25AZmY3NzAw
MDAgewo+ICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzk5LWdyZiIsICJzeXNjb24i
LCAic2ltcGxlLW1mZCI7Cj4gICAgICAgcmVnID0gPDB4ZmY3NzAwMDAgMHgxMDAwMD47Cj4gICAg
ICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gICAgICAgI3NpemUtY2VsbHMgPSA8MT47Cj4gCj4g
ICAgICAgbWlwaV9kcGh5X3J4MDogbWlwaS1kcGh5LXJ4MCB7Cj4gICAgICAgICBjb21wYXRpYmxl
ID0gInJvY2tjaGlwLHJrMzM5OS1taXBpLWRwaHktcngwIjsKPiAgICAgICAgIGNsb2NrcyA9IDwm
Y3J1IFNDTEtfTUlQSURQSFlfUkVGPiwKPiAgICAgICAgICAgICAgICAgIDwmY3J1IFNDTEtfRFBI
WV9SWDBfQ0ZHPiwKPiAgICAgICAgICAgICAgICAgIDwmY3J1IFBDTEtfVklPX0dSRj47Cj4gICAg
ICAgICBjbG9jay1uYW1lcyA9ICJkcGh5LXJlZiIsICJkcGh5LWNmZyIsICJncmYiOwo+ICAgICAg
ICAgcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszMzk5X1BEX1ZJTz47Cj4gICAgICAgICAjcGh5
LWNlbGxzID0gPDA+Owo+ICAgICAgIH07Cj4gCj4gICAgICAgdTJwaHkwOiB1c2IycGh5QGU0NTAg
ewo+ICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdXNiMnBoeSI7Cj4gICAg
ICAgICByZWcgPSA8MHhlNDUwIDB4MTA+Owo+ICAgICAgICAgY2xvY2tzID0gPCZjcnUgU0NMS19V
U0IyUEhZMF9SRUY+Owo+ICAgICAgICAgY2xvY2stbmFtZXMgPSAicGh5Y2xrIjsKPiAgICAgICAg
ICNjbG9jay1jZWxscyA9IDwwPjsKPiAgICAgICAgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJjbGtf
dXNicGh5MF80ODBtIjsKCj4gICAgICAgICAjcGh5LWNlbGxzID0gPDA+OwoKUmVtb3ZlCgo+IAo+
ICAgICAgICAgdTJwaHkwX2hvc3Q6IGhvc3QtcG9ydCB7Cj4gICAgICAgICAgICNwaHktY2VsbHMg
PSA8MD47Cj4gICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAyNyBJUlFfVFlQRV9MRVZF
TF9ISUdIIDA+Owo+ICAgICAgICAgICBpbnRlcnJ1cHQtbmFtZXMgPSAibGluZXN0YXRlIjsKPiAg
ICAgICAgICB9Owo+IAo+ICAgICAgICAgdTJwaHkwX290Zzogb3RnLXBvcnQgewo+ICAgICAgICAg
ICAjcGh5LWNlbGxzID0gPDA+Owo+ICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTAz
IElSUV9UWVBFX0xFVkVMX0hJR0ggMD4sCj4gICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQ
SSAxMDQgSVJRX1RZUEVfTEVWRUxfSElHSCAwPiwKPiAgICAgICAgICAgICAgICAgICAgICAgIDxH
SUNfU1BJIDEwNiBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+ICAgICAgICAgICBpbnRlcnJ1cHQt
bmFtZXMgPSAib3RnLWJ2YWxpZCIsICJvdGctaWQiLAo+ICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAibGluZXN0YXRlIjsKPiAgICAgICAgIH07Cj4gICAgICAgfTsKPiAgICAgfTsKCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
