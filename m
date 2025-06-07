Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A242C61CE8
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jun 2025 02:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hvRxfnE2IvNmkRmfdRR9Fb1RCG8Hh9rn8PVYOCIayc=; b=pgDt8q2IVrJela
	01YLu/wosRV/g3MqsZN9j7U5gxOcPDhiD5oq0RSBcamTH7HdxN7EDVE5K2W48DjtSFlKzqK49xk9Q
	diDdeIxaTwRyLJBITLyIPDKH+YL6Azp/lBenbVcmITOttRwrpVmXhhiEN0RuzM1zqEkGz9slyGjCM
	8GEZSSEtwIk5Prf27LhC60Ny0l8u6ILVRZNCAeUlrSNap5TCV1OynTPKHOk99LYIc1BjGoGYskpMo
	i3PVftNm6EhEZKVuFmR76GyVIafyrLFFOOGXwe0o7M/34kr5jy+9HbQ5+AegHVrI9rsFUuYzIoniN
	FW0ILf82Ngbw1XIAvgJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNjYG-00000001GCF-1gSY;
	Sat, 07 Jun 2025 02:44:56 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNjW7-00000001FuM-3MbJ;
	Sat, 07 Jun 2025 02:42:44 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3a5096158dcso2303864f8f.1;
        Fri, 06 Jun 2025 19:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749264161; x=1749868961; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9CefWT92/pn4Htibx0ZcptASfFKnZ0vYyjmoTK16U7Y=;
        b=e9cXOC/6kAUPdXZ9IMjcx3ttLTpL16V7OlCjLBkZZRuxQtS2yAajqVQjGtDP7GyhZ/
         xzYA/JAzDq3LLpbARNKjJurshL9r1r+G0jJypGV56UYAxCCqNp9X2uaFFwv5q5L53SYz
         qTdHHaSAoJjba4cfnhakmbvU1a4kpXyuKCF2frjUMqAOL6NW1o6Zbwxo2bjONPE9dHJu
         kN9L89VSnFu+x/f58ShF8HxC30SRhbi/ZVG7IbJgmVyt6IUZ25fHHzyyPm5hzoDgwPnI
         qySz7B57bMIBXWW1WSCgIT+lhkX+xg4rG2dQOe2tHUaNbWxQBb7qxz4oyXAeRvIuRJsv
         bVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749264161; x=1749868961;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9CefWT92/pn4Htibx0ZcptASfFKnZ0vYyjmoTK16U7Y=;
        b=dbMTpna4FRKbTGpbWeasmcwYpx1wfu3+JYQaURBZNhx2N/5u7T2bxu/psAnXYFiiEp
         oUZRMKZPNuez0nQso6RSMcPzXsBhziFRME6358sNzlx1RIYaeQC46sk/LJEo0j5OHPZc
         gEfo4Ff4PehSg0vZ66uflU38KbN/uPwrE92lWcSLIkXhkEb9VA7+ynGapiNzuux80ZEY
         YfgHZ1QcNEhjYoYXl0aBvy3eP/r1M1Wd1SoVXikceI2q2dD0YBmtgUPPYSiaNl2jHZYP
         6W6TpIxveHKF2LZ2CUrF5hkV17YU++OZ9XVay9+IAS+LRPFyLwl6in9LxiJE6HtbPjM2
         AeNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSa1T0kxz7NGcHwy5xRNwJcSX1rX35GUvaysp2kUX/M6ZIMUTpc8FDYIYNeTrWdiLlbr0rXFhmmiUXBKwKwBA=@lists.infradead.org, AJvYcCW8x31tCgkJeb8oQpLRDXnx6G0xeADOf2IaU726F6i5qRH42L4CcvKRzEup1ATLw1IJRXfBfUkmQEIHincjVtNy@lists.infradead.org
X-Gm-Message-State: AOJu0YwtLmDvxBa1t2KxM/U4Jwpmu37u/PIXxbXFqD3dQvGEjdgsohIT
	SXI2oOvgRzAOexzEwBNvWHrYPzP5stkTp9cx25hLRn/4ksuJzeM1UIvhqqQEPRdowYMqiaSX7SO
	FonCjOy2Sh/JQZssuDuW/U5DcN4ZMop0=
X-Gm-Gg: ASbGncv6m0qEa3YbSCMUASbVbZR7pPtcOtNt2QqLKyfLXlSAZmKBy+acuaF/cwfwl3k
	AS2KQTav+oJs7q3G3nrNLTqNDUFgC6TrMeQbnOFMy38syIS+neCyNMJqTEkqBuGqaqugUBhRw/s
	aR85B2ixJ7JQJ/22fLmFdlEnRSYvuwzh/FPTj4OstCVtCrb/URTMm0Ime1dlwzQBgQXJ9amf2Gp
	g==
X-Google-Smtp-Source: AGHT+IGcEKkjQjtCriThcqw8RLc0+PuS0lf/rMkncpVF4bkgmYsjA2mOt2fM8jKZfdbuxZZdA2tkH6bTKQQT9twpEKA=
X-Received: by 2002:a05:6000:2dc9:b0:3a4:cfbf:519b with SMTP id
 ffacd0b85a97d-3a531ce09e4mr4689955f8f.44.1749264161453; Fri, 06 Jun 2025
 19:42:41 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-3-717e8ce4ab77@gmail.com> <CALWfF7JOJSihtfqrFiZtTxnzvoU6FP3WXuWjYOVaAvjPJZWWgg@mail.gmail.com>
 <CABjd4Yyw5xStJYU5c5snUGpBjEYL8=qoj=bWYLnuzSWzr8shaA@mail.gmail.com> <CABjd4YxfG3WZxRL3ihQLtdVdp_3Hq=TKKrZJktJ_C5i+xCM2Ag@mail.gmail.com>
