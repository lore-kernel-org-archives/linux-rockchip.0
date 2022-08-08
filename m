Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6181C00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 17:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GnDSw2gU+E/odyIfMtpiIsjII8p9ldiuJEemBcUQeUw=; b=JteLW6JWmluzoAfmh7KjXflBgZ
	mdS7zwkBXKkeb0y6FIfuez4JFjGAk7ucRfNQS2/OeXQwa6nx2tyX7m8TjnHVnTod6907j/4tMr0ic
	rx3Z9MahySLMQZ51EoFXyzz/dZj26Dck7JvV/oZbrDTZ7e39WUdQNuPIm2A4C/5iDTU6ezoNLuT0h
	RlI/cLsEXEYi2z0AGySoGFr+nVOtHNIgs5ITFNJFgtQZjtD/U8DDQ7yyba1Qm/enghdNjzY8IfPOK
	jRRSm2r2P896BpytecPvUc7uZBNmamh9TQLSjiSrt6KDGxBGBVnWSytHvUNO7TBfo+XPTeelfRj3k
	h+cRApJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6hJ-00FBGC-3k; Mon, 08 Aug 2022 17:37:49 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL6hF-00FBE5-3z
	for linux-rockchip@lists.infradead.org; Mon, 08 Aug 2022 17:37:47 +0000
Received: by mail-oi1-x233.google.com with SMTP id l188so11149025oia.4
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Aug 2022 10:37:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dionne-riel-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:from:to:cc;
        bh=8El6/y4C2ZPX2yELljyvmJcdy/glzkw03crtz7p/8Qg=;
        b=jWz9m/Lv1SCw0u+cyWggoKLtc6jD1VDjJvJO9/FV9obfAgL9mUyhChzEwGtuWTCCXg
         PZ/JxxHyvTiizWtXX4XRmcTlB6C7fDFQaSZDaK+H7w753KHQSZkH8cDp9fb0RgJR8ess
         34yR08qYiLQg5YFMKtKKue0wkyaHOA2Kpm28gEcSUbf81MFjMLU6i5v/ergbu+2hyPCO
         o4nq1pRdgck77FAXBa/xx1nKBT9+g7mp+zsMX0R5Z/jq2S8WxjaPo0LeqDNtDZmheq+e
         s3okpjjQWz2Ek9BHhEHvT4vRQHO1cDq9YAmrjiqHy/7RW+Zbbe554gwEUJTpxwGR966x
         fqHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:mime-version:x-gm-message-state:from:to:cc;
        bh=8El6/y4C2ZPX2yELljyvmJcdy/glzkw03crtz7p/8Qg=;
        b=pu+ROqQL/ViuVVjWYzaa4cfAWpvwvvs41w/hBO70vtHVoLWmtw8lCJHIEYBcjBAXH2
         ZmLlOXqr//n27YCFqPLuYSElnGImc9WJWwTi0M5b6H4ODGo+LG33nuaYC0xAfjRiJ9DY
         JTJsKZXbrvnELB5PxUiStJmBGY6lx+8M1q7A1XQIWo8hx/S0ju6JywaKQ05eRgVemjm0
         rOUjHteIaCWNKigtKDdmGfFnJC28voRqy5vd+pTbif2auGqYqS6+yjWPa8qgKGD9q2x7
         AkRgfQQKpl454Yp8Ain1bq6omwc+xQNTkYYaNeZsvNmJWnwUA0Gk37MS4zcWzTv6bsRu
         Lihg==
X-Gm-Message-State: ACgBeo2L9ONWwCTBHVTGXbAj/nWrTxRitocrPBy3v5hraxw4WaP8qgqz
	DHTQ4YSnbRQeAGeAgFDAuRgc/a+vYtME6iYeV7/9zw==
X-Google-Smtp-Source: AA6agR5VGE9b/GImxZUVPrnUDL9A0fPYyjIJ7qbfFUuxtb5lEJHnUwNddOG/L6gIvkW5VR3rDSjgDEcDCIUoZnzrjb8=
X-Received: by 2002:a05:6808:aad:b0:342:9a85:882c with SMTP id
 r13-20020a0568080aad00b003429a85882cmr10463249oij.80.1659980262465; Mon, 08
 Aug 2022 10:37:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:d58c:0:0:0:0:0 with HTTP; Mon, 8 Aug 2022 10:37:41 -0700 (PDT)
