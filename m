Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE460E6ADE2
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Nov 2024 05:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMAEaVBOED43UO8Zcos/jqJQUa03uGXU36gEuunoX5A=; b=I7VTQ+PzQMmqKN
	Fat1uMx6Q4J1e8qarHq9yay7TO7J6ZnsUrTCAOJULXPko84V8Bu2QMj9FYGw+9F5ZlsSK1M/CrKWr
	Fzd0c+Xd2IIi/C6MCR5L9bPCr9iqNlDVhqlmMtnu8v1OyTaEpOStgBPI67/BMkBsR/Xtb1oTg3lcJ
	1i6k049eNwkgRxvx9+PrQRVl9Uhn22KKMw4sgjeEBqLQ9uXiuVjd12Q13A5i/KwhxXkKfIaC8qeop
	GeRuJO88CZtXqbruXrB07s42BPqol/tas9PB2Vun57QgYp6G9ODJfaI1g205NJEXNdikLZ4tDqePX
	pEtZOOzRBnV0J/FOLo1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEiHt-00000003lwf-0tjp;
	Sat, 23 Nov 2024 05:02:29 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEiHq-00000003lwK-0jap
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Nov 2024 05:02:27 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-7246c8b89b4so2884382b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 22 Nov 2024 21:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732338145; x=1732942945; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Rhmp9T6hqY6qCxGgLf1l2rSHY8/g/1isCQt/alj6RtU=;
        b=MsMzi5qnZE3HhIPeF+UFT1bwsFgRCXdVTWNuNTxEaAN9meg1dd4TLZ09XtTr7KfOoP
         EWngU8QhnXZGrZRT6+KZ+1f9h3xQFavpu/+dg6kbU/8EzOXvdCCx4ik9VMU4rjmi+ggo
         jZhEZoL2N2ZM7bQwBQTHukVjZkmjLMYCwN2A6gSGVVoH72wUEyurpYnLKjP2ZPXtAYfV
         LXpYLT9Gx9UBjaibcNHljXM4WeKZmhGBm4qYZghHOibOtjmPfn/IEbGHVLGVpH3Omg9G
         nhdfkqACtqtR6amUepPAXOyNtXgRqC7ZLruGSjqLB9+ezLoKAVAGsyKQL/Xm7mhRHMyJ
         3I9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732338145; x=1732942945;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rhmp9T6hqY6qCxGgLf1l2rSHY8/g/1isCQt/alj6RtU=;
        b=oHKgXd7+kALmM8YYcwx/a2UGBtnuJ6KrVzmH7G17qt6jcniLak7ydvhc0riMBvra1F
         iFmPAe58Ge8PoqKRGfYNkBwR2WiCn5wy0Vqg0V0SCIK48H0qtAqChLi1gKA1nbHEwNUS
         IzsT1RS5aPcL9xrzj5XvH7zrclCBYyZT84n3AnXcs3uyt7E9e7DCECU8IJSruslXtUDV
         KONP5PY5OdzB5kQNj114J2g9cmxKmgcIkjoOL9sdfxTTlrJbdOgQMinzS54cbP+69/z6
         LFGyS7vtS3OJgQ4/FKRsmLVOSE8EVuDN+g9GoUT3xwmI4PTyi2J1LT3CGKmYlWmU8MGi
         8fAg==
X-Forwarded-Encrypted: i=1; AJvYcCXKnE2SXFa3ls2qiGseTG1algAGpMOj9Nb5zgnC1lNSCKB1HWTMjHr6kdjvYnY+CfvQsAW4m82mmXSCufNiKA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzL2pZ5dbb0V9KVt9u9b3Q8INv5RXxeyX/Aq1NOABLAZQUxtk/s
	pQO7aozFdBKX0tXgzXtvP0Kec1mzC/QptRmMf5KIk9M5upeBITF7Tl6HoB0eVg==
