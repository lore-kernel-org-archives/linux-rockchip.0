Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 685ECC54E76
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 20:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4YgzFDgk0z3Q6077LHiyyLKQPYAI2dQM75KSr8PJgM=; b=NF4mgqEBn+cjmA
	oaw8BFxIWUIQaU8Y8mwjKDIQ5k69VitUMZt4dCeZ0lT+QfxxQpNVPlINuXhHBxndgVFPMNtOXNykE
	6XQdVvl/zCODjFaHypCHg/bv0QnkcwJEgCx0ewxHeSlygI0qyJG68ofkXxaTL8kVMDyl8RzRnaa1h
	4Jb1QKW1BvWD/ndTa1bsHYJe1o4BscK6EvBGHdii9k2yQTeAb0SIEtX9PX0oyUW0qOwWNeZh97oT/
	WV39yBxY9BT1BB0rrwguZd0s+GERaCGwExq7CdN//GIf52jnlYwiQyTXeQ1K1kgLEx4FNd165p6IN
	9YXLq8JvXZk+x4Txs1LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsFj-00FjGi-Lt; Tue, 17 Jan 2023 20:08:15 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHsFg-00FjFi-Ng
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 20:08:14 +0000
Received: by mail-ed1-x529.google.com with SMTP id w14so29371301edi.5
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 12:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4DGHLAqzC1LIf1owrtaIxZ2N88OcBYcCnrmK5LOdyeA=;
        b=JR61+Hk1ORvVgVX8sg/VrltqMkuK/oihanyPdxB29D6ieIciAVwPbvodsZ5ryVOS5R
         QYbGQlOqcguH6ACU+C/+gZrV3l6/4vlJ16Bire+s8hYpg+xlPwBbYbpp1L5N2lH/760S
         T8Wfpb4TLruWKI6aY/GfomtccB7+IKje0k/cUNbXxUyO6OU71M4cOBB/MNQysb3n6JCd
         n0Z+orwluQn1qv52bP0Bc5I74WNi1QLrsah1VlpHcYQut5xFcYuuDRb3FLRFDz/nnXZ7
         JKOrbexIoH72M0tfdxk7rsCMnfcIvgLSuwPyLf+J7UPLpT38MqlsMevEypV3MMJ/WbQJ
         KGiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4DGHLAqzC1LIf1owrtaIxZ2N88OcBYcCnrmK5LOdyeA=;
        b=asFuhNrp/fVfb0IY4XpGwJZdP3AmMbSl4ZnVhIULkPffa0XqercgRZcLJnB6NW097R
         lXU0DOmCCNWlupkyvCwgH4NmodN7mSDKaSewLReiufi7WJ4Md+PW+SW2atWvQAuqpVEF
         xf8rfmG2ND0hLhQiOCxXDG/AmRv5mJVM2QQJT2Ezn3hhxSKvjuZ5cZ6O5WOay64pVQGR
         ZjpHC6ROsoYsDZ+T8QMf5NCMnXD+njF/XTc8QSYMwM0RD/n2HqGlAap62fYSBlXNvk2u
         tshZotDKedXAclkivRsMAYz8DkeR938FZz/2jU7CkqkcZ58lFqkDPGfmbd1I0unOcACi
         KpNg==
X-Gm-Message-State: AFqh2kpegNALbmlqdWAOVrAvP+q8QsaQJAnRTfwcWrrxxMYgpwNM9rEG
	tLKCzpCaoFXfZedaqaUZa1g=
X-Google-Smtp-Source: AMrXdXu0iRKRXBSRQuccVdYbpKQqO2gKbMrGKXhA2hubCikyemJyy9AyGum4wuvQPIC8+ehY71rf3w==
X-Received: by 2002:a05:6402:2b92:b0:45a:7d2:9b35 with SMTP id fj18-20020a0564022b9200b0045a07d29b35mr4572623edb.0.1673986090881;
        Tue, 17 Jan 2023 12:08:10 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id fg11-20020a056402548b00b004873927780bsm13036905edb.20.2023.01.17.12.08.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 12:08:10 -0800 (PST)
