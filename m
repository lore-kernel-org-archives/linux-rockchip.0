Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7118C021A1
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LheFTw7Ldp4D8vxLDqEznBq1pD1RbV+xgLhWCeLoDUI=; b=FMjE6HjiWxPyV7
	VcoO8/eOtS6E87t8/xkPyWtNhB5aNosbkVyq4J1Xc6tHMcxISZuLFNyRX1iVfdT6qFKm4eRfW846e
	hO5lSZ9STr+6ywkTSU/65unLDCA6UazMKyYN8LC9SZyY1BwRfjhdxZYHHlibRnSGzbv3bBiHGhBUI
	PlM4eTxaP4BGjXoU6TamReE6hDt8Qt2EtFQxEILYdwEhcoEj2eC7MRlZW6nxA9bShJjg4GBRJi4jN
	pQcvHAeeWu6eh1jpRpC8FScRkbOWkyFdF208ihKcIkz8ZrJuotuaBmzIHEdxiBBTiEAobTSkZG4on
	O/+G7g5dVBl7CHP2Xnyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thkTF-00000002nes-18sB;
	Tue, 11 Feb 2025 07:14:13 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thkTC-00000002neC-3DXR
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Feb 2025 07:14:12 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-21f4af4f9ddso59262225ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Feb 2025 23:14:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739258050; x=1739862850; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jjaa+HXjrGwq5PRHUao/HX53fhsDrtRqn5yZMM90oN0=;
        b=UGDQAxw841liz4GhGmn3qPY/s3Htsoy/X908BKVYaj63WDUPC6MqxfnnsO0T4Oj/QR
         uYF0ihgGccRw0XxVc7qgnjQ99syLfVd4AnVge5WNmfkRonxmixZ7hWVphjlurh+bmSQd
         3ms8cw4srCzB1+bVEqwDlvQl6FKTYB4pBPHG7zU+UwB1LmYXPxQM4k4rRGoHF5iWTyeH
         akc68KPiqaXeF8RpqECeQWv2D0ajLBL1w/+moaEGBrYjshl122mcrlOYwc5yEUsc8KsI
         pRitwD7EGz7WKvN6AvPcuXD/PQLaFdoFTx/IqtoW2Z2C5nEpNJb6SEwQaJg9aflng6Wd
         07Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739258050; x=1739862850;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjaa+HXjrGwq5PRHUao/HX53fhsDrtRqn5yZMM90oN0=;
        b=vD4J44JuzoktTDXvn1D4wz9KwY02z8ffWykj1eN+slRNN+s5I3vuA/lP2wVxegeKwY
         0iMW0SQmS5+Vo++YgMyglGOaPVO3CH/UQfxv9eqoizL3BUjTwbt7lEfG0zc+kMO4KALo
         UkC/XDEDNyNPC0gVOLlJMy/473WXtuacemEuO2FqiiQ8imCSl6NG92zM1OPogAReWcyt
         Ft2n0hDz9e5L7hlWcaHnDq3mQhWuTUPe8pUsgUkh+AkEyBJg4mMZP5KXNBKYBCm/V3U1
         nPdPNzpLd0Z6zmPA+56gIuVY7cqPO2bU+SQ5ZIZeFi8sZ/fiPGYQinNiOpMuV1PKlEDa
         agVg==
X-Forwarded-Encrypted: i=1; AJvYcCWnrMIrhK2dz2MP9FokvhA0dTis9R3+r4XFwts0X09pk5U5P6uBMjclewLA+yzu+0pXfCFtF2EhSM5qLvtlkA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzA07gDQzfcgTi5/6856eE/7Yz2VN0MKKpxiMwWb9QuU2wjkZHY
	UUb5ljFtuqaMDWQ/kwh5lGaJwXEjoC4C5Nud7nId+Ke83Ids8gYNvw5DVwSEYg==
