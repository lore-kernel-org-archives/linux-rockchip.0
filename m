Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 221DBC02182
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 14:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eqc1a/QVc3Ipf1FMLkyICGVbs8Ue+/9TatoRPvcDZT8=; b=i60OphtMEdYoiG
	vZ4L8BnoheNBmBAONW/l+xGLfRJn5dCWLCOSwydkC8dLCyuZoBfVw3AQey90YrQdLpr/j6Nni8kpv
	CyUeA6cLckpTggIVzOF1NtSh8j0z68psFJss01WZziWB2tVVuW85BkFTAKJL1IjG2nv3VaKNh5J3T
	6wxR778i5j1M47ipNWzdUkezE9wkLPV2m/LeJ0/qjPrtIno7bapz+t1an8RIrPB/NNoclxbmIJOOu
	Io1H1V1KJ2ybUq0wKCdVim5vwUeHGkCtawGnEIVtd1Yj5QuUHC0mwhTtXjPl/U2sqhzS38HMjPX+H
	q4DOO8p1ZXH7cRp3m7jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsZ7-00000005lWN-1W9o;
	Mon, 20 Jan 2025 14:15:45 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsZ5-00000005lVx-1X75
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 14:15:44 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2eed82ca5b4so7748548a91.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jan 2025 06:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737382542; x=1737987342; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X93jU0Gus1VPr9hu16YyKTh9IP0ufkdiXX4SHUR48Qw=;
        b=ipSMksLA6FO+uWWWJQlscWiLSv7tptwmFO5DR/fpamFrs7QXG/AdgcoCuGkcTPn/7f
         L/uMMCH0FxJHcJ0qqXdSH6XDqr1dmOGZdjUm0xYs/623XxDtbGyZATXnqP64fMFCCrhk
         yGoaTlxWjrnGKVOt21CehNi/d6Rs441VAYeXTuLWVf9dSVzVjuFWhswfCuma334Gq4yc
         5d79QqhJyT6ajOBAvX3m6PpswPefFucTSA03xzFrzKoTZmQqzj4+5r5MisrvkUfEWlsI
         0K5YgeMQJqhH/UNVKr2kqN+hrUNxlzQUMvOcfgPvTdc+vrAGH2ms3IdfAtnPvSWnB6sz
         fuhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737382542; x=1737987342;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X93jU0Gus1VPr9hu16YyKTh9IP0ufkdiXX4SHUR48Qw=;
        b=CpwsiVmTMz6IJfh+G16PkP1/MpDXVg12K3xuQ4Mzp//Axdxa/dvQ2GVh+dxSbNLDmG
         ofZqtiVKaaw2Nm7Dbk8YUEX1hGf1iC9lkRYE6a9z6GUp25KxrkjuvxW9dASazXkY0iWu
         /+AVbt2IdFfhaaV/LtLhxKsGJBloZ//+i7cgtimC1ocuRxeZAeS6nFKBpiCm94QR1ULo
         va5RE4zu2h4/PtVfSNpOjQc7ffFi978TYz65O0e9wlg3r9SS8YiDUU2kpP6pSVPXs7kf
         MJEe6l+7R/iuT/5izqZh2CkuVu7UVOK1MdQl+rKoglWqxgxRFOm4EJKV1KQVKUVO5wYr
         wRJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVaDnTNWqYw0ho9y3GxmntidQtQ4BEuW/rWHEE9L89zJv375HgZXmH/VgQLCL2UgXxj2TNucEOG3etknU8r1A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxvYWA4aqjmDjhd0O/9lCpspACtw2N/xMlrPKeemkypOm3919cN
	F85mE16XFeaPO7g99Qfr5RXGMkIIz56McMdcYkzYoqLoGJjFFo4dUGNRjke0qbJyPScfNi+M+D+
	Ke8J5tJtG9jPvXGhOaWcHP7yLAvI=
X-Gm-Gg: ASbGncs6iHE3q8f/R8+cCedFcUP7Mxoy7XQ8paL8G6c9JxTqwfU7CYwLG96UTITs2FM
	T9HZGM60v/HlqlRBY6vfnM5AIPPsODxmVhJAD65azRa+WSUZmtPA=
X-Google-Smtp-Source: AGHT+IGGccxNpy+IsyFFOJD23RVfyv6tsRwLchMJvYfmDefF7KiWzzOQ6xXkw2s1ydFUzT8i+8kkFcaLqQqWdLcR+ik=
X-Received: by 2002:a17:90a:da8e:b0:2ee:d024:e4fc with SMTP id
 98e67ed59e1d1-2f782d860d5mr21184053a91.33.1737382541853; Mon, 20 Jan 2025
 06:15:41 -0800 (PST)
MIME-Version: 1.0
References: <20250120081052.63224-1-benjamin.gaignard@collabora.com>
 <cc3b22c9-ff98-4328-9e70-4d22c29a6b0d@collabora.com> <95a8e3c6d28444750bd312ff61a3f6b0daea177a.camel@collabora.com>
In-Reply-To: <95a8e3c6d28444750bd312ff61a3f6b0daea177a.camel@collabora.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 20 Jan 2025 08:15:30 -0600
X-Gm-Features: AbW1kvY7-VEwEpTS4PY_x3_ozvi2Qys0pthZsAcLvD_VFF5U4ADkbZGyMeRexZQ
Message-ID: <CAHCN7xKySGN6wnE2FmpuLms-DyThBvx9w6vdKqJvsaWpgW6FOQ@mail.gmail.com>
Subject: Re: [PATCH] media: verisilicon: HEVC: Initialize start_bit field
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de, 
	mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_061543_405121_788F52E3 
X-CRM114-Status: GOOD (  19.05  )
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

