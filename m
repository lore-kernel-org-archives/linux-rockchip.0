Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FDC5C3ABB0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ey3a4FfTy6/vtYEeVSqkOkt5DoygIFF+G3JZlEW3zQg=; b=2Y7tVbVVEQMzwN
	g7d81NJx14h62D4v064oKPIGoY1PZIC/+9PhocaF9xrbvqcsbfPOxRoVCz2Bsygc7ZqvgrPHMS1Zi
	eHnX3NaEMLgvRvt+JXpzjvLwNposfTHNPlgYfIWs8W7vWG9+YfQjSZeyJc9Wlv/C9CLXBBtsMaPM7
	/dUsIdvlC3DqoM8IXaqYmAs6qx/0FlOyd6XUA3rLSSGK0K9r/G8AMft4wU9mMPjCWjVdwC5aGu6WA
	V3LVqOi/ZY6dvjhCYF7+DWF/xMd3bNmARDguWmNt7PQahC5WovVKEPNOTUshpHLuLVvGReIleQ2q9
	e8kGrJSvZ1aMMF+Y29Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBtBP-0000000744Q-2Guk;
	Mon, 05 May 2025 10:36:23 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBtBM-0000000743t-16JK;
	Mon, 05 May 2025 10:36:21 +0000
Received: by mail-qk1-x72b.google.com with SMTP id af79cd13be357-7c59e7039eeso631254885a.2;
        Mon, 05 May 2025 03:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746441378; x=1747046178; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qSz/sPDiC/QZeGr/GNB1mzbdmiKfZk2fho7AI9XSSzk=;
        b=jtklDDh0rIQAvoXxvkNzEqAVnrnUIoSssc3/Fug3lgssfBq5exULn+oEchhJKWZY1F
         IV1g5QS5yh2waLJ7/q7bUUqS0Fo648rVOtkjWgbA/3+mga8Et+Ia9pxJoR0zCVK6Os9I
         5xmTQbIjNLFR0QRdHack88VGpzE27oGQHhKSkrSFr5l43gC+FrgYeqqkCzcZimQrNhJl
         HpihIB8lDBIpw061F1z6JfkyswdFmr9WoQnjMF8tDsVGmjd+EsTcPoaMB246t0mSMV/r
         jI4hFGxXG+HPNWfKzab2SZM6SNrLglGRWc6aH5qVZEoxPrIA+RWSPMZh4otJ+gVlr87v
         mGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746441378; x=1747046178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qSz/sPDiC/QZeGr/GNB1mzbdmiKfZk2fho7AI9XSSzk=;
        b=kpx/YYYDUUGSqyQbnAJ9MyYJgKC2zcxmXARVT/yyvqlwVu4R5yvtG/dwdAjYT6+Qgh
         Q+Rl02dn7+TDBv4mhQ3UPEBeCWW58mAfLQi7yA1igdwrvarpvFbLuiSabO323PiUpF2a
         AMpDVxstJHD1+8/HDHuCcxC1CC6fDKuhQuCfET+7Cpq9bajoNDJNgD5rvgU2ceC2GNW2
         9ZpJVunBiQ02sCOoaN1AuLI1Ap62O3QuGBqVbLWlJxilcXswGhj8AIjYUumbPn3FUAtb
         zi59iE4FhAV36+7Jep4yEKTuF6/xLldY7qVg+H7UCyn/jn5bMPIQZ2lLaNvOxovqugWn
         O9nw==
X-Forwarded-Encrypted: i=1; AJvYcCUOqeX/YIUibLoDXTgmgiHohbcpoArJ6oRcRQ3RrPyUzOHJhT/LuwBAQ3R8SmUWEAA66sGrDVYYWgbF/UyFuW8=@lists.infradead.org, AJvYcCX5DBzKzCXJmRfv1fEmOR1I8FfOwn9PmS26nW5/QGPmsGWSYOg5Xhh+wPXb8oG8UComz+y2Nfr23teF+XqXaFRz@lists.infradead.org
X-Gm-Message-State: AOJu0YyEIh9RGTV+x4H7kJmCz33ChQCdcx+c2CCxmIMOXJpq+1Te8alw
	CCYlRx1vgzv6RMOuh6X8U3i9+1vOY6CfXGlweFVhhPNbHewOM/yN
