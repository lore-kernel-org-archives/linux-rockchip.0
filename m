Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 901BEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:46:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ec1KeUJSS4TFr6yJz46eSOmdKxA7WL5Qeq3Hf7pNO2M=; b=2nHlpDj57vBB5R
	UV0HRm2YYa0GTBwE8PlQdjz3H+jb5UkD2pkOGf6+AqPy+FbfSICLhu+/Yj1QRFYA14S4EqS7yN13D
	WVg1vLTZEl4KR/0+xF90TMhRno2uQ1yMkoZqsjNqWJMvWQelTT2eWiKbWOIc0RyPwDrYl3JozVLFa
	ECiKO5cAahhtBn9B8LCh8ke9NmI/Pou9nK3zkf/CLkWIfL/GMG5tFk4P8zc5rvO0WY9t8e8bIKQv0
	V6c0S/ogsnjvCMKjq03KIQo4fnL9oVkf5DKO1ETCh4BUsOCTwijyRkKZrSlKb8Qt5A4M9M0+lV5WA
	3Ay58DFVqWzCNOR83owA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nacCl-008dcW-WE; Sat, 02 Apr 2022 11:46:08 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nacCa-008dZA-74; Sat, 02 Apr 2022 11:45:57 +0000
Received: by mail-ej1-x631.google.com with SMTP id k23so7411397ejd.3;
 Sat, 02 Apr 2022 04:45:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=mNsju5GL00z1RyQm3l0+7VPkhzm9rxPNhHy/pDN9Wuo=;
 b=F3Wq1Dg9QSg+Au6PwkGHbLQcljvRxPcQK1PVu4cDckHceuCw+38Prd39W8jTjp1G6O
 I89qcEbphxVwtRiqZr1PQOGe+TbQbbIgH+q/CEuPYgVyCkguZACeQJGbsN3bW11Q11W2
 414efPmFug+n+PW0j3hAMLQB+KUhiiT9E0M2vZAABgr1Hw46X/fCcYwHnEuPFMXAHpXv
 0y4oLwr5PDA6dD9ga4lSO/DTPbwIF8JN6qc13D+8Y79hAtsrhyoZWF/yKzCivmstLT/R
 hVGDP4J2WDaBYhFLpFPmzz/8FHnLOMXSXAVWzzgjRGkVFlEOV0sKQRB2eVhHycg2ayTe
 sK2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=mNsju5GL00z1RyQm3l0+7VPkhzm9rxPNhHy/pDN9Wuo=;
 b=ASS2PYJJs+4DWRMojrRLzEA2S0SzFJ+aQFEsKtKhS2yuva04y/ZaFbDiLIpKDTQyRp
 ozp/mp+pLOaMGnoe7N8XB9CC2ch6xSI/BvGKhhf7kbwuMD3GxHMyIfkHRfDCycnGifH0
 gGM9WsyY3qH0TF2zIADGudaW6o5E2UV77c6Ql8Nevf0oHWP9AETw8KQZrSMyurudyGym
 Y5Mu/ZMrYr87gSE1Z5vzV3UQVhNDcHkLI0QS2IlCoeVUaYMDlcJAuhrI0S0B7CeoMVvI
 TESVnbVVBFacO6QA21wdO/pwkKLkgA/Vrg4L0MJFdnat3+x7MEoUkKTEY+CmhI9u7X8F
 QryQ==
X-Gm-Message-State: AOAM531kA5iEMv3TmlHOnf3FE3sJUA4pwiNeomKtxFcANLCfCrSMZ7G1
 TM91ISyxe7NY0Toi82VpZB8=
X-Google-Smtp-Source: ABdhPJw/2Ag/W5KshG7t4c90IlqoKELgYULFOTQbmu+MAoQqg+LUOYqOGC1BTGegKdXvs+xkILrGHQ==
X-Received: by 2002:a17:907:6284:b0:6e0:f895:15a with SMTP id
 nd4-20020a170907628400b006e0f895015amr3553176ejc.713.1648899949252; 
 Sat, 02 Apr 2022 04:45:49 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 y14-20020a50eb8e000000b00419bdc32466sm2316223edr.15.2022.04.02.04.45.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 Apr 2022 04:45:48 -0700 (PDT)
