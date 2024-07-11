Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE28C3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 11:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0rhphG7ahID31EvWyRr2DxZOlXKDEQjJhtx4/zuYcM=; b=lEM51WfaicSFsy
	f489LHEwTq9jGciPTcy0tuW42Nwb9ptpUjzFKu5w9WEEQja8046IoRT9CIwvc0LgPQkaSSgOIlXwX
	mjosCsaaXxNQOkOkcwo+WjFjUrwV/YyphNSgdh8nhzVn0MvwDL6itsQ/itZMj+Oydh3cN09JrPc62
	xnTs3SSdXBDp6lrOIhvJ0lU1Eq/YGUMm7tGZ2mpKPPIM+ouEOX8lrBnxSzg01uS9pzeIJxtYplRnw
	A7fomthL1dVHVXdctlhYFGG1n4Fe3RKKxyDerZsk5iKyWLt4VFB5NSaQJCnKKYCYiaNqe82ZEe+dZ
	pQBCZo0XffxYPT7ICTew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRrkC-0000000DhQA-3TU1;
	Thu, 11 Jul 2024 11:13:48 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRrju-0000000DhKD-00eM;
	Thu, 11 Jul 2024 11:13:31 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-58b447c51bfso888441a12.2;
        Thu, 11 Jul 2024 04:13:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720696408; x=1721301208; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TYllvDYy8q+oSmnbTdjDBVB3IGKqLELFE6rlt3KjtiY=;
        b=XDzElEJrkl9NLRI8lIv8LUxuxvFSnYfQH3p+R94qJmLXKqvYRh3XaEnvTlebIyF78A
         BSGhxtDGHApXnLnELQgd3z36955yMJzX0xUts70rj9gm1i8Rm6yiiRGqfPuCANeXtNiV
         NNWS6bkvYjcBKaxuyxD05oBBur0Fh16oYzZIPL1DHbRs/VY6XLC10IkFuJGIJHYX2zFX
         rqX8+VXCPNPnCAU/3NJJBrVJnx6yUEtJwYQ+LLc/XoD0ockyMSD0kgtc8+qfeajfbvYN
         89/N0xItE2+MZFqofuGiW2rAAi60DxRS1bs+dmrYUZkek8+t+AqHVbmJCyrnUR7rr8Eu
         Ecpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720696408; x=1721301208;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TYllvDYy8q+oSmnbTdjDBVB3IGKqLELFE6rlt3KjtiY=;
        b=Xo9csYUeo/FfgT/e+5r9UAi/sjJK7TSjj1F6q3SaS6ARejkp9jwkAjDIrCa4PitQR8
         87guvolTbRL1BcWFjc9cOYN1j/leUlqS8kypZBVZ0gsiEq2o6Le1WdiL8QguVUtwZTwu
         gQ9fuz78jLvjzQpv+hz1Y0HibxpajtboDXON0/0oVjzsf8hwr5sY9ICv61aH7TESEYD2
         zmbZr38vakwZRH9DuFEJnBJjItJSbNrJ9i4KXKo76IE5mN2c+jzw+LYiiTclYCDNU9i/
         9UlyITC9egWeGGrRLFaFbPUSjQtCsVxiaKOD8DJ2CQmU+xz4aXlNwYmLUc/7EDlFcE2u
         lpSQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJg9HBlAZmlEXfuPNuBn9L53DXqbVUURkJC+BW9X4bUOz62bCaSW0ATSqDSwiZd/JblIutkluf4o3jrQuqZPRd8bIpVsvdQu6BB9dET3v35nw6RdIfxvExprSq+qwDBtUuNOWl7n6OyM9ceqc2MoqSXm+M8Jbj+wY=
X-Gm-Message-State: AOJu0YytoeFaX/YPih7hcaVlSncJJh2loAOs4J74KLpu0ZBpwnW6f2o1
	sEfZCB6H2dtPIXm/1AZskvI6lv3N45wydbUzXJGyusuwJTt1pts=
X-Google-Smtp-Source: AGHT+IGonB+tlK1s3YxPGzmQfLKujuweNBArj336FWhMTOeocRhQSO/drBcmCkcDCewxEfe4XLuMcw==
X-Received: by 2002:a05:6402:1d13:b0:58f:90e0:a1d0 with SMTP id 4fb4d7f45d1cf-594bcab0311mr4576922a12.39.1720696407735;
        Thu, 11 Jul 2024 04:13:27 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:ce43:28ef:7742:f662? ([2a02:810b:f40:4600:ce43:28ef:7742:f662])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-594bc3f338fsm3371627a12.43.2024.07.11.04.13.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Jul 2024 04:13:27 -0700 (PDT)
Message-ID: <e3410560-6dec-41de-ab14-441dbe8e5bb1@gmail.com>
Date: Thu, 11 Jul 2024 13:13:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4
 node