X-Gm-Gg: ASbGncu3aTY9+8ONQhHgT0AG1n/5ki9m++GD287WvXDNUiPXvGnvNpJKAUc9L+7lxcS
	QoZT8gc9ShvOplJ6CNzQKxcPQ7taX7+ge665vpmEKVbQHCG9C1n1nNRdJJH2nAY9POI8NtgBgA4
	+7Y10+jhXG6TMmxGEUDHmW/0sM8hlfUg6mjyUUiuQAVY/kAoo/k9T58mddgRJAJdQjkr29btwwv
	nKby7PRYRW/d2NIk4WdXlitY8HHmuOwGylY6DcW1HTucdBiJScLa/mRQzAoh4aw3SNBDLRgei6O
	+UFuGO0qxddSznKkPQ/ZgdO9Yg==
X-Google-Smtp-Source: AGHT+IFYkM6g1TIlBuXKoU06Jn1k0JzKJXCx5+DC8hZQsvZBv5O/+Jn6hYd8RLMSbBKiGvO2UlS/hA==
X-Received: by 2002:a17:903:947:b0:21b:d2b6:ca7f with SMTP id d9443c01a7336-21f4e75a0aamr282532585ad.32.1739258049757;
        Mon, 10 Feb 2025 23:14:09 -0800 (PST)
