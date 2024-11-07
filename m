Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAB2ED43372
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 15:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1s3B37kpcWVd5dd70DyhryH6V1Tlp+R+u6aNZgJX3c=; b=YNL70Xoe1hPqp9
	VfKaW46lotJNCAXxYwlk+x+Fnqj1i9j0CNDCpL9kbZv1jVleYsXo/UdtTk8TANTQFNgAffjqL/Cot
	pGiYvcmBbMZbMB36y77FoG/JHjasZtTnprE2do9q25fFvM7BrGmcHYG9nqW52nwm49ZNnpfUUlRfP
	89eitVXmKUl+j0b3uo0T/VF3Hw0qIMTcCLr2bWVt691SeDUF0zbW8rsdT4wtniV/nbAsFP8EmNNek
	oDsxu/GBwBs2XTLPqqujeGVe+xy3sNTtBz9AD/3L1qeRdnpc3LhEb4UZYoFWsNfbk7HJ3chB+cdYl
	FN6d26pqSYnYtkP8jkYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t94gH-00000007TYr-1cBV;
	Thu, 07 Nov 2024 15:44:21 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t94ew-00000007TRm-2peq
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Nov 2024 15:43:00 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3807dd08cfcso992573f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Nov 2024 07:42:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730994176; x=1731598976; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YobGRMTq6r2m1GLqKYMeMjlD+pYxCKxFlYRpMg1uhDo=;
        b=bWBrEksVAmgqTwdqS4gIG7p9Xl57twaqMPydWuQC5DTUD/mR6X0KZrq6+ANgRZjcGJ
         Zr7Sz911xAwENMKRaGrPAwEdT48rq8fMKSKqdPFGh3x/QF1kc9U84kdqy6psWdIOWQNr
         Pm/2Ex2vVIdwZ6f42c4pf4MTxHNtGWZYI2wEXgflZEWDvWdZRTs/WvInAaHGtA4x8vAL
         bEu9NEX2kLnXS7rJ+r1d5oN8Tn6JzZbxFatmpyBrQRh77zO5h9aZskODNs7UyflijaDS
         n2WWo+JQFI/WEzatUPO395NTlyuQxv4K3qRV428U/DowS3A001K0mLgkSA+W6vMebdki
         wDiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730994176; x=1731598976;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YobGRMTq6r2m1GLqKYMeMjlD+pYxCKxFlYRpMg1uhDo=;
        b=jzVrHek13JRn7e4rwuMFFhyEpR0LIsmxVQvFq7YiFvBOw4G1q/Z6DYsJ2i0jUJr8Fx
         VBIM9c/2UepjVptlvqpUpKrQ2g2cABzPSy53czkkwWXoCzlFbRMt+ZyoqrPsBELS8cdh
         HWA13LBq2r/MLhylnSI1f0g0ArFPI+EH7ky9KGRUYBzKfksAgQ/+GOJL7/rIrZEKxx9A
         Uyt2E4ByX9lIL4RkUYu6RiBZDpoNOOKba0R+nMMRYcAxriO2yidG13OTBOj2iijDb869
         KPhexLwKTXLSyQrgd5IbDaD04jdjFYZ2lkRuZ8JTJM+cgpDyXMFSZwqHFsCDOCVo0rYq
         tKtA==
X-Forwarded-Encrypted: i=1; AJvYcCWzTpGYooDX53VQjBCWtxyMq2PnJoZajN8TL2C4DHaAyhpFdMxUru14xjuyEvwtk4lBi1moE5cM9bOHhSWxkw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxV/Xp3JSKxypL+2xi3qc9j13T3sxsKq/ijRy/QxFfB+4ZBK7+Z
	LQRE184LxMImh/w0ofbF4iSgYV7ymVz1vudEPZ9pY/6+Y/G35RkzQv/nAa7Cfw==
X-Google-Smtp-Source: AGHT+IFCgk8JSit4kcsOrIG5RALXryrUw/ReDwKvQwa/P1qPxT2aNSJYDBHM8/WH1Pr9qfT9F1GZig==
X-Received: by 2002:a5d:64c5:0:b0:37d:4c40:699 with SMTP id ffacd0b85a97d-381c7a467admr27117943f8f.5.1730994176383;
        Thu, 07 Nov 2024 07:42:56 -0800 (PST)
Received: from thinkpad ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381eda0ed16sm2021217f8f.107.2024.11.07.07.42.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2024 07:42:55 -0800 (PST)
Date: Thu, 7 Nov 2024 15:42:54 +0000
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
Message-ID: <20241107154254.bpuqspdrymyg3qsa@thinkpad>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1730705521-23081-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_074258_768456_030DCEF0 
X-CRM114-Status: GOOD (  21.30  )
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