X-Gm-Gg: ASbGnctFLloDdvruE7jtimRDFQryJ8RkQYRZajIheB+n+8SQalHjj+hy49uTlD8k+DU
	AXFhByF0O0T0/3G+Su+oaObodUzfQBBQch3vQ+OThNWxAzkGm+wS0byRT16jWeUYJfq3MihOaT2
	rv6XLco9VA0mOKRZRf5yda95N/7YG0zr40fh1tJlwAR/XC9TAsnABqjrUdLHGXmg+82rI3WBcFo
	H/I06I91pHsWqbAaodWYpGT6BAQ0+/pnLr29TtdbdpGTytzxr+p09dXlMXDKeabRvuXw00/2Lta
	+/QztZmwoqaGMrUno8cQ7J1Ke+ofqLQQesPai5ZQ7ZwdhWosNCnJm/tV/AS4+g==
X-Google-Smtp-Source: AGHT+IEGFiuPwtx5+ptQcYP4WqG3qE0Q0U8qKthDrzIQB+NTFScSCy2F+JLC1iCLj7ayC8SQku10Bg==
X-Received: by 2002:a05:620a:8006:b0:7c7:c6e6:bd3d with SMTP id af79cd13be357-7cae3b18d4emr1074489985a.58.1746441378556;
        Mon, 05 May 2025 03:36:18 -0700 (PDT)
Received: from [192.168.21.149] ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad242b6dfsm548847085a.68.2025.05.05.03.36.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 03:36:18 -0700 (PDT)
Message-ID: <1a403393-e317-4a1b-a151-fa668c6278f9@gmail.com>
Date: Mon, 5 May 2025 06:36:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
To: Andrew Lunn <andrew@lunn.ch>
Cc: Jonas Karlman <jonas@kwiboo.se>, heiko@sntech.de, robh@kernel.org,
 conor+dt@kernel.org, detlev.casanova@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
 <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
 <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
 <46cbdabd-b0ed-4c9b-9f01-4d2d8eceac24@gmail.com>
 <13407dae-4c73-48a9-846e-92f08449bc4d@lunn.ch>
Content-Language: en-US
From: John Clark <inindev@gmail.com>
In-Reply-To: <13407dae-4c73-48a9-846e-92f08449bc4d@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_033620_303912_376E7812 
X-CRM114-Status: GOOD (  19.35  )
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