Received: from thinkpad ([36.255.17.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f7516a0cbsm50836975ad.247.2025.02.10.23.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 23:14:09 -0800 (PST)
Date: Tue, 11 Feb 2025 12:44:01 +0530
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
Subject: Re: [PATCH v7 1/7] dt-bindings: ufs: Document Rockchip UFS host
 controller
Message-ID: <20250211071401.ozup56f6pjuzpawl@thinkpad>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <1738736156-119203-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1738736156-119203-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_231410_823501_7D3B70EE 
X-CRM114-Status: GOOD (  22.52  )
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

T24gV2VkLCBGZWIgMDUsIDIwMjUgYXQgMDI6MTU6NTBQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IERvY3VtZW50IFJvY2tjaGlwIFVGUyBob3N0IGNvbnRyb2xsZXIgZm9yIFJLMzU3NiBTb0Mu
Cj4gCj4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dz
a2lAbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2Nr
LWNoaXBzLmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4u
c2FkaGFzaXZhbUBsaW5hcm8ub3JnPgoKLSBNYW5pCgo+IC0tLQo+IAo+IENoYW5nZXMgaW4gdjc6
IE5vbmUKPiBDaGFuZ2VzIGluIHY2Ogo+IC0gZml4IGluZGVudGF0aW9uIHRvIDQgc3BhY2VzIHN1
Z2dlc3RlZCBieSBLcnp5c3p0b2YKPiAKPiBDaGFuZ2VzIGluIHY1Ogo+IC0gdXNlIHVmc2hjIGZv
ciBkZXZpY2V0cmVlIGV4YW1wbGUgc3VnZ2VzdGVkIGJ5IE1hbmkKPiAKPiBDaGFuZ2VzIGluIHY0
Ogo+IC0gcHJvcGVybHkgZGVzY3JpYmUgcmVzZXQtZ3Bpb3MKPiAKPiBDaGFuZ2VzIGluIHYzOgo+
IC0gcmVuYW1lIHRoZSBmaWxlIHRvIHJvY2tjaGlwLHJrMzU3Ni11ZnNoYy55YW1sCj4gLSBhZGQg
ZGVzY3JpcHRpb24gZm9yIHJlc2V0LWdwaW9zCj4gLSB1c2Ugcm9ja2NoaXAscmszNTc2LXVmc2hj
IGFzIGNvbXBhdGlibGUKPiAKPiBDaGFuZ2VzIGluIHYyOgo+IC0gcmVuYW1lIHRoZSBmaWxlCj4g
LSBhZGQgcmVzZXQtZ3Bpb3MKPiAKPiAgLi4uL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYt
dWZzaGMueWFtbCAgICAgICAgfCAxMDUgKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCAxMDUgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzaGMueWFtbAo+
IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdWZzL3Jv
Y2tjaGlwLHJrMzU3Ni11ZnNoYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzaGMueWFtbAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0
Cj4gaW5kZXggMDAwMDAwMC4uYzdkMTdjZjQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Vmcy9yb2NrY2hpcCxyazM1NzYtdWZzaGMueWFt
bAo+IEBAIC0wLDAgKzEsMTA1IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChHUEwt
Mi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0
cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvdWZzL3JvY2tjaGlwLHJrMzU3Ni11ZnNoYy55YW1s
Iwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFt
bCMKPiArCj4gK3RpdGxlOiBSb2NrY2hpcCBVRlMgSG9zdCBDb250cm9sbGVyCj4gKwo+ICttYWlu
dGFpbmVyczoKPiArICAtIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ICsK
PiArYWxsT2Y6Cj4gKyAgLSAkcmVmOiB1ZnMtY29tbW9uLnlhbWwKPiArCj4gK3Byb3BlcnRpZXM6
Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGNvbnN0OiByb2NrY2hpcCxyazM1NzYtdWZzaGMKPiAr
Cj4gKyAgcmVnOgo+ICsgICAgbWF4SXRlbXM6IDUKPiArCj4gKyAgcmVnLW5hbWVzOgo+ICsgICAg
aXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGhjaQo+ICsgICAgICAtIGNvbnN0OiBtcGh5Cj4gKyAg
ICAgIC0gY29uc3Q6IGhjaV9ncmYKPiArICAgICAgLSBjb25zdDogbXBoeV9ncmYKPiArICAgICAg
LSBjb25zdDogaGNpX2FwYgo+ICsKPiArICBjbG9ja3M6Cj4gKyAgICBtYXhJdGVtczogNAo+ICsK
PiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBjb3JlCj4g
KyAgICAgIC0gY29uc3Q6IHBjbGsKPiArICAgICAgLSBjb25zdDogcGNsa19tcGh5Cj4gKyAgICAg
IC0gY29uc3Q6IHJlZl9vdXQKPiArCj4gKyAgcG93ZXItZG9tYWluczoKPiArICAgIG1heEl0ZW1z
OiAxCj4gKwo+ICsgIHJlc2V0czoKPiArICAgIG1heEl0ZW1zOiA0Cj4gKwo+ICsgIHJlc2V0LW5h
bWVzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gY29uc3Q6IGJpdQo+ICsgICAgICAtIGNvbnN0
OiBzeXMKPiArICAgICAgLSBjb25zdDogdWZzCj4gKyAgICAgIC0gY29uc3Q6IGdyZgo+ICsKPiAr
ICByZXNldC1ncGlvczoKPiArICAgIG1heEl0ZW1zOiAxCj4gKyAgICBkZXNjcmlwdGlvbjogfAo+
ICsgICAgICBHUElPIHNwZWNpZmllcnMgZm9yIGhvc3QgdG8gcmVzZXQgdGhlIHdob2xlIFVGUyBk
ZXZpY2UgaW5jbHVkaW5nIFBIWSBhbmQKPiArICAgICAgbWVtb3J5LiBUaGlzIGdwaW8gaXMgYWN0
aXZlIGxvdyBhbmQgc2hvdWxkIGNob29zZSB0aGUgb25lIHdob3NlIGhpZ2ggb3V0cHV0Cj4gKyAg
ICAgIHZvbHRhZ2UgaXMgbG93ZXIgdGhhbiAxLjVWIGJhc2VkIG9uIHRoZSBVRlMgc3BlYy4KPiAr
Cj4gK3JlcXVpcmVkOgo+ICsgIC0gY29tcGF0aWJsZQo+ICsgIC0gcmVnCj4gKyAgLSByZWctbmFt
ZXMKPiArICAtIGNsb2Nrcwo+ICsgIC0gY2xvY2stbmFtZXMKPiArICAtIGludGVycnVwdHMKPiAr
ICAtIHBvd2VyLWRvbWFpbnMKPiArICAtIHJlc2V0cwo+ICsgIC0gcmVzZXQtbmFtZXMKPiArICAt
IHJlc2V0LWdwaW9zCj4gKwo+ICt1bmV2YWx1YXRlZFByb3BlcnRpZXM6IGZhbHNlCj4gKwo+ICtl
eGFtcGxlczoKPiArICAtIHwKPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9jbG9jay9yb2Nr
Y2hpcCxyazM1NzYtY3J1Lmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvcm9j
a2NoaXAscmszNTc2LWNydS5oPgo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVw
dC1jb250cm9sbGVyL2FybS1naWMuaD4KPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9wb3dl
ci9yb2NrY2hpcCxyazM1NzYtcG93ZXIuaD4KPiArICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9w
aW5jdHJsL3JvY2tjaGlwLmg+Cj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlv
Lmg+Cj4gKwo+ICsgICAgc29jIHsKPiArICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwyPjsKPiAr
ICAgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsKPiArCj4gKyAgICAgICAgdWZzaGM6IHVmc2hjQDJh
MmQwMDAwIHsKPiArICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NzYtdWZz
aGMiOwo+ICsgICAgICAgICAgICByZWcgPSA8MHgwIDB4MmEyZDAwMDAgMHgwIDB4MTAwMDA+LAo+
ICsgICAgICAgICAgICAgICAgICA8MHgwIDB4MmIwNDAwMDAgMHgwIDB4MTAwMDA+LAo+ICsgICAg
ICAgICAgICAgICAgICA8MHgwIDB4MjYwMWYwMDAgMHgwIDB4MTAwMD4sCj4gKyAgICAgICAgICAg
ICAgICAgIDwweDAgMHgyNjAzYzAwMCAweDAgMHgxMDAwPiwKPiArICAgICAgICAgICAgICAgICAg
PDB4MCAweDJhMmUwMDAwIDB4MCAweDEwMDAwPjsKPiArICAgICAgICAgICAgcmVnLW5hbWVzID0g
ImhjaSIsICJtcGh5IiwgImhjaV9ncmYiLCAibXBoeV9ncmYiLCAiaGNpX2FwYiI7Cj4gKyAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY3J1IEFDTEtfVUZTX1NZUz4sIDwmY3J1IFBDTEtfVVNCX1JPT1Q+
LCA8JmNydSBQQ0xLX01QSFk+LAo+ICsgICAgICAgICAgICAgICAgICAgICA8JmNydSBDTEtfUkVG
X1VGU19DTEtPVVQ+Owo+ICsgICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJjb3JlIiwgInBjbGsi
LCAicGNsa19tcGh5IiwgInJlZl9vdXQiOwo+ICsgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMzYxIElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgICAgICAgICBwb3dlci1kb21h
aW5zID0gPCZwb3dlciBSSzM1NzZfUERfVVNCPjsKPiArICAgICAgICAgICAgcmVzZXRzID0gPCZj
cnUgU1JTVF9BX1VGU19CSVU+LCA8JmNydSBTUlNUX0FfVUZTX1NZUz4sIDwmY3J1IFNSU1RfQV9V
RlM+LAo+ICsgICAgICAgICAgICAgICAgICAgICA8JmNydSBTUlNUX1BfVUZTX0dSRj47Cj4gKyAg
ICAgICAgICAgIHJlc2V0LW5hbWVzID0gImJpdSIsICJzeXMiLCAidWZzIiwgImdyZiI7Cj4gKyAg
ICAgICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QRDAgR1BJT19BQ1RJVkVfTE9XPjsK
PiArICAgICAgICB9Owo+ICsgICAgfTsKPiAtLSAKPiAyLjcuNAo+IAoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
