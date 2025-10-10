Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1678FCCD184
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Oct 2025 03:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VW420lYfw+gUy+VXBsMf7CGiDJJQCBIpS+becdhldQs=; b=AURg1fyG1cg2P7
	S6XAfvyG3eAz6lb+qPPj2ulWEEchXCuz4KEpe0GUGPe5SNr8nRHN/IMxJlOaV6hGcKIbdJdAknUFj
	iFAgtQX05+3E3AaWv3uPGLUftK9Gog+CWyITBfaGEEFDoUQRcIfGaQmsgInWhxhlnBwjLrfKZaqvi
	nRLPCL5CYE0OZrrQeY9djXBrqoRzAK4wa+pzlMf20f3jEgbQtIYUl+KjNZtndIyHIlSJ5xJ9Qe43G
	sUNx5DBb/P+zMl8Tk5P8zMPqsPSv03y+/PgpMZCRerU560fWAeBYKQhlb+0UY8/PRln3z8zHXDeQ5
	RwdfI+h5hlALO6W0Jl5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v73g7-00000007YRm-0VqL;
	Fri, 10 Oct 2025 03:20:23 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v73g5-00000007YQx-1Il8
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Oct 2025 03:20:22 +0000
Received: by mail-qt1-x835.google.com with SMTP id d75a77b69052e-4df81016e59so16203611cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Oct 2025 20:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760066420; x=1760671220; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nmWw5+Dj1mFyUNTa6/5YxEtv7JkoN4Y3GT6P1fyCsMU=;
        b=PHe8qFyFQDl4RU7ILvRrkr+1TWkXL7VlM7w7CHYp1vwfHQHre0RHte/5T/O0OFi3FR
         nlKJ47/vyoA+DBYxKvFlwUC40xfIFkt2gDTZk8L/mMO+/krS6GvMQYbktYEw3ucnuZ7t
         N2WIVFwwc8Vu8DAVezCRzYAn/zFoxKP+D4E7viLI83Z05ib0keS/Lt9t1cFZ499VEHKq
         h02bGTom8+7THOJ7ScTB1g8b8C8nv0RpNysXXoDEwMs8DZ7t3p7QSsq4Z/Df97eUdAzd
         O9zu9Ft8/sE4k5fLjUZWpP+dVAPdK2liN8Yxzibq7Ql6uKZMQBrPLKo9X8tRCYOeFZK7
         2+rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760066420; x=1760671220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nmWw5+Dj1mFyUNTa6/5YxEtv7JkoN4Y3GT6P1fyCsMU=;
        b=K1vPJoA/U/uLKefFKIGT8G72V2Q2K3ZYS5eLcTvAJt5Hz50CfHf5vq1LxLQmDB+i/f
         p88Ltmdy9bQaBjgf5kAk85aHz5PyM04p8KCsejfQjmenAfq5oVz8s9LKrVDUmafZ5qb6
         iqfE5ZNi154Z1StQEmz3TuyQGzYqtH46fpcVb7LYrHS2OnpSx2gkiVRwQe/z0GsiFNJt
         Lt4tTPT5Zmjps1q9/EPI9+xV799wgCdzefIblFZbxfYpOabFflZiXnjPbmyVrGQArjad
         2vhGtoItdQkPP77mq31aDvauREJhKzBf0JktZzgndR5bDSZITNeuUkEaECPNeYj+vNJV
         T0Sw==
X-Forwarded-Encrypted: i=1; AJvYcCW6GbqGk7LNmpArGassaOd19lD7gM5wugbv2PUnUPiXbB2c7wpQr7qykapZydu54nybYnrpScnaRB/vv4QiXA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywza2Ok/3oazaLzBZpQMRgAQvzNqU1K6nV0km1vB2ChRFpQzEwn
	p1fJk90Ncq78SCBboYcYqKy9rB9FMS3njtZvg79bq2I3vug7LoGsXICeSezX0yshRDJQj6kMVsG
	+5f+dBpd/2QqKuqDXNCTUZsTCbYTUeGQ=
X-Gm-Gg: ASbGncvp7tzwRQ1x5EDTnCp+KT1GCpAaWcC5BeiR66NdzdtbfDwle2tHiX2fa4uLl6P
	FP6Gvk7kX9VI48Clwn5LBz1rToMgoTy8dQ/yP6aRQ7eTZx2EMj6M5ovRCFpOcoTgDO6RdFclT/W
	ZbjsxaS1nah0txZREiyJUzmykZ+XT7r8lKzkvJp/+x6cyRuTbhwivoKsuKutCA2XD4+zc4hCoaT
	S7TFo7zg2I/vK91p9fH1aVFwNVfo8KITizSnA==
X-Google-Smtp-Source: AGHT+IG/f2JLTSStGduS6XZjeZ+es0r1EhO6WUkmy1NWRrK48A440J2He6YHChg8tiyLaptae0m7b+ub/wDnL1a78ak=
X-Received: by 2002:a05:6214:19cc:b0:795:67ac:ca5d with SMTP id
 6a1803df08f44-87b2109283cmr151808406d6.30.1760066420103; Thu, 09 Oct 2025
 20:20:20 -0700 (PDT)
MIME-Version: 1.0
References: <20251009084416.45542-1-jjm2473@gmail.com> <20251009084416.45542-4-jjm2473@gmail.com>
 <aOe_0EufouURu7R2@shell.armlinux.org.uk>
In-Reply-To: <aOe_0EufouURu7R2@shell.armlinux.org.uk>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Fri, 10 Oct 2025 11:20:08 +0800
X-Gm-Features: AS18NWCmhVw11nXPu-jU8ygXHImQqmaDaGRECyqzHvDtAZ_V_270USq7PdCB0EY
Message-ID: <CAP_9mL4MfzagxiMD1VdOu=jBuN_XsOrvPQT=XTVgu2+G=+nD9A@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20251009_202021_378301_9276B574 
X-CRM114-Status: GOOD (  26.59  )
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
ME1icHMgZG93biAxME1icHMgdXAuIERlY2VudCBjb25uZWN0aXZpdHkgYXQgbGFzdCEKCgo+ICAg
Y2xvY2tfaW5fb3V0Ogo+ICAgICBkZXNjcmlwdGlvbjoKPiAgICAgICBGb3IgUkdNSUksIGl0IG11
c3QgYmUgImlucHV0IgoKVGhpcyBkZXNjcmlwdGlvbiBkb2VzIG5vdCBtYXRjaCB0aGUgYWN0dWFs
IHNpdHVhdGlvbiwKdGhlcmUgYXJlIG1hbnkgZHRzIHVzaW5nICdvdXRwdXQnOgpodHRwczovL2Vs
aXhpci5ib290bGluLmNvbS9saW51eC92Ni4xNy9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtYnBpLXIyLXByby5kdHMjTDIzNQpodHRwczovL2VsaXhpci5ib290bGlu
LmNvbS9saW51eC92Ni4xNy9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjgtZXZiMS12MTAuZHRzI0wyNDEKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYu
MTcvc291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWZhc3RyaGluby1y
NjhzLmR0cyNMMzMKaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTcvc291cmNl
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW5hbm9waS1yNXMuZHRzI0w3OAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
