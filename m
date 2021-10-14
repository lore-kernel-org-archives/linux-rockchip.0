Return-Path: <SRS0=Ggyc=PC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A364CC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 09:56:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6092F610E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Oct 2021 09:56:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6092F610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1vbXXoeWJIFu7BcbyTrq4e1VMfsQm6ELv2Zk5JksD0=; b=fpqlELX/zvL57vfXRGQDI9rnpV
	y66RF5c0Y7xLrzHB+ARlL4DTq1lDZGReCYNamXqv3YjYS3T316qCR6sByVMyvIkCsXKImGfyR0DDj
	Pz1Cpp8/VflKb4jBew3Ppqs/iNyDBJsAFJQvTWakyOMoF+l8zWu8+cYA6p31tfL+Xjq8uu/le0r+3
	qQp3gcqiG0ve7MVxmqdt28G9UN8ciUnl5Pyn3l4Ix3e5xY3jk0XXtsBHa9T5wAo3n4HeqGekoc/Vg
	IukVceb8eOatLOAsN02auHcBvC09ojm/K+aIoleBUwpzcv9+yLtK8L63ozT9WHqiEJ0r2QZGzOuCP
	iTsYvMjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maxSv-002T4J-1X; Thu, 14 Oct 2021 09:55:57 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maxSr-002T3H-Qa; Thu, 14 Oct 2021 09:55:55 +0000
Received: by mail-ed1-x536.google.com with SMTP id w14so21814589edv.11;
 Thu, 14 Oct 2021 02:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=74OxFDQINVP0t2Tym9riIimusp8CKNtXPfS58HmDiLw=;
 b=BS3g7dZGSS+szT6wf9qurt+RBfc0UoAM3kDnpqYZBSvbGq3ebU1UZHUSXwn5DYagOn
 uvm22zri7XDVR2V/BNROSi7XPrguJodp/U0OLusEP8WUYZM+MWa9tRwKsHewBYskDx0b
 ChgmNr7tWfYhfi1vP5HCChHcHD8thT9sQN5kEz8IMfjOq+buxwnn99DTB9VZp2xExb7o
 GCOSEI9mnnzWM1YyNbMQHBF6X0VGQ692z1THXDHoDfi9mVWTs4pLhXV5TbrOdnCKOrXX
 dPj3JQ0MxFCafqrhIxqWYQhRJRE60pjnDFRWYJa5Y+kqr/3ZmF5UD6dALujoXlx01dSk
 u/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=74OxFDQINVP0t2Tym9riIimusp8CKNtXPfS58HmDiLw=;
 b=gsfn2CvAxTS1Fy0Cza+oywZtJC4cc56exbs1BticF47SYvE8hrRINyHU3FhYxQfbMI
 yLt8ZdVT/EcDXweZCWqNmGEd1UW/C/oLuj808oG2NzudDDBFQmW3GTIYv/InpjGZPfJ+
 XSXQ4omC2DUW6iksTf0XNhQJfXCO2GUD0YcCIe1tvb7JzfruPEhbK38YAtXI6L9sTQjv
 7oMnRrkhN4zDi2ZthVTaLke3507aDrI4ahYXJ6fJKaAl2kyYAdJ+C83BMjrFYk4iTCyj
 eSsj78EAVMphm9APqkAqxIJIssUKX3WDR41oQqdCK/ErvwO0XBI8rszEC+LvwsEapKyL
 dBpg==
X-Gm-Message-State: AOAM5312Q60h22QXWGTfQPEkv+Jkp3SgqIYa9VP/RaQuD+pQcZsbP3hd
 Z7OBKPuziq3ja9X1zCcfsE1VtuOyfeoW
X-Google-Smtp-Source: ABdhPJwBHbs0l+qwtXWx6kiyM/z9QoRTuUFdwCI8NaqkcTZIJ9KfqxmcIMU5Y2fSgZC1yz6FzYc58g==
X-Received: by 2002:a17:906:a382:: with SMTP id
 k2mr2543789ejz.454.1634205351095; 
 Thu, 14 Oct 2021 02:55:51 -0700 (PDT)
Received: from ?IPv6:2a02:810b:f40:4200:e1d9:2e2e:532d:87df?
 ([2a02:810b:f40:4200:e1d9:2e2e:532d:87df])
 by smtp.gmail.com with ESMTPSA id h18sm1513410ejt.29.2021.10.14.02.55.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Oct 2021 02:55:50 -0700 (PDT)
