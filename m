Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62704D132A2
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 10:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDPmgnfGX+zuHK18W7bbz52oguWTRIpU68uU6saxR2k=; b=rY5CdNglvRN/Ug
	AR3kSeHRZkI2ZW5DhIhQr8vxFiKtFE9RKklresZaYiJqpgpKLv3kekcxJcfA8umZvIGopp9S3XniZ
	hhlO6ZtTnnj8/wH/Z91C9T2cmlRyd2A1hnpAPI2gWGMXEBqkET0NWyiNQAmzyiJFYtNZ942bXkIlT
	hQ6exqE84Zia3q7OrMEUpxKnfnCLocuS1Fg4YyOtN2lDmcRLRhASLgOVFGac9gmDD7QHy7mrwxuwf
	6GKHhC05vO0N6pIEWPCft1uxdBJ2XYeEInKvGvdIGz61KnYq5GbeaoQPWY21IvyQYG9/6aVRt9pCK
	oap6nTFerqQsdAGAnkFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7tzq-0000000DG4s-43cK;
	Mon, 04 Nov 2024 10:07:42 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7tl0-0000000DDqM-2Wca
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Nov 2024 09:52:24 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-6ea7c26e195so17959797b3.0
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Nov 2024 01:52:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730713941; x=1731318741; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybC/g10HAfyDHcrJc6E2zJthZS9rSbdAKDgt4jSd7Jg=;
        b=DDFu1iBsl+TddvVV/ERNUuJiwSdWt7y+1FyaKhGbIg8YWQ9TUlnlMS+RUbmknojx4O
         b9VoDDdSIshF9p2qT27GNaqJWAmHPuFsJ57z1/QPwuf1ur82cz6sTBzszLZnR94Vk1Dh
         mhLjweuE62TIkjc/RJILL5Yhy58tMC79a5sjeDTjCSDgRW1hKLHOx00LW9CrkmGhT7MF
         pD8OKKkLXSFC+Wd3evgqxasTlNEON/Y4S77cKSdOPJshYeYQX0Qud1FKz+3CGy4pAWSv
         ii8z78MenZ5wqqbCt2DERcah2PjVC56w7gqlRBUyrnPyo/AwJAkra3BOYKl03PkGG+d4
         RtYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730713941; x=1731318741;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ybC/g10HAfyDHcrJc6E2zJthZS9rSbdAKDgt4jSd7Jg=;
        b=PZ7B82HCkps6HHSxocQj/gPZ/JL8wFo879Gx/fLCpYMcFQBmELDXKPzrB+OfNcO0iM
         +bzEN6GkizpIMOKEHwaCQj8BylLeT8o6WDEqwEeeMjvZ2I+/9Tkl2lwS+gAsgypjBjau
         vl2bOAKoY8lCwCnFTV4b5RnVO32FSX7i3BbpehL7/3hHKxw4sxpnyoW04QgcC0IO6OW/
         iDu32tJajUD1mqrBk/xh6Uey/JTIwt5xsDpXg4+pqnoJXq3pRsK8+CToCz7LbOeJ9AaJ
         Ac+wRC2/tKYVE3XqnsjbI01XtOLI7MemSAgaUveKhtEMi1OIlLeNvv+xTBWrcehmoEa9
         mGKg==
X-Forwarded-Encrypted: i=1; AJvYcCUfxUc+WOx9oe+BuYcX34QSLoGvLONH5g6KaQJ5hKJp7t/lfeFdY85cF9b6uvwNh4PC/9dfEV4EuxMGxfZSfQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzClqoWI4Yx+ppEcUGQ61fhnMLjjWtXphisFsPB4kHEykqXH4AP
	2weZU3kkeG9VJY2ebWN8Y8yNRgcjaXq/SWel0kFb/F43G/AbylmtiXnUSUpG5WRdRgAP9AfWPXw
	5fwHqllTYiZ8dMoejqaNv59UEuqf1htKLXWb1pw==
X-Google-Smtp-Source: AGHT+IHSdMtnJp6l1SJWZqQt26XqnUQYugn+OdEkAPVBspbyRD2J5UPJxL4Tzt211JmThaoRmsKPftiBRc61oMrL7aQ=
X-Received: by 2002:a0d:e341:0:b0:6ea:6e90:7e3e with SMTP id
 00721157ae682-6ea6e9085cemr56164317b3.14.1730713940978; Mon, 04 Nov 2024
 01:52:20 -0800 (PST)