T24gTW9uLCBOb3YgMDQsIDIwMjQgYXQgMDM6MzE6NTZQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IERvY3VtZW50IFJvY2tjaGlwIFVGUyBob3N0IGNvbnRyb2xsZXIgZm9yIFJLMzU3NiBTb0Mu
Cj4gCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2Nr
LWNoaXBzLmNvbT4KPiAtLS0KPiAKPiBDaGFuZ2VzIGluIHY0Ogo+IC0gcHJvcGVybHkgZGVzY3Jp
YmUgcmVzZXQtZ3Bpb3MKPiAKPiBDaGFuZ2VzIGluIHYzOgo+IC0gcmVuYW1lIHRoZSBmaWxlIHRv
IHJvY2tjaGlwLHJrMzU3Ni11ZnNoYy55YW1sCj4gLSBhZGQgZGVzY3JpcHRpb24gZm9yIHJlc2V0
LWdwaW9zCj4gLSB1c2Ugcm9ja2NoaXAscmszNTc2LXVmc2hjIGFzIGNvbXBhdGlibGUKPiAKPiBD
aGFuZ2VzIGluIHYyOgo+IC0gcmVuYW1lIHRoZSBmaWxlCj4gLSBhZGQgcmVzZXQtZ3Bpb3MKPiAK
PiAgLi4uL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzaGMueWFtbCAgICAgICAgfCAx
MDUgKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMDUgaW5zZXJ0aW9u
cygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzaGMueWFtbAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3JvY2tjaGlwLHJrMzU3Ni11ZnNoYy55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1
NzYtdWZzaGMueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uYmM0
YzNkZQo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdWZzL3JvY2tjaGlwLHJrMzU3Ni11ZnNoYy55YW1sCj4gQEAgLTAsMCArMSwxMDUgQEAK
PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1
c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2No
ZW1hcy91ZnMvcm9ja2NoaXAscmszNTc2LXVmc2hjLnlhbWwjCj4gKyRzY2hlbWE6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9tZXRhLXNjaGVtYXMvY29yZS55YW1sIwo+ICsKPiArdGl0bGU6IFJvY2tj
aGlwIFVGUyBIb3N0IENvbnRyb2xsZXIKPiArCj4gK21haW50YWluZXJzOgo+ICsgIC0gU2hhd24g
TGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gKwo+ICthbGxPZjoKPiArICAtICRyZWY6
IHVmcy1jb21tb24ueWFtbAo+ICsKPiArcHJvcGVydGllczoKPiArICBjb21wYXRpYmxlOgo+ICsg
ICAgY29uc3Q6IHJvY2tjaGlwLHJrMzU3Ni11ZnNoYwo+ICsKPiArICByZWc6Cj4gKyAgICBtYXhJ
dGVtczogNQo+ICsKPiArICByZWctbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25z
dDogaGNpCj4gKyAgICAgIC0gY29uc3Q6IG1waHkKPiArICAgICAgLSBjb25zdDogaGNpX2dyZgo+
ICsgICAgICAtIGNvbnN0OiBtcGh5X2dyZgo+ICsgICAgICAtIGNvbnN0OiBoY2lfYXBiCj4gKwo+
ICsgIGNsb2NrczoKPiArICAgIG1heEl0ZW1zOiA0Cj4gKwo+ICsgIGNsb2NrLW5hbWVzOgo+ICsg
ICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGNvcmUKPiArICAgICAgLSBjb25zdDogcGNsawo+
ICsgICAgICAtIGNvbnN0OiBwY2xrX21waHkKPiArICAgICAgLSBjb25zdDogcmVmX291dAo+ICsK
PiArICBwb3dlci1kb21haW5zOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgcmVzZXRzOgo+
ICsgICAgbWF4SXRlbXM6IDQKPiArCj4gKyAgcmVzZXQtbmFtZXM6Cj4gKyAgICBpdGVtczoKPiAr
ICAgICAgLSBjb25zdDogYml1Cj4gKyAgICAgIC0gY29uc3Q6IHN5cwo+ICsgICAgICAtIGNvbnN0
OiB1ZnMKPiArICAgICAgLSBjb25zdDogZ3JmCj4gKwo+ICsgIHJlc2V0LWdwaW9zOgo+ICsgICAg
bWF4SXRlbXM6IDEKPiArICAgIGRlc2NyaXB0aW9uOiB8Cj4gKyAgICAgIEdQSU8gc3BlY2lmaWVy
cyBmb3IgaG9zdCB0byByZXNldCB0aGUgd2hvbGUgVUZTIGRldmljZSBpbmNsdWRpbmcgUEhZIGFu
ZAo+ICsgICAgICBtZW1vcnkuIFRoaXMgZ3BpbyBpcyBhY3RpdmUgbG93IGFuZCBzaG91bGQgY2hv
b3NlIHRoZSBvbmUgd2hvc2UgaGlnaCBvdXRwdXQKPiArICAgICAgdm9sdGFnZSBpcyBsb3dlciB0
aGFuIDEuNVYgYmFzZWQgb24gdGhlIFVGUyBzcGVjLgo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSBj
b21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIHJlZy1uYW1lcwo+ICsgIC0gY2xvY2tzCj4gKyAg
LSBjbG9jay1uYW1lcwo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gcG93ZXItZG9tYWlucwo+ICsg
IC0gcmVzZXRzCj4gKyAgLSByZXNldC1uYW1lcwo+ICsgIC0gcmVzZXQtZ3Bpb3MKPiArCj4gK3Vu
ZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsg
ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU3Ni1jcnUuaD4KPiAr
ICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxyazM1NzYtY3J1Lmg+Cj4g
KyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5o
Pgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2VyL3JvY2tjaGlwLHJrMzU3Ni1wb3dl
ci5oPgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAuaD4KPiAr
ICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KPiArCj4gKyAgICBzb2Mgewo+
ICsgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+ICsgICAgICAgICNzaXplLWNlbGxzID0g
PDI+Owo+ICsKPiArICAgICAgICB1ZnM6IHVmc0AyYTJkMDAwMCB7CgpDb3VsZCB5b3UgcGxlYXNl
IHVzZSAndWZzaGMnIGFzIHRoZSBub2RlIG5hbWUgYXMgZG9jdW1lbnRlZCBpbiB0aGUgZGV2aWNl
dHJlZQpzcGVjPwoKLSBNYW5pCgo+ICsgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszNTc2LXVmc2hjIjsKPiArICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4MmEyZDAwMDAg
MHgwIDB4MTAwMDA+LAo+ICsgICAgICAgICAgICAgICAgICAgIDwweDAgMHgyYjA0MDAwMCAweDAg
MHgxMDAwMD4sCj4gKyAgICAgICAgICAgICAgICAgICAgPDB4MCAweDI2MDFmMDAwIDB4MCAweDEw
MDA+LAo+ICsgICAgICAgICAgICAgICAgICAgIDwweDAgMHgyNjAzYzAwMCAweDAgMHgxMDAwPiwK
PiArICAgICAgICAgICAgICAgICAgICA8MHgwIDB4MmEyZTAwMDAgMHgwIDB4MTAwMDA+Owo+ICsg
ICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJoY2kiLCAibXBoeSIsICJoY2lfZ3JmIiwgIm1waHlf
Z3JmIiwgImhjaV9hcGIiOwo+ICsgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtfVUZT
X1NZUz4sIDwmY3J1IFBDTEtfVVNCX1JPT1Q+LCA8JmNydSBQQ0xLX01QSFk+LAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgPCZjcnUgQ0xLX1JFRl9VRlNfQ0xLT1VUPjsKPiArICAgICAgICAgICAg
ICBjbG9jay1uYW1lcyA9ICJjb3JlIiwgInBjbGsiLCAicGNsa19tcGh5IiwgInJlZl9vdXQiOwo+
ICsgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAzNjEgSVJRX1RZUEVfTEVWRUxf
SElHSD47Cj4gKyAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTc2X1BE
X1VTQj47Cj4gKyAgICAgICAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9BX1VGU19CSVU+LCA8
JmNydSBTUlNUX0FfVUZTX1NZUz4sIDwmY3J1IFNSU1RfQV9VRlM+LAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICA8JmNydSBTUlNUX1BfVUZTX0dSRj47Cj4gKyAgICAgICAgICAgICAgcmVzZXQt
bmFtZXMgPSAiYml1IiwgInN5cyIsICJ1ZnMiLCAiZ3JmIjsKPiArICAgICAgICAgICAgICByZXNl
dC1ncGlvcyA9IDwmZ3BpbzQgUktfUEQwIEdQSU9fQUNUSVZFX0xPVz47Cj4gKyAgICAgICAgfTsK
PiArICAgIH07Cj4gLS0gCj4gMi43LjQKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
