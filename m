Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9802D2CE14
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 18:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVuBI3kAiS58Y+biPth0jjxCB7Q1ptbvRccyA5UQtIo=; b=Oob5prvW1f4Tao
	/2n5wZxONsmeWLCoyyGH5SyINIuSlDiP1C8EmjFVgOuDFCRf9tnp9ZuAHJDfcWcyb32CECFNC+m8/
	bpXl5KGJ1X9gTpyqtDjR7QeKJ3s7nmKu96io4SKQ8gU9fuDAn847/v0eJsj/mVaUhqsZDwA3oelwI
	Ii5q4Rpcqofa2Y9YtFjuy1JHSnbD8SPKmFzq5dPg9B5ikRfGBYpRwhMaQv4PadREaZO7I9T2GnMX2
	sYmL/LPICYue9WccDtuqM188yfu1m+4+6d/OLgXJMKKx6hs6TrJ0OWQyodZjQ4swtsH623436Q9GV
	KjDWSwyKnsp5Uq3sYzDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3JUZ-0000000BniD-3lt6;
	Tue, 22 Oct 2024 18:20:27 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3JSs-0000000BnPZ-0IWj;
	Tue, 22 Oct 2024 18:18:43 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2e2e050b1c3so81550a91.0;
        Tue, 22 Oct 2024 11:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729621120; x=1730225920; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0+D36PD0oyWEGdZT46EpzFiJXC/Bkh6tdCG+WE7z8AQ=;
        b=TxqgZK8WJTiFgtQTmE0lXHcvuekBJt7e274565lCRAgsie61ba3gkwNqXa6lpJq3rZ
         By6LrW4CX3B5qlEICBH7acXtB3Cr7aukpQFSVsAeZk5E3S1lW9u/xBsH0G88zKw/4VrM
         uAuYJv6wjSgfyl9z9Su0GPaEJKB2YJK7Mxlzk09yDR56S18g3zV6jDsaImooBUQskyn6
         4do0Mj5cFRSCY524W1G/BzCpRVJwvk/AH30fod2yjYGrOIuWPbbt0Uu65Iwq4O/5ZNd/
         YNhyR9WNJaMlwZHa37XroJivQ7YEHXi3PRKp9IwaVwyR2NkJ7HftUCa9+g8TeweXvqxK
         4axQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729621120; x=1730225920;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+D36PD0oyWEGdZT46EpzFiJXC/Bkh6tdCG+WE7z8AQ=;
        b=kO1viyNL0AMvA2YFH0oTopFyZuku0z06ka41H6byEHrSLY8Rz2HRdGFZEY+S8b/H0I
         ZHAGpeRAUQQ29rB5euYP2Dnw0sBiLYyoqI2n8pT1c2JwsioAzFG0Si00IJBFqWzhSghw
         gB9uPYx5goRB1Mqfk54dTR+MZn8mANIM+Nz3aPr38L4SqT1PYTmzNb490k3tBNGKW/4C
         i1OUhm10KgOSMEi1+weGexCkhnexz5rMcWonESB5hA5np29GXwsVZLJ3NkqhzN1b6uTc
         YsO7hqfKG/o/QFbrAvjq6foDFciWqRm+KxJvynnGZpN7U9Iss1L//htUgpdsm3FS0amF
         Oy3g==
X-Forwarded-Encrypted: i=1; AJvYcCWd6aLPN69ksEEsINSZooK5ZCS75R7ImTCr25V82hkB9B+DtGO5iLByo17muXAaVuDXgtQKllw2bEtiOiSVfEwH@lists.infradead.org, AJvYcCXI8yKGgOltvtcZ2/mZYkN/SN/ivaV1gNu6dlhwvOqIQ69YLDgEJcUvgR9Q/TgtqnCPg/r/ahJgnv1EcG1V/bo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8RGN8sFj0rIWb7hSv9zyBKVd0/sldH3/mMl7tDYEGUz+/thQt
	St+S5sfEUfpUvrn+54/wkru3nJ+KqWbsZT4Ejmblsqs6TJNKO3eo
