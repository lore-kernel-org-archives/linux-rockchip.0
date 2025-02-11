Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9E09C0219E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 07:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XigBKZxUws074L5rSQK8L5JnI7ZwbStSXtNaim7IjeI=; b=ZqbzFkPM1e1+lb
	Dvcqt0ehiT43yzdob6gVbH9B78d9qGDYXKYuKZJTssIm7iYgnDTQY3320jjUD0pW7oaOpAsB3XYWy
	btq69GSYwzCIh50UHgvXiRQ/M51Lu2IsWiqctcdErwab9Rilr51ODzUtZdafJSysEA202EM+rlXTb
	Rwubq2NhPdv7vUwVPN6C4JHLum/ct/H/fNpBapochUnbEj2lHwgPF4u2zCni93WM09/0VqELkFG2c
	3sEoZ5KniWy+h/HDfiJ/+NguW4mQ0+J0aeE2mqTp8yrUhl/hGSb5RUD0uAyWdGAcY938EW67mv2id
	red2gj+/M1lxufhyeaww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thkUY-00000002nm7-3zzJ;
	Tue, 11 Feb 2025 07:15:34 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thkUW-00000002nlj-06OZ
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Feb 2025 07:15:33 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-21f818a980cso36169275ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Feb 2025 23:15:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739258131; x=1739862931; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vD+EgsZ0T7PDMw/bMLDaz1PONiZNjDPIMfFzu3/y2Rc=;
        b=uLCRgcDx7U+iVw6AEb87XxjV12VpQU3KhsgDcDs4sKuZo0yUyLgtVjDORcM9InVUYH
         cKW77HN82HsdPd6ofaUf6EYW8/hHrxqW83n7WV8Q6tapmkL6FC9yniTsI+eIYSCuzIzG
         0ka6rgMOw+wD/OGvBx/D58H3W7Fd0k12oUirt7xDQPrXx7SZo7RLrt3zcJvIjiuxy/6S
         TX06lulubph00IsGXwoxzxUUPfIZ34kZWQsjREOHAP0w4JMfHjdE4uR+FwwgQxCDer3i
         ueu9PIkZWFY7uYxp81UALk/ltDrxz9O93zfNKXoe7JDFBmapKvWwJ8Z3uojtk+pR4YAW
         m1MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739258131; x=1739862931;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vD+EgsZ0T7PDMw/bMLDaz1PONiZNjDPIMfFzu3/y2Rc=;
        b=IAupd2WoNuRWDvzkORj6QBFzoujSOvBGuBvjZL3CtfZNSypeAEUMWRtSQ2MfvLj/EN
         6ofXDiAnhcrMY3QxA+AkjAmW+A3bRDsxXyuZMd+ngaIzC4ZcXwhhAOoA24o0OilOgQYQ
         VMI0iw2vSJbxlqIDeKitZhGyqbEF4NOKFSIDxmn6NBRz0kdyP7fqP7TDd7xRem2Dmtpo
         WnrzHq86j1NptspzugdqmIbYdITBziDKxXXUBmGgae8nvU1BI2/FAd4NBhL2nPT285tL
         VbVP8dj9lfgpgW/DjKV/5L68Y2KxvYvgXsMA7dYzoVl6u8qXkioXWPLAkWsDAsaWRr/c
         1isQ==
X-Forwarded-Encrypted: i=1; AJvYcCVz/bc4M19VWkt0NVBmk6REj4nzSglkoS8lCPlLRurz6ZfskIpRrVpzIi54hyrCZrIEAx4ivKP6EU5FkMbEcw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw052N4zqmsflxr2xYx2tzQFCkFwj5PfUUxvJWAWTs4akbrBIYc
	bM744TNzOmRX221CQNO72rPb5XzIFh18OFKLezrVmapsuMuX2uX2vgvumhr4bw==
X-Gm-Gg: ASbGncvMG6R0vyRFeAkIrPsnhWBWZzTcwXrLFECiUcnMjbwOo0DivA6Uf9khvICkSTG
	yF3WSISIge58sV9vVEycXyw1+16+rY68SyvPsCl9dqKu1XHw+hy4MIj9kHM1HGgeQmnMNy0vwbd
	JLvr5h8DlTAZXM6MVGyVE/ManHAXBRBvADDAdcyeTaKbCQ53E/fgGhfj+6yzWBsnAPEUTFAIZfU
	4svPnLMLcxcWlZqwKRLHhMGXgg+8RJnymxQocRR6cItlt7v9QfYebtZjrVwJpxdRuXV2l1+GK0X
	nAzBK2n7zH/O/7AUcRbUkHuF5w==