Subject: Re: [PATCH v1 1/6] clk: divider: Implement and wire up
 .determine_rate by default
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-clk@vger.kernel.org, sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20210702225145.2643303-1-martin.blumenstingl@googlemail.com>
 <20210702225145.2643303-2-martin.blumenstingl@googlemail.com>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <4eb964ac-4fff-b59d-2660-2f84d8af5901@gmail.com>
Date: Thu, 14 Oct 2021 11:55:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210702225145.2643303-2-martin.blumenstingl@googlemail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211014_025553_894457_6C76F0ED 
X-CRM114-Status: GOOD (  28.75  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpBbSAwMy4wNy4yMSB1bSAwMDo1MSBzY2hyaWViIE1hcnRpbiBCbHVtZW5zdGluZ2w6Cj4g
LmRldGVybWluZV9yYXRlIGlzIG1lYW50IHRvIHJlcGxhY2UgLnJvdW5kX3JhdGUuIFRoZSBmb3Jt
ZXIgY29tZXMgd2l0aCBhCj4gYmVuZWZpdCB3aGljaCBpcyBlc3BlY2lhbGx5IHJlbGV2YW50IG9u
IDMyLWJpdCBzeXN0ZW1zOiBzaW5jZQo+IC5kZXRlcm1pbmVfcmF0ZSB1c2VzIGFuICJ1bnNpZ25l
ZCBsb25nIiAoY29tcGFyZWQgdG8gYSAic2lnbmVkIGxvbmciCj4gd2hpY2ggaXMgdXNlZCBieSAu
cm91bmRfcmF0ZSkgdGhlIG1heGltdW0gdmFsdWUgb24gMzItYml0IHN5c3RlbXMKPiBpbmNyZWFz
ZXMgZnJvbSAyXjMxIChvciBhcHByb3guIDIuMTRHSHopIHRvIDJeMzIgKG9yIGFwcHJveC4gNC4y
OUdIeikuCj4KPiBJbXBsZW1lbnQgLmRldGVybWluZV9yYXRlIGluIGFkZGl0aW9uIHRvIC5yb3Vu
ZF9yYXRlIHNvIGRyaXZlcnMgdGhhdCBhcmUKPiB1c2luZyBjbGtfZGl2aWRlcl97cm9fLH1vcHMg
Y2FuIGJlbmVmaXQgZnJvbSB0aGlzIGJ5IGRlZmF1bHQuIEtlZXAgdGhlCj4gLnJvdW5kX3JhdGUg
Y2FsbGJhY2sgZm9yIG5vdyBzaW5jZSBzb21lIGRyaXZlcnMgcmVseSBvbgo+IGNsa19kaXZpZGVy
X29wcy5yb3VuZF9yYXRlIGJlaW5nIGltcGxlbWVudGVkLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFy
dGluIEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KVGhp
cyBjb21taXTCoCBicmVha3MgY29tcG9zaXRlIGNsb2NrcyB3aXRoIG11bHRpcGxlIHBhcmVudHMs
IHNpbmNlIGl0IAphZGRzIGHCoCBkZXRlcm1pbmVfcmF0ZSBjYWxsYmFjaywgd2hpY2ggaXMgcHJl
ZmVycmVkIG92ZXIgCmNsb2NrX3JvdW5kX3JhdGUgaW7CoCBjbGtfY29tcG9zaXRlX2RldGVybWlu
ZV9yYXRlIGluIGNsay1jb21wb3NpdGUuYyBhbmQgCnRoZSAiYmVzdC1wYXJlbnQiLWRldGVybWlu
YXRpb27CoCBpcyBvbmx5IGRvbmUgZm9yIGNsb2NrX3JvdW5kX3JhdGUtb3AgCnRoZXJlLgpUaGVy
ZSBpcyBubyAiYmVzdC1wYXJlbnQiLWRldGVybWluYXRpb27CoCBpbiBkZXRlcm1pbmVfcmF0ZSBp
biAKY2xrLWRpdmlkZXIgd2hpY2ggY2xrLWNvbXBzaXRlIHNlZW1zIHRvIGV4cGVjdCAtIG5vciBh
bnkgbXVsdGlwbGUgCnBhcmVudHMgaGFuZGxpbmcgYXQgYWxsLsKgIFRoYXQgbWVhbnMgdGhhdCB0
aGUgY29tcG9zaXRlIHdpbGwgYWx3YXlzIHN0YXkgCmF0IHRoZSBzYW1lL2luaXRpYWwgcGFyZW50
wqAgY2xvY2sgKGZyb20gdGhlIG11eCksIHdpdGhvdXQgZXZlciBjaGFuZ2luZyAKaXQgKGV2ZW4g
aWYgbmVjZXNzYXJ5KS4KClRoaXMgYnJlYWtzIGxvdCBvZiBjbG9ja3MgZm9yIFJvY2tjaGlwIHdo
aWNoIGludGVuc2l2ZWx5IHVzZXMgCmNvbXBvc2l0ZXMswqAgaS5lLiB0aG9zZSBjbG9ja3Mgd2ls
bCBhbHdheXMgc3RheSBhdCB0aGUgaW5pdGlhbCBwYXJlbnQsIAp3aGljaCBpbiBzb21lIGNhc2Vz
wqAgaXMgdGhlIFhUQUwgY2xvY2sgYW5kIEkgc3Ryb25nbHkgZ3Vlc3MgaXQgaXMgdGhlIApzYW1l
IGZvciBvdGhlciBwbGF0Zm9ybXMswqAgd2hpY2ggdXNlIGNvbXBvc2l0ZSBjbG9ja3MgaGF2aW5n
IG1vcmUgdGhhbiAKb25lIHBhcmVudCAoZS5nLiBtZWRpYXRlaywgdGkgLi4uKQoKRXhhbXBsZSAo
UkszMzk5KQpjbGtfc2RpbyBpcyBzZXQgKGluaXRpYWxpemVkKSB3aXRoIFhUQUwgKDI0IE1Ieikg
YXMgcGFyZW50IGluIHUtYm9vdC7CoCAKSXQgd2lsbCBhbHdheXMgc3RheSBhdCB0aGlzIHBhcmVu
dCwgZXZlbiBpZiB0aGUgbW1jIGRyaXZlciBzZXRzIGEgcmF0ZSAKb2bCoCAyMDAgTUh6IChmYWls
cywgYXMgdGhlIG5hdHVyZSBvZiB0aGluZ3MpLCB3aGljaCBzaG91bGQgc3dpdGNoIGl0IHRvIAph
bnkgb2YgaXRzIHBvc3NpYmxlIHBhcmVudCBQTExzIGRlZmluZWQgaW4gCm11eF9wbGxfc3JjX2Nw
bGxfZ3BsbF9ucGxsX3BwbGxfdXBsbF8yNG1fcCAoc2VlIGNsay1yazMzOTkuYynCoCAtIHdoaWNo
IApuZXZlciBoYXBwZW5zLgoKUmV2ZXJ0aW5nIHRoaXMgY29tbWl0IG1ha2VzIGl0IHdvcmsgYWdh
aW46IFVubGVzcyB0aGVyZSBpcyBhIHF1aWNrIGFuZCAKb2J2aW91cyBmaXggZm9yIHRoYXQsIEkg
Z3Vlc3MgdGhpcyBzaG91bGQgYmUgZG9uZSBmb3IgNS4xNSAtIGV2ZW4gaWYgdGhlIApyZWFsIGlz
c3VlIGlzIHNvbWV3aGVyZSBlbHNlLgoKQWxleAoKPiAtLS0KPiAgIGRyaXZlcnMvY2xrL2Nsay1k
aXZpZGVyLmMgfCAyMyArKysrKysrKysrKysrKysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQs
IDIzIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9jbGstZGl2aWRl
ci5jIGIvZHJpdmVycy9jbGsvY2xrLWRpdmlkZXIuYwo+IGluZGV4IDg3YmE0OTY2YjBlOC4uZjZi
MmJmNTU4NDg2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL2Nsay1kaXZpZGVyLmMKPiArKysg
Yi9kcml2ZXJzL2Nsay9jbGstZGl2aWRlci5jCj4gQEAgLTQ0Niw2ICs0NDYsMjcgQEAgc3RhdGlj
IGxvbmcgY2xrX2RpdmlkZXJfcm91bmRfcmF0ZShzdHJ1Y3QgY2xrX2h3ICpodywgdW5zaWduZWQg
bG9uZyByYXRlLAo+ICAgCQkJCSAgZGl2aWRlci0+d2lkdGgsIGRpdmlkZXItPmZsYWdzKTsKPiAg
IH0KPiAgIAo+ICtzdGF0aWMgaW50IGNsa19kaXZpZGVyX2RldGVybWluZV9yYXRlKHN0cnVjdCBj
bGtfaHcgKmh3LAo+ICsJCQkJICAgICAgc3RydWN0IGNsa19yYXRlX3JlcXVlc3QgKnJlcSkKPiAr
ewo+ICsJc3RydWN0IGNsa19kaXZpZGVyICpkaXZpZGVyID0gdG9fY2xrX2RpdmlkZXIoaHcpOwo+
ICsKPiArCS8qIGlmIHJlYWQgb25seSwganVzdCByZXR1cm4gY3VycmVudCB2YWx1ZSAqLwo+ICsJ
aWYgKGRpdmlkZXItPmZsYWdzICYgQ0xLX0RJVklERVJfUkVBRF9PTkxZKSB7Cj4gKwkJdTMyIHZh
bDsKPiArCj4gKwkJdmFsID0gY2xrX2Rpdl9yZWFkbChkaXZpZGVyKSA+PiBkaXZpZGVyLT5zaGlm
dDsKPiArCQl2YWwgJj0gY2xrX2Rpdl9tYXNrKGRpdmlkZXItPndpZHRoKTsKPiArCj4gKwkJcmV0
dXJuIGRpdmlkZXJfcm9fZGV0ZXJtaW5lX3JhdGUoaHcsIHJlcSwgZGl2aWRlci0+dGFibGUsCj4g
KwkJCQkJCSBkaXZpZGVyLT53aWR0aCwKPiArCQkJCQkJIGRpdmlkZXItPmZsYWdzLCB2YWwpOwo+
ICsJfQo+ICsKPiArCXJldHVybiBkaXZpZGVyX2RldGVybWluZV9yYXRlKGh3LCByZXEsIGRpdmlk
ZXItPnRhYmxlLCBkaXZpZGVyLT53aWR0aCwKPiArCQkJCSAgICAgIGRpdmlkZXItPmZsYWdzKTsK
PiArfQo+ICsKPiAgIGludCBkaXZpZGVyX2dldF92YWwodW5zaWduZWQgbG9uZyByYXRlLCB1bnNp
Z25lZCBsb25nIHBhcmVudF9yYXRlLAo+ICAgCQkgICAgY29uc3Qgc3RydWN0IGNsa19kaXZfdGFi
bGUgKnRhYmxlLCB1OCB3aWR0aCwKPiAgIAkJICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCj4gQEAg
LTUwMSw2ICs1MjIsNyBAQCBzdGF0aWMgaW50IGNsa19kaXZpZGVyX3NldF9yYXRlKHN0cnVjdCBj
bGtfaHcgKmh3LCB1bnNpZ25lZCBsb25nIHJhdGUsCj4gICBjb25zdCBzdHJ1Y3QgY2xrX29wcyBj
bGtfZGl2aWRlcl9vcHMgPSB7Cj4gICAJLnJlY2FsY19yYXRlID0gY2xrX2RpdmlkZXJfcmVjYWxj
X3JhdGUsCj4gICAJLnJvdW5kX3JhdGUgPSBjbGtfZGl2aWRlcl9yb3VuZF9yYXRlLAo+ICsJLmRl
dGVybWluZV9yYXRlID0gY2xrX2RpdmlkZXJfZGV0ZXJtaW5lX3JhdGUsCj4gICAJLnNldF9yYXRl
ID0gY2xrX2RpdmlkZXJfc2V0X3JhdGUsCj4gICB9Owo+ICAgRVhQT1JUX1NZTUJPTF9HUEwoY2xr
X2RpdmlkZXJfb3BzKTsKPiBAQCAtNTA4LDYgKzUzMCw3IEBAIEVYUE9SVF9TWU1CT0xfR1BMKGNs
a19kaXZpZGVyX29wcyk7Cj4gICBjb25zdCBzdHJ1Y3QgY2xrX29wcyBjbGtfZGl2aWRlcl9yb19v
cHMgPSB7Cj4gICAJLnJlY2FsY19yYXRlID0gY2xrX2RpdmlkZXJfcmVjYWxjX3JhdGUsCj4gICAJ
LnJvdW5kX3JhdGUgPSBjbGtfZGl2aWRlcl9yb3VuZF9yYXRlLAo+ICsJLmRldGVybWluZV9yYXRl
ID0gY2xrX2RpdmlkZXJfZGV0ZXJtaW5lX3JhdGUsCj4gICB9Owo+ICAgRVhQT1JUX1NZTUJPTF9H
UEwoY2xrX2RpdmlkZXJfcm9fb3BzKTsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
