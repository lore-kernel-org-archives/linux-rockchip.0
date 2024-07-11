Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C38E4C3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 11:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vVoxd8ltC3aTYcxIoPZnLVI9hdHH5GGxznx+s/y36s=; b=luJJJKCnljI7di
	rKKJD0QesfI9gQqEmEvhUUYPfqBr9EjTE8nYoHE1dR+dUKZIKu9IF1SbIBiAIfDW3/43OB54QAIoE
	N62uz/r57MqUTRySnqS6Qf1AsDayueyO8uZSVssDW7ptSAVzK3xsTGnZ8caNYMf5WnFtJGH5H7MDk
	en16OrwboL/uBCqLljKgQ/nEyCPuTYYNziUZY/X6PiZ0RQjB0Szzx+nLa7tzru2nUqgFP/Q2D+D8E
	7CyF6YhZSTAzS5UPhELnE1Gq5L18OYOipGZW6xbDgxk8tZ/4Y9zJCzF5Wi4F7eEFDZTvx3UDYRaD7
	h2/zdHZ+YUvWzjH1IAZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRsPk-0000000DrVO-17gl;
	Thu, 11 Jul 2024 11:56:44 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRsPR-0000000DrOL-2FHZ;
	Thu, 11 Jul 2024 11:56:27 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-57d05e0017aso1087179a12.1;
        Thu, 11 Jul 2024 04:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720698984; x=1721303784; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Bq2MHRWMRpRuHietDcISXO0+46WBW+IZOyTMBnJpPCI=;
        b=MMk9mQAonZC9Hdr1OgCxKCnGi7h8p/DN7lOUzfolpQPF16dUmstmCxPBRX0qEugoZy
         JqubSCXnsaxzhjDIerUXo4HZIv7pGWI44IH0Ux50VXQF/s48kQ19r4MHbQbW9pO7gOwL
         L/Le9O49SHDeKmYqUb5YV5zd/1LOPMVXdSXbmLCh28FfwAsykfRAdCvYkEMRde10ea8q
         ENPUSOW3ZK1vn49Pve9E2DAt1gxaWPvnUqf/z2kQ6v8PobZCEiP/RMGbFybnUukKvr24
         yX2oC8H6IErAF+J7Vrvw6bh/4ok7ebNGfwEE5B/ES2rCd/RwTiBNNTiVPoKerU5GQOaO
         rfSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698984; x=1721303784;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bq2MHRWMRpRuHietDcISXO0+46WBW+IZOyTMBnJpPCI=;
        b=Fl87Vh2DVrwGU5EVHgHQWXXm/hI9Mb6WrVDTFpyaYY2FUreqTRID1EBaL9khCMPmO2
         UWJgMydilICIZpeoMoGw9e77i9QM8fE4vNBnXNbRiSCQYroW+s8+IiYGUMEXdS6qkwq1
         k0L2yXmanUQDejFZ7iJMzbtSqXTgykHvmHPGc4zrASwTAe0f4aZ/axTPjgbw3e6GFLao
         D/s27vbHfLoaUirP87poltcClDhJu935RZ+z5U949WUcOtzqkt+06jle0d8Iy8qBKIbS
         myoUyv9EXc6QR8TN2z/+dn1NUEb5p2HbJmkzNZlJUXkthlmjgyNmzCEdw6O9RExBANU1
         MOdw==
X-Forwarded-Encrypted: i=1; AJvYcCVXdIWV8Y6fijO+mPJWTKYu8AooVNQFWkrxHkWdODFV+ZM/55lKBKcx86RFRV0bXQXq6a1C46ebjgBKDrugEJ+sMKfIUzyFn4RxXS1E3dSA70Tp6QxVNvBgZ83bmgggJxgqzubyEr4AN8LAjKtWlVrnR7lQwhLMcl0=
X-Gm-Message-State: AOJu0YxFzkOcVoWQgxQRITItfUELmLWILvFIRPi2kJJJe4hTCzYjZsmd
	/HtiDZWByc4IKXVdYcryv/Eij4btWR72hcEXdWEhG8UXqzFz2cI=
X-Google-Smtp-Source: AGHT+IFPclGUkdX7WZ6l5h3IecZRqbFpN4dthUnDLTpOivMTp7878y/TTqx+pJJ4Japsfg+fOBaMSA==
X-Received: by 2002:a17:907:3d88:b0:a72:4c33:6ba6 with SMTP id a640c23a62f3a-a780b51309amr713941966b.0.1720698983425;
        Thu, 11 Jul 2024 04:56:23 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:2315:3572:6db8:dada? ([2a02:810b:f40:4600:2315:3572:6db8:dada])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a780a86f636sm248691666b.208.2024.07.11.04.56.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jul 2024 04:56:23 -0700 (PDT)
