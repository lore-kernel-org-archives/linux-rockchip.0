Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C86E4E7716A
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Dec 2024 03:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0a4kovF0iup1hiy/zahOdKE/cogjlDYVfnpZgUcNkI=; b=Q3gA8sYJxuFtBi
	4hBH8t1WCs9TjgKjzZZ51BXvCLIJ0IrrlJLu+0y6Tx3o9eVItLFoePDbwccr/Y/bLX5OZyBh+BuWR
	qIzCld8ulvfpI4InLKG4R4Gkt9OAm930lNIItaBxGxIdlhn1DiM691E3+tpxr+FrxMxn8tpkjMdaH
	mC8+IK6rSq0PxYIBywvwM/nOlg5777BAKezLz2Wc6Y5sJfl8enMtUy6QQbap35eUHU9urmy1LJ0dK
	neElg+DHwYn7ET1LeubPlzAhj5mRe0NU+AACcZElRA1TpqWqMyWhhzCuL6f/xfs6njs4D3y6Dxgld
	nID5VEC1LhpAaioTbq5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMfKn-00000007KZp-1UHF;
	Sun, 15 Dec 2024 03:30:21 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMfHs-00000007K6C-2szZ;
	Sun, 15 Dec 2024 03:27:22 +0000
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-3a9cdcec53fso27091205ab.1;
        Sat, 14 Dec 2024 19:27:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734233239; x=1734838039; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GU+0R/zCIoCNC2OYdjkWppKJT9H70D+WolgyqGUuDu8=;
        b=gtqRdLxij42jM5HWvmw3rWLYTfhbZMc2eQHhCTGIRhBGW7zQV618mIg00ZCsOlFAJd
         MsHigMLGjGEvc9i1yXXtU6U4Fftn6fZ4ZkurcB+qkdkkfAX8T5Ds5o0bAnJ5qsJescDh
         mEy+YwvAskkER/T2Tm+9wiY3wmIFlfTE9aXjU+GIl7Za27HuTCSTgA0fLjB02KZjrB/E
         h8S9jbIEQmKXX+joot4vsxkW9o76+MoVswvaW6icwfmsOqwbJ/d0RxB6hVyGZoleUpIK
         4URKZUD6fEaJswu/SApdOzm9tgi1+tDfRhK5s0hxGfVYUzbNR1w5IjRDImeEPCVio66z
         7boA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734233239; x=1734838039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GU+0R/zCIoCNC2OYdjkWppKJT9H70D+WolgyqGUuDu8=;
        b=izmem2j4/TdS37C+UtYl9u+uBwI+dPYJYPHqncdSRqFaCFX1FVocn9WPz8yOX997fO
         eOvyGfzltM4iJD/Qrrs3KdFJcgSeu+SUKTeCDJkgLvyOGqiSrTMOKJ31gr3KpkI8cWk2
         i5RV4Xkyfb/qEDU0Ykg4dERqgMZ9BgPCHt6QawQQaVtPC5gXuuCN/iqlj4qLFUwA3bUX
         xVJp2KXdNXR/ouPjVxOiyH2POyn38fEg9COcNCk3BdiBTCfl4w9VHzWwD0iIh9jyYaRa
         uLySNXG9c2Zlip2xkQu7A/iQbv8XHfO/mihGMn3X2Q9eh69nc8lYK+735gs1CheCF00b
         zIHw==
X-Forwarded-Encrypted: i=1; AJvYcCWOkDgVzaKM/Jl0kvUa6fBS/3ruCp5+Kk85IjvpZyl5+XKy5js8vMaDDASE22zipjN0qCh2Hw3dzVJ4lnTORYXj@lists.infradead.org, AJvYcCXhNBTh4O2mZceWtVUDRCguHHA09y2C7vTE/vdvYF/jPRH32T/LMO3YWFsUNlJWOfLHM1odCvrJlROuv4lS/JE=@lists.infradead.org
X-Gm-Message-State: AOJu0YzN6RHwzFOTzLO8PPTKHWkSaOxtgSpxpdOyOP3dRe6MAwZ7AdEP
	3D9E1xgcbziZQ/N5BOD0Ka+XNb+3sSBV+Sq6dJlJiah2jXUsTfb5
