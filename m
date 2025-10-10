Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A97ACCD183
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 03:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sz9Wx78fuGUV1p/Z5p9fpbFl6LhI2j31TytxNIlhY5c=; b=RgjT+MU7KKsxJr
	FwxXq7KSPtD3DIyNEXaAG/MSiaC9j+z5qOWWfsbNHLX6F+hFV8ndAKxzX2/VhzndwFV1qO1B+B4l+
	JsEJQifrg0kTQ6DVqCX8MC3sY4HHmuyIH/XkawMwGSlEw4aHiOU5WuSy/7yND1/bL5i+Pt/IDwEbe
	vcDP5wuv4HQE69JrrkRH20FQ41fQQuq8CdCDzCBXcGw23QwIXc2uTuAGZPafsD7en6YfRHL8086dh
	NGv0S4iq4xLcBcq4mpTqt0TcQ4bEJost+84RAzJuq2JLhSwphNL+OGfAzYYh0zK15CXRnzqfOCWuF
	LBNBTtBjYSL7YMN9vrOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v73WX-00000007Xjf-14BF;
	Fri, 10 Oct 2025 03:10:29 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v73WU-00000007Xix-3Pni
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Oct 2025 03:10:28 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4df81016e59so16145801cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 20:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760065825; x=1760670625; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfBVY1jC5OL4Yfzob3d0houbqInXLSFHJbfki1TjZA8=;
        b=MkDiE1fiDBOe4X4TifpvYkHOrrWdMZlVWMQ27pB6WQRP2OUL1YqNhWH5QKZ/5K6+hn
         2t+gzqIByNyctmvHBNlEGKKiEDGzzaxIsxxtcrgVC1sIaF4RZHQqfMq/GX9av+RyBwr2
         ZEgkdbpovYAHQL8TLJ2ke9ZxyYJSflEWXgu6U4pZFyX2Mio316OhwPbkjJ3GEiNs9L2b
         tB1n4pMaRS37WDaXXgdoS9EcCxTeXvJr+kFSU7yU1PVlXwRPW83BdtN9FUpbpS+ktWdT
         JMCRbxYX2LZEOna/ROIIAmuhN4Z5XPP97HCrxG2ogQkKDOYKn5+Rk1zYJ2VQSXy4oNS3
         lmhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760065825; x=1760670625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JfBVY1jC5OL4Yfzob3d0houbqInXLSFHJbfki1TjZA8=;
        b=h3+B41Un2bMzBkjXm3Mhv2WCSHCSacDYvWPWcIo36dKJDbHh1E8rt4WF2LoJYWbLav
         2MK2/hFThVlXOJtY/KLzBruvhDX3v/0f5QFbSZ5+tu0yR7Aowvt+k7RlITJJjsztMhg5
         CtRHQauHP6Pz7W4cPGxHhIXhmkoCmkI12kLIA/QcJtCJp7aNCAGIxJQkEXObKg7/fafg
         WL0P8cgDiPC7ehF3wuPSU41btWQE+Yh9HCZMBytuBGk42LvtmVmi4xTOyCokqFpxgtAU
         JzEmG5G4vAr5CZRgof6s353t2DwPVyMpLFnp/fAtSnHYqTQelBLSicJf5WGXtSC77MFf
         b8wA==
X-Forwarded-Encrypted: i=1; AJvYcCWnIDu4e+gvmdnVCgM2N/oAkrP7qnisSfArGJbiMSZA+pYTFSErdJYx1NRLPlCASiLxfEO3C1n6NwDC/qgsVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjzmrBFWy3jkYUCL3h1RlyIKtc9qv9IouEKMwAjYUL6nSaJWLP
	h/P6mTHLAPf8uaLShzGdH9g4MCIDS7bdA0sXdQXXZJRxVN3j+IlsadA8aBmdjiGvN32OTAdi/k/
	J7xQBosM/8vFtsuCHpVZaYrblCTKqX/o=
X-Gm-Gg: ASbGncuYduNt/okf7ysOV9h3u0G+xxJPM90pHK6Dt0Hkdpto4AH1ygY5IDV1eFaDtvr
	mYisOFt7EkNeyNVXqVZ9nN+lI36p7SyJw08HOmFIA7EF+NojJoeX9oZ7/eyzZo2WU5vJ15Cgsuj
	bFM98GkIEjU4uh7xxuSH/tP8K63am/LNCZQN/66DkV8oPyRjZxmxUFWmg0fFLybhgLvcp70B9mU
	gGCV4WBj9ET9Ly9sCRV63oPAQw=