Message-ID: <54c85f4a-ed77-c2a4-ee2e-84061b271f58@gmail.com>
Date: Tue, 17 Jan 2023 21:08:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v1] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 linux-next v6.2-rc4
Content-Language: en-US
To: John Keeping <john@metanate.com>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: kever.yang@rock-chips.com, sjg@chromium.org, philipp.tomsich@vrull.eu,
 u-boot@lists.denx.de, Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>
References: <48680512-0312-6342-ba0a-f2411463099a@gmail.com>
 <31883268-dedf-6e3c-8647-0b7955c1ff16@theobroma-systems.com>
 <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com> <Y8a8ywAzHaUQbQca@donbot>
 <eada6801-bb15-0b0b-500a-cae55f0f29e8@theobroma-systems.com>
 <Y8bamLo1CTsAKJ8v@donbot>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <Y8bamLo1CTsAKJ8v@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_120812_794243_AFC201B3 
X-CRM114-Status: GOOD (  28.19  )
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

CgpPbiAxLzE3LzIzIDE4OjI3LCBKb2huIEtlZXBpbmcgd3JvdGU6Cj4gSGkgUXVlbnRpbiwKPiAK
PiBPbiBUdWUsIEphbiAxNywgMjAyMyBhdCAwNDo1ODo1NFBNICswMTAwLCBRdWVudGluIFNjaHVs
eiB3cm90ZToKPj4gT24gMS8xNy8yMyAxNjoyMCwgSm9obiBLZWVwaW5nIHdyb3RlOgo+Pj4gSGkg
Sm9oYW4sCj4+Pgo+Pj4gT24gVHVlLCBKYW4gMTcsIDIwMjMgYXQgMDM6NDQ6MDdQTSArMDEwMCwg
Sm9oYW4gSm9ua2VyIHdyb3RlOgo+Pj4+IE9uIDEvMTcvMjMgMTA6NDYsIFF1ZW50aW4gU2NodWx6
IHdyb3RlOgo+Pj4+PiBPbiAxLzE2LzIzIDIwOjQ1LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+Pj4+
PiBTeW5jIHJrMzA2Ni9yazMxODggRFQgZmlsZXMgZnJvbSBMaW51eC4KPj4+Pj4+IFRoaXMgaXMg
dGhlIHN0YXRlIGFzIG9mIGxpbnV4LW5leHQgdjYuMi1yYzQuCj4+Pj4+PiBOZXcgbmZjIG5vZGUg
Zm9yIE1LODA4IHJrMzA2NmEuCj4+Pj4+PiBDUlUgbm9kZXMgbm93IGhhdmUgYSBjbG9jayBwcm9w
ZXJ0eS4KPj4+Pj4+IFRvIHByZWZlbmQgZHRvYyBlcnJvcnMgYSBmaXhlZCBjbG9jayBtdXN0IGFs
c28gYmUKPj4+Pj4+IGluY2x1ZGVkIGZvciB0cGwvc3BsIGluIHRoZSByazN4eHgtdS1ib290LmR0
c2kgZmlsZS4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBKb2hhbiBKb25rZXIgPGpieDYy
NDRAZ21haWwuY29tPgo+Pj4+Pj4gLS0tCj4+Pj4KPj4+PiBbLi5dCj4+Pj4KPj4+Pj4+IEBAIC0y
MjMsNyArMjI0LDcgQEAKPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgI3NpemUtY2VsbHMgPSA8
MT47Cj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIHJhbmdlczsKPj4+Pj4+Cj4+Pj4+PiAtwqDC
oMKgwqDCoMKgwqAgZ3BpbzA6IGdwaW8wQDIwMDBhMDAwIHsKPj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oCBncGlvMDogZ3Bpb0AyMDAwYTAwMCB7Cj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMxODgtZ3Bpby1iYW5rMCI7Cj4+Pj4+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDB4MjAwMGEwMDAgMHgxMDA+Owo+Pj4+Pj4g
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdHMgPSA8R0lDX1NQSSA1NCBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsKPj4+Pj4+IEBAIC0yMzYsNyArMjM3LDcgQEAKPj4+Pj4+ICDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjaW50ZXJydXB0LWNlbGxzID0gPDI+Owo+Pj4+Pj4gIMKg
wqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+Pj4KPj4+Pj4+IC3CoMKgwqDCoMKgwqDCoCBncGlvMTog
Z3BpbzFAMjAwM2MwMDAgewo+Pj4+Cj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgZ3BpbzE6IGdwaW9A
MjAwM2MwMDAgewo+Pj4+Cj4+Pj4gSGksCj4+Pj4KPj4+PiBMT0w6IEkgbWFkZSB0aGF0IGJpbmRp
bmcgY2hhbmdlIG9uIHJlcXVlc3QgZnJvbSBMaW51eCBEVCBtYWludGFpbmVycy4KPj4+PiBOb2Rl
IG5hbWVzIHNob3VsZCBnZW5lcmljLgo+Pj4+Cj4+Pj4gPT09Cj4+Pj4KPj4+PiBNeSBmdWxsIHUt
Ym9vdCBpcyBhYmxlIHRvIGJvb3QgYSBMaW51eCBrZXJuZWwgZm9yIHJrMzA2NmEuCj4+Pj4gT25s
eSB3aGVuIEkgZ2l2ZSB0aGUgY29tbWFuZCBiZWxvdyBpdCBjcmFzaGVzOgo+Pj4+Cj4+Pj4gZ3Bp
byBzdGF0dXMgLWEKPj4+Pgo+Pj4+IENvdWxkIHlvdSBjb25maXJtIHdoYXQgb3RoZXIgcGFydHMg
YXJlIGVmZmVjdGVkPwo+Pj4+Cj4+Pj4gSWYgaXQncyBib290cyB0aGVuIGl0J3MgZ29vZCBlbm91
Z2ggZm9yIG1lIGFuZCBtb3ZlIGZvcndhcmQsIHNvIHBsZWFzZSBtZXJnZS4oS2V2ZXIpCj4+Pj4K
Pj4+PiBEcml2ZXIgZml4ZXMgZm9yIHUtYm9vdCBkZXBlbmRpbmcgb24gTGludXggRFQgY2hhbmdl
cyBpcyBhbHJlYWR5IHZlcnkgdGltZSBjb25zdW1pbmcgZW5vdWdoIQo+Pj4KPj4+IFRoaXMgcmVt
aW5kZWQgbWUgb2YgYSBwYXRjaCB0aGF0IEkgbmV2ZXIgZm9sbG93ZWQgdXAgd2l0aDoKPj4+Cj4+
PiAJaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Ut
Ym9vdC8yMDIyMDcyNjE2MjUwOS4xMzA0MjM0LTEtam9obkBtZXRhbmF0ZS5jb20vX187ISFPT1BK
UDkxWlp3IWxtcXNzdDFTQXptX05PLUxmUm9vdWtlTUpPYzVqUC1UcXNtX0RkV215am5RYzJWc1Aw
RDRUV0pha3cwcWg1Sy1FTlRlOTZIQ3RHcC1NaktadFZyRE00WThUbGckCj4+Pgo+Pj4gQ2FuIHlv
dSB0ZXN0IGlmIHRoYXQgZml4ZXMgYGdwaW8gc3RhdHVzIC1hYCBmb3IgeW91Pwo+Pj4KPj4KPj4g
VGhhdCdzIG5vdCBlbm91Z2ggSSBiZWxpZXZlLiBZb3UgbmVlZCBDT05GSUdfRE1fU0VRX0FMSUFT
IGVuYWJsZWQsIHdoaWNoCj4+IGlzbid0IGEgZ2l2ZW4gYW5kIHdlIHNob3VsZG4ndCByZWx5IG9u
IGl0LiBBbHNvLCB0aGVyZSBhcmUgY3VycmVudGx5IG5vCj4+IGFsaWFzZXMgZm9yIGdwaW8gY29u
dHJvbGxlcnMuIEFuZCB3ZSBzaG91bGRuJ3QgcmVseSBvbiB1LWJvb3QuZHRzaSBmb3IKPj4gdGhv
c2UsIGJlY2F1c2UgdXBzdHJlYW0gbWlnaHQgZGVjaWRlIHRvIGhhdmUgYW4gYWxpYXMgZ3BpbzIg
Zm9yIGdwaW8wIGZvciBhCj4+IGJvYXJkLgo+IAo+IElmIHRoZSBhbGlhc2VzIGFyZSBzZXQgdXAg
aW4gYSBub24tc3RhbmRhcmQgd2F5LCB0aGVuIEkgdGhpbmsgY2hhbmdpbmcKPiB0aGUgbmFtZSBo
ZXJlIG1heSBiZSB0aGUgcmlnaHQgdGhpbmcgdG8gZG8uCj4gCj4gQW55IEdQSU9zIHJlZmVyZW5j
ZWQgaW4gdGhlIGRldmljZSB0cmVlIHdpbGwgYmUgYnkgaGFuZGxlIHNvIHRoZSBuYW1lIGlzCj4g
aXJyZWxldmFudC4gIEdQSU8gbmFtZXMgYXJlIG9ubHkgdXNlZCBieSBib2FyZCBjb2RlIG9yIGJ5
IHRoZSBgZ3Bpb2AKPiBjb21tYW5kLCBib3RoIG9mIHdoaWNoIGFyZSB0aWdodGx5IHRpZWQgdG8g
dGhlIGRldmljZSB0cmVlIGFueXdheS4KPiAKPiBJZiBhIHN0YWJsZSBuYW1lIGZvciBhIEdQSU8g
aXMgbmVlZGVkLCB0aGVuIHRoZSBncGlvLWxpbmUtbmFtZXMgRFQKPiBwcm9wZXJ0eSBleGlzdHMg
YW5kIGlzIHN1cHBvcnRlZCBieSBMaW51eC4gIFRoZSBuYW1lcyBoZXJlIGFyZSBwdXJlbHkgYQo+
IFUtQm9vdCBjb25zdHJ1Y3Rpb24gYW5kIGVmZmVjdGl2ZWx5IHBhcnQgb2YgYSAidXNlcnNwYWNl
IiBpbnRlcmZhY2UuCj4gCgo+IEp1c3QgdXNpbmcgZGV2X3NlcSgpIHVuY29uZGl0aW9uYWxseSBh
cyBTaW1vbiBzdWdnZXN0ZWQgaW4gcmVzcG9uc2UgdG8KPiBteSBwYXRjaCBzZWVtcyBsaWtlIHRo
ZSByaWdodCBhbnN3ZXIgKGFuZCB0aGVuIHRoZXJlIGlzIG5vIGRlcGVuZGVuY3kgb24KPiBDT05G
SUdfRE1fU0VRX0FMSUFTIGFsdGhvdWdoIGJvYXJkcyBjYW4gcmVxdWlyZSBpdCBhbmQgdXNlIGFs
aWFzZXMgaWYKPiBuZWNlc3NhcnkpLgoKSSB0ZXN0ZWQgYSBiaXQgd2l0aCByazMwNjZhIG1rODA4
IHdpdGggbnVtYmVyIGdhcCBiZXR3ZWVuIDQgYW5kIDYuClRoYXQgbGV0dGVyIGlzIG5vdCBjb25z
aXN0ZW50IEYgdnMgRyBpbiB1LWJvb3Qgd2l0aCBhbmQgd2l0aG91dCBhbGlhc2VzLgoKTXkgaWRl
YSBpcyB0aGF0IHRoZSB1c2Ugb2YgYWxpYXNlcyBpcyBtb3JlIG9mIHNvbWV0aGluZyBvZiBhbiBh
ZGRpdGlvbmFsIHRoaW5nIHRoYXQgd2Ugbm90IGFsd2F5cyBjYW4gY291bnQgb24gdGhhdCBpcyB0
aGVyZS4KRFRPQyBwcm9jZXNzaW5nIGZvciBkdC1wbGF0LmMgb25seSBsb29rcyBhdCB0aGUgbm9k
ZXMgaXQgc2VsZi4gRmluZGluZyB5b3VyIElEIHRoZW4gY29tZXMgZnJvbSB0aGUgcHJvcGVydGll
cyBpbnNpZGUgdGhhdCBub2RlLgooaWU6IGNvbXBhdGlibGUgKyByZWcgb3Igc2VwYXJhdGUgaWQg
cHJvcGVydHkpCk90aGVycyBjYW4gaGF2ZSBvdGhlciBiZXR0ZXIgaWRlYXMgb2YgY291cnNlLiBM
ZXQgdXMga25vdy4KCkpvaGFuCgo+IAo+IAo+IEpvaG4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