MIME-Version: 1.0
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
 <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com> <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
 <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com> <20241103120223.abkwgej4svas4epr@thinkpad>
 <6f3f2d17-4ca2-44ad-b8df-72986d4b3174@rock-chips.com>
In-Reply-To: <6f3f2d17-4ca2-44ad-b8df-72986d4b3174@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 4 Nov 2024 10:51:45 +0100
Message-ID: <CAPDyKFqMuFMf0+2+mPZaGGtBRfavg0LTkhbrCeqh7kHeqq-yZQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>, 
	Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, 
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_015222_691316_8F287E53 
X-CRM114-Status: GOOD (  36.16  )
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

T24gTW9uLCA0IE5vdiAyMDI0IGF0IDA3OjM4LCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNo
aXBzLmNvbT4gd3JvdGU6Cj4KPiDlnKggMjAyNC8xMS8zIDIwOjAyLCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0g5YaZ6YGTOgo+ID4gT24gRnJpLCBPY3QgMTgsIDIwMjQgYXQgMDU6MjA6MDhQTSArMDgw
MCwgU2hhd24gTGluIHdyb3RlOgo+ID4+IEhpIFVsZiwKPiA+Pgo+ID4+IOWcqCAyMDI0LzEwLzE4
IDE3OjA3LCBVbGYgSGFuc3NvbiDlhpnpgZM6Cj4gPj4+IE9uIFRodSwgMTAgT2N0IDIwMjQgYXQg
MDM6MjEsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+Pj4+
Cj4gPj4+PiBIaSBVbGYKPiA+Pj4+Cj4gPj4+PiDlnKggMjAyNC8xMC85IDIxOjE1LCBVbGYgSGFu
c3NvbiDlhpnpgZM6Cj4gPj4+Pj4gWy4uLl0KPiA+Pj4+Pgo+ID4+Pj4+PiArCj4gPj4+Pj4+ICtz
dGF0aWMgaW50IHVmc19yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2
KQo+ID4+Pj4+PiArewo+ID4+Pj4+PiArICAgICAgIHN0cnVjdCB1ZnNfaGJhICpoYmEgPSBkZXZf
Z2V0X2RydmRhdGEoZGV2KTsKPiA+Pj4+Pj4gKyAgICAgICBzdHJ1Y3QgdWZzX3JvY2tjaGlwX2hv
c3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3ZhcmlhbnQoaGJhKTsKPiA+Pj4+Pj4gKyAgICAgICBzdHJ1
Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkID0gcGRfdG9fZ2VucGQoZGV2LT5wbV9kb21haW4p
Owo+ID4+Pj4+Cj4gPj4+Pj4gcGRfdG9fZ2VucGQoKSBpc24ndCBzYWZlIHRvIHVzZSBsaWtlIHRo
aXMuIEl0J3Mgc29sZWx5IHRvIGJlIHVzZWQgYnkKPiA+Pj4+PiBnZW5wZCBwcm92aWRlciBkcml2
ZXJzLgo+ID4+Pj4+Cj4gPj4+Pj4+ICsKPiA+Pj4+Pj4gKyAgICAgICBjbGtfZGlzYWJsZV91bnBy
ZXBhcmUoaG9zdC0+cmVmX291dF9jbGspOwo+ID4+Pj4+PiArCj4gPj4+Pj4+ICsgICAgICAgLyoK
PiA+Pj4+Pj4gKyAgICAgICAgKiBTaG91bGRuJ3QgcG93ZXIgZG93biBpZiBycG1fbHZsIGlzIGxl
c3MgdGhhbiBsZXZlbCA1Lgo+ID4+Pj4+Cj4gPj4+Pj4gQ2FuIHlvdSBlbGFib3JhdGUgb24gd2h5
IHdlIG11c3Qgbm90IHBvd2VyLW9mZiB0aGUgcG93ZXItZG9tYWluIHdoZW4KPiA+Pj4+PiBsZXZl
bCBpcyBsZXNzIHRoYW4gNT8KPiA+Pj4+Pgo+ID4+Pj4KPiA+Pj4+IEJlY2F1c2UgdWZzaGNkIGRy
aXZlciBhc3N1bWUgdGhlIGNvbnRyb2xsZXIgaXMgYWN0aXZlIGFuZCB0aGUgbGluayBpcyBvbgo+
ID4+Pj4gaWYgbGV2ZWwgaXMgbGVzcyB0aGFuIDUuIFNvIHRoZSBkZWZhdWx0IHJlc3VtZSBwb2xp
Y3kgd2lsbCBub3QgdHJ5IHRvCj4gPj4+PiByZWNvdmVyIHRoZSByZWdpc3RlcnMgdW50aWwgdGhl
IGZpcnN0IGVycm9yIGhhcHBlbmVkLiBPdGhlcndpc2UgaWYgdGhlCj4gPj4+PiBsZXZlbCBpcyA+
PTUsIGl0IGFzc3VtZXMgdGhlIGNvbnRyb2xsZXIgaXMgb2ZmIGFuZCB0aGUgbGluayBpcyBkb3du
LAo+ID4+Pj4gdGhlbiBpdCB3aWxsIHJlc3RvcmUgdGhlIHJlZ2lzdGVycyBhbmQgbGluay4KPiA+
Pj4+Cj4gPj4+PiBBbmQgdGhlIGxldmVsIGlzIGNoYW5nZWFibGUgdmlhIHN5c2ZzLgo+ID4+Pgo+
ID4+PiBPa2F5LCB0aGFua3MgZm9yIGNsYXJpZnlpbmcuCj4gPj4+Cj4gPj4+Pgo+ID4+Pj4+IFdo
YXQgaGFwcGVucyBpZiB3ZSBwb3dlci1vZmYgYW55d2F5IHdoZW4gdGhlIGxldmVsIGlzIGxlc3Mg
dGhhbiA1Pwo+ID4+Pj4+Cj4gPj4+Pj4+ICsgICAgICAgICogVGhpcyBmbGFnIHdpbGwgYmUgcGFz
c2VkIGRvd24gdG8gcGxhdGZvcm0gcG93ZXItZG9tYWluIGRyaXZlcgo+ID4+Pj4+PiArICAgICAg
ICAqIHdoaWNoIGhhcyB0aGUgZmluYWwgZGVjaXNpb24uCj4gPj4+Pj4+ICsgICAgICAgICovCj4g
Pj4+Pj4+ICsgICAgICAgaWYgKGhiYS0+cnBtX2x2bCA8IFVGU19QTV9MVkxfNSkKPiA+Pj4+Pj4g
KyAgICAgICAgICAgICAgIGdlbnBkLT5mbGFncyB8PSBHRU5QRF9GTEFHX1JQTV9BTFdBWVNfT047
Cj4gPj4+Pj4+ICsgICAgICAgZWxzZQo+ID4+Pj4+PiArICAgICAgICAgICAgICAgZ2VucGQtPmZs
YWdzICY9IH5HRU5QRF9GTEFHX1JQTV9BTFdBWVNfT047Cj4gPj4+Pj4KPiA+Pj4+PiBUaGUgZ2Vu
cGQtPmZsYWdzIGlzIG5vdCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGxpa2UgdGhpcyAtIGFuZAo+
ID4+Pj4+IGVzcGVjaWFsbHkgbm90IGZyb20gYSBnZW5wZCBjb25zdW1lciBkcml2ZXIuCj4gPj4+
Pj4KPiA+Pj4+PiBJIGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIGEgYml0IG1vcmUgb2YgdGhlIHVz
ZSBjYXNlIGhlcmUuIExldCdzIHNlZQo+ID4+Pj4+IGlmIHRoYXQgaGVscHMgbWUgdG8gcG90ZW50
aWFsbHkgc3VnZ2VzdCBhbiBhbHRlcm5hdGl2ZSBhcHByb2FjaC4KPiA+Pj4+Pgo+ID4+Pj4KPiA+
Pj4+IEkgd2FzIG5vdCBmYW1pbGlhciB3aXRoIHRoZSBnZW5wZCBwYXJ0LCBzbyBJIGhhdmVuJ3Qg
Y29tZSB1cCB3aXRoCj4gPj4+PiBhbm90aGVyIHNvbHV0aW9uLiBJdCB3b3VsZCBiZSBncmVhdCBp
ZiB5b3UgY2FuIGd1aWRlIG1lIHRvIHRoZSByaWdodAo+ID4+Pj4gd2F5Lgo+ID4+Pgo+ID4+PiBJ
IGhhdmUgYmVlbiBwbGF5aW5nIHdpdGggdGhlIGV4aXN0aW5nIGluZnJhc3RydWN0dXJlIHdlIGhh
dmUgYXQgaGFuZAo+ID4+PiB0byBzdXBwb3J0IHRoaXMsIGJ1dCBJIG5lZWQgYSBmZXcgbW9yZSBk
YXlzIHRvIGJlIGFibGUgdG8gcHJvcG9zZQo+ID4+PiBzb21ldGhpbmcgZm9yIHlvdS4KPiA+Pj4K
PiA+Pgo+ID4+IE11Y2ggYXBwcmVjaWF0ZS4KPiA+Pgo+ID4+Pj4KPiA+Pj4+Pj4gKwo+ID4+Pj4+
PiArICAgICAgIHJldHVybiB1ZnNoY2RfcnVudGltZV9zdXNwZW5kKGRldik7Cj4gPj4+Pj4+ICt9
Cj4gPj4+Pj4+ICsKPiA+Pj4+Pj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3J1bnRpbWVfcmVz
dW1lKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+Pj4+Pj4gK3sKPiA+Pj4+Pj4gKyAgICAgICBzdHJ1
Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPj4+Pj4+ICsgICAgICAg
c3RydWN0IHVmc19yb2NrY2hpcF9ob3N0ICpob3N0ID0gdWZzaGNkX2dldF92YXJpYW50KGhiYSk7
Cj4gPj4+Pj4+ICsgICAgICAgaW50IGVycjsKPiA+Pj4+Pj4gKwo+ID4+Pj4+PiArICAgICAgIGVy
ciA9IGNsa19wcmVwYXJlX2VuYWJsZShob3N0LT5yZWZfb3V0X2Nsayk7Cj4gPj4+Pj4+ICsgICAg
ICAgaWYgKGVycikgewo+ID4+Pj4+PiArICAgICAgICAgICAgICAgZGV2X2VycihoYmEtPmRldiwg
ImZhaWxlZCB0byBlbmFibGUgcmVmIG91dCBjbG9jayAlZFxuIiwgZXJyKTsKPiA+Pj4+Pj4gKyAg
ICAgICAgICAgICAgIHJldHVybiBlcnI7Cj4gPj4+Pj4+ICsgICAgICAgfQo+ID4+Pj4+PiArCj4g
Pj4+Pj4+ICsgICAgICAgcmVzZXRfY29udHJvbF9hc3NlcnQoaG9zdC0+cnN0KTsKPiA+Pj4+Pj4g
KyAgICAgICB1c2xlZXBfcmFuZ2UoMSwgMik7Cj4gPj4+Pj4+ICsgICAgICAgcmVzZXRfY29udHJv
bF9kZWFzc2VydChob3N0LT5yc3QpOwo+ID4+Pj4+PiArCj4gPj4+Pj4+ICsgICAgICAgcmV0dXJu
IHVmc2hjZF9ydW50aW1lX3Jlc3VtZShkZXYpOwo+ID4+Pj4+PiArfQo+ID4+Pj4+PiArCj4gPj4+
Pj4+ICtzdGF0aWMgaW50IHVmc19yb2NrY2hpcF9zeXN0ZW1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNl
ICpkZXYpCj4gPj4+Pj4+ICt7Cj4gPj4+Pj4+ICsgICAgICAgc3RydWN0IHVmc19oYmEgKmhiYSA9
IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4+Pj4+PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2No
aXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4+Pj4+PiArCj4gPj4+
Pj4+ICsgICAgICAgLyogUGFzcyBkb3duIGRlc2lyZWQgc3BtX2x2bCB0byBGaXJtd2FyZSAqLwo+
ID4+Pj4+PiArICAgICAgIGFybV9zbWNjY19zbWMoUk9DS0NISVBfU0lQX1NVU1BFTkRfTU9ERSwg
Uk9DS0NISVBfU0xFRVBfUERfQ09ORklHLAo+ID4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAg
ICBob3N0LT5wZF9pZCwgaGJhLT5zcG1fbHZsIDwgNSA/IDEgOiAwLCAwLCAwLCAwLCAwLCBOVUxM
KTsKPiA+Pj4+Pgo+ID4+Pj4+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBvbiB3aGF0IGdvZXMg
b24gaGVyZT8gSXMgdGhpcyB0dXJuaW5nIG9mZiB0aGUKPiA+Pj4+PiBwb3dlci1kb21haW4gdGhh
dCB0aGUgZGV2IGlzIGF0dGFjaGVkIHRvIC0gb3Igd2hhdCBpcyBhY3R1YWxseQo+ID4+Pj4+IGhh
cHBlbmluZz8KPiA+Pj4+Pgo+ID4+Pj4KPiA+Pj4+IFRoaXMgc21jIGNhbGwgaXMgdHJ5aW5nIHRv
IGFzayBmaXJtd2FyZSBub3QgdG8gdHVybiBvZmYgdGhlIHBvd2VyLWRvbWlhbgo+ID4+Pj4gdGhh
dCB0aGUgVUZTIGlzIGF0dGFjaGVkIHRvIGFuZCBhbHNvIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93
ZXIgb2YgVUZTCj4gPj4+PiBjb25udHJvbGxlci4KPiA+Pj4KPiA+Pj4gT2theSwgdGhhbmtzIGZv
ciBjbGFyaWZ5aW5nIQo+ID4+Pgo+ID4+PiBBIGZvbGxvdyB1cCBxdWVzdGlvbiwgZG9uJ3QgeW91
IG5lZWQgdG8gbWFrZSBhIGNvcnJlc3BvbmRpbmcgc21jIGNhbGwKPiA+Pj4gdG8gaW5mb3JtIHRo
ZSBGVyB0aGF0IGl0J3Mgb2theSB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9tYWluIGF0IHNvbWUK
PiA+Pj4gcG9pbnQ/Cj4gPj4+Cj4gPj4KPiA+PiBZZXMuIEVhY2ggdGltZSBlbnRlcmluZyBzbGVl
cCwgd2UgdGVhY2ggRlcgaWYgaXQgbmVlZCB0byB0dXJuIG9mZiBvciBrZWVwCj4gPj4gcG93ZXIt
ZG9tYWluLCBmb3IgaW5zdGFuY2UgImhiYS0+c3BtX2x2bCA8IDUgPyAxIDogMCIgLCAwIG1lYW5z
Cj4gPj4gb2ZmIGFuZCAxIG1lYW5zIG9uLgo+ID4+Cj4gPgo+ID4gV2UgaGFkIGEgcmVxdWlyZW1l
bnQgdG8gbm90aWZ5IHRoZSBnZW5wZCBwcm92aWRlciBmcm9tIGNvbnN1bWVyIHRvIG5vdCB0dXJu
IG9mZgo+ID4gdGhlIHBvd2VyIGRvbWFpbiBkdXJpbmcgc3lzdGVtIHN1c3BlbmQuIFNvIFVsZiBj
YW1lIHVwIHdpdGggYW4gQVBJIGZvcgo+ID4gY29uc3VtZXJzLCBkZXZpY2Vfc2V0X3dha2V1cF9w
YXRoKCkgc2V0dGluZyB0aGUgJ2Rldi0+cG93ZXIud2FrZXVwX3BhdGgnIHdoaWNoCj4gPiB3aWxs
IGJlIGhvbm9yZWQgYnkgdGhlIGdlbnBkIGNvcmUuIFdpbGwgdGhhdCB3b3JrIGZvciB5b3U/Cj4K
PiBZZXMsIHRoYXQgd29ya3MuIEFuZCB3ZSBtYXkgbmVlZCBhIHN5bW1ldHJpY2FsIGNhbGwsIGZv
ciBpbnN0YW5jZSwKPiBkZXZpY2VfY2xyX3dha2V1cF9wYXRoKCkgdG8gYWxsb3cgZ2VucGQgcHJv
dmlkZXIgdG8gdHVybiBvZmYgdGhlIHBvd2VyCj4gZG9tYWluIGFzIHdlbGwuCgpUaGUgUE0gY29y
ZSBjbGVhcnMgdGhlIGZsYWcgaW4gZGV2aWNlX3ByZXBhcmUoKS4gVGhlIGZsYWcgaXMgdHlwaWNh
bGx5CnN1cHBvc2VkIHRvIGJlIHNldCBmcm9tIGEgLT5zdXNwZW5kKCkgY2FsbGJhY2ssIHNvIHRo
ZXJlIHNob3VsZCBiZSBubwpuZWVkIGZvciBhbiBhZGRpdGlvbmFsIGZ1bmN0aW9uIHRoYXQgY2xl
YXJzIHRoZSBmbGFnLCBJIHRoaW5rLgoKWy4uLl0KCktpbmQgcmVnYXJkcwpVZmZlCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