X-Google-Smtp-Source: AGHT+IFluk1MSNac3TCPhPVi9qi50zuTrK2jUh6H0rLnaJa6VffG1JzsGBd2YJ7unkitxA1fB1mu0nrqMsKlTJNit7Y=
X-Received: by 2002:a05:622a:4291:b0:4b7:9171:7b10 with SMTP id
 d75a77b69052e-4e6ead65002mr133384621cf.64.1760065825344; Thu, 09 Oct 2025
 20:10:25 -0700 (PDT)
MIME-Version: 1.0
References: <20251009084416.45542-1-jjm2473@gmail.com> <20251009084416.45542-4-jjm2473@gmail.com>
 <aOe_0EufouURu7R2@shell.armlinux.org.uk>
In-Reply-To: <aOe_0EufouURu7R2@shell.armlinux.org.uk>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Fri, 10 Oct 2025 11:10:14 +0800
X-Gm-Features: AS18NWDTnRTIksFcQ9CLnbgJn8_5OiC5-7_R77k4csy5P5t4wcfC3lX9jt0dZps
Message-ID: <CAP_9mL4PRcYr1o7Vand+wws34GxGBzaVvY2p29Lyrzc13kKvMQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com, 
	honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com, 
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org, 
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org, 
	jbx6244@gmail.com, andrew@lunn.ch, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_201026_902455_2B00901F 
X-CRM114-Status: GOOD (  27.22  )
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