X-Gm-Gg: ASbGncvL8Juhk/2A47SFh+mea7h/7U9UCop5IImjIZY6bX9phhSXJu0PQEnF1d5Skq1
	4q2nyZtPImssZLfRJQ/yP1HF9C0YO+NpGZCWnZoFzlbX1oXQhEcFcP7WVJh5GYZQ+EVAr8tNuik
	ldwRzk/f/EQsRtywk6ZHCCR6tHaNaTU7LbYXKwjszzv5qlNgI+9oQmiYT70Y5XWOsAW8ao2OKBQ
	qa45I9MevNgH640RUcAV9/JfAoAb52T/9WiwpVm++PAHqfZUgcRxus2BOdfOkcRfw==
X-Google-Smtp-Source: AGHT+IGIoWjGItw7UGvc6ZH+fcq+M/D5fvZSF+vOrGMx1rf1QqGn6GShTrNo2FSHGH5NSI8p5dBK1g==
X-Received: by 2002:a17:90b:3d92:b0:2ea:5fed:4a32 with SMTP id 98e67ed59e1d1-2eb0cb9b800mr9292369a91.11.1732338145195;
        Fri, 22 Nov 2024 21:02:25 -0800 (PST)
Received: from thinkpad ([2409:40f2:101e:13d7:85cf:a1c4:6490:6f75])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2eaca647808sm3437052a91.1.2024.11.22.21.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 21:02:24 -0800 (PST)
Date: Sat, 23 Nov 2024 10:32:13 +0530
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
Subject: Re: [PATCH v5 5/7] scsi: ufs: core: Export ufshcd_dme_reset() and
 ufshcd_dme_enable()
Message-ID: <20241123050213.kq5u7qaoeenzddfg@thinkpad>
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com>
 <1731048987-229149-6-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1731048987-229149-6-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_210226_251173_7E2A70C1 
X-CRM114-Status: GOOD (  17.71  )
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