Message-ID: <7c786619-6fcf-21dd-8e5a-0ec67da2a63d@gmail.com>
Date: Sat, 2 Apr 2022 13:45:47 +0200
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
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <c212c994-fc5d-6ad0-3cd6-88dc2c719e38@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_044556_328902_90F66B89 
X-CRM114-Status: GOOD (  18.18  )
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

CgpPbiA0LzIvMjIgMTM6NDEsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMDEvMDQv
MjAyMiAwOTo1NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+IEhpIFN0ZXBoZW4sCj4+Cj4+IEFt
IEZyZWl0YWcsIDEuIEFwcmlsIDIwMjIsIDAwOjUxOjMyIENFU1Qgc2NocmllYiBTdGVwaGVuIEJv
eWQ6Cj4+PiBRdW90aW5nIEpvaGFuIEpvbmtlciAoMjAyMi0wMy0yOSAwNDoxMzoyMikKPj4+PiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tj
aGlwLHJrMzE4OC1jcnUueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9j
bG9jay9yb2NrY2hpcCxyazMxODgtY3J1LnlhbWwKPj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+
Pj4+IGluZGV4IDAwMDAwMDAwMC4uZGRkN2U0NmFmCj4+Pj4gLS0tIC9kZXYvbnVsbAo+Pj4+ICsr
KyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazMx
ODgtY3J1LnlhbWwKPj4+PiBAQCAtMCwwICsxLDc4IEBACj4+Pj4gKyMgU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAKPj4+PiArJVlBTUwgMS4yCj4+Pj4gKy0tLQo+Pj4+ICskaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL2Nsb2NrL3JvY2tjaGlwLHJrMzE4OC1jcnUueWFt
bCMKPj4+PiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3Jl
LnlhbWwjCj4+Pj4gKwo+Pj4+ICt0aXRsZTogUm9ja2NoaXAgUkszMTg4L1JLMzA2NiBDbG9jayBh
bmQgUmVzZXQgVW5pdCAoQ1JVKQo+Pj4+ICsKPj4+PiArbWFpbnRhaW5lcnM6Cj4+Pj4gKyAgLSBF
bGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPj4+PiArICAtIEhlaWtvIFN0
dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+Pj4gKwo+Pj4+ICtkZXNjcmlwdGlvbjogfAo+Pj4+
ICsgIFRoZSBSSzMxODgvUkszMDY2IGNsb2NrIGNvbnRyb2xsZXIgZ2VuZXJhdGVzIGFuZCBzdXBw
bGllcyBjbG9ja3MgdG8gdmFyaW91cwo+Pj4+ICsgIGNvbnRyb2xsZXJzIHdpdGhpbiB0aGUgU29D
IGFuZCBhbHNvIGltcGxlbWVudHMgYSByZXNldCBjb250cm9sbGVyIGZvciBTb0MKPj4+PiArICBw
ZXJpcGhlcmFscy4KPj4+PiArICBFYWNoIGNsb2NrIGlzIGFzc2lnbmVkIGFuIGlkZW50aWZpZXIg
YW5kIGNsaWVudCBub2RlcyBjYW4gdXNlIHRoaXMgaWRlbnRpZmllcgo+Pj4+ICsgIHRvIHNwZWNp
ZnkgdGhlIGNsb2NrIHdoaWNoIHRoZXkgY29uc3VtZS4gQWxsIGF2YWlsYWJsZSBjbG9ja3MgYXJl
IGRlZmluZWQgYXMKPj4+PiArICBwcmVwcm9jZXNzb3IgbWFjcm9zIGluIHRoZSBkdC1iaW5kaW5n
cy9jbG9jay9yazMxODgtY3J1LmggYW5kCj4+Pj4gKyAgZHQtYmluZGluZ3MvY2xvY2svcmszMDY2
LWNydS5oIGhlYWRlcnMgYW5kIGNhbiBiZSB1c2VkIGluIGRldmljZSB0cmVlIHNvdXJjZXMuCj4+
Pj4gKyAgU2ltaWxhciBtYWNyb3MgZXhpc3QgZm9yIHRoZSByZXNldCBzb3VyY2VzIGluIHRoZXNl
IGZpbGVzLgo+Pj4+ICsgIFRoZXJlIGFyZSBzZXZlcmFsIGNsb2NrcyB0aGF0IGFyZSBnZW5lcmF0
ZWQgb3V0c2lkZSB0aGUgU29DLiBJdCBpcyBleHBlY3RlZAo+Pj4+ICsgIHRoYXQgdGhleSBhcmUg
ZGVmaW5lZCB1c2luZyBzdGFuZGFyZCBjbG9jayBiaW5kaW5ncyB3aXRoIGZvbGxvd2luZwo+Pj4+
ICsgIGNsb2NrLW91dHB1dC1uYW1lczoKPj4+PiArICAgIC0gInhpbjI0bSIgICAgLSBjcnlzdGFs
IGlucHV0ICAgICAgICAgICAgICAgICAtIHJlcXVpcmVkCj4+Pj4gKyAgICAtICJ4aW4zMmsiICAg
IC0gUlRDIGNsb2NrICAgICAgICAgICAgICAgICAgICAgLSBvcHRpb25hbAo+Pj4+ICsgICAgLSAi
eGluMjdtIiAgICAtIDI3bWh6IGNyeXN0YWwgaW5wdXQgb24gUkszMDY2IC0gb3B0aW9uYWwKPj4+
PiArICAgIC0gImV4dF9oc2FkYyIgLSBleHRlcm5hbCBIU0FEQyBjbG9jayAgICAgICAgICAtIG9w
dGlvbmFsCj4+Pj4gKyAgICAtICJleHRfY2lmMCIgIC0gZXh0ZXJuYWwgY2FtZXJhIGNsb2NrICAg
ICAgICAgLSBvcHRpb25hbAo+Pj4+ICsgICAgLSAiZXh0X3JtaWkiICAtIGV4dGVybmFsIFJNSUkg
Y2xvY2sgICAgICAgICAgIC0gb3B0aW9uYWwKPj4+PiArICAgIC0gImV4dF9qdGFnIiAgLSBleHRl
cm5hbCBKVEFHIGNsb2NrICAgICAgICAgICAtIG9wdGlvbmFsCj4+Pgo+Pj4gSSdkIGV4cGVjdCBh
bGwgdGhlc2UgY2xrcyBoZXJlIHRvIGJlIGlucHV0cyB0byB0aGlzIG5vZGUuCj4+Cj4+IFRoZSBv
cHRpb25hbCBjbG9ja3MgYXJlIGFsbCBwYXJ0IG9mIGEgY2lyY3VsYXIgZGVwZW5kZW5jeS4KPj4K
Pj4gU28gZm9yIGV4YW1wbGUgeGluMzJrIG5vcm1hbGx5IGlzIGdlbmVyYXRlZCBieSB0aGUgcG1p
YyBhbmQgZmVkCj4+IGJhY2sgaW50byB0aGUgc3lzdGVtLCBzbyB0byBnZXQgeGluMzJrLCB3ZSBu
ZWVkIHRoZSBwbWljIHRvIHByb2JlLAo+PiB3aGljaCBuZWVkcyBpMmMsIHdoaWNoIGluIHR1cm4g
YWxyZWFkeSBuZWVkcyB0aGUgY2xvY2sgY29udHJvbGxlci4KPiAKPiBBcmUgeW91IHN1cmUgdGhh
dCB4aW4zMmsgKFJUQykgY2xvY2sgc2hvdWxkIGJlIGlucHV0IHRvIHRoZSBjbG9jawo+IGNvbnRy
b2xsZXI/IEkgd291bGQgZXhwZWN0IGl0IGlzIHRoZSBpbnB1dCB0byB0aGUgU29DIFJUQyBibG9j
aywgc28KPiB0aGVyZSBpcyBubyBjaXJjdWxhciBkZXBlbmRlbmN5LgoKY2xrLXJrMzE4OC5jOgoK
UE5BTUUobXV4X3BsbF9wKQkJPSB7ICJ4aW4yNG0iLCAieGluMzJrIiB9OwoKPiAKPiAKPiBCZXN0
IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
