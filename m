Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 729D4C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 18:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8B4IzqxQM6tYoU563hEGYDJJZYhKwdkDIP/8Q8qIW4E=; b=A2jITfANg1gL0l
	TYdvojoTdyQnN8+E44Z4sm5+gBclbCWVksmEvVzn5E1xtTTu/3h5pi95gx3Gd0k/fdzD1sCcCQ9eM
	rroHHWN5QAowYTEPSkQWg91ardEIIQ2JYhGeQ9hRUtqj0lNpZWeJS6G32BAyqxjFie8LFdqnhUE5p
	xfdwbra00sffFn8GJAWEHA8gn0esUwNp7oibpBP5CSRaONMS8p+Xhd02pXaj6aWm0e2viOn59H5Ps
	A5bjLyxmfr59JMHC+jdy9FDPOUOrl8sHMk9wGscXoCmbocpSJJgH7AAeT/Ui5tmMHUwB9FLXd8BS7
	Cd6RzHZZmFn4cUF6hFUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAwbj-00B1wr-2r;
	Wed, 06 Dec 2023 18:26:51 +0000
Received: from mail-il1-x12f.google.com ([2607:f8b0:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAwbg-00B1w0-1R;
	Wed, 06 Dec 2023 18:26:50 +0000
Received: by mail-il1-x12f.google.com with SMTP id e9e14a558f8ab-35d72bc5cf2so47295ab.1;
        Wed, 06 Dec 2023 10:26:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701887203; x=1702492003; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ZySKQCUH2RPxJ6tJdSkxJbwaT6/swy656+RmrGV9Kg=;
        b=QxSXUy8bR8G0ixy6hzxruLvwRAUqHkX78O1DiwiRBNg6IgIwemNRp4/xj8VymNh8i3
         2bDuM33wHv/PIrTiyY79WWtddItqdUayX21kcnoWcdX4TxGbRyy62x+ep8dsbOG3YjDn
         nSfV5BKuZzPEekY+cE1Ctt2vR1hBiU9gqWGdJHpHiPfochixtMGBTwWUXV4er3YU4tVn
         aDLM6/IO3xF+OEU1Fc8xIjMTLZP5Is2gIuBSYN3I6wAc3maeGPMmEoosYgw1GVerz/GL
         yk99HV8ftCkv2mlDdhkfb/fPbdqrppFZhz7LpKVPe+m4lhAwsiJ13w5QAOBsMqWVetYp
         fYjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701887203; x=1702492003;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ZySKQCUH2RPxJ6tJdSkxJbwaT6/swy656+RmrGV9Kg=;
        b=ej+P+67JcW3REkVT7lpJv64PEvh7bQjMoJNDfWiiFSafSIMiA0Yt/EV/wOrmuhC/ci
         gm7CzRDc7HLGHq9J/uM5w9LZX+MsK85zKvd21JnwXWRFkmSCNdF4OBSwuOf0wxw5mCya
         kBFOzvPlEbtI8bGdXat3AgDe3dGQRUOqmWZoXRGuzGBRqELZWI43lU8aX0buCW8YA69D
         ffezPBAIQ8vxPdYGz732hQfYtCKTofa8AyuqYN7zKAse/EPmiPkcIxuSNUHlprTiICCn
         occ8RxkvYwDb4+/JdlrRFwTpxmiDWyby0gBIKKzc2umJn2QkV8ZqATsytGk4j1v1Nd1B
         MYLg==
X-Gm-Message-State: AOJu0YwNoZSx0ad0RPE1tEqjlZRFI0flJCv+58icyaHcsc3sdKwRCUeq
	XkBWdH5zAT31KCr7CXfv4pM=
X-Google-Smtp-Source: AGHT+IE6PzZN0GIbW9nhkBhrktDqmhUZc6UrKi9VtszWP0ZuOdttejlhzjzvWT7tR5TZYs8u772HPA==
X-Received: by 2002:a05:6e02:12a2:b0:35d:6aa4:d5d8 with SMTP id f2-20020a056e0212a200b0035d6aa4d5d8mr1673892ilr.37.1701887203568;
        Wed, 06 Dec 2023 10:26:43 -0800 (PST)
Received: from ?IPV6:2001:470:42c4:101:3fb7:1e39:b284:286f? ([2001:470:42c4:101:3fb7:1e39:b284:286f])
        by smtp.gmail.com with ESMTPSA id j29-20020a02cb1d000000b00468f1305e4esm84031jap.21.2023.12.06.10.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 10:26:43 -0800 (PST)
Message-ID: <d38540c5-79a8-0582-87b9-0e99bf3044d5@gmail.com>
Date: Wed, 6 Dec 2023 11:26:40 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [RESEND PATCH] arm64: dts: rockchip: Add PCIe pinctrls to Turing
 RK1
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 =?UTF-8?Q?Daniel_Kukie=c5=82a?= <daniel@kukiela.pl>,
 Sven Rademakers <sven.rademakers@gmail.com>, Joshua Riek <jjriek@verizon.net>
References: <20231205202900.4617-1-CFSworks@gmail.com>
 <3331042.e9J7NaK4W3@diego>
From: Sam Edwards <cfsworks@gmail.com>
In-Reply-To: <3331042.e9J7NaK4W3@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_102648_489914_A7FF594C 
X-CRM114-Status: GOOD (  21.90  )
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

CgpPbiAxMi82LzIzIDA3OjU1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBBbSBEaWVuc3RhZywg
NS4gRGV6ZW1iZXIgMjAyMywgMjE6Mjg6NTkgQ0VUIHNjaHJpZWIgU2FtIEVkd2FyZHM6Cj4+IFRo
ZSBSSzM1ODggUENJZSAzLjAgY29udHJvbGxlciBzZWVtcyB0byBoYXZlIHVucHJlZGljdGFibGUg
YmVoYXZpb3Igd2hlbgo+PiBubyBDTEtSRVEvUEVSU1QvV0FLRSBwaW5zIGFyZSBjb25maWd1cmVk
IGluIHRoZSBwaW5tdXguIEluIHBhcnRpY3VsYXIsIGl0Cj4+IHdpbGwgc29tZXRpbWVzICh2YXJ5
aW5nIGJldHdlZW4gc3BlY2lmaWMgUkszNTg4IGNoaXBzLCBub3Qgb3ZlciB0aW1lKSBzaHV0Cj4+
IG9mZiB0aGUgREJJIGJsb2NrLCBhbmQgcmVhZHMgdG8gdGhpcyByYW5nZSB3aWxsIGluc3RlYWQg
c3RhbGwKPj4gaW5kZWZpbml0ZWx5Lgo+Pgo+PiBXaGVuIHRoaXMgaGFwcGVucywgaXQgd2lsbCBw
cmV2ZW50IExpbnV4IGZyb20gYm9vdGluZyBhbHRvZ2V0aGVyLiBUaGUKPj4gUENJZSBkcml2ZXIg
d2lsbCBzdGFsbCB0aGUgQ1BVIGNvcmUgb25jZSBpdCBhdHRlbXB0cyB0byByZWFkIHRoZSB2ZXJz
aW9uCj4+IGluZm9ybWF0aW9uIGZyb20gdGhlIERCSSByYW5nZS4KPj4KPj4gRml4IHRoaXMgYm9v
dCBoYW5nIGJ5IGFkZGluZyB0aGUgY29ycmVjdCBwaW5jdHJsIGNvbmZpZ3VyYXRpb24gdG8gdGhl
Cj4+IFBDSWUgMy4wIGRldmljZSBub2RlLCB3aGljaCBpcyB0aGUgcHJvcGVyIHRoaW5nIHRvIGRv
IGFueXdheS4gV2hpbGUKPj4gd2UncmUgYXQgaXQsIGFsc28gYWRkIHRoZSBuZWNlc3NhcnkgY29u
ZmlndXJhdGlvbiB0byB0aGUgUENJZSAyLjAgbm9kZSwKPj4gd2hpY2ggbWF5IG9yIG1heSBub3Qg
Zml4IHRoZSBlcXVpdmFsZW50IHByb2JsZW0gb3ZlciB0aGVyZSAtLSBidXQgaXMgdGhlCj4+IHBy
b3BlciB0aGluZyB0byBkbyBhbnl3YXkuIDopCj4+Cj4+IEZpeGVzOiAyODA2YTY5ZjNmZWY2ICgi
YXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBUdXJpbmcgUksxIFNvTSBzdXBwb3J0IikKPj4gU2ln
bmVkLW9mZi1ieTogU2FtIEVkd2FyZHMgPENGU3dvcmtzQGdtYWlsLmNvbT4KPj4gLS0tCj4+ICAg
Li4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsxLmR0c2kgfCAxNCAr
Ky0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEyIGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtdHVyaW5nLXJrMS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtdHVyaW5nLXJrMS5kdHNpCj4+IGluZGV4IDk1NzBiMzRhY2EyZS4uMTI5ZjE0ZGJkNDJm
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJp
bmctcmsxLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
dHVyaW5nLXJrMS5kdHNpCj4+IEBAIC0yMTQsNyArMjE0LDcgQEAgcmdtaWlfcGh5OiBldGhlcm5l
dC1waHlAMSB7Cj4+ICAgJnBjaWUyeDFsMSB7Cj4+ICAgCWxpbnV4LHBjaS1kb21haW4gPSA8MT47
Cj4+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0JcGluY3RybC0wID0gPCZwY2ll
Ml9yZXNldD47Cj4+ICsJcGluY3RybC0wID0gPCZwY2llMzB4MW0xX3BpbnM+Owo+PiAgIAlyZXNl
dC1ncGlvcyA9IDwmZ3BpbzQgUktfUEEyIEdQSU9fQUNUSVZFX0hJR0g+Owo+PiAgIAlzdGF0dXMg
PSAib2theSI7Cj4+ICAgfTsKPj4gQEAgLTIyNiw3ICsyMjYsNyBAQCAmcGNpZTMwcGh5IHsKPj4g
ICAmcGNpZTN4NCB7Cj4+ICAgCWxpbnV4LHBjaS1kb21haW4gPSA8MD47Cj4+ICAgCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0JcGluY3RybC0wID0gPCZwY2llM19yZXNldD47Cj4+ICsJ
cGluY3RybC0wID0gPCZwY2llMzB4NG0xX3BpbnM+OwoKSGkgSGVpa28sCgo+IAo+IGFsc28sIHdo
eSBhcmUgeW91IHRocm93aW5nIG91dCB0aGUgcGluY3RybCBmb3IgdGhlIHJlc2V0IHBpbi4KPiBU
aGF0IHNlZW1zIG5vdCByZWxhdGVkIHRvIHRoZSByZWd1bGFyIHBpbnMgYW5kIHlvdSBjb3VsZCBp
bnN0ZWFkIGp1c3QgZG8KPiAKPiArCXBpbmN0cmwtMCA9IDwmcGNpZTMweDRtMV9waW5zPiwgPCZw
Y2llM19yZXNldD47CgpUaGUgcGNpZTMweDRtMV9waW5zIGRlZiBkb2VzIGluY2x1ZGUgcGlubXV4
aW5nIGA0IFJLX1BCNmAgdG8gdGhlIERXIApjb250cm9sbGVyIGFscmVhZHkuIFRoZSB2MiBwYXRj
aCBzaG91bGQgcHJvYmFibHkgaW5zdGVhZCByZW1vdmUgdGhlIApyZXNldC1ncGlvcyBwcm9wZXJ0
eSwgc2luY2UgYW4gb3V0LW9mLWJhbmQgR1BJTyByZXNldCBpcyBub3QgbmVlZGVkIHdoZW4gCnRo
ZSBjb250cm9sbGVyIGNhbiBkbyBpdC4KCkknbSBzdGlsbCBsb29raW5nIGludG8gdGhlIHN0b3J5
IHdpdGggdGhlIFBDSWUgMi4wIHBpbnMsIHNpbmNlIDIuMHgxJ3MgClBFUlNUIyBpcyBkZWZpbml0
ZWx5IDRBMi4gSSdsbCBhc2sgYXJvdW5kIGFuZCB0cnkgdG8gZmluZCBvdXQgd2hlcmUgdGhlIApj
b3JyZXNwb25kaW5nIENMS1JFUSMgaXMgZ29pbmcuCgo+IAo+IFRoYW5rcwo+IEhlaWtvCgpMaWtl
d2lzZSwKU2FtCgo+IAo+PiAgIAlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEI2IEdQSU9fQUNU
SVZFX0hJR0g+Owo+PiAgIAl2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMzA+Owo+PiAg
IAlzdGF0dXMgPSAib2theSI7Cj4+IEBAIC0yNDUsMTcgKzI0NSw3IEBAIGh5bTg1NjNfaW50OiBo
eW04NTYzLWludCB7Cj4+ICAgCQl9Owo+PiAgIAl9Owo+PiAgIAo+PiAtCXBjaWUyIHsKPj4gLQkJ
cGNpZTJfcmVzZXQ6IHBjaWUyLXJlc2V0IHsKPj4gLQkJCXJvY2tjaGlwLHBpbnMgPSA8NCBSS19Q
QTIgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+IC0JCX07Cj4+IC0JfTsKPj4gLQo+
PiAgIAlwY2llMyB7Cj4+IC0JCXBjaWUzX3Jlc2V0OiBwY2llMy1yZXNldCB7Cj4+IC0JCQlyb2Nr
Y2hpcCxwaW5zID0gPDQgUktfUEI2IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX25vbmU+Owo+PiAt
CQl9Owo+PiAtCj4+ICAgCQl2Y2MzdjNfcGNpZTMwX2VuOiBwY2llMy1yZWcgewo+PiAgIAkJCXJv
Y2tjaGlwLHBpbnMgPSA8MiBSS19QQzUgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+
ICAgCQl9Owo+Pgo+IAo+IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