X-Gm-Gg: ASbGnct2K+MZRsu7nuFrR+bV5ugzQjw20MtVUsBEhH3fstMPBpUbL0Vi7sQV0VnRF60
	evJBoeUdJqV48uSWBj9tq6Nh0fD4lTkuI/ENPUvnqRHvXgIo3qQl22L/rAKXk1eTAY0QFrGileV
	PViozzOiB2Dp+ljEdz6OJwfHdmzgjCIACojYeJRIjxP1Xw0jjn4Sw746u7uFtfIrRIHfhdVIo0K
	co7AhFn/w9I96KS5UiU+5hpM6d3RVxtHsqO37i/V1+uPdXZnTGxREbJmWsyGGRdfOXfx3I9Pyvv
	EobitbMqv4QMec7wjrG2dTj+lvQ=
X-Google-Smtp-Source: AGHT+IGLuZuyUVQlqPr/ixxRq6aO17BEgow0JIL6t0cNgQQ/GGoVKqF15/txgg5gdcvquaAnaVX+HQ==
X-Received: by 2002:a05:6e02:168f:b0:3a7:d792:d6c4 with SMTP id e9e14a558f8ab-3aff972b7c0mr88949015ab.21.1734233239593;
        Sat, 14 Dec 2024 19:27:19 -0800 (PST)
Received: from localhost.localdomain (65-128-205-244.mpls.qwest.net. [65.128.205.244])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3b2482298c6sm7755575ab.31.2024.12.14.19.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Dec 2024 19:27:18 -0800 (PST)
From: Shimrra Shai <shimrrashai@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	Shimrra Shai <shimrrashai@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: pinctrl: add header for PCA9555 GPIO extender bindings on some Rockchip-based devices
Date: Sat, 14 Dec 2024 21:24:54 -0600
Message-ID: <20241215032507.4739-3-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241215032507.4739-1-shimrrashai@gmail.com>
References: <20241215032507.4739-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_192720_746371_F5A61D18 
X-CRM114-Status: GOOD (  15.00  )
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