In-Reply-To: <CABjd4YxfG3WZxRL3ihQLtdVdp_3Hq=TKKrZJktJ_C5i+xCM2Ag@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 6 Jun 2025 21:42:29 -0500
X-Gm-Features: AX0GCFsASrqjmeogHKGqU5uJIqowBQVTy5uoU6CN1I531lsTS5iFJUyKloDL55Q
Message-ID: <CALWfF7KS_kGK-RQVfcPMkvo_2PD_w992Z9hka_3=b=Cgnto6Lw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: enable wifi on ArmSoM Sige5
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_194243_842346_32CBCD89 
X-CRM114-Status: GOOD (  19.19  )
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

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCA5OjE04oCvQU0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
Z21haWwuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgSnVuIDUsIDIwMjUgYXQgMTA6MzLigK9BTSBB
bGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFRodSwg
SnVuIDUsIDIwMjUgYXQgNjo0M+KAr0FNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29t
PiB3cm90ZToKPiA+ID4KPiA+ID4gPgo+ID4gPiA+ICsmc2RpbyB7Cj4gPiA+ID4gKyAgICAgICBi
dXMtd2lkdGggPSA8ND47Cj4gPiA+ID4gKyAgICAgICBjYXAtc2Rpby1pcnE7Cj4gPiA+ID4gKyAg
ICAgICBkaXNhYmxlLXdwOwo+ID4gPiA+ICsgICAgICAga2VlcC1wb3dlci1pbi1zdXNwZW5kOwo+
ID4gPiA+ICsgICAgICAgbW1jLXB3cnNlcSA9IDwmc2Rpb19wd3JzZXE+Owo+ID4gPiA+ICsgICAg
ICAgbm8tc2Q7Cj4gPiA+ID4gKyAgICAgICBuby1tbWM7Cj4gPiA+ID4gKyAgICAgICBub24tcmVt
b3ZhYmxlOwo+ID4gPiA+ICsgICAgICAgc2QtdWhzLXNkcjUwOwo+ID4gPiA+ICsgICAgICAgc2Qt
dWhzLXNkcjEwNDsKPiA+ID4gPiArICAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2NfM3YzX3MzPjsK
PiA+ID4gPiArICAgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNjXzF2OF9zMz47Cj4gPiA+ID4gKyAg
ICAgICB3YWtldXAtc291cmNlOwo+ID4gPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4g
PiA+ICt9Owo+ID4gPgo+ID4gPiBXaGVuIHlvdSBlbmFibGUgdGhlIHNkaW8gbm9kZSBvbiB5b3Vy
IHYxLjIgYm9hcmQgd2l0aCB0aGUgYnJvYWRjb20KPiA+ID4gY2hpcCAodXNpbmcgU1lONDM3NTIp
LCBkb2VzIHRoZSBidHNkaW8ua28gYmluZCB0byB0aGUgZGV2aWNlIGFuZAo+ID4gPiBjcmVhdGUg
YW4gZXh0cmEgcmZraWxsIGJsdWV0b290aCBub2RlPwo+ID4KPiA+IEdvb2QgcXVlc3Rpb24sIEkg
ZGlkbid0IGhhdmUgaXQgZW5hYmxlZCBpbiBteSBidWlsZDoKPiA+Cj4gPiAjIENPTkZJR19CVF9I
Q0lCVFNESU8gaXMgbm90IHNldAo+ID4KPiA+IExldCBtZSBhZGQgaXQgYW5kIHJlcG9ydCBiYWNr
Lgo+Cj4gU28gSSd2ZSByZWJ1aWx0IGl0IHdpdGggYnRzZGlvLmtvIG1vZHVsZSBlbmFibGVkLiBB
cyBJIGJvb3QgdGhlCj4gc3lzdGVtLCBXaUZpICh2aWEgU0RJTykgYW5kIEJsdWV0b290aCAodmlh
IFVBUlQpIGRyaXZlcnMgZ2V0IHByb2JlZAo+IGFuZCBsb2FkIHRoZWlyIHJlc3BlY3RpdmUgZmly
bXdhcmVzLiBidHNkaW8ua28gZG9lc24ndCBnZXQKPiBhdXRvLWxvYWRlZC4gSWYgSSBsb2FkIGl0
IG1hbnVhbGx5IGFmdGVyIGJvb3RpbmcsIGl0IGRvZXNuJ3QgYmluZCB0bwo+IGFueXRoaW5nIGFu
ZCBkb2Vzbid0IGNyZWF0ZSBhbnkgZXh0cmEgcmZraWxsIG5vZGVzLgo+Cj4gSXMgdGhlcmUgYW55
dGhpbmcgZWxzZSBJIG5lZWQgdG8gY2hlY2sgb3IgbG9vayBvdXQgZm9yPwo+Cj4gQmVzdCByZWdh
cmRzLAo+IEFsZXhleQoKVGhhdCBzaG91bGQgYmUgYWxsIHlvdSBuZWVkIHRvIGNoZWNrLiBJIGd1
ZXNzIHRoZXkgc3RvcHBlZCBpbmNvcnJlY3RseQphZHZlcnRpc2luZyBTRElPX0RFVklDRV9DTEFT
UyBmb3IgYmx1ZXRvb3RoLgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