X-Google-Smtp-Source: AGHT+IHXWpkWXnY0YN0Dt30stPJV13qAiNuqoc6gzlnixFD8RnVzl3TtjB3rZRgLYzNlQ56fzxsgrA==
X-Received: by 2002:a17:902:d4c7:b0:21f:6005:503d with SMTP id d9443c01a7336-21f60055488mr226844615ad.42.1739258131023;
        Mon, 10 Feb 2025 23:15:31 -0800 (PST)
Received: from thinkpad ([36.255.17.230])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f3687c187sm90632165ad.168.2025.02.10.23.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 23:15:30 -0800 (PST)
Date: Tue, 11 Feb 2025 12:45:23 +0530
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
Subject: Re: [PATCH v7 3/7] pmdomain: core: Introduce
 dev_pm_genpd_rpm_always_on()
Message-ID: <20250211071523.fd6zss7jjtqivw6a@thinkpad>
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <1738736156-119203-4-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1738736156-119203-4-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_231532_072636_3AB6FB6F 
X-CRM114-Status: GOOD (  30.97  )
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

T24gV2VkLCBGZWIgMDUsIDIwMjUgYXQgMDI6MTU6NTJQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEZyb206IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5hcm8ub3JnPgo+IAo+IEZvciBz
b21lIHVzZWNhc2VzIGEgY29uc3VtZXIgZHJpdmVyIHJlcXVpcmVzIGl0cyBkZXZpY2UgdG8gcmVt
YWluIHBvd2VyLW9uCj4gZnJvbSB0aGUgUE0gZG9tYWluIHBlcnNwZWN0aXZlIGR1cmluZyBydW50
aW1lLiBVc2luZyBkZXYgUE0gcW9zIGFsb25nIHdpdGgKPiB0aGUgZ2VucGQgZ292ZXJub3JzLCBk
b2Vzbid0IHdvcmsgZm9yIHRoaXMgY2FzZSBhcyB3b3VsZCBwb3RlbnRpYWxseQo+IHByZXZlbnQg
dGhlIGRldmljZSBmcm9tIGJlaW5nIHJ1bnRpbWUgc3VzcGVuZGVkIHRvby4KPiAKPiBUbyBzdXBw
b3J0IHRoZXNlIHVzZWNhc2VzLCBsZXQncyBpbnRyb2R1Y2UgZGV2X3BtX2dlbnBkX3JwbV9hbHdh
eXNfb24oKSB0bwo+IGFsbG93IGNvbnN1bWVycyBkcml2ZXJzIHRvIGR5bmFtaWNhbGx5IGNvbnRy
b2wgdGhlIGJlaGF2aW91ciBpbiBnZW5wZCBmb3IgYQo+IGRldmljZSB0aGF0IGlzIGF0dGFjaGVk
IHRvIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFVsZiBIYW5zc29uIDx1bGYuaGFuc3NvbkBsaW5h
cm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMu
Y29tPgoKQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gCj4gQ2hhbmdlcyBpbiB2NzogTm9uZQo+
IENoYW5nZXMgaW4gdjY6Cj4gLSBleHBvcnQgZGV2X3BtX2dlbnBkX3JwbV9hbHdheXNfb24oKQo+
IAo+IENoYW5nZXMgaW4gdjU6IE5vbmUKPiBDaGFuZ2VzIGluIHY0OiBOb25lCj4gQ2hhbmdlcyBp
biB2MzogTm9uZQo+IENoYW5nZXMgaW4gdjI6IE5vbmUKPiAKPiAgZHJpdmVycy9wbWRvbWFpbi9j
b3JlLmMgICB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGluY2x1
ZGUvbGludXgvcG1fZG9tYWluLmggfCAgNyArKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNDIg
aW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BtZG9tYWluL2NvcmUuYyBi
L2RyaXZlcnMvcG1kb21haW4vY29yZS5jCj4gaW5kZXggNmM5NDEzNy4uOWIyZjI4YiAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL3BtZG9tYWluL2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4v
Y29yZS5jCj4gQEAgLTY5Nyw2ICs2OTcsMzcgQEAgYm9vbCBkZXZfcG1fZ2VucGRfZ2V0X2h3bW9k
ZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwoZGV2X3BtX2dl
bnBkX2dldF9od21vZGUpOwo+ICAKPiArLyoqCj4gKyAqIGRldl9wbV9nZW5wZF9ycG1fYWx3YXlz
X29uKCkgLSBDb250cm9sIGlmIHRoZSBQTSBkb21haW4gY2FuIGJlIHBvd2VyZWQgb2ZmLgo+ICsg
Kgo+ICsgKiBAZGV2OiBEZXZpY2UgZm9yIHdoaWNoIHRoZSBQTSBkb21haW4gbWF5IG5lZWQgdG8g
c3RheSBvbiBmb3IuCj4gKyAqIEBvbjogVmFsdWUgdG8gc2V0IG9yIHVuc2V0IGZvciB0aGUgY29u
ZGl0aW9uLgo+ICsgKgo+ICsgKiBGb3Igc29tZSB1c2VjYXNlcyBhIGNvbnN1bWVyIGRyaXZlciBy
ZXF1aXJlcyBpdHMgZGV2aWNlIHRvIHJlbWFpbiBwb3dlci1vbgo+ICsgKiBmcm9tIHRoZSBQTSBk
b21haW4gcGVyc3BlY3RpdmUgZHVyaW5nIHJ1bnRpbWUuIFRoaXMgZnVuY3Rpb24gYWxsb3dzIHRo
ZQo+ICsgKiBiZWhhdmlvdXIgdG8gYmUgZHluYW1pY2FsbHkgY29udHJvbGxlZCBmb3IgYSBkZXZp
Y2UgYXR0YWNoZWQgdG8gYSBnZW5wZC4KPiArICoKPiArICogSXQgaXMgYXNzdW1lZCB0aGF0IHRo
ZSB1c2VycyBndWFyYW50ZWUgdGhhdCB0aGUgZ2VucGQgd291bGRuJ3QgYmUgZGV0YWNoZWQKPiAr
ICogd2hpbGUgdGhpcyByb3V0aW5lIGlzIGdldHRpbmcgY2FsbGVkLgo+ICsgKgo+ICsgKiBSZXR1
cm46IFJldHVybnMgMCBvbiBzdWNjZXNzIGFuZCBuZWdhdGl2ZSBlcnJvciB2YWx1ZXMgb24gZmFp
bHVyZXMuCj4gKyAqLwo+ICtpbnQgZGV2X3BtX2dlbnBkX3JwbV9hbHdheXNfb24oc3RydWN0IGRl
dmljZSAqZGV2LCBib29sIG9uKQo+ICt7Cj4gKwlzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdl
bnBkOwo+ICsKPiArCWdlbnBkID0gZGV2X3RvX2dlbnBkX3NhZmUoZGV2KTsKPiArCWlmICghZ2Vu
cGQpCj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwo+ICsJZ2VucGRfbG9jayhnZW5wZCk7Cj4gKwlk
ZXZfZ3BkX2RhdGEoZGV2KS0+cnBtX2Fsd2F5c19vbiA9IG9uOwo+ICsJZ2VucGRfdW5sb2NrKGdl
bnBkKTsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChkZXZfcG1f
Z2VucGRfcnBtX2Fsd2F5c19vbik7Cj4gKwo+ICBzdGF0aWMgaW50IF9nZW5wZF9wb3dlcl9vbihz
dHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkLCBib29sIHRpbWVkKQo+ICB7Cj4gIAl1bnNp
Z25lZCBpbnQgc3RhdGVfaWR4ID0gZ2VucGQtPnN0YXRlX2lkeDsKPiBAQCAtODY4LDYgKzg5OSwx
MCBAQCBzdGF0aWMgaW50IGdlbnBkX3Bvd2VyX29mZihzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4g
KmdlbnBkLCBib29sIG9uZV9kZXZfb24sCj4gIAkJaWYgKCFwbV9ydW50aW1lX3N1c3BlbmRlZChw
ZGQtPmRldikgfHwKPiAgCQkJaXJxX3NhZmVfZGV2X2luX3NsZWVwX2RvbWFpbihwZGQtPmRldiwg
Z2VucGQpKQo+ICAJCQlub3Rfc3VzcGVuZGVkKys7Cj4gKwo+ICsJCS8qIFRoZSBkZXZpY2UgbWF5
IG5lZWQgaXRzIFBNIGRvbWFpbiB0byBzdGF5IHBvd2VyZWQgb24uICovCj4gKwkJaWYgKHRvX2dw
ZF9kYXRhKHBkZCktPnJwbV9hbHdheXNfb24pCj4gKwkJCXJldHVybiAtRUJVU1k7Cj4gIAl9Cj4g
IAo+ICAJaWYgKG5vdF9zdXNwZW5kZWQgPiAxIHx8IChub3Rfc3VzcGVuZGVkID09IDEgJiYgIW9u
ZV9kZXZfb24pKQo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BtX2RvbWFpbi5oIGIvaW5j
bHVkZS9saW51eC9wbV9kb21haW4uaAo+IGluZGV4IDFhYWIzMTMuLmQ1NmE3OGEgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9saW51eC9wbV9kb21haW4uaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcG1f
ZG9tYWluLmgKPiBAQCAtMjYxLDYgKzI2MSw3IEBAIHN0cnVjdCBnZW5lcmljX3BtX2RvbWFpbl9k
YXRhIHsKPiAgCXVuc2lnbmVkIGludCBycG1fcHN0YXRlOwo+ICAJdW5zaWduZWQgaW50IG9wcF90
b2tlbjsKPiAgCWJvb2wgaHdfbW9kZTsKPiArCWJvb2wgcnBtX2Fsd2F5c19vbjsKPiAgCXZvaWQg
KmRhdGE7Cj4gIH07Cj4gIAo+IEBAIC0yOTMsNiArMjk0LDcgQEAga3RpbWVfdCBkZXZfcG1fZ2Vu
cGRfZ2V0X25leHRfaHJ0aW1lcihzdHJ1Y3QgZGV2aWNlICpkZXYpOwo+ICB2b2lkIGRldl9wbV9n
ZW5wZF9zeW5jZWRfcG93ZXJvZmYoc3RydWN0IGRldmljZSAqZGV2KTsKPiAgaW50IGRldl9wbV9n
ZW5wZF9zZXRfaHdtb2RlKHN0cnVjdCBkZXZpY2UgKmRldiwgYm9vbCBlbmFibGUpOwo+ICBib29s
IGRldl9wbV9nZW5wZF9nZXRfaHdtb2RlKHN0cnVjdCBkZXZpY2UgKmRldik7Cj4gK2ludCBkZXZf
cG1fZ2VucGRfcnBtX2Fsd2F5c19vbihzdHJ1Y3QgZGV2aWNlICpkZXYsIGJvb2wgb24pOwo+ICAK
PiAgZXh0ZXJuIHN0cnVjdCBkZXZfcG93ZXJfZ292ZXJub3Igc2ltcGxlX3Fvc19nb3Zlcm5vcjsK
PiAgZXh0ZXJuIHN0cnVjdCBkZXZfcG93ZXJfZ292ZXJub3IgcG1fZG9tYWluX2Fsd2F5c19vbl9n
b3Y7Cj4gQEAgLTM3Niw2ICszNzgsMTEgQEAgc3RhdGljIGlubGluZSBib29sIGRldl9wbV9nZW5w
ZF9nZXRfaHdtb2RlKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCXJldHVybiBmYWxzZTsKPiAgfQo+
ICAKPiArc3RhdGljIGlubGluZSBpbnQgZGV2X3BtX2dlbnBkX3JwbV9hbHdheXNfb24oc3RydWN0
IGRldmljZSAqZGV2LCBib29sIG9uKQo+ICt7Cj4gKwlyZXR1cm4gLUVPUE5PVFNVUFA7Cj4gK30K
PiArCj4gICNkZWZpbmUgc2ltcGxlX3Fvc19nb3Zlcm5vcgkJKCooc3RydWN0IGRldl9wb3dlcl9n
b3Zlcm5vciAqKShOVUxMKSkKPiAgI2RlZmluZSBwbV9kb21haW5fYWx3YXlzX29uX2dvdgkJKCoo
c3RydWN0IGRldl9wb3dlcl9nb3Zlcm5vciAqKShOVUxMKSkKPiAgI2VuZGlmCj4gLS0gCj4gMi43
LjQKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
