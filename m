Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B93C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 16:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wOYr0sUXFLj8VRcJMLOXfBhCV65d5qwQJXZVZaW/TLA=; b=FD0NS1Omkgutow
	OzrBDj9CFyC7Ca5QtVG38HTwyvbEEKjRzwoPmUH6+XHn2CZlExW1aK1V8vCvaTpHpGPb0TPm4RL7B
	xnrJafv2uT/F7aRLTznV95k6O332YQfRrYm3eSPCamqfXEu08jMvqF3eLdDaQZ8+lz+ZWgrbEHgI0
	Wcx8jZBUmGePmZu7MLI2qqTJT/vuWQQBrDstHskF0qF7NDBZh/RE45L97jZJR4uBhI+Lwm4UsxuXi
	JSJy0jCXEXI3z5Kpw8tc3WMAWownu/GBcGzuB6kr0yWIeDUS94UzBHWJiaigJc8bG1ChQmeoHQy5t
	BloBSWFmbnuL5VfdpLIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nagBr-009WfW-IS; Sat, 02 Apr 2022 16:01:27 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nagBf-009WdU-MY
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 16:01:18 +0000
Received: by mail-ed1-x52f.google.com with SMTP id a17so6220216edm.9
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 09:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=lmJCCJ8fgUPzUm6LeyDlcBmDbRHg8TIVpjOQGBqlZHk=;
 b=wq63czqcdGAdUoH/+15ETJz8usSPQogFdLMvAZIavzBPSG6GW2VRfJSqcB9bJ9jFPA
 mqvVEHeUKFa2veONrP0uYF10XNOpH/F0u1m6zj+oHx+bqrHtvbZxPhjjfgh1CaN165R7
 N4ss4HBdWNiU8J5P4+pEiSOMv2p1I5bRnYUVAlJVqwkpiTQp21fVk45bt+Gc6PBd1ltR
 4eDKLyhqZqg1WXvtPgaPy3q2/lubIXC62uiuQs6ugIMgWOmFzEp4+xEG1CXUFcGSNCmF
 ohbLKwpl20Sbik5b/IApeOTXMrKm3sveQfXKZ8HSj0f5zEdx4op099MmOnrgdyAZXF8K
 MbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=lmJCCJ8fgUPzUm6LeyDlcBmDbRHg8TIVpjOQGBqlZHk=;
 b=RRXVX8rKIYpyO+0THVR3+LP/8uxrUMyVJVucl3o76BIQfUoEkUtxn3wh4zlwUsUAAs
 T8YD4ZjhSZO6TvCI/S6KN5hIKkWEuzOiEkEBad/XDGNVET7MV8k1BacNY49W/wlFFG3d
 1++UycGZqSCpMKHm/xoCxKpkIZqEHWXdx5gwWUrMbkez5c5Rij+XDj5thF8eN36DCtLf
 SMk6p4I8nsIK/FdEjsgMGVP8pWIiAiR6GVW87+6hOfoTPYqdqN/Gm/GTI/9X3XViHQkl
 av+qFyOVz9NTLT82rYMKaBeV1EsJ+e9kvRWZmINmiRnjP6hIYHg8+ottntI/Uz2/geX5
 Oirw==
X-Gm-Message-State: AOAM530pFGlx2VpkiKL2Tq01i9mX63HkTcLagTMsa7fJSe+OqcJ6fn6g
 /Sev3mImgUCZ45gIJsZVcJYabg==
X-Google-Smtp-Source: ABdhPJxk2uVM8AfzL67ivCUJqnJfKP/vco7byneQz2mX7LZKuaoW7Llqvp4oorxKC7j40wUOq43fyg==
X-Received: by 2002:a05:6402:4247:b0:419:3990:3db6 with SMTP id
 g7-20020a056402424700b0041939903db6mr25461773edb.193.1648915273352; 
 Sat, 02 Apr 2022 09:01:13 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 uz12-20020a170907118c00b006e7475db2d6sm244830ejb.217.2022.04.02.09.01.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 09:01:12 -0700 (PDT)
Message-ID: <4b7af0ed-c5e1-7523-0abc-4204596edeb9@linaro.org>
Date: Sat, 2 Apr 2022 18:01:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert
 rockchip,rk3188-cru.txt to YAML
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
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
 <0eed395b-ca02-2308-a5c6-7c4a72720175@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0eed395b-ca02-2308-a5c6-7c4a72720175@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_090115_775485_286AD033 
X-CRM114-Status: GOOD (  18.10  )
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