Message-ID: <1cc5ca06-bb40-4787-9e97-a12d79e54d7b@gmail.com>
Date: Thu, 11 Jul 2024 13:56:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4
 node
To: wens@kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240711060939.1128-1-linux.amoon@gmail.com>
 <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CAGb2v65iR9BdAX43gfpBOeKF_B5PFm+RhPwu5FHUfRxCMeqh-w@mail.gmail.com>
 <e3410560-6dec-41de-ab14-441dbe8e5bb1@gmail.com>
 <CAGb2v66gmZGh-_7r6+ifeH-OfU4npxZNWucS-GhtL91LCSvqvQ@mail.gmail.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <CAGb2v66gmZGh-_7r6+ifeH-OfU4npxZNWucS-GhtL91LCSvqvQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_045625_609524_8E3C066B 
X-CRM114-Status: GOOD (  22.55  )
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

CkFtIDExLjA3LjI0IHVtIDEzOjM4IHNjaHJpZWIgQ2hlbi1ZdSBUc2FpOgo+IE9uIFRodSwgSnVs
IDExLCAyMDI0IGF0IDc6MTPigK9QTSBBbGV4IEJlZSA8a25hZXJ6Y2hlQGdtYWlsLmNvbT4gd3Jv
dGU6Cj4+IEFtIDExLjA3LjI0IHVtIDExOjE3IHNjaHJpZWIgQ2hlbi1ZdSBUc2FpOgo+Pj4gT24g
VGh1LCBKdWwgMTEsIDIwMjQgYXQgNDo0NOKAr1BNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJv
by5zZT4gd3JvdGU6Cj4+Pj4gSGkgQW5hbmQsCj4+Pj4KPj4+PiBPbiAyMDI0LTA3LTExIDA4OjA5
LCBBbmFuZCBNb29uIHdyb3RlOgo+Pj4+PiBBZGQgbWlzc2luZyBwaW5jdHJsIHNldHRpbmdzIGZv
ciBQQ0llIDMuMCB4NCBjbG9jayByZXF1ZXN0IGFuZCB3YWtlCj4+Pj4+IHNpZ25hbHMuRWFjaCBj
b21wb25lbnQgb2YgUENJZSBjb21tdW5pY2F0aW9uIGhhdmUgdGhlIGZvbGxvd2luZyBjb250cm9s
Cj4+Pj4+IHNpZ25hbHM6IFBFUlNULCBXQUtFLCBDTEtSRVEsIGFuZCBSRUZDTEsuIFRoZXNlIHNp
Z25hbHMgd29yayB0byBnZW5lcmF0ZQo+Pj4+PiBoaWdoLXNwZWVkIHNpZ25hbHMgYW5kIGNvbW11
bmljYXRlIHdpdGggb3RoZXIgUENJZSBkZXZpY2VzLgo+Pj4+PiBVc2VkIGJ5IHJvb3QgY29tcGxl
eCB0byBlbmRwb2ludCBkZXBlbmRpbmcgb24gdGhlIHBvd2VyIHN0YXRlLgo+Pj4+Pgo+Pj4+PiBQ
RVJTVCBpcyByZWZlcnJlZCB0byBhcyBhIGZ1bmRhbWVudGFsIHJlc2V0LiBQRVJTVCBzaG91bGQg
YmUgaGVsZCBsb3cKPj4+Pj4gdW50aWwgYWxsIHRoZSBwb3dlciByYWlscyBpbiB0aGUgc3lzdGVt
IGFuZCB0aGUgcmVmZXJlbmNlIGNsb2NrIGFyZSBzdGFibGUuCj4+Pj4+IEEgdHJhbnNpdGlvbiBm
cm9tIGxvdyB0byBoaWdoIGluIHRoaXMgc2lnbmFsIHVzdWFsbHkgaW5kaWNhdGVzIHRoZQo+Pj4+
PiBiZWdpbm5pbmcgb2YgbGluayBpbml0aWFsaXphdGlvbi4KPj4+Pj4KPj4+Pj4gV0FLRSBzaWdu
YWwgaXMgYW4gYWN0aXZlLWxvdyBzaWduYWwgdGhhdCBpcyB1c2VkIHRvIHJldHVybiB0aGUgUENJ
ZQo+Pj4+PiBpbnRlcmZhY2UgdG8gYW4gYWN0aXZlIHN0YXRlIHdoZW4gaW4gYSBsb3ctcG93ZXIg
c3RhdGUuCj4+Pj4+Cj4+Pj4+IENMS1JFUSBzaWduYWwgaXMgYWxzbyBhbiBhY3RpdmUtbG93IHNp
Z25hbCBhbmQgaXMgdXNlZCB0byByZXF1ZXN0IHRoZQo+Pj4+PiByZWZlcmVuY2UgY2xvY2suCj4+
Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4LmFtb29uQGdtYWlsLmNv
bT4KPj4+Pj4gLS0tCj4+Pj4+IFYyOiBVcGRhdGUgdGhlIGNvbW1pdCBtZXNzZ2UgdG8gZGVzY3Jp
YmUgdGhlIGNoYW5ncy4KPj4+Pj4gICAgICAgdXNlIHBpbmN0bCBncm91cCBhcyBpdHMgcHJlIGRl
ZmluZSBpbiBwaW5jdGwgZHRzaQo+Pj4+PiAtLS0KPj4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgfCA2ICstLS0tLQo+Pj4+PiAgICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+Pj4+IGlu
ZGV4IDJlNzUxMjY3NmI3ZS4uYWIzYTIwOTg2YzZhIDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+Pj4+PiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+Pj4+PiBAQCAtMzAx
LDcgKzMwMSw3IEBAICZwY2llMzBwaHkgewo+Pj4+Pgo+Pj4+PiAgICAmcGNpZTN4NCB7Cj4+Pj4+
ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+Pj4gLSAgICAgcGluY3RybC0w
ID0gPCZwY2llM19yc3Q+Owo+Pj4+PiArICAgICBwaW5jdHJsLTAgPSA8JnBjaWUzMHg0bTFfcGlu
cz47Cj4+Pj4gVXNlIG9mIHRoZSBleGlzdGluZyBwY2llMzB4NG0xX3BpbnMgZ3JvdXAgbWF5IG5v
dCBiZSBmdWxseSBhY2N1cmF0ZSBmb3IKPj4+PiB0aGUgUEVSU1QgcGluLiBUaGUgdXNlIG9mIHJl
c2V0LWdwaW9zIGluZGljYXRlIHRoYXQgdGhlIFBFUlNUIHBpbiBpcwo+Pj4+IHVzZWQgd2l0aCBH
UElPIGZ1bmN0aW9uIGFuZCB0aGUgZHJpdmVyIHdpbGwgaW1wbGljaXRseSBjaGFuZ2UgdGhlCj4+
Pj4gZnVuY3Rpb24gZnJvbSBwZXJzdG5fbTEgdG8gR1BJTy4gU28gdGhpcyBtYXkgbm90IGJlIGJl
c3QgcmVwcmVzZW50YXRpb24KPj4+PiBvZiB0aGUgaHcsIGhlbmNlIG15IGluaXRpYWwgc3VnZ2Vz
dGlvbiwgc29tZXRoaW5nIGxpa2U6Cj4+Pj4KPj4+PiAgICAgICAgICAgcGNpZTMweDRfcGluczog
cGNpZTMweDQtcGlucyB7Cj4+Pj4gICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9Cj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICA8NCBSS19QQjQgNCAmcGNmZ19wdWxsX25vbmU+
LAo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgPDQgUktfUEI2IFJLX0ZVTkNfR1BJTyAm
cGNmZ19wdWxsX25vbmU+LAo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgPDQgUktfUEI1
IDQgJnBjZmdfcHVsbF9ub25lPjsKPj4+PiAgICAgICAgICAgfTsKPj4+Pgo+Pj4+IFNpbWlsYXIg
Y2hhbmdlIHNob3VsZCBwcm9iYWJseSBhbHNvIGJlIGRvbmUgZm9yIHBjaWUyeDFsMCBhbmQgcGNp
ZTJ4MWwyLAo+Pj4+IG5vdCBqdXN0IHBjaWUzeDQuCj4+PiBDYW4gd2UgY29uc2lkZXIgaW1wbGVt
ZW50aW5nIHN0cmljdCBtb2RlIGluIHRoZSBwaW5jdHJsIGRyaXZlciBzbyB3ZSBkb24ndAo+Pj4g
aGF2ZSB0byBrZWVwIGRvaW5nIHRoaXMgR1BJTyArIHBpbm11eCBkYW5jZT8KPj4+Cj4+IFRoaXMg
aXMgbm90IGFib3V0IGRyaXZlcnMsIHRoaXMgaXMgRFQgd2hpY2ggaXMgaW5kZXBlbmRlbnQgZnJv
bSBkcml2ZXJzLgo+PiBKb25hcyBhbmQgSSBoYWQgZGlzY3Vzc2lvbiByZWNlbnRseSBvbiB1LWJv
b3QgbWFpbGluZyBsaXN0IHdpdGggc29tZWJvZHkKPj4gdXNpbmcgT3Blbi9GcmVlQlNEIGFib3V0
IGV4YWN0IHRoYXQgdG9waWMuIFBpbmN0cmwgbXV4IHNldHRpbmdzIHNob3VsZCBiZQo+PiB2ZXJ5
IGV4cGxpY2l0LCBldmVuIGlmIGl0IGlzIG5vdCByZXF1aXJlZCBieSB0aGUgbGludXgtZHJpdmVy
Lgo+IFRoZSBoYXJkd2FyZSBhbHNvIHByZXZlbnRzIHlvdSBmcm9tIHVzaW5nIEdQSU9zIHdpdGgg
YW55IG90aGVyIG11eCBzZXR0aW5nLgo+IFRoYXQgaXMgYWxyZWFkeSBpbXBsaWVkIGJ5IHRoZSBj
b21wYXRpYmxlIHN0cmluZyBhbmQgZG9lc24ndCBuZWVkIHRvIGJlCj4gc3BlbGxlZCBvdXQuIFRo
ZSBzdHJpY3QgZHJpdmVyIG1vZGUgbWVyZWx5IGVuZm9yY2VzIHRoaXMgaGFyZHdhcmUgbGltaXRh
dGlvbgo+IHdpdGhvdXQgdGhlIHZlcnkgZXhwbGljaXQgc2V0dGluZy4gT25lIGNvdWxkIGFsc28g
c2F5IHRoYXQgdGhlIGRyaXZlciBpcwo+IHdyb25nIHRvIHN1cHBvcnQgY29uZmxpY3Rpbmcgc2V0
dGluZ3MuCj4KPgo+IENoZW5ZdQoiVGhlIiBkcml2ZXIgaXMgaW4gZmFjdCBub3QgY29ycmVjdCBo
ZXJlLCBzaW5jZSBpdCdzIHR3byBhY3R1YWxseSB0d28KZHJpdmVyczogcGluY3RybCBhbmQgZ3Bp
bywgdHdvIHN1YnN5c3RlbXMgYW5kIHNlcGFyYXRlIEhXIGJsb2NrcyAobm90IHZlcnkKY2xlYXIs
IGJ1dCBpdCdzIGF0IGxlYXN0IGNvbmZpZ3VyZWQgaW4gZGlmZmVyZW50IG1taW8gcmVnaW9ucyku
IFNvIHdpdGgKd2hhdCB5b3UgYXJlIHN1Z2dlc3RpbmcgeW91IHdhbnQgb25lIGRyaXZlciB0byBp
bXBsaWNpdGx5IGNvbmZpZ3VyZSB0aGUKb3RoZXIgYW5kIGV4cGVjdCBldmVyeSBPUyB0byBoYXZl
IHN1Y2ggbWV0aG9kcz8gQnJvYWQgLi4uCgpBbGV4Cgo+Cj4+IEFsZXgKPj4KPj4+IENoZW5ZdQo+
Pj4KPj4+Cj4+Pj4gUmVnYXJkcywKPj4+PiBKb25hcwo+Pj4+Cj4+Pj4+ICAgICAgICAgcmVzZXQt
Z3Bpb3MgPSA8JmdwaW80IFJLX1BCNiBHUElPX0FDVElWRV9ISUdIPjsKPj4+Pj4gICAgICAgICB2
cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMzA+Owo+Pj4+PiAgICAgICAgIHN0YXR1cyA9
ICJva2F5IjsKPj4+Pj4gQEAgLTM0MSwxMCArMzQxLDYgQEAgcGNpZTJfMl9yc3Q6IHBjaWUyLTIt
cnN0IHsKPj4+Pj4gICAgICAgICB9Owo+Pj4+Pgo+Pj4+PiAgICAgICAgIHBjaWUzIHsKPj4+Pj4g
LSAgICAgICAgICAgICBwY2llM19yc3Q6IHBjaWUzLXJzdCB7Cj4+Pj4+IC0gICAgICAgICAgICAg
ICAgICAgICByb2NrY2hpcCxwaW5zID0gPDQgUktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxs
X25vbmU+Owo+Pj4+PiAtICAgICAgICAgICAgIH07Cj4+Pj4+IC0KPj4+Pj4gICAgICAgICAgICAg
ICAgIHBjaWUzX3ZjYzN2M19lbjogcGNpZTMtdmNjM3YzLWVuIHsKPj4+Pj4gICAgICAgICAgICAg
ICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwxIFJLX1BBNCBSS19GVU5DX0dQSU8gJnBjZmdf
cHVsbF9ub25lPjsKPj4+Pj4gICAgICAgICAgICAgICAgIH07Cj4+Pj4+Cj4+Pj4+IGJhc2UtY29t
bWl0OiAzNGFmYjgyYTNjNjdmODY5MjY3YTI2ZjU5M2I2ZjhmYzZiZjM1OTA1Cj4+Pj4KPj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKPj4+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKPj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
