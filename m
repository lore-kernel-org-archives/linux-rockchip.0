Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D460D2127B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 09:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jISVtVwm0qrzrak8z5qxgnUvKU+wDQncV1jLcik7g2U=; b=1GyZr3lwJIhnEc
	6CnFidJJ8ge4N12p06FduBFilYNHiqc63k8S7aTfYqT0FgZXYTXrmD4EMse4xAJRff7ex5+cmacju
	eB2xf+X/8Fwago1nCcNvSj30EOmyzOnU6y8dGlojgJAXuZ/G2AjojOOJCkaGUpzkdIpAmzCf6qwuK
	W5tYJ0nAHpQF3uLi4sym5JA9+sRkA3ZL+FetEJG5TxVWkeZfqjWrSRb84U3n7vT7zR8f/O8SvRuhC
	QmInvRUxCDKuQ2XNNLw7TYICZTYjO2Gu8UG8rYtHcv5891/psE02SXaZAiD7zUqQq9zwjeZHZkXtA
	MZUPMw1kLjgmMmKxiK1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iyC-000000007Xq-2xZJ;
	Fri, 18 Oct 2024 09:08:28 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1iy9-000000007Wa-4Ak8
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 09:08:27 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-6e35f08e23eso17894057b3.2
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Oct 2024 02:08:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729242505; x=1729847305; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tJ6VE13c11G61wAxeas2h5gnGo/zqasBkmWrvIHrfEI=;
        b=X0ReKYzhU8wUsuaYf71+kFRWKRSeDdr9gznT5zo+QWJwljThNRQit7LM2tZUGwj2SM
         ifYXTNtRKokTvSjpIQHZRQQec+q8iMqEsW18vlODItYnXJAJsckzjGhHYx21q7kTRzWO
         uRcDUT10KK9jPbr+zSwP0Gi8adPS5hrDmxp5tkbZRHzFAkbXSYtv9YF3QyzJo2pScz+1
         KveStsrHQkcOQQmeZwanOk106G8dbRD/7CE8spUnOgZHx9NeGHU4kBjRfMDH4CKkTv12
         EZTbDUZFAtFnL2uoaWYZvCSISDR8ZTPOrINl7sUxaIHKOdcl1agP07I/o4gaVubOPYCr
         mQZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729242505; x=1729847305;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tJ6VE13c11G61wAxeas2h5gnGo/zqasBkmWrvIHrfEI=;
        b=HJhkXkG1aOJ54V3ZibdiUtar4Q6ROISHI879azOo9PyhGuuhMFoROKYbSHoY8L/WMD
         Rl1VQLF0ZrYAjWXXxJUy4KF6jdgnjwrSahPJ27r947GmQTWaKvDWaKvYy/2eKXPoWkz7
         8/xBFAvrkLChgb0GVw0L+dhfmLROhMzWzoNVlzvZpgN+2ExS2KEVfCfY7ooCOHqcaJ8S
         k4RCypLG5yUL4Lxgy+Ep4UW8EY9Aq719qQe7V5Ke1NRYWwtVIkqzqRJAt4M3CXGk3ftk
         qczWYDz6Un2gfyNKnQWbrDe4L5lgkeHopUZxoWOqePgwbQ43675AFa0qB8V+JQmKQhT6
         kEdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUjDzEw+U7yUn1/pKpJphZsw3HbwlpyWuQDgTnxi9YYKjZNIsvPN6LZNfblQ27LYmoTKBULVh97B2HSkYRoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzJuxmq4FSFvn30iucGtc2zwZZtxG1HUo83E1STRq7lz4bhQ+qe
	hYBDo3Dj2XWjlOUPbJpalBMyfQH6zoYMWjJ55liAHeJx0GZ7OfNyFKNFQl+gXWPpplafrzCedRh
	j9eeTLfWzv5QO4s+ECn1GN6KWJPol73M+rFZykA==
X-Google-Smtp-Source: AGHT+IGLAR84NKVTp2k0U1wv1KUEMLaS/54P9n3Cejrb2qBl8a6BURD7jrtNldf/aXhGh7hy47DHJ/mFxpHljVTmPDA=
X-Received: by 2002:a05:690c:2b08:b0:6e3:2e50:8c0c with SMTP id
 00721157ae682-6e5bfd89092mr12731487b3.41.1729242504598; Fri, 18 Oct 2024
 02:08:24 -0700 (PDT)
MIME-Version: 1.0
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com> <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
In-Reply-To: <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2024 11:07:48 +0200
Message-ID: <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_020826_065775_F8E9E782 
X-CRM114-Status: GOOD (  38.65  )
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

