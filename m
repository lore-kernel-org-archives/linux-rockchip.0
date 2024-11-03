Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB1B1D10C0E
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Nov 2024 12:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cb+/Zj6iu1OaTriYkW7csuq74n+NtPCXIHfA02I5bz0=; b=P2Ie6lVmVWBEBc
	Lqrx1kklBmgwpeMuLH1cYpecj+MIyzyZdetdQJuYWeHrOQ/SZpeNbthOkcEPShuSZtT/eRMqkQv1t
	YlkC2dD5MTSSuJ7BbTaI0aouhKt/yTN2OXItT3EN9rqeZ7MS9sUM8nBFqmXplFo7FnMpBVRT9A5h2
	LZBP3UBCnciz0KZckrCQmT2olWiZ8Q5pwkbMLVFMGtAj1H9rBoMLWkwvF901CUL+xbzqe3Z/LgBVs
	Sl1IyrKKMt/JhwAoJFFvqNzu8VRSjTRWv02NRWQLWY0c5hUhuwC27HEYwm+982TplWuHd+6icy/ah
	pEdF/afxIelA0nULOsiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7ZJT-0000000BNQw-369V;
	Sun, 03 Nov 2024 12:02:35 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7ZJP-0000000BNQM-3AG4
	for linux-rockchip@lists.infradead.org;
	Sun, 03 Nov 2024 12:02:33 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-71e8235f0b6so2925301b3a.3
        for <linux-rockchip@lists.infradead.org>; Sun, 03 Nov 2024 04:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730635350; x=1731240150; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FUkXMfCkR70Uh4iKdLC2cSNlr1iFRoDLX5iaBLAzooI=;
        b=bkCjnnUSulnLRnP0TCmU3gWUT0nat4u2Z+Y+VWIUfI1b4hd9mpzCH3NeARUBAlibdo
         OqMLkQh/DcETo0K8MmK2zaA08v7GuQ/DOabqAqU2Iwa37BVgJO4x7RRRIODa3S7UDb7U
         Fr2q0Qa2Qz/yy/Nn27mI2UjLzQ0vBqAbpYmKEVexiNmQ/Xl4fs13DFjw9E1mXXdtTuw3
         hooI2sVAIPK1NrOXt1hrjUa3e0sjQhl3cz+wrir4+CBtbxSh1fGN0GI/T5eOlHkuYaYJ
         p2CBCGPsE8adNynq19sxUZR+CSd2uHCL9YHbUZ+nuLeF3hM6p1Ij0R6Cwd2O1R1D6yC+
         +8bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730635350; x=1731240150;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FUkXMfCkR70Uh4iKdLC2cSNlr1iFRoDLX5iaBLAzooI=;
        b=h2I4JPaRG80MHKpB2PBMGDU+1xl4/ftLUtcukDaXc6eqwgwNXGAa2H8IdvIqLj3LTg
         1/Set4iJilQHEu32L5kS76pAZwP0ADvCYUDK1BioXYBuLxaHLuBFqWP5zyv2lrveuVBA
         Tv7boyTDlAgLEePTrIlEYRoKZ8z5UhbZcEPdVtiPK2GyWpaIFQEBO7fh1n1Qv2McqRVN
         qBd81RfE+GT0qotoDQQ/6fYjyHbCdp83A3ge4fMMmbYWFmiIgAcPMVPxxZYNUNMBK250
         fHQAY5BVp3DoEbEktrsVaoMjfo/hZXK5T6CVo/H3GOgmpBdvkFwhOoCfxXOo6QqKqJGI
         RySA==
X-Forwarded-Encrypted: i=1; AJvYcCV41aWEA+gK6vpU9Cz5+IUaPuNEVVaQeA0WN4L8r6JTb059sQnNGoNwbfCQnHHjKN+53LDuxEnVnX9CfK4vCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbrEOUXBUEIcEsmPHKvPDiuAJ+sk9QuD7OwR3sjfLhsbL17VoW
	5fn3NlTCOzzmIUXEgAJ3a/VEkQQsFkmARxZgV3aRBnV6IPFGrTFHinqDlAEkgw==
X-Google-Smtp-Source: AGHT+IG67vE3Hy81Qa1sXK1wXZ0XGN5eh5NVCE1J0d5f1x/U0tyMLbeT3PWIyJgXlJE+GgOJ+sNXFQ==
X-Received: by 2002:a05:6a21:920b:b0:1d9:6ea3:9741 with SMTP id adf61e73a8af0-1db91d440eemr17725699637.4.1730635349968;
        Sun, 03 Nov 2024 04:02:29 -0800 (PST)