To: wens@kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240711060939.1128-1-linux.amoon@gmail.com>
 <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CAGb2v65iR9BdAX43gfpBOeKF_B5PFm+RhPwu5FHUfRxCMeqh-w@mail.gmail.com>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <CAGb2v65iR9BdAX43gfpBOeKF_B5PFm+RhPwu5FHUfRxCMeqh-w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_041330_065004_0BD8544E 
X-CRM114-Status: GOOD (  23.69  )
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

QW0gMTEuMDcuMjQgdW0gMTE6MTcgc2NocmllYiBDaGVuLVl1IFRzYWk6Cj4gT24gVGh1LCBKdWwg
MTEsIDIwMjQgYXQgNDo0NOKAr1BNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3Jv
dGU6Cj4+Cj4+IEhpIEFuYW5kLAo+Pgo+PiBPbiAyMDI0LTA3LTExIDA4OjA5LCBBbmFuZCBNb29u
IHdyb3RlOgo+Pj4gQWRkIG1pc3NpbmcgcGluY3RybCBzZXR0aW5ncyBmb3IgUENJZSAzLjAgeDQg
Y2xvY2sgcmVxdWVzdCBhbmQgd2FrZQo+Pj4gc2lnbmFscy5FYWNoIGNvbXBvbmVudCBvZiBQQ0ll
IGNvbW11bmljYXRpb24gaGF2ZSB0aGUgZm9sbG93aW5nIGNvbnRyb2wKPj4+IHNpZ25hbHM6IFBF
UlNULCBXQUtFLCBDTEtSRVEsIGFuZCBSRUZDTEsuIFRoZXNlIHNpZ25hbHMgd29yayB0byBnZW5l
cmF0ZQo+Pj4gaGlnaC1zcGVlZCBzaWduYWxzIGFuZCBjb21tdW5pY2F0ZSB3aXRoIG90aGVyIFBD
SWUgZGV2aWNlcy4KPj4+IFVzZWQgYnkgcm9vdCBjb21wbGV4IHRvIGVuZHBvaW50IGRlcGVuZGlu
ZyBvbiB0aGUgcG93ZXIgc3RhdGUuCj4+Pgo+Pj4gUEVSU1QgaXMgcmVmZXJyZWQgdG8gYXMgYSBm
dW5kYW1lbnRhbCByZXNldC4gUEVSU1Qgc2hvdWxkIGJlIGhlbGQgbG93Cj4+PiB1bnRpbCBhbGwg
dGhlIHBvd2VyIHJhaWxzIGluIHRoZSBzeXN0ZW0gYW5kIHRoZSByZWZlcmVuY2UgY2xvY2sgYXJl
IHN0YWJsZS4KPj4+IEEgdHJhbnNpdGlvbiBmcm9tIGxvdyB0byBoaWdoIGluIHRoaXMgc2lnbmFs
IHVzdWFsbHkgaW5kaWNhdGVzIHRoZQo+Pj4gYmVnaW5uaW5nIG9mIGxpbmsgaW5pdGlhbGl6YXRp
b24uCj4+Pgo+Pj4gV0FLRSBzaWduYWwgaXMgYW4gYWN0aXZlLWxvdyBzaWduYWwgdGhhdCBpcyB1
c2VkIHRvIHJldHVybiB0aGUgUENJZQo+Pj4gaW50ZXJmYWNlIHRvIGFuIGFjdGl2ZSBzdGF0ZSB3
aGVuIGluIGEgbG93LXBvd2VyIHN0YXRlLgo+Pj4KPj4+IENMS1JFUSBzaWduYWwgaXMgYWxzbyBh
biBhY3RpdmUtbG93IHNpZ25hbCBhbmQgaXMgdXNlZCB0byByZXF1ZXN0IHRoZQo+Pj4gcmVmZXJl
bmNlIGNsb2NrLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFuYW5kIE1vb24gPGxpbnV4LmFtb29u
QGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4gVjI6IFVwZGF0ZSB0aGUgY29tbWl0IG1lc3NnZSB0byBk
ZXNjcmliZSB0aGUgY2hhbmdzLgo+Pj4gICAgICB1c2UgcGluY3RsIGdyb3VwIGFzIGl0cyBwcmUg
ZGVmaW5lIGluIHBpbmN0bCBkdHNpCj4+PiAtLS0KPj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgfCA2ICstLS0tLQo+Pj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDUgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPj4+IGluZGV4IDJlNzUxMjY3
NmI3ZS4uYWIzYTIwOTg2YzZhIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+PiBAQCAtMzAxLDcgKzMwMSw3IEBAICZwY2ll
MzBwaHkgewo+Pj4KPj4+ICAgJnBjaWUzeDQgewo+Pj4gICAgICAgIHBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4+PiAtICAgICBwaW5jdHJsLTAgPSA8JnBjaWUzX3JzdD47Cj4+PiArICAgICBw
aW5jdHJsLTAgPSA8JnBjaWUzMHg0bTFfcGlucz47Cj4+Cj4+IFVzZSBvZiB0aGUgZXhpc3Rpbmcg
cGNpZTMweDRtMV9waW5zIGdyb3VwIG1heSBub3QgYmUgZnVsbHkgYWNjdXJhdGUgZm9yCj4+IHRo
ZSBQRVJTVCBwaW4uIFRoZSB1c2Ugb2YgcmVzZXQtZ3Bpb3MgaW5kaWNhdGUgdGhhdCB0aGUgUEVS
U1QgcGluIGlzCj4+IHVzZWQgd2l0aCBHUElPIGZ1bmN0aW9uIGFuZCB0aGUgZHJpdmVyIHdpbGwg
aW1wbGljaXRseSBjaGFuZ2UgdGhlCj4+IGZ1bmN0aW9uIGZyb20gcGVyc3RuX20xIHRvIEdQSU8u
IFNvIHRoaXMgbWF5IG5vdCBiZSBiZXN0IHJlcHJlc2VudGF0aW9uCj4+IG9mIHRoZSBodywgaGVu
Y2UgbXkgaW5pdGlhbCBzdWdnZXN0aW9uLCBzb21ldGhpbmcgbGlrZToKPj4KPj4gICAgICAgICAg
cGNpZTMweDRfcGluczogcGNpZTMweDQtcGlucyB7Cj4+ICAgICAgICAgICAgICAgICAgcm9ja2No
aXAscGlucyA9Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICA8NCBSS19QQjQgNCAmcGNmZ19w
dWxsX25vbmU+LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgPDQgUktfUEI2IFJLX0ZVTkNf
R1BJTyAmcGNmZ19wdWxsX25vbmU+LAo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgPDQgUktf
UEI1IDQgJnBjZmdfcHVsbF9ub25lPjsKPj4gICAgICAgICAgfTsKPj4KPj4gU2ltaWxhciBjaGFu
Z2Ugc2hvdWxkIHByb2JhYmx5IGFsc28gYmUgZG9uZSBmb3IgcGNpZTJ4MWwwIGFuZCBwY2llMngx
bDIsCj4+IG5vdCBqdXN0IHBjaWUzeDQuCj4gCj4gQ2FuIHdlIGNvbnNpZGVyIGltcGxlbWVudGlu
ZyBzdHJpY3QgbW9kZSBpbiB0aGUgcGluY3RybCBkcml2ZXIgc28gd2UgZG9uJ3QKPiBoYXZlIHRv
IGtlZXAgZG9pbmcgdGhpcyBHUElPICsgcGlubXV4IGRhbmNlPwo+IAoKVGhpcyBpcyBub3QgYWJv
dXQgZHJpdmVycywgdGhpcyBpcyBEVCB3aGljaCBpcyBpbmRlcGVuZGVudCBmcm9tIGRyaXZlcnMu
CkpvbmFzIGFuZCBJIGhhZCBkaXNjdXNzaW9uIHJlY2VudGx5IG9uIHUtYm9vdCBtYWlsaW5nIGxp
c3Qgd2l0aCBzb21lYm9keQp1c2luZyBPcGVuL0ZyZWVCU0QgYWJvdXQgZXhhY3QgdGhhdCB0b3Bp
Yy4gUGluY3RybCBtdXggc2V0dGluZ3Mgc2hvdWxkIGJlCnZlcnkgZXhwbGljaXQsIGV2ZW4gaWYg
aXQgaXMgbm90IHJlcXVpcmVkIGJ5IHRoZSBsaW51eC1kcml2ZXIuCgpBbGV4Cgo+IENoZW5ZdQo+
IAo+IAo+PiBSZWdhcmRzLAo+PiBKb25hcwo+Pgo+Pj4gICAgICAgIHJlc2V0LWdwaW9zID0gPCZn
cGlvNCBSS19QQjYgR1BJT19BQ1RJVkVfSElHSD47Cj4+PiAgICAgICAgdnBjaWUzdjMtc3VwcGx5
ID0gPCZ2Y2MzdjNfcGNpZTMwPjsKPj4+ICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+PiBAQCAt
MzQxLDEwICszNDEsNiBAQCBwY2llMl8yX3JzdDogcGNpZTItMi1yc3Qgewo+Pj4gICAgICAgIH07
Cj4+Pgo+Pj4gICAgICAgIHBjaWUzIHsKPj4+IC0gICAgICAgICAgICAgcGNpZTNfcnN0OiBwY2ll
My1yc3Qgewo+Pj4gLSAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8NCBSS19Q
QjYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+PiAtICAgICAgICAgICAgIH07Cj4+
PiAtCj4+PiAgICAgICAgICAgICAgICBwY2llM192Y2MzdjNfZW46IHBjaWUzLXZjYzN2My1lbiB7
Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLHBpbnMgPSA8MSBSS19QQTQgUktf
RlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+PiAgICAgICAgICAgICAgICB9Owo+Pj4KPj4+
IGJhc2UtY29tbWl0OiAzNGFmYjgyYTNjNjdmODY5MjY3YTI2ZjU5M2I2ZjhmYzZiZjM1OTA1Cj4+
Cj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
