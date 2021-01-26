Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998B2C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 14:56:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 28B8A230FC
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 14:56:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 28B8A230FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TGCNrtWHngStKhvkUlgFrGmatZT1NjNyYnyyaKeoB3A=; b=3O2fn5gB1hoNhHPjjKlG/nWl1
	3T4eQTTyg6g8iBSRLu8l6JHhIsxgvBH3f8nq9Yn0CKMgqO2jwiLKr+0wRlfMFwKHMescLLn8XgfPO
	9NReBMl0RrzmKH2cMEpftJTMflpSgz85gmdvteNdQpFWDm6x8iDCm23ELNhrfaicP6uwZsKXV825B
	Xx4vdvxk2jzlDSn9n/6p7AaAit4Arbbi3CP3vb14DsuRmZZubRnypemBk7aKlQiqUiofDqNZ4BMfL
	uK1+O6K+cxgrDFQNkINixoSArsxg2YWRqMuMXhHJrVEHs9YSpDWbM3xuZj13nxIc3Su6LKJ1UlCQ6
	f/jjst69g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Pll-0006od-9T; Tue, 26 Jan 2021 14:56:37 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Pli-0006o3-OK; Tue, 26 Jan 2021 14:56:35 +0000
Received: by mail-ot1-x332.google.com with SMTP id 36so16417462otp.2;
 Tue, 26 Jan 2021 06:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ajZF1D8FxDMkmN2mzFwYlviuZRVox/Tj3Q+CobjAH4A=;
 b=tQF2ygTYyiQAfbmgc46Qp7h0491H5K+wWUwFQGM6TnzxSZOwU4xEWb6qIa2w/hKrT/
 J3GeQhMIf7nk7N7hcbPjl8So8fYPIhNJC4vI26fHqs/ZrpKxnsK06exd8mnh5zVo0OH7
 KMytZswXa8lOf1EgpKGS6M/Q22a1H+akx+dGhzI0S+ZcVFKl7uQkD5ItoxKARJwi0t8h
 dF0V4X1kVEsoT2NQ5Y6WoWwUqBhXwA5ZAEMzxlIPL/3Uy/K7BYLdGNlisFpzrpNKIvWx
 SsFOj3YmPCMgkHvyn1zOwowQXn5gBHCOZ6oVHUiGl54xuzKmFpJBq5gzH5inPHJE566/
 yu2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=ajZF1D8FxDMkmN2mzFwYlviuZRVox/Tj3Q+CobjAH4A=;
 b=X4VbBidlChbhQ8KXSIIQ3RgJHRTTR4YPmzLKmQdB8w9JqjAGoqP5BQVFeBDIjadWlK
 j8FFTmnlPc2hV0rNir1JxWRLFTmXvL7JRFk6bUDmcEgG5AUcMRTcbPs2tPJFBeIgGYJg
 xXPtM3RSTnooCMtmrw3JSTakQLL2GlQ2TAnwMy1767Hyq/XHLW0mnhzrR5ZquWv0KrDH
 7QmbdPB6f2iGrbX4/Tnw7jewdsKusIzIKd31qd+G569cWETBonpJf3R3Nue8fw6oZ2Yk
 1Rlrx7bu7xFsmmlBplVSH3eVhwxsOiQ3JIFW0hVxkWUm7xZLIxls2rL4nrsoO9gGWA6j
 lomw==
X-Gm-Message-State: AOAM533osnm6IDqlGz8RQVvWE1TZWHIZXB9lzbUHK+d7epMjJ9qBoqN2
 V/CD79l36vuSddJKUBVtYlyXDo1TUzg=
X-Google-Smtp-Source: ABdhPJxQUG8eNQxbDhfGGAkyM/Kl61AfQSe+XREE6SDE5d8zbnIemGA7yRIn+IhG8IzyfYzQNPlpcA==
X-Received: by 2002:a9d:23ca:: with SMTP id t68mr4310236otb.281.1611672991899; 
 Tue, 26 Jan 2021 06:56:31 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 y19sm4166796otq.1.2021.01.26.06.56.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Jan 2021 06:56:30 -0800 (PST)