X-Google-Smtp-Source: AGHT+IGhTfZx7xAaEGS4TbJV+BeWoFKCAVJJE3r+eNHK2Hyv5WlycfLWfAukyPd1alfStOe3GkAHzg==
X-Received: by 2002:a17:90b:108f:b0:2da:6e46:ad48 with SMTP id 98e67ed59e1d1-2e76a6e4830mr60264a91.1.1729621119846;
        Tue, 22 Oct 2024 11:18:39 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2408:8262:245d:4d65:bc4b:53ff:fead:2725])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e5e2691e4csm2025468a91.23.2024.10.22.11.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 11:18:38 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add FriendlyARM NanoPi R3S board
Date: Wed, 23 Oct 2024 02:18:29 +0800
Message-ID: <20241022181829.897547-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <c2a4e8a8-9466-41c4-83b3-57210fdf5a5c@kwiboo.se>
References: <c2a4e8a8-9466-41c4-83b3-57210fdf5a5c@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_111842_133355_F22D18DB 
X-CRM114-Status: GOOD (  28.75  )
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

SGkgSm9uYXMsCgpPbiBXZWQsIE9jdCAyMywgMjAyNCBhdCAxOjU24oCvQU0gSm9uYXMgS2FybG1h
biA8am9uYXNAa3dpYm9vLnNlPiB3cm90ZToKPgo+IEhpIFRpYW5saW5nLAo+Cj4gT24gMjAyNC0x
MC0yMiAxOTozOCwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPiA+IEhpIEpvbmFzLAo+ID4KPiA+IE9u
IFdlZCwgT2N0IDIzLCAyMDI0IGF0IDEyOjQ5w6LigqzCr0FNIEpvbmFzIEthcmxtYW4gPGpvbmFz
QGt3aWJvby5zZT4gd3JvdGU6Cj4gPj4KPiA+PiBIaSBUaWFubGluZywKPiA+Pgo+ID4+IE9uIDIw
MjQtMTAtMjAgMTk6MzksIFRpYW5saW5nIFNoZW4gd3JvdGU6Cj4gPj4+IFRoZSBOYW5vUGkgUjNT
KGFzICJSM1MiKSBpcyBhbiBvcGVuIHNvdXJjZSBwbGF0Zm9ybSB3aXRoIGR1YWwtR2Jwcwo+ID4+
PiBFdGhlcm5ldCBwb3J0cyBkZXNpZ25lZCBhbmQgZGV2ZWxvcGVkIGJ5IEZyaWVuZGx5RWxlYyBm
b3IgSW9UCj4gPj4+IGFwcGxpY2F0aW9ucy4KPiA+Pj4KPiA+Pj4gU3BlY2lmaWNhdGlvbjoKPiA+
Pj4gLSBSb2NrY2hpcCBSSzM1NjYKPiA+Pj4gLSAyR0IgTFBERFI0WCBSQU0KPiA+Pj4gLSBvcHRp
b25hbCAzMkdCIGVNTUMgbW9kdWxlCj4gPj4+IC0gU0QgY2FyZCBzbG90Cj4gPj4+IC0gMnggMTAw
MCBCYXNlLVQKPiA+Pj4gLSAzeCBMRURzIChQT1dFUiwgTEFOLCBXQU4pCj4gPj4+IC0gMnggQnV0
dG9ucyAoUmVzZXQsIE1hc2tST00pCj4gPj4+IC0gMXggVVNCIDMuMCBQb3J0Cj4gPj4+IC0gVHlw
ZS1DIDVWIDJBIFBvd2VyCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFRpYW5saW5nIFNoZW4g
PGNuc3p0bEBnbWFpbC5jb20+Cj4gPj4+IC0tLQo+ID4+PiDDgiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL01ha2VmaWxlIMOCIMKgw4IgwqDDgiDCoMOCIMKgfCDDgiDCoDEgKwo+ID4+PiDD
giAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW5hbm9waS1yM3MuZHRzIMOCIMKgfCA1NTQg
KysrKysrKysrKysrKysrKysrCj4gPj4+IMOCIDIgZmlsZXMgY2hhbmdlZCwgNTU1IGluc2VydGlv
bnMoKykKPiA+Pj4gw4IgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY2LW5hbm9waS1yM3MuZHRzCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9NYWtlZmlsZQo+ID4+PiBpbmRleCA4ZTEwMjVjYjVkMjAuLmU2NDEwMzNkMjNkMSAx
MDA2NDQKPiA+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+
ID4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPj4+IEBA
IC0xMDksNiArMTA5LDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2Ni1z
b3F1YXJ0ei1tb2RlbC1hLmR0Ygo+ID4+PiDDgiBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkg
Kz0gcmszNTY2LWJveC1kZW1vLmR0Ygo+ID4+PiDDgiBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJ
UCkgKz0gcmszNTY2LWxja2ZiLXRzcGkuZHRiCj4gPj4+IMOCIGR0Yi0kKENPTkZJR19BUkNIX1JP
Q0tDSElQKSArPSByazM1NjYtbHViYW5jYXQtMS5kdGIKPiA+Pj4gK2R0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazM1NjYtbmFub3BpLXIzcy5kdGIKPiA+Pj4gw4IgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC1icGktcjItcHJvLmR0Ygo+ID4+PiDDgiBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWV2YjEtdjEwLmR0Ygo+ID4+PiDDgiBkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LWZhc3RyaGluby1yNjZzLmR0Ygo+ID4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtbmFub3Bp
LXIzcy5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1uYW5vcGktcjNz
LmR0cwo+ID4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+PiBpbmRleCAwMDAwMDAwMDAwMDAu
Ljk1MWRkOWJjYjRiMAo+ID4+PiAtLS0gL2Rldi9udWxsCj4gPj4+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LW5hbm9waS1yM3MuZHRzCj4gPj4+IEBAIC0wLDAgKzEs
NTU0IEBACj4gPj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRl
ciBPUiBNSVQKPiA+Pj4gKy8qCj4gPj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjAgUm9ja2NoaXAg
RWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4gPj4+ICsgKgo+ID4+PiArICogQ29weXJpZ2h0IChjKSAy
MDI0IEZyaWVuZGx5RWxlYyBDb21wdXRlciBUZWNoLiBDby4sIEx0ZC4KPiA+Pj4gKyAqIChodHRw
Oi8vd3d3LmZyaWVuZGx5YXJtLmNvbS8KPgo+IFRoaXMgY291bGQgcHJvYmFibHkgYmUgdXBkYXRl
ZCB0byB1c2UgaHR0cHM6Ly93d3cuZnJpZW5kbHllbGVjLmNvbS8KClllcyEKCj4KPiA+Pj4gKyAq
Cj4gPj4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQgVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWls
LmNvbT4KPiA+Pj4gKyAqLwo+ID4+PiArCj4gPj4+ICsvZHRzLXYxLzsKPiA+Pj4gKyNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiA+Pj4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9p
bnB1dC9pbnB1dC5oPgo+ID4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2xlZHMvY29tbW9uLmg+
Cj4gPj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcC5oPgo+ID4+PiAr
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL3NvYy9yb2NrY2hpcCx2b3AyLmg+Cj4gPj4+ICsjaW5jbHVk
ZSAicmszNTY2LmR0c2kiCj4gPj4+ICsKPiA+Pj4gKy8gewo+ID4+PiArIMOCIMKgw4IgwqBtb2Rl
bCA9ICJGcmllbmRseUFSTSBOYW5vUGkgUjNTIjsKPiA+Pgo+ID4+IFBsZWFzZSB1c2UgdGhlIG1h
cmtldGluZyBuYW1lLCBhbmQgdGhlIG5hbWUgYWRkZWQgaW4gYmluZGluZzoKPiA+Pgo+ID4+IMOC
IMKgw4IgRnJpZW5kbHlFbGVjIE5hbm9QaSBSM1MKPiA+Cj4gPiBTb3JyeSBmb3IgdGhlIGNvcHkg
JiBwYXN0ZSBlcnJvciwgd2lsbCBmaXggaXQgaW4gbmV3IHBhdGNoLgo+Cj4gVGhlIGNvbW1pdCBz
dWJqZWN0IGNvdWxkIHByb2JhYmx5IGFsc28gYmUgdXBkYXRlZCA6LSkKPgo+ID4KPiA+Pgo+ID4+
PiArIMOCIMKgw4IgwqBjb21wYXRpYmxlID0gImZyaWVuZGx5YXJtLG5hbm9waS1yM3MiLCAicm9j
a2NoaXAscmszNTY2IjsKPiA+Pj4gKwo+ID4+PiArIMOCIMKgw4IgwqBhbGlhc2VzIHsKPiA+Pj4g
KyDDgiDCoMOCIMKgw4IgwqDDgiDCoMOCIMKgw4IgwqBldGhlcm5ldDAgPSAmZ21hYzE7Cj4gPj4+
ICsgw4IgwqDDgiDCoMOCIMKgw4IgwqDDgiDCoMOCIMKgbW1jMCA9ICZzZG1tYzA7Cj4gPj4+ICsg
w4IgwqDDgiDCoMOCIMKgw4IgwqDDgiDCoMOCIMKgbW1jMSA9ICZzZGhjaTsKPiA+Pgo+ID4+IFRo
aXMgYm9hcmQgY29tZXMgd2l0aCBvbi1ib2FyZCBlTU1DIHRoaXMgcGxlYXNlIHVzZSBtbWMwIGFz
IGFsaWFzIGZvcgo+ID4+ICZzZGhjaTsgYW5kIG1tYzEgZm9yIHNkLWNhcmQuCj4gPgo+ID4gSXMg
dXNpbmcgbW1jMCBmb3Igc2RoY2kgYSBjb21tb24gcHJhY3RpY2UgZm9yIGVNTUMgYm9hcmRzPwo+
ID4gVGhlIGVNTUMgbW9kdWxlIG9uIFIzUyBpcyBvcHRpb25hbCBhbmQgdXNlcnMgbWF5IGdldCBi
b2FyZHMgd2l0aG91dCBpdC4KPgo+IFR5cGljYWxseSBhbnkgbm9uLXJlbW92YWJsZSBzdG9yYWdl
IChlbW1jKSBpcyBsaXN0ZWQgYmVmb3JlIHJlbW92YWJsZQo+IHN0b3JhZ2UgKHNkLWNhcmQpIG9w
dGlvbnMuIEFsc28gVS1Cb290IHdpbGwgdHJ5IHRvIG92ZXJyaWRlIGFuZCB1c2UKPiBtbWMwPXNk
aGNpIGFuZCBtbWMxPXNkbW1jMCBmb3IgYWxsIHJrMzU2eCBib2FyZHMsIHNvIGZvciBFRkkgYm9v
aW5nCj4gdXNpbmcgY29udHJvbCBGRFQgdGhlIGFsaWFzIG1heSBiZSBkaWZmZXJlbnQuCj4KClRo
YW5rIHlvdSBmb3IgdGhlIGRldGFpbHMhIE1heSBJIGhhdmUgeW91ciBTdWdnZXN0ZWQtYnkgdGFn
IGZvciBhbGwKb2YgdGhlc2UgZml4ZXM/CgpUaGFua3MsClRpYW5saW5nLgoKPiBSZWdhcmRzLAo+
IEpvbmFzCj4KPiBbc25pcF0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