T24gNS80LzI1IDg6NDUgUE0sIEFuZHJldyBMdW5uIHdyb3RlOgo+Pj4gV2hhdCBQSFkgaXMgaXQ/
IEFyZSB5b3UgdXNpbmcgdGhlIGNvcnJlY3QgUEhZIGRyaXZlciBmb3IgaXQsIG9yCj4+PiBnZW5w
aHk/Cj4+Pgo+PiBNQUUwNjIxQS1RM0MKPj4gaHR0cDovL3d3dy5tYXhpby10ZWNoLmNvbS9wcm9k
dWN0LzEyOTI4LzEyOTI5LzEyOTMwLzEyOTMxLmh0bWwKPiAKPiBNYWlubGluZSBkb2VzIG5vdCBo
YXZlIGEgUEhZIGRyaXZlciBmb3IgdGhpcy4gU28gbm90aGluZyBpcwo+IGNvbnRyb2xsaW5nIHRo
ZSBkZWxheXMgaW4gdGhlIFBIWS4gU28gd2hhdCB5b3UgaGF2ZSBhYm92ZSB3b3JrcyBieQo+IGx1
Y2ssIGFuZCBpcyBsaWtlbHkgdG8gYnJlYWsgb25jZSB0aGVyZSBpcyBhIFBIWSBkcml2ZXIuIFNv
IGkgc3VnZ2VzdAo+IHlvdSBkcm9wIHRoZSBFdGhlcm5ldCBub2RlcyBmb3IgdGhlIG1vbWVudC4K
PiAKPiBUaGVyZSBkb2VzIGFwcGVhciB0byBiZSBhIFBIWSBkcml2ZXIgaGVyZToKPiAKPiBodHRw
czovL2dpdGh1Yi5jb20vQ29yZUVMRUMvbGludXgtYW1sb2dpYy9ibG9iLzUuMTUuMTUzXzIwMjUw
MS9kcml2ZXJzL25ldC9waHkvbWF4aW8uYwo+IAo+IGJ1dCBpdCBoYXMgYSBudW1iZXIgb2YgdGhp
bmdzIHdyb25nIHdpdGggaXQuIFlvdSBtaWdodCB3YW50IHRvIHNlYXJjaAo+IGFyb3VuZCBhbmQg
c2VlIGlmIHRoZXJlIGFyZSBhbnkgY2xlYW5lciB2ZXJzaW9ucyBhcm91bmQsIG9yIGlmIGFueWJv
ZHkKPiBpcyB3b3JraW5nIG9uIHVwc3RyZWFtaW5nIGEgZHJpdmVyIGZvciB0aGlzIFBIWS4KPiAK
PiAJQW5kcmV3CiA+CgpIaSBBbmRyZXcsClRoYW5rIHlvdSBmb3IgeW91ciB2YWx1YWJsZSBmZWVk
YmFjayBhbmQgZm9yIHBvaW50aW5nIG1lIHRvd2FyZCAKaW52ZXN0aWdhdGluZyB0aGUgUEhZIGNv
bmZpZ3VyYXRpb24gZnVydGhlci4gQWZ0ZXIgZGlnZ2luZyBkZWVwZXIgaW50byAKdGhlIE1BRTA2
MjFBLVEzQyBQSFkgKFBIWSBJRCAweDdiNzQ0NDEyKSwgSSBub3cgdW5kZXJzdGFuZCB3aHkgaXQg
CnBlcmZvcm1zIHJlbGlhYmx5OiB0aGUgZ2VuZXJpYyBQSFkgZHJpdmVyIHJlbGllcyBvbiB0aGUg
R01BQyB0byBzZXQgClJHTUlJIGRlbGF5cyAodHhfZGVsYXk9MHgyMCwgcnhfZGVsYXk9MHgxMCks
IGVuYWJsaW5nIGEgc3RhYmxlIDFHYnBzIApsaW5rIGZvciBnbWFjMCBpbiByZ21paS1yeGlkIG1v
ZGUsIHdoaWxlIHJnbWlpLWlkIGZhaWxlZCBpbiBteSB0ZXN0cyBkdWUgCnRvIHRoZSBkcml2ZXLi
gJlzIGxhY2sgb2YgaW50ZXJuYWwgZGVsYXkgY29uZmlndXJhdGlvbi4gR2l2ZW4gdGhlIGNyaXRp
Y2FsIApyb2xlIG9mIG5ldHdvcmtpbmcgZm9yIGRldmVsb3BtZW50LCBJ4oCZZCBsaWtlIHRvIHJl
dGFpbiB0aGUgR01BQyBub2RlcyBpbiAKdjMgdXNpbmcgdGhpcyBzZXR1cCwgYnV0IEnigJlkIGdy
ZWF0bHkgYXBwcmVjaWF0ZSB5b3VyIGFwcHJvdmFsIG9uIHdoZXRoZXIgCnRoZSBnZW5lcmljIFBI
WSBkcml2ZXIgaXMgc3VpdGFibGUgaW4gcmdtaWktcnhpZCBtb2RlIGZvciBub3cuIEnigJltIGVh
Z2VyIAp0byBleHBsb3JlIGEgTWF4aW8tc3BlY2lmaWMgZHJpdmVyIGZvciBtYWlubGluZSBjb21w
YXRpYmlsaXR5IGFuZCB3b3VsZCAKYmUgZ3JhdGVmdWwgZm9yIGFueSBndWlkYW5jZSBvbiBleGlz
dGluZyB1cHN0cmVhbWluZyBlZmZvcnRzIGZvciB0aGlzIFBIWS4KCkJlc3QgcmVnYXJkcywKSm9o
bgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