T24gRnJpLCBOb3YgMDgsIDIwMjQgYXQgMDI6NTY6MjRQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IFRoZXNlIHR3byBBUElzIHdpbGwgYmUgdXNlZCBieSBob3N0IGRyaXZlciBpZiB0aGV5IG5l
ZWQgYSBkaWZmZXJlbnQKCnMvaG9zdC9nbHVlIGRyaXZlcnMKCj4gSENFIHByb2Nlc3MuCj4gCj4g
U2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAKPiBDaGFuZ2VzIGluIHY1OiBOb25lCj4gQ2hhbmdl
cyBpbiB2NDogTm9uZQo+IENoYW5nZXMgaW4gdjM6IE5vbmUKPiBDaGFuZ2VzIGluIHYyOiBOb25l
Cj4gCj4gIGRyaXZlcnMvdWZzL2NvcmUvdWZzaGNkLmMgfCA2ICsrKystLQo+ICBpbmNsdWRlL3Vm
cy91ZnNoY2QuaCAgICAgIHwgMiArKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvY29yZS91ZnNo
Y2QuYyBiL2RyaXZlcnMvdWZzL2NvcmUvdWZzaGNkLmMKPiBpbmRleCAyNGEzMmUyLi45ZDFkNTZk
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2NvcmUvdWZzaGNkLmMKPiArKysgYi9kcml2ZXJz
L3Vmcy9jb3JlL3Vmc2hjZC5jCj4gQEAgLTQwMzksNyArNDAzOSw3IEBAIHN0YXRpYyBpbnQgdWZz
aGNkX2RtZV9saW5rX3N0YXJ0dXAoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgICoKPiAgICogUmV0
dXJuOiAwIG9uIHN1Y2Nlc3MsIG5vbi16ZXJvIHZhbHVlIG9uIGZhaWx1cmUuCj4gICAqLwo+IC1z
dGF0aWMgaW50IHVmc2hjZF9kbWVfcmVzZXQoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAraW50IHVm
c2hjZF9kbWVfcmVzZXQoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgewo+ICAJc3RydWN0IHVpY19j
b21tYW5kIHVpY19jbWQgPSB7Cj4gIAkJLmNvbW1hbmQgPSBVSUNfQ01EX0RNRV9SRVNFVCwKPiBA
QCAtNDA1Myw2ICs0MDUzLDcgQEAgc3RhdGljIGludCB1ZnNoY2RfZG1lX3Jlc2V0KHN0cnVjdCB1
ZnNfaGJhICpoYmEpCj4gIAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICtFWFBPUlRfU1lNQk9MX0dQ
TCh1ZnNoY2RfZG1lX3Jlc2V0KTsKPiAgCj4gIGludCB1ZnNoY2RfZG1lX2NvbmZpZ3VyZV9hZGFw
dChzdHJ1Y3QgdWZzX2hiYSAqaGJhLAo+ICAJCQkgICAgICAgaW50IGFncmVlZF9nZWFyLAo+IEBA
IC00MDc4LDcgKzQwNzksNyBAQCBFWFBPUlRfU1lNQk9MX0dQTCh1ZnNoY2RfZG1lX2NvbmZpZ3Vy
ZV9hZGFwdCk7Cj4gICAqCj4gICAqIFJldHVybjogMCBvbiBzdWNjZXNzLCBub24temVybyB2YWx1
ZSBvbiBmYWlsdXJlLgo+ICAgKi8KPiAtc3RhdGljIGludCB1ZnNoY2RfZG1lX2VuYWJsZShzdHJ1
Y3QgdWZzX2hiYSAqaGJhKQo+ICtpbnQgdWZzaGNkX2RtZV9lbmFibGUoc3RydWN0IHVmc19oYmEg
KmhiYSkKPiAgewo+ICAJc3RydWN0IHVpY19jb21tYW5kIHVpY19jbWQgPSB7Cj4gIAkJLmNvbW1h
bmQgPSBVSUNfQ01EX0RNRV9FTkFCTEUsCj4gQEAgLTQwOTIsNiArNDA5Myw3IEBAIHN0YXRpYyBp
bnQgdWZzaGNkX2RtZV9lbmFibGUoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgCj4gIAlyZXR1cm4g
cmV0Owo+ICB9Cj4gK0VYUE9SVF9TWU1CT0xfR1BMKHVmc2hjZF9kbWVfZW5hYmxlKTsKPiAgCj4g
IHN0YXRpYyBpbmxpbmUgdm9pZCB1ZnNoY2RfYWRkX2RlbGF5X2JlZm9yZV9kbWVfY21kKHN0cnVj
dCB1ZnNfaGJhICpoYmEpCj4gIHsKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91ZnMvdWZzaGNkLmgg
Yi9pbmNsdWRlL3Vmcy91ZnNoY2QuaAo+IGluZGV4IDNmNjhhZTNlNC4uYjk3MzNkYyAxMDA2NDQK
PiAtLS0gYS9pbmNsdWRlL3Vmcy91ZnNoY2QuaAo+ICsrKyBiL2luY2x1ZGUvdWZzL3Vmc2hjZC5o
Cj4gQEAgLTEzNjAsNiArMTM2MCw4IEBAIGV4dGVybiBpbnQgdWZzaGNkX3N5c3RlbV90aGF3KHN0
cnVjdCBkZXZpY2UgKmRldik7Cj4gIGV4dGVybiBpbnQgdWZzaGNkX3N5c3RlbV9yZXN0b3JlKHN0
cnVjdCBkZXZpY2UgKmRldik7Cj4gICNlbmRpZgo+ICAKPiArZXh0ZXJuIGludCB1ZnNoY2RfZG1l
X3Jlc2V0KHN0cnVjdCB1ZnNfaGJhICpoYmEpOwo+ICtleHRlcm4gaW50IHVmc2hjZF9kbWVfZW5h
YmxlKHN0cnVjdCB1ZnNfaGJhICpoYmEpOwo+ICBleHRlcm4gaW50IHVmc2hjZF9kbWVfY29uZmln
dXJlX2FkYXB0KHN0cnVjdCB1ZnNfaGJhICpoYmEsCj4gIAkJCQkgICAgICBpbnQgYWdyZWVkX2dl
YXIsCj4gIAkJCQkgICAgICBpbnQgYWRhcHRfdmFsKTsKPiAtLSAKPiAyLjcuNAo+IAoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