T24gMDIvMDQvMjAyMiAxNDoyMCwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+IAo+IAo+IE9uIDQvMi8y
MiAxNDoxNiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMDIvMDQvMjAyMiAxMzo0
NSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+Pj4KPj4+Cj4+PiBPbiA0LzIvMjIgMTM6NDEsIEtyenlz
enRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4gT24gMDEvMDQvMjAyMiAwOTo1NSwgSGVpa28gU3TD
vGJuZXIgd3JvdGU6Cj4+Pj4+IEhpIFN0ZXBoZW4sCj4+Pj4+Cj4+Pj4+IEFtIEZyZWl0YWcsIDEu
IEFwcmlsIDIwMjIsIDAwOjUxOjMyIENFU1Qgc2NocmllYiBTdGVwaGVuIEJveWQ6Cj4+Pj4+PiBR
dW90aW5nIEpvaGFuIEpvbmtlciAoMjAyMi0wMy0yOSAwNDoxMzoyMikKPj4+Pj4+PiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJr
MzE4OC1jcnUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9y
b2NrY2hpcCxyazMxODgtY3J1LnlhbWwKPj4+Pj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+
Pj4+IGluZGV4IDAwMDAwMDAwMC4uZGRkN2U0NmFmCj4+Pj4+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+
Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hp
cCxyazMxODgtY3J1LnlhbWwKPj4+Pj4+PiBAQCAtMCwwICsxLDc4IEBACj4+Pj4+Pj4gKyMgU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPj4+Pj4+PiArJVlBTUwgMS4yCj4+Pj4+Pj4g
Ky0tLQo+Pj4+Pj4+ICskaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Nsb2NrL3Jv
Y2tjaGlwLHJrMzE4OC1jcnUueWFtbCMKPj4+Pj4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRy
ZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+Pj4+Pj4gKwo+Pj4+Pj4+ICt0aXRsZTog
Um9ja2NoaXAgUkszMTg4L1JLMzA2NiBDbG9jayBhbmQgUmVzZXQgVW5pdCAoQ1JVKQo+Pj4+Pj4+
ICsKPj4+Pj4+PiArbWFpbnRhaW5lcnM6Cj4+Pj4+Pj4gKyAgLSBFbGFpbmUgWmhhbmcgPHpoYW5n
cWluZ0Byb2NrLWNoaXBzLmNvbT4KPj4+Pj4+PiArICAtIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+Cj4+Pj4+Pj4gKwo+Pj4+Pj4+ICtkZXNjcmlwdGlvbjogfAo+Pj4+Pj4+ICsgIFRo
ZSBSSzMxODgvUkszMDY2IGNsb2NrIGNvbnRyb2xsZXIgZ2VuZXJhdGVzIGFuZCBzdXBwbGllcyBj
bG9ja3MgdG8gdmFyaW91cwo+Pj4+Pj4+ICsgIGNvbnRyb2xsZXJzIHdpdGhpbiB0aGUgU29DIGFu
ZCBhbHNvIGltcGxlbWVudHMgYSByZXNldCBjb250cm9sbGVyIGZvciBTb0MKPj4+Pj4+PiArICBw
ZXJpcGhlcmFscy4KPj4+Pj4+PiArICBFYWNoIGNsb2NrIGlzIGFzc2lnbmVkIGFuIGlkZW50aWZp
ZXIgYW5kIGNsaWVudCBub2RlcyBjYW4gdXNlIHRoaXMgaWRlbnRpZmllcgo+Pj4+Pj4+ICsgIHRv
IHNwZWNpZnkgdGhlIGNsb2NrIHdoaWNoIHRoZXkgY29uc3VtZS4gQWxsIGF2YWlsYWJsZSBjbG9j
a3MgYXJlIGRlZmluZWQgYXMKPj4+Pj4+PiArICBwcmVwcm9jZXNzb3IgbWFjcm9zIGluIHRoZSBk
dC1iaW5kaW5ncy9jbG9jay9yazMxODgtY3J1LmggYW5kCj4+Pj4+Pj4gKyAgZHQtYmluZGluZ3Mv
Y2xvY2svcmszMDY2LWNydS5oIGhlYWRlcnMgYW5kIGNhbiBiZSB1c2VkIGluIGRldmljZSB0cmVl
IHNvdXJjZXMuCj4+Pj4+Pj4gKyAgU2ltaWxhciBtYWNyb3MgZXhpc3QgZm9yIHRoZSByZXNldCBz
b3VyY2VzIGluIHRoZXNlIGZpbGVzLgo+Pj4+Pj4+ICsgIFRoZXJlIGFyZSBzZXZlcmFsIGNsb2Nr
cyB0aGF0IGFyZSBnZW5lcmF0ZWQgb3V0c2lkZSB0aGUgU29DLiBJdCBpcyBleHBlY3RlZAo+Pj4+
Pj4+ICsgIHRoYXQgdGhleSBhcmUgZGVmaW5lZCB1c2luZyBzdGFuZGFyZCBjbG9jayBiaW5kaW5n
cyB3aXRoIGZvbGxvd2luZwo+Pj4+Pj4+ICsgIGNsb2NrLW91dHB1dC1uYW1lczoKPj4+Pj4+PiAr
ICAgIC0gInhpbjI0bSIgICAgLSBjcnlzdGFsIGlucHV0ICAgICAgICAgICAgICAgICAtIHJlcXVp
cmVkCj4+Pj4+Pj4gKyAgICAtICJ4aW4zMmsiICAgIC0gUlRDIGNsb2NrICAgICAgICAgICAgICAg
ICAgICAgLSBvcHRpb25hbAo+Pj4+Pj4+ICsgICAgLSAieGluMjdtIiAgICAtIDI3bWh6IGNyeXN0
YWwgaW5wdXQgb24gUkszMDY2IC0gb3B0aW9uYWwKPj4+Pj4+PiArICAgIC0gImV4dF9oc2FkYyIg
LSBleHRlcm5hbCBIU0FEQyBjbG9jayAgICAgICAgICAtIG9wdGlvbmFsCj4+Pj4+Pj4gKyAgICAt
ICJleHRfY2lmMCIgIC0gZXh0ZXJuYWwgY2FtZXJhIGNsb2NrICAgICAgICAgLSBvcHRpb25hbAo+
Pj4+Pj4+ICsgICAgLSAiZXh0X3JtaWkiICAtIGV4dGVybmFsIFJNSUkgY2xvY2sgICAgICAgICAg
IC0gb3B0aW9uYWwKPj4+Pj4+PiArICAgIC0gImV4dF9qdGFnIiAgLSBleHRlcm5hbCBKVEFHIGNs
b2NrICAgICAgICAgICAtIG9wdGlvbmFsCj4+Pj4+Pgo+Pj4+Pj4gSSdkIGV4cGVjdCBhbGwgdGhl
c2UgY2xrcyBoZXJlIHRvIGJlIGlucHV0cyB0byB0aGlzIG5vZGUuCj4+Pj4+Cj4+Pj4+IFRoZSBv
cHRpb25hbCBjbG9ja3MgYXJlIGFsbCBwYXJ0IG9mIGEgY2lyY3VsYXIgZGVwZW5kZW5jeS4KPj4+
Pj4KPj4+Pj4gU28gZm9yIGV4YW1wbGUgeGluMzJrIG5vcm1hbGx5IGlzIGdlbmVyYXRlZCBieSB0
aGUgcG1pYyBhbmQgZmVkCj4+Pj4+IGJhY2sgaW50byB0aGUgc3lzdGVtLCBzbyB0byBnZXQgeGlu
MzJrLCB3ZSBuZWVkIHRoZSBwbWljIHRvIHByb2JlLAo+Pj4+PiB3aGljaCBuZWVkcyBpMmMsIHdo
aWNoIGluIHR1cm4gYWxyZWFkeSBuZWVkcyB0aGUgY2xvY2sgY29udHJvbGxlci4KPj4+Pgo+Pj4+
IEFyZSB5b3Ugc3VyZSB0aGF0IHhpbjMyayAoUlRDKSBjbG9jayBzaG91bGQgYmUgaW5wdXQgdG8g
dGhlIGNsb2NrCj4+Pj4gY29udHJvbGxlcj8gSSB3b3VsZCBleHBlY3QgaXQgaXMgdGhlIGlucHV0
IHRvIHRoZSBTb0MgUlRDIGJsb2NrLCBzbwo+Pj4+IHRoZXJlIGlzIG5vIGNpcmN1bGFyIGRlcGVu
ZGVuY3kuCj4+Pgo+Pj4gY2xrLXJrMzE4OC5jOgo+Pj4KPj4+IFBOQU1FKG11eF9wbGxfcCkJCT0g
eyAieGluMjRtIiwgInhpbjMyayIgfTsKPj4KPj4gVGhhbmtzLCBidXQgdGhhdCdzIG5vdCB0aGUg
YW5zd2VyIHdoZXRoZXIgaXQgaXMgYW4gaW5wdXQgdG8gdGhlIGNsb2NrCj4+IGNvbnRyb2xsZXIu
IEl0J3MgdGhlIGFuc3dlciBob3cgdGhlIGRyaXZlciBpbXBsZW1lbnRzIHRoaXMuIDopCj4gCj4g
UFgyID09IHJrMzA2Ngo+IAo+IFJvY2tjaGlwIFBYMiBUUk0gVjEuMC5wZGYKPiAKPiBwYWdlIDMw
Cj4gCj4gQ2hpcCBDbG9jayBBcmNoaXRlY3R1cmUgRGlhZ3JhbSAxCgpJIGZvdW5kIGl0LCB0aGFu
a3MuIFRoYXQncyB0aGUgYW5zd2VyLCBzbyBpbmRlZWQgdGhpcyBpcyBhbiBpbnB1dC4KCkFuc3dl
cmluZyBwYXJ0aWFsbHkgdG8gSGVpa28vU3RlcGhlbiwgdGhpcyBjb3VsZCBiZSBzdGlsbCBtb2Rl
bGVkIGluIERUUwphcyBhIGZpeGVkLWZyZXF1ZW5jeSBjbG9jayBnb2luZyBhcyBpbnB1dCB0byB0
aGUgY2xvY2stY29udHJvbGxlci4gVGhlCnRyb3VibGUgd2l0aCB0aGF0IGFwcHJvYWNoIGlzIHRo
YXQgaXQgd291bGQgYWN0dWFsbHkgZHVwbGljYXRlIHRoZQpkZWZpbml0aW9uIChhbm90aGVyIG9u
ZSBjb21pbmcgZnJvbSBQTUlDKS4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