T24gTW9uLCBKYW4gMjAsIDIwMjUgYXQgODoxMOKAr0FNIE5pY29sYXMgRHVmcmVzbmUKPG5pY29s
YXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPiBMZSBsdW5kaSAyMCBqYW52aWVy
IDIwMjUgw6AgMTE6MDAgKzAxMDAsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0IDoKPiA+IExl
IDIwLzAxLzIwMjUgw6AgMDk6MTAsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0IDoKPiA+ID4g
QWx3YXlzIHNldCBzdGFydF9iaXQgZmllbGQgdG8gMCwgaWYgbm90IGl0IGNvdWxkIGxlYWQgdG8g
Y29ycnVwdGVkIGZyYW1lcwo+ID4gPiBzcGVjaWFsbHkgd2hlbiBkZWNvZGluZyBWUDkgYml0c3Ry
ZWFtcyBhdCB0aGUgc2FtZSB0aW1lIHNpbmNlIFZQOSBkcml2ZXIKPiA+ID4gc2V0IGl0IGZvciBp
dCBvd24gcHVycG9zZS4KPgo+ICAgICAgICAgICAgICAgIGl0cwo+CgpEb2VzIHRoaXMgaW1wYWN0
IHRoZSBGbHVzdGVyIHNjb3JlPwoKPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4g
R2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPgo+ID4gSSBjb3Vs
ZCBhZGQgdGhpcyB0YWc6Cj4gPgo+ID4gRml4ZXM6IGNiNWRkNWEwZmE1MTggKCJtZWRpYTogaGFu
dHJvOiBJbnRyb2R1Y2UgRzIvSEVWQyBkZWNvZGVyIikKPgo+IEkgaGF2ZSB0ZXN0ZWQgdGhpcyBv
biBJTVg4TVEgYm9hcmQgdXNpbmcgdGhlIGZvbGxvd2luZyBHU3RyZWFtZXIgcGlwZWxpbmUuCj4g
QmVmb3JlIHRoZSBjaGFuZ2UsIHRoZSBIRVZDIHdpbmRvdyB3YXMgZW50aXJlbHkgY29ycnVwdGVk
LiBUaGUgc3RyZWFtcyBkb24ndAo+IG1hdHRlciBhcyBsb25nIGFzIHRoZXkgdXNlIGJvdGggSEVW
QyBhbmQgVlA5IGNvZGVjLgo+Cj4gZ3N0LWxhdW5jaC0xLjAgXAo+ICAgZmlsZXNyYyBsb2NhdGlv
bj1oZXZjLm1wNCAhIHBhcnNlYmluICEgdjRsMnNsaDI2NWRlYyAhIGZha2V2aWRlb3NpbmsgXAo+
ICAgZmlsZXNyYyBsb2NhdGlvbj12cDkubWt2ICEgcGFyc2ViaW4gISB2NGwyc2x2cDlkZWMgISBm
YWtldmlkZW9zaW5rCj4KPiBUZXN0ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVm
cmVzbmVAY29sbGFib3JhLmNvbT4KPgo+Cj4gPgo+ID4gPiAtLS0KPiA+ID4gICBkcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZjX2RlYy5jIHwgMSArCj4gPiA+
ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZjX2RlYy5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfaGV2Y19kZWMu
Ywo+ID4gPiBpbmRleCA4NWE0NDE0M2IzNzguLjBlMjEyMTk4ZGQ2NSAxMDA2NDQKPiA+ID4gLS0t
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfaGV2Y19kZWMu
Ywo+ID4gPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19n
Ml9oZXZjX2RlYy5jCj4gPiA+IEBAIC01MTgsNiArNTE4LDcgQEAgc3RhdGljIHZvaWQgc2V0X2J1
ZmZlcnMoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiA+ID4gICAgIGhhbnRyb19yZWdfd3JpdGUo
dnB1LCAmZzJfc3RyZWFtX2xlbiwgc3JjX2xlbik7Cj4gPiA+ICAgICBoYW50cm9fcmVnX3dyaXRl
KHZwdSwgJmcyX3N0cm1fYnVmZmVyX2xlbiwgc3JjX2J1Zl9sZW4pOwo+ID4gPiAgICAgaGFudHJv
X3JlZ193cml0ZSh2cHUsICZnMl9zdHJtX3N0YXJ0X29mZnNldCwgMCk7Cj4gPiA+ICsgICBoYW50
cm9fcmVnX3dyaXRlKHZwdSwgJmcyX3N0YXJ0X2JpdCwgMCk7Cj4gPiA+ICAgICBoYW50cm9fcmVn
X3dyaXRlKHZwdSwgJmcyX3dyaXRlX212c19lLCAxKTsKPgo+IEkndmUgYWxzbyBjcm9zc2VkIGFn
YWluc3QgImRlY29kZXJfc3dyZWdfbWFwX2cyLnhsc3giIGRvY3VtZW50YXRpb24sIGlmIHlvdSBh
cmUKPiBsdWNreSB0byBoYXZlIGFjY2VzcyB0byB0aGF0LCBhbmQgd2l0aGluIHN3cmVnNSB0aGVy
ZSBpcyBvbmx5IGcyX3RlbXBvcl9tdnBfZQo+IHRoYXQgaXMgYWxzbyBzaGFyZWQsIGFuZCBpdHMg
YWxyZWFkeSBiZWluZyBzZXQgaW4gYm90aCBkcml2ZXJzLgo+Cj4gUmV2aWV3ZWQtYnk6IE5pY29s
YXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPgo+Cj4gPiA+Cj4g
PiA+ICAgICBoYW50cm9fd3JpdGVfYWRkcih2cHUsIEcyX1RJTEVfU0laRVNfQUREUiwgY3R4LT5o
ZXZjX2RlYy50aWxlX3NpemVzLmRtYSk7Cj4gPgo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