UnVzc2VsbCBLaW5nIChPcmFjbGUpIDxsaW51eEBhcm1saW51eC5vcmcudWs+IOS6jjIwMjXlubQx
MOaciDnml6Xlkajlm5sgMjE6NTnlhpnpgZPvvJoKPgo+IE9uIFRodSwgT2N0IDA5LCAyMDI1IGF0
IDA0OjQ0OjE2UE0gKzA4MDAsIExpYW5nYmluIExpYW4gd3JvdGU6Cj4gPiArJmdtYWMwIHsKPiA+
ICsgICAgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiA+ICsgICAgIGNsb2NrX2luX291dCA9ICJp
bnB1dCI7Cj4gLi4uCj4gPiArJmdtYWMxIHsKPiA+ICsgICAgIHBoeS1tb2RlID0gInJnbWlpLWlk
IjsKPiA+ICsgICAgIGNsb2NrX2luX291dCA9ICJpbnB1dCI7Cj4KPiBJIGFtIGZpbmUgd2l0aCB3
aGF0IGlzIGJlaW5nIHByb3Bvc2VkIGhlcmUsIGJ1dCBJIHRoaW5rIHRoaXMKPiBjbG9ja19pbl9v
dXQgcHJvcGVydHkgbmVlZHMgZml4aW5nLiBUaGUgZGVzY3JpcHRpb24gZm9yIGl0IGlzIHRodXM6
Cj4KPiAgIGNsb2NrX2luX291dDoKPiAgICAgZGVzY3JpcHRpb246Cj4gICAgICAgRm9yIFJHTUlJ
LCBpdCBtdXN0IGJlICJpbnB1dCIsIG1lYW5zIG1haW4gY2xvY2soMTI1TUh6KQo+ICAgICAgIGlz
IG5vdCBzb3VyY2VkIGZyb20gU29DJ3MgUExMLCBidXQgaW5wdXQgZnJvbSBQSFkuCj4gICAgICAg
Rm9yIFJNSUksICJpbnB1dCIgbWVhbnMgUEhZIHByb3ZpZGVzIHRoZSByZWZlcmVuY2UgY2xvY2so
NTBNSHopLAo+ICAgICAgICJvdXRwdXQiIG1lYW5zIEdNQUMgcHJvdmlkZXMgdGhlIHJlZmVyZW5j
ZSBjbG9jay4KPiAgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvc3Ry
aW5nCj4gICAgIGVudW06IFtpbnB1dCwgb3V0cHV0XQo+ICAgICBkZWZhdWx0OiBpbnB1dAo+Cj4g
VGhlIHByb2JsZW1zIHRoYXQgSSBoYXZlIGhlcmUgYXJlOgo+Cj4gMSkgdGhlIGRlc2NyaXB0aW9u
IHN0YXRlcyB0aGF0IHRoZSBvbmx5IHBvc3NpYmxlIHZhbHVlIGZvciB0aGlzIHdoZW4gaW4KPiAg
ICBSR01JSSBtb2RlIGlzICJpbnB1dCIgd2hpY2ggaXMgcmVhc29uYWJsZSwgYmVjYXVzZSBpdCdz
IGR1ZSB0byB0aGUKPiAgICBSR01JSSBzcGVjaWZpY2F0aW9uLiBUaGUgZHJpdmVyIGNvZGUgaXMg
cGVyZmVjdGx5IGFibGUgdG8gZGV0ZXJtaW5lCj4gICAgd2hldGhlciBSR01JSSBoYXMgYmVlbiBz
cGVjaWZpZWQsIGFuZCBzZXQgYnNwX3ByaXYtPmNsb2NrX2lucHV0Cj4gICAgaXRzZWxmLCByZWxp
ZXZpbmcgRFQgb2YgdGhpcyBuZWVkLgo+Cj4gMikgYnNwX3ByaXYtPmNsb2NrX2lucHV0IGlzIG9u
bHkgdXNlZCBpbiBnbWFjX2Nsa19lbmFibGUoKSB3aGVuIGNhbGxpbmcKPiAgICB0aGUgU29DIHNw
ZWNpZmljIHNldF9jbG9ja19zZWxlY3Rpb24oKSBtZXRob2QuIE9ubHkgUkszNTI4LCBSSzM1NzYs
Cj4gICAgYW5kIFJLMzU4OCBwb3B1bGF0ZSB0aGlzIG1ldGhvZC4gRXZlcnkgb3RoZXIgU29DIHN1
cHBvcnRlZCBieSB0aGlzCj4gICAgZHJpdmVyIHN0aWxsIHJlcXVpcmVzIHRoZSBwcm9wZXJ0eToK
Pgo+ICAgICAgICAgcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF9zdHJpbmcoZGV2LT5vZl9ub2RlLCAi
Y2xvY2tfaW5fb3V0IiwgJnN0cmluZ3MpOwo+ICAgICAgICAgaWYgKHJldCkgewo+ICAgICAgICAg
ICAgICAgICBkZXZfZXJyKGRldiwgIkNhbiBub3QgcmVhZCBwcm9wZXJ0eTogY2xvY2tfaW5fb3V0
LlxuIik7Cj4gICAgICAgICAgICAgICAgIGJzcF9wcml2LT5jbG9ja19pbnB1dCA9IHRydWU7Cj4g
ICAgICAgICB9IC4uLgo+Cj4gICBJZiBvbmUgZG9lc24ndCBwcm92aWRlIGl0LCBvbmUgZ2V0cyBh
biBlcnJvciBwcmludCwgd2hpY2ggaXMgbm90IG5pY2UKPiAgIEkgbm90ZSB0aGF0IHRoZSBEVCBi
aW5kaW5nIGRvZXNuJ3QgbGlzdCB0aGlzIHByb3BlcnR5IGFzIHJlcXVpcmVkLCBzbwo+ICAgdGhl
IGNvZGUgaXMgYXQgb2RkcyB3aXRoIHRoZSBiaW5kaW5nLgo+Cj4gICAoSSBub3RlIHRoYXQgeW91
ciBSb2NrY2hpcCBTb0MgaXMgUkszNTY4LCB3aGljaCBkb2Vzbid0IGltcGxlbWVudCB0aGlzCj4g
ICBtZXRob2QuKQo+Cj4gU28sIHRha2luZyBib3RoIHRoZXNlIHBvaW50cyB0b2dldGhlciwgdGhl
IGNvZGUgc2hvdWxkIG5vdCBiZSBwcmludGluZwo+IGFuIGVycm9yIGlmICJjbG9ja19pbl9vdXQi
IGlzIG1pc3Npbmcgd2hlbiBlaXRoZXI6Cj4KPiBhKSBSR01JSSBpcyBiZWluZyB1c2VkIChvciBt
YXliZSBvbmx5IHdoZW4gUk1JSSBpcyBiZWluZyB1c2VkPykKPiBiKSB0aGUgc2V0X2Nsb2NrX3Nl
bGVjdGlvbigpIG1ldGhvZCBpcyBub3QgcHJlc2VudCBmb3IgdGhlIFNvQyB2YXJpYW50Lgo+Cj4g
V2l0aCB0aGUgZHJpdmVyIGZpeGVkIGFzIGluZGljYXRlZCBhYm92ZSwgSSB0aGVuIHRoaW5rIGNs
b2NrX2luX291dCBpbgo+IHlvdXIgZGVzY3JpcHRpb25zIGJlY29tZXMgdW5uZWNlc3NhcnksIGFu
ZCBzaG91bGQgYmUgcmVtb3ZlZC4KPgo+IC0tCj4gUk1LJ3MgUGF0Y2ggc3lzdGVtOiBodHRwczov
L3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCj4gRlRUUCBpcyBoZXJlISA4
ME1icHMgZG93biAxME1icHMgdXAuIERlY2VudCBjb25uZWN0aXZpdHkgYXQgbGFzdCEKCkluIGZh
Y3QsIGRlbGV0aW5nIHt0eHxyeH1fZGVsYXkgYWxzbyBwcmludHMgZXJyb3JzLApidXQgaXQgZG9l
cyBub3QgYWZmZWN0IHRoZSBmdW5jdGlvbi4KSSBhZ3JlZSB0aGF0IHRoZXNlIHByaW50cyBvbiB0
aGUgZHJpdmVyIHNob3VsZCBiZSBmaXhlZC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