Received: from thinkpad ([220.158.156.209])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ee459f8ee9sm5215196a12.72.2024.11.03.04.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Nov 2024 04:02:29 -0800 (PST)
Date: Sun, 3 Nov 2024 17:32:23 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
Message-ID: <20241103120223.abkwgej4svas4epr@thinkpad>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
 <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
 <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
 <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241103_040231_836699_9FEE5E6C 
X-CRM114-Status: GOOD (  43.04  )
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

T24gRnJpLCBPY3QgMTgsIDIwMjQgYXQgMDU6MjA6MDhQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIFVsZiwKPiAKPiDlnKggMjAyNC8xMC8xOCAxNzowNywgVWxmIEhhbnNzb24g5YaZ6YGT
Ogo+ID4gT24gVGh1LCAxMCBPY3QgMjAyNCBhdCAwMzoyMSwgU2hhd24gTGluIDxzaGF3bi5saW5A
cm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4gPiAKPiA+ID4gSGkgVWxmCj4gPiA+IAo+ID4gPiDl
nKggMjAyNC8xMC85IDIxOjE1LCBVbGYgSGFuc3NvbiDlhpnpgZM6Cj4gPiA+ID4gWy4uLl0KPiA+
ID4gPiAKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtzdGF0aWMgaW50IHVmc19yb2NrY2hpcF9ydW50
aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gPiA+ID4gK3sKPiA+ID4gPiA+ICsg
ICAgICAgc3RydWN0IHVmc19oYmEgKmhiYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4gPiA+
ID4gKyAgICAgICBzdHJ1Y3QgdWZzX3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3Zh
cmlhbnQoaGJhKTsKPiA+ID4gPiA+ICsgICAgICAgc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpn
ZW5wZCA9IHBkX3RvX2dlbnBkKGRldi0+cG1fZG9tYWluKTsKPiA+ID4gPiAKPiA+ID4gPiBwZF90
b19nZW5wZCgpIGlzbid0IHNhZmUgdG8gdXNlIGxpa2UgdGhpcy4gSXQncyBzb2xlbHkgdG8gYmUg
dXNlZCBieQo+ID4gPiA+IGdlbnBkIHByb3ZpZGVyIGRyaXZlcnMuCj4gPiA+ID4gCj4gPiA+ID4g
PiArCj4gPiA+ID4gPiArICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShob3N0LT5yZWZfb3V0
X2Nsayk7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAgIC8qCj4gPiA+ID4gPiArICAgICAg
ICAqIFNob3VsZG4ndCBwb3dlciBkb3duIGlmIHJwbV9sdmwgaXMgbGVzcyB0aGFuIGxldmVsIDUu
Cj4gPiA+ID4gCj4gPiA+ID4gQ2FuIHlvdSBlbGFib3JhdGUgb24gd2h5IHdlIG11c3Qgbm90IHBv
d2VyLW9mZiB0aGUgcG93ZXItZG9tYWluIHdoZW4KPiA+ID4gPiBsZXZlbCBpcyBsZXNzIHRoYW4g
NT8KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IEJlY2F1c2UgdWZzaGNkIGRyaXZlciBhc3N1bWUgdGhl
IGNvbnRyb2xsZXIgaXMgYWN0aXZlIGFuZCB0aGUgbGluayBpcyBvbgo+ID4gPiBpZiBsZXZlbCBp
cyBsZXNzIHRoYW4gNS4gU28gdGhlIGRlZmF1bHQgcmVzdW1lIHBvbGljeSB3aWxsIG5vdCB0cnkg
dG8KPiA+ID4gcmVjb3ZlciB0aGUgcmVnaXN0ZXJzIHVudGlsIHRoZSBmaXJzdCBlcnJvciBoYXBw
ZW5lZC4gT3RoZXJ3aXNlIGlmIHRoZQo+ID4gPiBsZXZlbCBpcyA+PTUsIGl0IGFzc3VtZXMgdGhl
IGNvbnRyb2xsZXIgaXMgb2ZmIGFuZCB0aGUgbGluayBpcyBkb3duLAo+ID4gPiB0aGVuIGl0IHdp
bGwgcmVzdG9yZSB0aGUgcmVnaXN0ZXJzIGFuZCBsaW5rLgo+ID4gPiAKPiA+ID4gQW5kIHRoZSBs
ZXZlbCBpcyBjaGFuZ2VhYmxlIHZpYSBzeXNmcy4KPiA+IAo+ID4gT2theSwgdGhhbmtzIGZvciBj
bGFyaWZ5aW5nLgo+ID4gCj4gPiA+IAo+ID4gPiA+IFdoYXQgaGFwcGVucyBpZiB3ZSBwb3dlci1v
ZmYgYW55d2F5IHdoZW4gdGhlIGxldmVsIGlzIGxlc3MgdGhhbiA1Pwo+ID4gPiA+IAo+ID4gPiA+
ID4gKyAgICAgICAgKiBUaGlzIGZsYWcgd2lsbCBiZSBwYXNzZWQgZG93biB0byBwbGF0Zm9ybSBw
b3dlci1kb21haW4gZHJpdmVyCj4gPiA+ID4gPiArICAgICAgICAqIHdoaWNoIGhhcyB0aGUgZmlu
YWwgZGVjaXNpb24uCj4gPiA+ID4gPiArICAgICAgICAqLwo+ID4gPiA+ID4gKyAgICAgICBpZiAo
aGJhLT5ycG1fbHZsIDwgVUZTX1BNX0xWTF81KQo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGdl
bnBkLT5mbGFncyB8PSBHRU5QRF9GTEFHX1JQTV9BTFdBWVNfT047Cj4gPiA+ID4gPiArICAgICAg
IGVsc2UKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBnZW5wZC0+ZmxhZ3MgJj0gfkdFTlBEX0ZM
QUdfUlBNX0FMV0FZU19PTjsKPiA+ID4gPiAKPiA+ID4gPiBUaGUgZ2VucGQtPmZsYWdzIGlzIG5v
dCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGxpa2UgdGhpcyAtIGFuZAo+ID4gPiA+IGVzcGVjaWFs
bHkgbm90IGZyb20gYSBnZW5wZCBjb25zdW1lciBkcml2ZXIuCj4gPiA+ID4gCj4gPiA+ID4gSSBh
bSB0cnlpbmcgdG8gdW5kZXJzdGFuZCBhIGJpdCBtb3JlIG9mIHRoZSB1c2UgY2FzZSBoZXJlLiBM
ZXQncyBzZWUKPiA+ID4gPiBpZiB0aGF0IGhlbHBzIG1lIHRvIHBvdGVudGlhbGx5IHN1Z2dlc3Qg
YW4gYWx0ZXJuYXRpdmUgYXBwcm9hY2guCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBJIHdhcyBub3Qg
ZmFtaWxpYXIgd2l0aCB0aGUgZ2VucGQgcGFydCwgc28gSSBoYXZlbid0IGNvbWUgdXAgd2l0aAo+
ID4gPiBhbm90aGVyIHNvbHV0aW9uLiBJdCB3b3VsZCBiZSBncmVhdCBpZiB5b3UgY2FuIGd1aWRl
IG1lIHRvIHRoZSByaWdodAo+ID4gPiB3YXkuCj4gPiAKPiA+IEkgaGF2ZSBiZWVuIHBsYXlpbmcg
d2l0aCB0aGUgZXhpc3RpbmcgaW5mcmFzdHJ1Y3R1cmUgd2UgaGF2ZSBhdCBoYW5kCj4gPiB0byBz
dXBwb3J0IHRoaXMsIGJ1dCBJIG5lZWQgYSBmZXcgbW9yZSBkYXlzIHRvIGJlIGFibGUgdG8gcHJv
cG9zZQo+ID4gc29tZXRoaW5nIGZvciB5b3UuCj4gPiAKPiAKPiBNdWNoIGFwcHJlY2lhdGUuCj4g
Cj4gPiA+IAo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICByZXR1cm4gdWZzaGNkX3J1bnRp
bWVfc3VzcGVuZChkZXYpOwo+ID4gPiA+ID4gK30KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtzdGF0
aWMgaW50IHVmc19yb2NrY2hpcF9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4g
PiA+ID4gPiArewo+ID4gPiA+ID4gKyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7Cj4gPiA+ID4gPiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9z
dCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4gPiA+ID4gKyAgICAgICBpbnQg
ZXJyOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICBlcnIgPSBjbGtfcHJlcGFyZV9lbmFi
bGUoaG9zdC0+cmVmX291dF9jbGspOwo+ID4gPiA+ID4gKyAgICAgICBpZiAoZXJyKSB7Cj4gPiA+
ID4gPiArICAgICAgICAgICAgICAgZGV2X2VycihoYmEtPmRldiwgImZhaWxlZCB0byBlbmFibGUg
cmVmIG91dCBjbG9jayAlZFxuIiwgZXJyKTsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1
cm4gZXJyOwo+ID4gPiA+ID4gKyAgICAgICB9Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArICAgICAg
IHJlc2V0X2NvbnRyb2xfYXNzZXJ0KGhvc3QtPnJzdCk7Cj4gPiA+ID4gPiArICAgICAgIHVzbGVl
cF9yYW5nZSgxLCAyKTsKPiA+ID4gPiA+ICsgICAgICAgcmVzZXRfY29udHJvbF9kZWFzc2VydCho
b3N0LT5yc3QpOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICByZXR1cm4gdWZzaGNkX3J1
bnRpbWVfcmVzdW1lKGRldik7Cj4gPiA+ID4gPiArfQo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gK3N0
YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3N5c3RlbV9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikK
PiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiArICAgICAgIHN0cnVjdCB1ZnNfaGJhICpoYmEgPSBkZXZf
Z2V0X2RydmRhdGEoZGV2KTsKPiA+ID4gPiA+ICsgICAgICAgc3RydWN0IHVmc19yb2NrY2hpcF9o
b3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7Cj4gPiA+ID4gPiArCj4gPiA+ID4g
PiArICAgICAgIC8qIFBhc3MgZG93biBkZXNpcmVkIHNwbV9sdmwgdG8gRmlybXdhcmUgKi8KPiA+
ID4gPiA+ICsgICAgICAgYXJtX3NtY2NjX3NtYyhST0NLQ0hJUF9TSVBfU1VTUEVORF9NT0RFLCBS
T0NLQ0hJUF9TTEVFUF9QRF9DT05GSUcsCj4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAg
ICBob3N0LT5wZF9pZCwgaGJhLT5zcG1fbHZsIDwgNSA/IDEgOiAwLCAwLCAwLCAwLCAwLCBOVUxM
KTsKPiA+ID4gPiAKPiA+ID4gPiBDYW4geW91IHBsZWFzZSBlbGFib3JhdGUgb24gd2hhdCBnb2Vz
IG9uIGhlcmU/IElzIHRoaXMgdHVybmluZyBvZmYgdGhlCj4gPiA+ID4gcG93ZXItZG9tYWluIHRo
YXQgdGhlIGRldiBpcyBhdHRhY2hlZCB0byAtIG9yIHdoYXQgaXMgYWN0dWFsbHkKPiA+ID4gPiBo
YXBwZW5pbmc/Cj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBUaGlzIHNtYyBjYWxsIGlzIHRyeWluZyB0
byBhc2sgZmlybXdhcmUgbm90IHRvIHR1cm4gb2ZmIHRoZSBwb3dlci1kb21pYW4KPiA+ID4gdGhh
dCB0aGUgVUZTIGlzIGF0dGFjaGVkIHRvIGFuZCBhbHNvIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93
ZXIgb2YgVUZTCj4gPiA+IGNvbm50cm9sbGVyLgo+ID4gCj4gPiBPa2F5LCB0aGFua3MgZm9yIGNs
YXJpZnlpbmchCj4gPiAKPiA+IEEgZm9sbG93IHVwIHF1ZXN0aW9uLCBkb24ndCB5b3UgbmVlZCB0
byBtYWtlIGEgY29ycmVzcG9uZGluZyBzbWMgY2FsbAo+ID4gdG8gaW5mb3JtIHRoZSBGVyB0aGF0
IGl0J3Mgb2theSB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9tYWluIGF0IHNvbWUKPiA+IHBvaW50
Pwo+ID4gCj4gCj4gWWVzLiBFYWNoIHRpbWUgZW50ZXJpbmcgc2xlZXAsIHdlIHRlYWNoIEZXIGlm
IGl0IG5lZWQgdG8gdHVybiBvZmYgb3Iga2VlcAo+IHBvd2VyLWRvbWFpbiwgZm9yIGluc3RhbmNl
ICJoYmEtPnNwbV9sdmwgPCA1ID8gMSA6IDAiICwgMCBtZWFucwo+IG9mZiBhbmQgMSBtZWFucyBv
bi4KPiAKCldlIGhhZCBhIHJlcXVpcmVtZW50IHRvIG5vdGlmeSB0aGUgZ2VucGQgcHJvdmlkZXIg
ZnJvbSBjb25zdW1lciB0byBub3QgdHVybiBvZmYKdGhlIHBvd2VyIGRvbWFpbiBkdXJpbmcgc3lz
dGVtIHN1c3BlbmQuIFNvIFVsZiBjYW1lIHVwIHdpdGggYW4gQVBJIGZvcgpjb25zdW1lcnMsIGRl
dmljZV9zZXRfd2FrZXVwX3BhdGgoKSBzZXR0aW5nIHRoZSAnZGV2LT5wb3dlci53YWtldXBfcGF0
aCcgd2hpY2gKd2lsbCBiZSBob25vcmVkIGJ5IHRoZSBnZW5wZCBjb3JlLiBXaWxsIHRoYXQgd29y
ayBmb3IgeW91PwoKUFM6IFRoZSBBUEkgbmFtaW5nIHN1Z2dlc3RzIHRoYXQgdGhlIGRldmljZSB3
aWxsIGJlIHVzZWQgaW4gd2FrZXVwIHBhdGgsIHdoaWNoCm1heSBub3QgYmUgdHJ1ZSBoZXJlIGJ1
dCB0aGUgZW5kIHJlc3VsdCB3aWxsIGJlIHRoZSBzYW1lLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/
4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