Subject: Re: [PATCH 1/8] dt-binding: watchdog: add more Rockchip compatibles
 to snps,dw-wdt.yaml
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
 <11680602.O9o76ZdvQC@phil>
 <d6814912-ebbe-642d-161f-a005f40634d6@roeck-us.net>
 <2221632.MzOyzyC30C@diego>
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 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
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
Message-ID: <ff9b0625-2892-3df9-a31e-c23a8c94e10b@roeck-us.net>
Date: Tue, 26 Jan 2021 06:56:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2221632.MzOyzyC30C@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210126_095634_827342_BB022297 
X-CRM114-Status: GOOD (  18.58  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, jamie@jamieiles.com, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMS8yNi8yMSAxMjozNyBBTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgR3VlbnRlciwK
PiAKPiBBbSBEaWVuc3RhZywgMjYuIEphbnVhciAyMDIxLCAwNTo1NTo1OSBDRVQgc2NocmllYiBH
dWVudGVyIFJvZWNrOgo+PiBPbiAxLzI1LzIxIDM6NDAgUE0sIEhlaWtvIFN0dWVibmVyIHdyb3Rl
Ogo+Pj4gQW0gU2Ftc3RhZywgMjMuIEphbnVhciAyMDIxLCAxODozNDowMSBDRVQgc2NocmllYiBH
dWVudGVyIFJvZWNrOgo+Pj4+IE9uIEZyaSwgRGVjIDE4LCAyMDIwIGF0IDAxOjA1OjI3UE0gKzAx
MDAsIEpvaGFuIEpvbmtlciB3cm90ZToKPj4+Pj4gVGhlIHdhdGNoZG9nIGNvbXBhdGlibGUgc3Ry
aW5ncyBhcmUgc3VwcG9zZSB0byBiZSBTb0Mgb3JpZW50YXRlZC4KPj4+Pj4gSW4gdGhlIG1vcmUg
cmVjZW50bHkgYWRkZWQgUm9ja2NoaXAgU29DIGR0c2kgZmlsZXMgb25seQo+Pj4+PiB0aGUgZmFs
bGJhY2sgc3RyaW5nICJzbnBzLGR3LXdkdCIgaXMgdXNlZCwgc28gYWRkIHRoZSBmb2xsb3dpbmcK
Pj4+Pj4gY29tcGF0aWJsZSBzdHJpbmdzOgo+Pj4+Pgo+Pj4+PiAicm9ja2NoaXAscHgzMC13ZHQi
LCAic25wcyxkdy13ZHQiCj4+Pj4+ICJyb2NrY2hpcCxyazMyMjgtd2R0IiwgInNucHMsZHctd2R0
Igo+Pj4+PiAicm9ja2NoaXAscmszMzA4LXdkdCIsICJzbnBzLGR3LXdkdCIKPj4+Pj4gInJvY2tj
aGlwLHJrMzMyOC13ZHQiLCAic25wcyxkdy13ZHQiCj4+Pj4+ICJyb2NrY2hpcCxyazMzOTktd2R0
IiwgInNucHMsZHctd2R0Igo+Pj4+PiAicm9ja2NoaXAscnYxMTA4LXdkdCIsICJzbnBzLGR3LXdk
dCIKPj4+Pj4KPj4+Pj4gbWFrZSBBUkNIPWFybSBkdGJzX2NoZWNrCj4+Pj4+IERUX1NDSEVNQV9G
SUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc25wcyxkdy13
ZHQueWFtbAo+Pj4+Pgo+Pj4+PiBtYWtlIEFSQ0g9YXJtNjQgZHRic19jaGVjawo+Pj4+PiBEVF9T
Q0hFTUFfRklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3Nu
cHMsZHctd2R0LnlhbWwKPj4+Pj4KPj4+Pj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxq
Yng2MjQ0QGdtYWlsLmNvbT4KPj4+Pj4gQWNrZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+Cj4+Pj4+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
Pgo+Pj4+Cj4+Pj4gUmV2aWV3ZWQtYnk6IEd1ZW50ZXIgUm9lY2sgPGxpbnV4QHJvZWNrLXVzLm5l
dD4KPj4+Cj4+PiBqdXN0IHRvIGNsYXJpZnksIGRvIHlvdSBleHBlY3QgbWUgdG8gcGljayB1cCB0
aGUgZHQtYmluZGluZyBwYXRjaAo+Pj4gd2l0aCB0aGUgZGV2aWNldHJlZSBwYXRjaGVzIG9yIGRv
IHlvdSB3YW50IHRvIHRha2UgdGhpcyBpbmRpdmlkdWFsCj4+PiBwYXRjaCB0aHJvdWdoIHRoZSB3
YXRjaGRvZyB0cmVlIGluc3RlYWQ/Cj4+Pgo+Pgo+PiBZb3UnZCBoYXZlIHRvIGFzayBXaW0gc2lu
Y2UgaGUgdGFrZXMgY2FyZSBvZiBhY3R1YWxseSBzZW5kaW5nIHB1bGwgcmVxdWVzdHMuCj4+IEJ1
dCBkaWRuJ3QgeW91IHNheSBlYXJsaWVyIHRoYXQgeW91IHdhbnRlZCB0byBhcHBseSB0aGUgcmVz
dCBvZiB0aGUgc2VyaWVzCj4+IGFmdGVyIHRoaXMgb25lIGlzIGFwcGxpZWQgdGhyb3VnaCB0aGUg
d2F0Y2hkb2cgdHJlZSA/Cj4gCj4gWWVwIHRoYXQgd2FzIG15IGludGVudCwgdGhvdWdoIHNvbWVo
b3cgSSBtaXN0b29rIHlvdSBhcyBhbHNvIGJlaW5nCj4gYSB3YXRjaGRvZyBtYWludGFpbmVyLCBo
ZW5jZSB0aGUgY29uZnVzaW9uLgo+IAoKSSBhbSwgYnV0IFdpbSBzZW5kcyBhbGwgcHVsbCByZXF1
ZXN0cy4KCkd1ZW50ZXIKCj4gU28gSSdsbCB3YWl0IGZvciBXaW0gdG8gYXBwbHkgdGhpcyBwYXRj
aCBhbmQgdGhlbiBJJ2xsIHRha2UgdGhlIHJlc3Qgb2YKPiB0aGUgc2VyaWVzLgo+IAo+IFRoYW5r
cwo+IEhlaWtvCj4gCj4gCj4+Pj4+IC0tLQo+Pj4+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3dhdGNoZG9nL3NucHMsZHctd2R0LnlhbWwgfCA2ICsrKysrKwo+Pj4+PiAgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3NucHMsZHctd2R0LnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc25wcyxkdy13ZHQu
eWFtbAo+Pj4+PiBpbmRleCBmN2VlOTIyOWMuLmI1ODU5NmIxOCAxMDA2NDQKPj4+Pj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3NucHMsZHctd2R0Lnlh
bWwKPj4+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9n
L3NucHMsZHctd2R0LnlhbWwKPj4+Pj4gQEAgLTE4LDEwICsxOCwxNiBAQCBwcm9wZXJ0aWVzOgo+
Pj4+PiAgICAgICAgLSBjb25zdDogc25wcyxkdy13ZHQKPj4+Pj4gICAgICAgIC0gaXRlbXM6Cj4+
Pj4+ICAgICAgICAgICAgLSBlbnVtOgo+Pj4+PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHB4
MzAtd2R0Cj4+Pj4+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMDY2LXdkdAo+Pj4+PiAg
ICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzE4OC13ZHQKPj4+Pj4gKyAgICAgICAgICAgICAg
LSByb2NrY2hpcCxyazMyMjgtd2R0Cj4+Pj4+ICAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmsz
Mjg4LXdkdAo+Pj4+PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzMwOC13ZHQKPj4+Pj4g
KyAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzMjgtd2R0Cj4+Pj4+ICAgICAgICAgICAgICAg
IC0gcm9ja2NoaXAscmszMzY4LXdkdAo+Pj4+PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJr
MzM5OS13ZHQKPj4+Pj4gKyAgICAgICAgICAgICAgLSByb2NrY2hpcCxydjExMDgtd2R0Cj4+Pj4+
ICAgICAgICAgICAgLSBjb25zdDogc25wcyxkdy13ZHQKPj4+Pj4gIAo+Pj4+PiAgICByZWc6Cj4+
Pj4KPj4+Cj4+Pgo+Pj4KPj4+Cj4+Cj4+Cj4gCj4gCj4gCj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