T24gVGh1LCAxMCBPY3QgMjAyNCBhdCAwMzoyMSwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkgVWxmCj4KPiDlnKggMjAyNC8xMC85IDIxOjE1LCBVbGYg
SGFuc3NvbiDlhpnpgZM6Cj4gPiBbLi4uXQo+ID4KPiA+PiArCj4gPj4gK3N0YXRpYyBpbnQgdWZz
X3JvY2tjaGlwX3J1bnRpbWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4gK3sKPiA+
PiArICAgICAgIHN0cnVjdCB1ZnNfaGJhICpoYmEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+
PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFy
aWFudChoYmEpOwo+ID4+ICsgICAgICAgc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpnZW5wZCA9
IHBkX3RvX2dlbnBkKGRldi0+cG1fZG9tYWluKTsKPiA+Cj4gPiBwZF90b19nZW5wZCgpIGlzbid0
IHNhZmUgdG8gdXNlIGxpa2UgdGhpcy4gSXQncyBzb2xlbHkgdG8gYmUgdXNlZCBieQo+ID4gZ2Vu
cGQgcHJvdmlkZXIgZHJpdmVycy4KPiA+Cj4gPj4gKwo+ID4+ICsgICAgICAgY2xrX2Rpc2FibGVf
dW5wcmVwYXJlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPiA+PiArCj4gPj4gKyAgICAgICAvKgo+ID4+
ICsgICAgICAgICogU2hvdWxkbid0IHBvd2VyIGRvd24gaWYgcnBtX2x2bCBpcyBsZXNzIHRoYW4g
bGV2ZWwgNS4KPiA+Cj4gPiBDYW4geW91IGVsYWJvcmF0ZSBvbiB3aHkgd2UgbXVzdCBub3QgcG93
ZXItb2ZmIHRoZSBwb3dlci1kb21haW4gd2hlbgo+ID4gbGV2ZWwgaXMgbGVzcyB0aGFuIDU/Cj4g
Pgo+Cj4gQmVjYXVzZSB1ZnNoY2QgZHJpdmVyIGFzc3VtZSB0aGUgY29udHJvbGxlciBpcyBhY3Rp
dmUgYW5kIHRoZSBsaW5rIGlzIG9uCj4gaWYgbGV2ZWwgaXMgbGVzcyB0aGFuIDUuIFNvIHRoZSBk
ZWZhdWx0IHJlc3VtZSBwb2xpY3kgd2lsbCBub3QgdHJ5IHRvCj4gcmVjb3ZlciB0aGUgcmVnaXN0
ZXJzIHVudGlsIHRoZSBmaXJzdCBlcnJvciBoYXBwZW5lZC4gT3RoZXJ3aXNlIGlmIHRoZQo+IGxl
dmVsIGlzID49NSwgaXQgYXNzdW1lcyB0aGUgY29udHJvbGxlciBpcyBvZmYgYW5kIHRoZSBsaW5r
IGlzIGRvd24sCj4gdGhlbiBpdCB3aWxsIHJlc3RvcmUgdGhlIHJlZ2lzdGVycyBhbmQgbGluay4K
Pgo+IEFuZCB0aGUgbGV2ZWwgaXMgY2hhbmdlYWJsZSB2aWEgc3lzZnMuCgpPa2F5LCB0aGFua3Mg
Zm9yIGNsYXJpZnlpbmcuCgo+Cj4gPiBXaGF0IGhhcHBlbnMgaWYgd2UgcG93ZXItb2ZmIGFueXdh
eSB3aGVuIHRoZSBsZXZlbCBpcyBsZXNzIHRoYW4gNT8KPiA+Cj4gPj4gKyAgICAgICAgKiBUaGlz
IGZsYWcgd2lsbCBiZSBwYXNzZWQgZG93biB0byBwbGF0Zm9ybSBwb3dlci1kb21haW4gZHJpdmVy
Cj4gPj4gKyAgICAgICAgKiB3aGljaCBoYXMgdGhlIGZpbmFsIGRlY2lzaW9uLgo+ID4+ICsgICAg
ICAgICovCj4gPj4gKyAgICAgICBpZiAoaGJhLT5ycG1fbHZsIDwgVUZTX1BNX0xWTF81KQo+ID4+
ICsgICAgICAgICAgICAgICBnZW5wZC0+ZmxhZ3MgfD0gR0VOUERfRkxBR19SUE1fQUxXQVlTX09O
Owo+ID4+ICsgICAgICAgZWxzZQo+ID4+ICsgICAgICAgICAgICAgICBnZW5wZC0+ZmxhZ3MgJj0g
fkdFTlBEX0ZMQUdfUlBNX0FMV0FZU19PTjsKPiA+Cj4gPiBUaGUgZ2VucGQtPmZsYWdzIGlzIG5v
dCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGxpa2UgdGhpcyAtIGFuZAo+ID4gZXNwZWNpYWxseSBu
b3QgZnJvbSBhIGdlbnBkIGNvbnN1bWVyIGRyaXZlci4KPiA+Cj4gPiBJIGFtIHRyeWluZyB0byB1
bmRlcnN0YW5kIGEgYml0IG1vcmUgb2YgdGhlIHVzZSBjYXNlIGhlcmUuIExldCdzIHNlZQo+ID4g
aWYgdGhhdCBoZWxwcyBtZSB0byBwb3RlbnRpYWxseSBzdWdnZXN0IGFuIGFsdGVybmF0aXZlIGFw
cHJvYWNoLgo+ID4KPgo+IEkgd2FzIG5vdCBmYW1pbGlhciB3aXRoIHRoZSBnZW5wZCBwYXJ0LCBz
byBJIGhhdmVuJ3QgY29tZSB1cCB3aXRoCj4gYW5vdGhlciBzb2x1dGlvbi4gSXQgd291bGQgYmUg
Z3JlYXQgaWYgeW91IGNhbiBndWlkZSBtZSB0byB0aGUgcmlnaHQKPiB3YXkuCgpJIGhhdmUgYmVl
biBwbGF5aW5nIHdpdGggdGhlIGV4aXN0aW5nIGluZnJhc3RydWN0dXJlIHdlIGhhdmUgYXQgaGFu
ZAp0byBzdXBwb3J0IHRoaXMsIGJ1dCBJIG5lZWQgYSBmZXcgbW9yZSBkYXlzIHRvIGJlIGFibGUg
dG8gcHJvcG9zZQpzb21ldGhpbmcgZm9yIHlvdS4KCj4KPiA+PiArCj4gPj4gKyAgICAgICByZXR1
cm4gdWZzaGNkX3J1bnRpbWVfc3VzcGVuZChkZXYpOwo+ID4+ICt9Cj4gPj4gKwo+ID4+ICtzdGF0
aWMgaW50IHVmc19yb2NrY2hpcF9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4g
Pj4gK3sKPiA+PiArICAgICAgIHN0cnVjdCB1ZnNfaGJhICpoYmEgPSBkZXZfZ2V0X2RydmRhdGEo
ZGV2KTsKPiA+PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hj
ZF9nZXRfdmFyaWFudChoYmEpOwo+ID4+ICsgICAgICAgaW50IGVycjsKPiA+PiArCj4gPj4gKyAg
ICAgICBlcnIgPSBjbGtfcHJlcGFyZV9lbmFibGUoaG9zdC0+cmVmX291dF9jbGspOwo+ID4+ICsg
ICAgICAgaWYgKGVycikgewo+ID4+ICsgICAgICAgICAgICAgICBkZXZfZXJyKGhiYS0+ZGV2LCAi
ZmFpbGVkIHRvIGVuYWJsZSByZWYgb3V0IGNsb2NrICVkXG4iLCBlcnIpOwo+ID4+ICsgICAgICAg
ICAgICAgICByZXR1cm4gZXJyOwo+ID4+ICsgICAgICAgfQo+ID4+ICsKPiA+PiArICAgICAgIHJl
c2V0X2NvbnRyb2xfYXNzZXJ0KGhvc3QtPnJzdCk7Cj4gPj4gKyAgICAgICB1c2xlZXBfcmFuZ2Uo
MSwgMik7Cj4gPj4gKyAgICAgICByZXNldF9jb250cm9sX2RlYXNzZXJ0KGhvc3QtPnJzdCk7Cj4g
Pj4gKwo+ID4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1lX3Jlc3VtZShkZXYpOwo+ID4+
ICt9Cj4gPj4gKwo+ID4+ICtzdGF0aWMgaW50IHVmc19yb2NrY2hpcF9zeXN0ZW1fc3VzcGVuZChz
dHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4gK3sKPiA+PiArICAgICAgIHN0cnVjdCB1ZnNfaGJhICpo
YmEgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiA+PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2No
aXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEpOwo+ID4+ICsKPiA+PiArICAg
ICAgIC8qIFBhc3MgZG93biBkZXNpcmVkIHNwbV9sdmwgdG8gRmlybXdhcmUgKi8KPiA+PiArICAg
ICAgIGFybV9zbWNjY19zbWMoUk9DS0NISVBfU0lQX1NVU1BFTkRfTU9ERSwgUk9DS0NISVBfU0xF
RVBfUERfQ09ORklHLAo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIGhvc3QtPnBkX2lkLCBo
YmEtPnNwbV9sdmwgPCA1ID8gMSA6IDAsIDAsIDAsIDAsIDAsIE5VTEwpOwo+ID4KPiA+IENhbiB5
b3UgcGxlYXNlIGVsYWJvcmF0ZSBvbiB3aGF0IGdvZXMgb24gaGVyZT8gSXMgdGhpcyB0dXJuaW5n
IG9mZiB0aGUKPiA+IHBvd2VyLWRvbWFpbiB0aGF0IHRoZSBkZXYgaXMgYXR0YWNoZWQgdG8gLSBv
ciB3aGF0IGlzIGFjdHVhbGx5Cj4gPiBoYXBwZW5pbmc/Cj4gPgo+Cj4gVGhpcyBzbWMgY2FsbCBp
cyB0cnlpbmcgdG8gYXNrIGZpcm13YXJlIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9taWFu
Cj4gdGhhdCB0aGUgVUZTIGlzIGF0dGFjaGVkIHRvIGFuZCBhbHNvIG5vdCB0byB0dXJuIG9mZiB0
aGUgcG93ZXIgb2YgVUZTCj4gY29ubnRyb2xsZXIuCgpPa2F5LCB0aGFua3MgZm9yIGNsYXJpZnlp
bmchCgpBIGZvbGxvdyB1cCBxdWVzdGlvbiwgZG9uJ3QgeW91IG5lZWQgdG8gbWFrZSBhIGNvcnJl
c3BvbmRpbmcgc21jIGNhbGwKdG8gaW5mb3JtIHRoZSBGVyB0aGF0IGl0J3Mgb2theSB0byB0dXJu
IG9mZiB0aGUgcG93ZXItZG9tYWluIGF0IHNvbWUKcG9pbnQ/Cgo+Cj4gUGVyIHlvdXIgY29tbWVu
dCBhdCBwYXRjaCA0LCBzaG91bGQgSSB1c2UgR0VOUERfRkxBR19BTFdBWVNfT04gKwo+IGFybV9z
bWNjY19zbWMgaGVyZSBpbiBzeXN0ZW0gc3VzcGVuZD8KPgo+ID4+ICsKPiA+PiArICAgICAgIHJl
dHVybiB1ZnNoY2Rfc3lzdGVtX3N1c3BlbmQoZGV2KTsKPiA+PiArfQo+ID4+ICsKPiA+PiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIHVmc19yb2NrY2hpcF9wbV9vcHMgPSB7Cj4gPj4g
KyAgICAgICBTRVRfU1lTVEVNX1NMRUVQX1BNX09QUyh1ZnNfcm9ja2NoaXBfc3lzdGVtX3N1c3Bl
bmQsIHVmc2hjZF9zeXN0ZW1fcmVzdW1lKQo+ID4+ICsgICAgICAgU0VUX1JVTlRJTUVfUE1fT1BT
KHVmc19yb2NrY2hpcF9ydW50aW1lX3N1c3BlbmQsIHVmc19yb2NrY2hpcF9ydW50aW1lX3Jlc3Vt
ZSwgTlVMTCkKPiA+PiArICAgICAgIC5wcmVwYXJlICAgICAgICAgPSB1ZnNoY2Rfc3VzcGVuZF9w
cmVwYXJlLAo+ID4+ICsgICAgICAgLmNvbXBsZXRlICAgICAgICA9IHVmc2hjZF9yZXN1bWVfY29t
cGxldGUsCj4gPj4gK307Cj4gPj4gKwo+ID4+ICtzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZl
ciB1ZnNfcm9ja2NoaXBfcGx0Zm9ybSA9IHsKPiA+PiArICAgICAgIC5wcm9iZSA9IHVmc19yb2Nr
Y2hpcF9wcm9iZSwKPiA+PiArICAgICAgIC5yZW1vdmUgPSB1ZnNfcm9ja2NoaXBfcmVtb3ZlLAo+
ID4+ICsgICAgICAgLmRyaXZlciA9IHsKPiA+PiArICAgICAgICAgICAgICAgLm5hbWUgPSAidWZz
aGNkLXJvY2tjaGlwIiwKPiA+PiArICAgICAgICAgICAgICAgLnBtID0gJnVmc19yb2NrY2hpcF9w
bV9vcHMsCj4gPj4gKyAgICAgICAgICAgICAgIC5vZl9tYXRjaF90YWJsZSA9IHVmc19yb2NrY2hp
cF9vZl9tYXRjaCwKPiA+PiArICAgICAgIH0sCj4gPj4gK307Cj4gPj4gK21vZHVsZV9wbGF0Zm9y
bV9kcml2ZXIodWZzX3JvY2tjaGlwX3BsdGZvcm0pOwo+ID4+ICsKPiA+Cj4gPiBbLi4uXQoKS2lu
ZCByZWdhcmRzClVmZmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