SXQgc2VlbWVkIGEgYml0IGRpc3B1dGVkIHdoZXRoZXIgdGhpcyB3YXMgYWN0dWFsbHkgbmVjZXNz
YXJ5LCBidXQgSSBhbQppbmNsdWRpbmcgaXQgbm9uZXRoZWxlc3MuIEl0IG1ha2VzIGl0IHNsaWdo
dGx5IGNsZWFyZXIgaG93IHRoZSBwaW5zIG9uIHRoZQpQQ0E5NTU1IEdQSU8gZXh0ZW5kZXIgdXNl
ZCBvbiB0aGUgYm9hcmQgYXJlIGFjdHVhdGVkIHRoYW4gd291bGQgYmUgZXZpZGVudApmcm9tIHRo
ZSBudW1iZXJzIGFsb25lLCBzaW5jZSBhY2NvcmRpbmcgdG8gdGhlIHNwZWMgc2hlZXRzIGZvciBp
dCBieSBOWFA6CgpodHRwczovL3d3dy5ueHAuY29tL2RvY3MvZW4vZGF0YS1zaGVldC9QQ0E5NTU1
LnBkZgoKdGhlcmUgYXJlIHR3byBiYW5rcyBvZiBjb250cm9sbGFibGUgcGlucywgSU8wIGFuZCBJ
TzEsIHdoaWNoIGFyZSBsYWJlbGVkCmVxdWl2YWxlbnRseSB0byB0aGUgbGFiZWxzIHByb3ZpZGVk
IGJlbG93LgoKQWxzbyBzb3JyeSBASGVpa28gU3TDvGJuZXIgZm9yIGFkZGluZyB5b3VyIG5hbWUg
b24gaXQ7IEkgaGFkIGN1dCB0aGlzIG9mZiBhCkJTUCBzb3VyY2UgZmlsZSB0aGF0IHdhcyBsb25n
ZXIuIFNpbmNlIHRoaXMgZmlsZSBjb250YWlucyBvbmx5IHRoaXMKaXNvbGF0ZWQgc2VjdGlvbiwg
d2hpY2ggd2FzIHdyaXR0ZW4gYnkgc29tZW9uZSBlbHNlLCBJIHB1dCB0aGVpciBhdXRob3JzaGlw
Cm9uIGl0IGluc3RlYWQuIFVuZm9ydHVuYXRlbHkgSSBkbyBub3Qga25vdyB3aG8gImRhaWpoIiBp
cywgb25seSB0aGF0IHRoZXkKdXNlZCB0aGF0IGhhbmRsZSBvbiBHaXRMYWIgdG8gc3VibWl0IHRo
aXMgY29kZSBwaWVjZSBhbmQgSSBnb3QgdGhlCmluZGljYXRlZCBlbWFpbCBhZGRyZXNzLgoKU2ln
bmVkLW9mZi1ieTogU2hpbXJyYSBTaGFpIDxzaGltcnJhc2hhaUBnbWFpbC5jb20+Ci0tLQogLi4u
L2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAtcGNhOTU1NS5oICAgIHwgMzEgKysrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAtcGNhOTU1NS5oCgpk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLXBjYTk1NTUu
aCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcC1wY2E5NTU1LmgKbmV3IGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwLi4yMWNhOTk0ODgKLS0tIC9kZXYvbnVsbAor
KysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAtcGNhOTU1NS5oCkBAIC0w
LDAgKzEsMzEgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgT1Ig
TUlUICovCisvKgorICogQmluZGluZ3MgZm9yIHRoZSBQQ0E5NTU1IEdQSU8gZXh0ZW5kZXIgdXNl
ZCBvbiBzb21lIFJvY2tjaGlwIGRldmljZXMsIGUuZy4KKyAqIEZpcmVmbHkuCisgKgorICogQ29w
eXJpZ2h0IChDKSAyMDIyIFpob25nc2hhbiBUaWFucWkgSW50ZWxsaWdlbnQgVGVjaG5vbG9neSBD
by4sIEx0ZC4KKyAqIEF1dGhvcnM6IGRhaWpoIDxkamhAdC1jaGlwLmNvbS5jbj4KKyAqICAgICAg
ICAgIFNoaW1ycmEgU2hhaSA8c2hpbXJyYXNoYWlAZ21haWwuY29tPgorICovCisKKyNpZm5kZWYg
X19ST0NLQ0hJUF9QQ0E5NTU1X0hfXworI2RlZmluZSBfX1JPQ0tDSElQX1BDQTk1NTVfSF9fCisK
KyNkZWZpbmUgUENBX0lPMF8wICAgICAgICAgIDAKKyNkZWZpbmUgUENBX0lPMF8xICAgICAgICAg
IDEKKyNkZWZpbmUgUENBX0lPMF8yICAgICAgICAgIDIKKyNkZWZpbmUgUENBX0lPMF8zICAgICAg
ICAgIDMKKyNkZWZpbmUgUENBX0lPMF80ICAgICAgICAgIDQKKyNkZWZpbmUgUENBX0lPMF81ICAg
ICAgICAgIDUKKyNkZWZpbmUgUENBX0lPMF82ICAgICAgICAgIDYKKyNkZWZpbmUgUENBX0lPMF83
ICAgICAgICAgIDcKKyNkZWZpbmUgUENBX0lPMV8wICAgICAgICAgIDgKKyNkZWZpbmUgUENBX0lP
MV8xICAgICAgICAgIDkKKyNkZWZpbmUgUENBX0lPMV8yICAgICAgICAgIDEwCisjZGVmaW5lIFBD
QV9JTzFfMyAgICAgICAgICAxMQorI2RlZmluZSBQQ0FfSU8xXzQgICAgICAgICAgMTIKKyNkZWZp
bmUgUENBX0lPMV81ICAgICAgICAgIDEzCisjZGVmaW5lIFBDQV9JTzFfNiAgICAgICAgICAxNAor
I2RlZmluZSBQQ0FfSU8xXzcgICAgICAgICAgMTUKKworI2VuZGlmCi0tIAoyLjQ1LjIKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