In-Reply-To: <20220808142549.tdoc76vrcqcf2dxu@core>
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-2-tom@tom-fitzhenry.me.uk> <20220808142549.tdoc76vrcqcf2dxu@core>
From: Samuel Dionne-Riel <samuel@dionne-riel.com>
Date: Mon, 8 Aug 2022 13:37:41 -0400
Message-ID: <CAN1fySWVVTeGHAD=_hFH+ZdcR_AEiBc0wqes9Y4VRzB=zcdvSw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: rockchip: Add RK3399-T opp
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>, 
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, martijn@brixit.nl, 
	ayufan@ayufan.eu, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Samuel Dionne-Riel <samuel@dionne-riel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_103745_404657_E34D9106 
X-CRM114-Status: GOOD (  26.87  )
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

SGksCgpPbiA4LzgvMjIsIE9uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4gd3JvdGU6Cj4gSGks
Cj4KPiBPbiBTYXQsIEF1ZyAwNiwgMjAyMiBhdCAwOTo0NDowOUFNICsxMDAwLCBUb20gRml0emhl
bnJ5IHdyb3RlOgo+PiBGcm9tOiBTYW11ZWwgRGlvbm5lLVJpZWwgPHNhbXVlbEBkaW9ubmUtcmll
bC5jb20+Cj4+Cj4+IFRoZXNlIHRhYmxlcyB3ZXJlIGRlcml2ZWQgZnJvbSB0aGUgcmVndWxhciBS
SzMzOTkgdGFibGUsIGJ5IGRyb3BwaW5nCj4+IGVudHJpZXMgZXhjZWVkaW5nIHJlY29tbWVuZGVk
IG9wZXJhdGluZyBjb25kaXRpb25zIGZyb20gdGhlIGRhdGFzaGVldCwKPj4gYW5kIGNsYW1waW5n
IHRoZSBsYXN0IGV4Y2VlZGluZyB2YWx1ZSB3aGVyZSBpdCBtYWRlIHNlbnNlLgo+Cj4gRG8gd2Ug
cmVhbGx5IG5lZWQgdG8gZHVwbGljYXRlIHRoZSB3aG9sZSBPUFAgdGFibGUgb2YgcmszMzk5LW9w
cC5kdHNpCj4ganVzdCB0byBkaXNhYmxlIGEgZmV3IHRvcCBvcHAjIyBlbnRyaWVzPwo+Cj4gVGhp
cyB3aWxsIG1ha2UgaXQgbW9yZSBhbm5veWluZyB0byBhZGQgUFZUTS9lRnVzZSBsZWFrYWdlIGJh
c2VkIHZvbHRhZ2UKPiBzZWxlY3Rpb24gc3VwcG9ydCBsYXRlciBvbiwgYmVjYXVzZSB0aGVuIHRo
ZXJlIHdvdWxkIGhhdmUgdG8gYmUgaWRlbnRpY2FsCj4gbXVsdGktbGV2ZWwgb3BlcmF0aW5nIHBv
aW50cyBhY3Jvc3MgbXVsdGlwbGUgZmlsZXMuIEFuZCB0aGF0IHNvdW5kcyBsaWtlCj4gYSBMT1Qg
b2YgZHVwcGxpY2F0aW9uIGZvciBsaXR0bGUgYmVuZWZpdC4KPgo+IEFsc28gUGluZXBob25lIFBy
byBoYXMgUkszMzk5UyBub3QgLVQuIFJLMzM5OSBzZWVtcyB0byBiZSBSSzMzOTkgc2VsZWN0ZWQK
PiBmb3IKPiBsb3cgbGVha2FnZSAodmFsdWVzIEkndmUgc2VlbiBmcm9tIGVGdXNlcyBpbmRpY2F0
ZSB0aGUgbGVha2FnZSBpcyBoYWxmIHRoYXQKPiBvZgo+IFJLMzM5OSBhdmFpbGFibGUgaW4gUGlu
ZWJvb2sgUHJvKQoKVGhlIHZlbmRvciAoUElORTY0KSBhc2tlZCBtZSB0byBtYWtlIHRoZXNlIGNo
YW5nZXMgd2hpbGUgc3RhdGluZyBzcGVjaWZpY2FsbHkKdGhhdCB0aGUgUGluZXBob25lIFBybyB1
c2VzIHRoZSBSSzMzOTktVC4gVGhvdWdoIGVhcmxpZXIgdW5pdHMgYW5kIGN1cnJlbnQKYmF0Y2hl
cyB1c2UgdGhlIFJLMzM5OVtzXSwgdGhlIGRlc2lnbiB3YXMgcmVwb3J0ZWRseSBtYWRlIHdpdGgg
dGhlIFJLMzM5OS1UCmluIG1pbmQuCgpUaGUgZGV2aWNlIHdhcyBhbHNvIGRlc2lnbmVkIHRvIHVz
ZSB0aGUgT1BQIGZyb20gdGhlIFJLMzM5OS1UIG9uIFJLMzM5OVtzXQpmb3IgdGhlIGRlc2lnbmVk
IHRoZXJtYWwgb3BlcmF0aW9uIG9mIHRoZSBkZXZpY2UsIHJlcG9ydGVkbHkuCgo+IEknZCBzdWdn
ZXN0IGp1c3QgYWRkaW5nIHJlZmVyZW5jZXMgdG8gc2VsZWN0IG9wZXJhdGluZyBwb2ludCBub2Rl
cyB0aGF0Cj4gYXJlICJ0b28gbXVjaCIgYW5kIGRpc2FibGluZyB0aGVtIHdpdGggc3RhdHVzID0g
ImRpc2FibGVkIi4gVGhpcwo+IGNhbiBiZSBkb25lIGZyb20gdGhlIHBpbmVwaG9uZSBkZXZpY2Ug
dHJlZSBmaWxlIGRpcmVjdGx5Lgo+Cj4gT3RoZXJ3aXNlIHdlJ2xsIGV2ZW50dWFsbHkgZW5kIHVw
IHdpdGggc2V2ZXJhbCBmaWxlcyBjb250YWluaW5nCj4gc29tZXRoaW5nIGxpa2UgdGhpcyBbMV0g
YW5kIG9ubHkgZGlmZmVyaW5nIGluIGFic2VuY2Ugb2Ygc29tZSBvcHAjIyBub2Rlcwo+IGFuZCBu
b3QgdGhlaXIgYWN0dWFsIHVzZWZ1bCBjb250ZW50LgoKQXMgdG8gd2h5IHRoaXMgaXMgYSBuZXcg
ZmlsZT8gSSBoYXZlIGFzc3VtZWQgaXQgd291bGQgYmUgcHJlZmVyYWJsZSBzaW5jZQp0aGlzIGlz
IGhvdyBpdCB3YXMgZG9uZSBmb3IgdGhlICJPUDEiIHZhcmlhbnQgb2YgdGhlIFJLMzM5OS4gSSB3
aWxsIGRlZmVyIHRvCnRoZSBSb2NrY2hpcCBhbmQgQVJNIG1haW50YWluZXJzIHRvIGRldGVybWlu
ZSB3aGljaCB3YXkgaXMgYmV0dGVyLgoKSSB3aWxsIG5vdGUgdGhhdCBpbiBwcmFjdGljZSBJIGFn
cmVlIGhlcmUuCgpDaGVlcnMsCgo+IFsxXQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9yb2NrY2hpcC1s
aW51eC9rZXJuZWwvYmxvYi9kZXZlbG9wLTQuMTkvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktb3BwLmR0c2kjTDYKPgo+IGtpbmQgcmVnYXJkcywKPiAJby4KPgo+PiBTaWduZWQt
b2ZmLWJ5OiBTYW11ZWwgRGlvbm5lLVJpZWwgPHNhbXVlbEBkaW9ubmUtcmllbC5jb20+Cj4+IC0t
LQo+PiAgLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS10LW9wcC5kdHNpIHwgMTE4
ICsrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQsIDExOCBpbnNlcnRpb25zKCsp
Cj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktdC1vcHAuZHRzaQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktdC1vcHAuZHRzaQo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXQtb3BwLmR0c2kKPj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAw
MDAwMDAwMC4uZWMxNTMwMTVkOWQxMwo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXQtb3BwLmR0c2kKPj4gQEAgLTAsMCArMSwxMTgg
QEAKPj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+PiAr
LyoKPj4gKyAqIENvcHlyaWdodCAoYykgMjAxNi0yMDE3IEZ1emhvdSBSb2NrY2hpcCBFbGVjdHJv
bmljcyBDby4sIEx0ZAo+PiArICogQ29weXJpZ2h0IChjKSAyMDIyIFNhbXVlbCBEaW9ubmUtUmll
bCA8c2FtdWVsQGRpb25uZS1yaWVsLmNvbT4KPj4gKyAqLwo+PiArCj4+ICsvIHsKPj4gKwljbHVz
dGVyMF9vcHA6IG9wcC10YWJsZS0wIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJvcGVyYXRpbmctcG9p
bnRzLXYyIjsKPj4gKwkJb3BwLXNoYXJlZDsKPj4gKwo+PiArCQlvcHAwMCB7Cj4+ICsJCQlvcHAt
aHogPSAvYml0cy8gNjQgPDQwODAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAw
MCA4MjUwMDAgOTI1MDAwPjsKPj4gKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8NDAwMDA+Owo+PiAr
CQl9Owo+PiArCQlvcHAwMSB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDYwMDAwMDAwMD47
Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDgyNTAwMCA4MjUwMDAgOTI1MDAwPjsKPj4gKwkJfTsK
Pj4gKwkJb3BwMDIgewo+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4MTYwMDAwMDA+Owo+PiAr
CQkJb3BwLW1pY3Jvdm9sdCA9IDw4NTAwMDAgODUwMDAwIDkyNTAwMD47Cj4+ICsJCX07Cj4+ICsJ
CW9wcDAzIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTAwODAwMDAwMD47Cj4+ICsJCQlv
cHAtbWljcm92b2x0ID0gPDkyNTAwMCA5MjUwMDAgOTI1MDAwPjsKPj4gKwkJfTsKPj4gKwl9Owo+
PiArCj4+ICsJY2x1c3RlcjFfb3BwOiBvcHAtdGFibGUtMSB7Cj4+ICsJCWNvbXBhdGlibGUgPSAi
b3BlcmF0aW5nLXBvaW50cy12MiI7Cj4+ICsJCW9wcC1zaGFyZWQ7Cj4+ICsKPj4gKwkJb3BwMDAg
ewo+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw0MDgwMDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jv
dm9sdCA9IDw4MjUwMDAgODI1MDAwIDExNTAwMDA+Owo+PiArCQkJY2xvY2stbGF0ZW5jeS1ucyA9
IDw0MDAwMD47Cj4+ICsJCX07Cj4+ICsJCW9wcDAxIHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2
NCA8NjAwMDAwMDAwPjsKPj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8ODI1MDAwIDgyNTAwMCAxMTUw
MDAwPjsKPj4gKwkJfTsKPj4gKwkJb3BwMDIgewo+PiArCQkJb3BwLWh6ID0gL2JpdHMvIDY0IDw4
MTYwMDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw4MjUwMDAgODI1MDAwIDExNTAwMDA+
Owo+PiArCQl9Owo+PiArCQlvcHAwMyB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEwMDgw
MDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw4NzUwMDAgODc1MDAwIDExNTAwMDA+Owo+
PiArCQl9Owo+PiArCQlvcHAwNCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDEyMDAwMDAw
MDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw5NTAwMDAgOTUwMDAwIDExNTAwMDA+Owo+PiAr
CQl9Owo+PiArCQlvcHAwNSB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8gNjQgPDE0MTYwMDAwMDA+
Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDwxMDI1MDAwIDEwMjUwMDAgMTE1MDAwMD47Cj4+ICsJ
CX07Cj4+ICsJCW9wcDA2IHsKPj4gKwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MTUwMDAwMDAwMD47
Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDExMDAwMDAgMTEwMDAwMCAxMTUwMDAwPjsKPj4gKwkJ
fTsKPj4gKwl9Owo+PiArCj4+ICsJZ3B1X29wcF90YWJsZTogb3BwLXRhYmxlLTIgewo+PiArCQlj
b21wYXRpYmxlID0gIm9wZXJhdGluZy1wb2ludHMtdjIiOwo+PiArCj4+ICsJCW9wcDAwIHsKPj4g
KwkJCW9wcC1oeiA9IC9iaXRzLyA2NCA8MjAwMDAwMDAwPjsKPj4gKwkJCW9wcC1taWNyb3ZvbHQg
PSA8ODI1MDAwIDgyNTAwMCA5NzUwMDA+Owo+PiArCQl9Owo+PiArCQlvcHAwMSB7Cj4+ICsJCQlv
cHAtaHogPSAvYml0cy8gNjQgPDI5NzAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDgy
NTAwMCA4MjUwMDAgOTc1MDAwPjsKPj4gKwkJfTsKPj4gKwkJb3BwMDIgewo+PiArCQkJb3BwLWh6
ID0gL2JpdHMvIDY0IDw0MDAwMDAwMDA+Owo+PiArCQkJb3BwLW1pY3Jvdm9sdCA9IDw4MjUwMDAg
ODI1MDAwIDk3NTAwMD47Cj4+ICsJCX07Cj4+ICsJCW9wcDAzIHsKPj4gKwkJCW9wcC1oeiA9IC9i
aXRzLyA2NCA8NTAwMDAwMDAwPjsKPj4gKwkJCW9wcC1taWNyb3ZvbHQgPSA8ODc1MDAwIDg3NTAw
MCA5NzUwMDA+Owo+PiArCQl9Owo+PiArCQlvcHAwNCB7Cj4+ICsJCQlvcHAtaHogPSAvYml0cy8g
NjQgPDYwMDAwMDAwMD47Cj4+ICsJCQlvcHAtbWljcm92b2x0ID0gPDkyNTAwMCA5MjUwMDAgOTc1
MDAwPjsKPj4gKwkJfTsKPj4gKwl9Owo+PiArfTsKPj4gKwo+PiArJmNwdV9sMCB7Cj4+ICsJb3Bl
cmF0aW5nLXBvaW50cy12MiA9IDwmY2x1c3RlcjBfb3BwPjsKPj4gK307Cj4+ICsKPj4gKyZjcHVf
bDEgewo+PiArCW9wZXJhdGluZy1wb2ludHMtdjIgPSA8JmNsdXN0ZXIwX29wcD47Cj4+ICt9Owo+
PiArCj4+ICsmY3B1X2wyIHsKPj4gKwlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjbHVzdGVyMF9v
cHA+Owo+PiArfTsKPj4gKwo+PiArJmNwdV9sMyB7Cj4+ICsJb3BlcmF0aW5nLXBvaW50cy12MiA9
IDwmY2x1c3RlcjBfb3BwPjsKPj4gK307Cj4+ICsKPj4gKyZjcHVfYjAgewo+PiArCW9wZXJhdGlu
Zy1wb2ludHMtdjIgPSA8JmNsdXN0ZXIxX29wcD47Cj4+ICt9Owo+PiArCj4+ICsmY3B1X2IxIHsK
Pj4gKwlvcGVyYXRpbmctcG9pbnRzLXYyID0gPCZjbHVzdGVyMV9vcHA+Owo+PiArfTsKPj4gKwo+
PiArJmdwdSB7Cj4+ICsJb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmZ3B1X29wcF90YWJsZT47Cj4+
ICt9Owo+PiAtLQo+PiAyLjM3LjEKPj4KPgoKLS0gCuKAlCBTYW11ZWwgRGlvbm5lLVJpZWwKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
