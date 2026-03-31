Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA52FF60D5
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 19:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzWtk+UPWYiIqL+WqlDh6FZG7hT1tnmT93UeVxoZDkM=; b=jOwxhR65/Gkqlc
	9GJ+zDF/Fv3d0cdT5fT0fyUk6L6XIqHKT8NEL4cHmfc5S/02DRyOJxbVI8mlAS7MpV9CSgYCpefOc
	VPm4TvFYCwPlNyjn3iAJgOqn/HTl9X/aJxxkHtGUS+nucKa3UxZUwysqBRiF4dVwlLl4kLuAyXNyH
	DMnhXiTl3yLJsKRiY6Ql0cmndREpzEhrv27MMmCVw0eoxr9HE/4PSpEy0vByhDaMPhiw02cMxTofy
	dvkJAVcX9lzzciqZSIXYfaSbfmTO8anboWihiQZT7Ei/jL69je5d04MBFW213iBq9f2QRRsru3I36
	oVctBocxsCnJGCzNljsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7eyV-0000000DUJL-3JNg;
	Tue, 31 Mar 2026 19:42:07 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7eyT-0000000DUIV-17Ku
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 19:42:06 +0000
Received: by mail-qv1-xf32.google.com with SMTP id 6a1803df08f44-8a154cc6a48so25990476d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 12:42:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774986123; cv=none;
        d=google.com; s=arc-20240605;
        b=AGDhh+MHyK9Ai7JCAc9J3sJPP+LW9OZOboKTeTmPIOCi0l/yIPFWCG4Wdh8/DfpDxJ
         4KRdTTzyQ5CveQ2ZCI/+WaEpAJ5VMxCP7X4SvFaGyN0p6OXJpai1iGNh2847MmCH0+lp
         3FkKXI6XQTxGRDxnhw/11xOm5mNyW3yUCidC1XdVPHNbMsC0vYfT1RKMN2jnlTVdu9Xh
         ojOT/QMi7/HqmkQ//uIZTx0B571en/KA91GS36s6XtpSb/QlJcdzgi95aGnMIVaYsCrh
         +X0pj+6C51O8WAUCZaLIO/pkVVPd8+NFBwYi6RWrW0NNItWVjDr/1fMC1+WEDLI0XC/I
         u1dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/y5CfNmiEJ0DIyea4capDIT3MgKL12KOZPGdN7RFQc4=;
        fh=VCdJ/b3Ru2k+qNETsquhpjzt9XmO/04JNp247nULbno=;
        b=jyYjmcaL1LeRenvQKKHoeSlozuHD2qM7/Ja+XwZ+65F2TZmcvqA/Z5yupatXbsxkri
         fJgjYsGA9HosFV4uc52wWp2VcWA7EA6kZC6gvax7Ve3E1qsWfDXavc5NU8E1+1Mi4qtP
         1NHJBXXvYRP2b0X+m4+RrvonwJ1ypSlKmCAY8cqwJ986weKvORo6HjdqbcPSa4lpWebH
         gc5LObqUcHcudOV3CCeSvodKedLzrEAtE0d594Cl0Rcv2zPu/89FQPcCwUpWngL17LEj
         1im2SzxHrvGWpPw0Zw3R3VgSw97SMVDcbyGj1TVG4B0prbDOnQjth8wVRRfYas43gVZe
         CHdg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1774986123; x=1775590923; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/y5CfNmiEJ0DIyea4capDIT3MgKL12KOZPGdN7RFQc4=;
        b=EAxT18u80rBgpqKU0iOWoKjCxE0D4Oa0TWOInYO88epTgDlXvPLuLwzGVBB3xwjpRg
         6Tw9s/0yiLRVcLr572KtoUpCNcjUGZoO9o/d/3sTbNhnDeSEzZJiHo+YL6j9jaA+Ycol
         VgQ+fW/KcxU6HzeHX5Kp/LNl9wllnmO2w4LiHEFGhX9Yph0egzvDZAk1X0zDZV2VZJIh
         Ji40rwbZ5hJuBcFFyVdZExf54NFDGFMFbLx7Mo2FD7bWJ8JNIPWGmdjUCFiEj/wMlbVK
         nlwuX+LyNSwzAnyQRBsUxp5QyP7+gl0TkPRoYX5gKTd/b247YLkGuMr9R3AUpPNg2988
         SoOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774986123; x=1775590923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/y5CfNmiEJ0DIyea4capDIT3MgKL12KOZPGdN7RFQc4=;
        b=XnN9WVsL6PyhOpz4jfJyITNUi1TZmqfoZqZXDvFXHuhxyabFG+HenEmaIIxdQIRj4p
         kPqT/3DqBg3ZmcYzWM/1MB7c/xkJoLWbgzHD2VVz2/zxHX35wnfpWIB4w6AKZCdmH/al
         rlFOw+FjkscxAMwCYt5vdYVi7OBsC+BZhLqEAWNC9nyb1vWe87DXTrL8JVMBBrztJrbA
         pVC2JuNM9Y8C1tKwPnQrOtLAN4jtyZU83u/0vD9QHc/UlrbAgd1NOEDN9IB5nRXgfngJ
         jfmxC9VsDBSrmTmGsVL0vgqK/AxomKWFMQR96Sthm1mqyeuqE8X/Rhlwa9lA/GbDAdsu
         tGkA==
X-Forwarded-Encrypted: i=1; AJvYcCW6LEro3HR752zTMbOaZxkXt7RYO5EJ+uVt4CFsZtxWgbTmEulVGbqhbHpw+MqkVnNKg2pmk36+TUZgFsSyQA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw0X3EYIn6RTf8o9oXOjwGopk/wg95qxIjfvEk2EbWD+fKf5Cpb
	CxI9t1+Xz+LIoOiSPhqrajuk91/EHt6aDF65ohPYB6N8EVf12MMu2LIQ1ZhtA8N/mi99PmOZjgn
	AyeE5mAvzBmpCIyV553zbPv4cx/zfGJJ13ebX7ygmGQ==
X-Gm-Gg: ATEYQzxdqbQjPraAZxkFvhty0CDgrcdeyWPBX9O3K+kdZQpqwAQjQVPsaNOg1RmfY6G
	ish1bz6K6QZxgVTQqNN5lLGayCIay+jJevOYaEq7op/J3G1yIQdiVaSPQAoh5gyUptMDh/cwy0g
	xrda4xjusXoTO12CsWOGz4Ce1KSqqqTbwAOzfPlrOEnhr3mgr38L/7rvIjeHD3i6vQX51yrVqOd
	qslfUqqhViFOAoHiGNRNXryq4UJfXLbijsEeAZdFm+4ZRrL+TgvdNT13ERc7vVlyQQiIiagO1Ts
	baAzsjShxW1yg9SlsbA3wDRqTG7s3ImUHoLHn0+8XQR0kWxf5S0lgHNAXjAHPPy6gP4MlVY=
X-Received: by 2002:ad4:4eef:0:b0:89a:116b:e67c with SMTP id
 6a1803df08f44-8a43a464ea6mr12862136d6.45.1774986123445; Tue, 31 Mar 2026
 12:42:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260310031002.3921234-1-dennis@ausil.us> <20260310031002.3921234-4-dennis@ausil.us>
 <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com>
 <CAABkxwtz7KjVJpSzYhUWGyEym5k4d3NJq65OS_E3NCnrNUBTZw@mail.gmail.com> <CABjd4Yz3MKOp-gE8kNc4EOt3-a0mKZsxvbVYCN4KsbqTRDtWgA@mail.gmail.com>
In-Reply-To: <CABjd4Yz3MKOp-gE8kNc4EOt3-a0mKZsxvbVYCN4KsbqTRDtWgA@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Tue, 31 Mar 2026 14:41:50 -0500
X-Gm-Features: AQROBzAJGaJIP3nK18K6kC_9mEp5NIzQoY1iqunk6Z7DDcVgaVEtYTtM-9GKruU
Message-ID: <CAABkxwsD_59G3YrpMdUi7D1fVHruSuDHn9-gQAZbwTdxGBHaBA@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Alexey Charkov <alchark@gmail.com>
Cc: Jimmy Hon <honyuenkwun@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Hsun Lai <i@chainsx.cn>, 
	Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Peter Robinson <pbrobinson@gmail.com>, 
	Michael Riesch <michael.riesch@collabora.com>, Mykola Kvach <xakep.amatop@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_124205_333342_D2874B46 
X-CRM114-Status: GOOD (  27.40  )
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgOToyNuKAr0FNIEFsZXhleSBDaGFya292IDxhbGNoYXJr
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1hciAxMSwgMjAyNiBhdCA1OjI54oCvQU0g
RGVubmlzIEdpbG1vcmUgPGRlbm5pc0BhdXNpbC51cz4gd3JvdGU6Cj4gPgo+ID4gT24gVHVlLCBN
YXIgMTAsIDIwMjYgYXQgNzoyMOKAr1BNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5AZ21haWwuY29t
PiB3cm90ZToKPiA+ID4KPiA+ID4gPHNuaXA+Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgdmNj
NXYwX290ZzogcmVndWxhdG9yLXZjYzV2MC1vdGcgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBj
b21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGVu
YWJsZS1hY3RpdmUtaGlnaDsKPiA+ID4gPiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8w
IFJLX1BDNCBHUElPX0FDVElWRV9ISUdIPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcGluY3RybC0wID0g
PCZ2Y2M1djBfb3RnX2VuPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5
cy1vbjsKPiA+ID4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gPiA+IHJl
Z3VsYXRvci1hbHdheXMtb24gYW5kIHJlZ3VsYXRvci1ib290LW9uIGRvZXMgbm90IHNlZW0gcmln
aHQuCj4gPiA+Cj4gPiA+IFdoeSB3ZXJlIHRoZXNlIGFkZGVkPyBUaGUgdmVuZG9yIGRpZCBub3Qg
aGF2ZSB0aGVtLgo+ID4gPiBodHRwczovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9saW51
eC1vcmFuZ2VwaS9ibG9iLzIzMmVkNGI5N2I2NWRhMmI3YjY0N2M0ZTNjNDk2Zjg1OTRiOWYzZjEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUtcHJvLmR0cyNM
MjE2LUwyMjYKPiA+ID4KPiA+ID4gV2FzIHRoaXMgbWlzdGFrZW5seSB0YWtlbiBmcm9tIHRoZSBy
ZWd1bGF0b3IgdXNiIDIwIHdoaWNoIGlzIHBvd2VyaW5nCj4gPiA+IHRoZSBvbmJvYXJkIHVzYjIu
MCBodWI/Cj4gPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcmFuZ2VwaS14dW5sb25nL2xpbnV4LW9y
YW5nZXBpL2Jsb2IvMjMyZWQ0Yjk3YjY1ZGEyYjdiNjQ3YzRlM2M0OTZmODU5NGI5ZjNmMS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS1wcm8uZHRzI0wxMTEt
TDExOQo+ID4KPiA+IEl0IG1heSBoYXZlIGJlZW4gYSBtaXNzcmVhZGluZyBvZiB0aGUgc2NoZW1h
dGljLCBidXQgaXQgd2FzIGFkZGVkIHRvCj4gPiBnZXQgcG93ZXIgdG8gdGhlIFVTQjMgcG9ydC4g
YmVmb3JlIEkgYWRkZWQgaXQgZGV2aWNlcyBwbHVnZ2VkIGludG8gdGhlCj4gPiBVU0IgMyBwb3J0
IHdvdWxkIG5vdCBwb3dlciBvbgo+Cj4gSGkgRGVubmlzLAo+Cj4gVGhlIHNjaGVtYXRpYyBzYXlz
IHRoYXQgdGhpcyByZWd1bGF0b3Igc3VwcGxpZXMgdGhlIFZCVVMgdm9sdGFnZSBmb3IKPiB0aGUg
VVNCMyBwYXJ0IG9mIHlvdXIgVHlwZS1BIE9URyBjb25uZWN0b3IuIElmIHlvdSBtYWtlIGl0IGFs
d2F5cy1vbiwKPiB5b3UnbGwgbGlrZWx5IGxvc2UgdGhlIHBvc3NpYmlsaXR5IHRvIHVzZSB0aGlz
IHBvcnQgaW4gZGV2aWNlIG1vZGUKPiAod2hpY2ggeW91IHdvdWxkIG5lZWQgZS5nLiBmb3IgZmxh
c2hpbmcgaW1hZ2VzIG92ZXIgYSBVU0IgY2FibGUgaW4KPiBVLWJvb3Qgd2hpY2ggYWxzbyB0YWtl
cyBkZXZpY2UgdHJlZSBzb3VyY2VzIGZyb20gTGludXggdmlhCj4gZGV2aWNldHJlZS1yZWJhc2lu
ZykuCj4KPiBZb3UgYWxzbyBsaW5rIGl0IHVwIGFzIHRoZSBQSFkgc3VwcGx5IG9mIHRoZSBVU0Iy
IGNvbnRyb2xsZXIsIHdoaWNoCj4gZG9lc24ndCBkZXNjcmliZSB0aGUgYWN0dWFsIGhhcmR3YXJl
Lgo+Cj4gUGxlYXNlIHNlZSBpZiB5b3UnZCByYXRoZXIgZGVmaW5lIGEgY29ubmVjdG9yIG5vZGUg
Zm9yIHlvdXIgVHlwZS1BCj4gcG9ydCwgYW5kIGxpc3QgdGhpcyByZWd1bGF0b3IgYXMgaXRzIFZC
VVMgc3VwcGx5IGV4cGxpY2l0bHkuIEkndmUKPiByZWNlbnRseSBzdWJtaXR0ZWQgYSBwYXRjaCBb
MV0gdG8gbWFrZSB0aGUgIm9uYm9hcmRfdXNiX2RldiIgZHJpdmVyCj4gdGFrZSBjYXJlIG9mIGVu
YWJsaW5nIFZCVVMgaW4gZXhhY3RseSB0aGlzIHR5cGUgb2Ygc2l0dWF0aW9ucyAoaXQncyBpbgo+
IHVzYi10ZXN0aW5nIG5vdyBhbmQgd2lsbCBob3BlZnVsbHkgaGl0IC1uZXh0IHNvbWV0aW1lIHNv
b24pLiBJZiB5b3UKPiBuZWVkIGFuIGV4YW1wbGUgZm9yIGl0cyB1c2UsIHBsZWFzZSByZWZlciB0
byBbMl0uCj4KPiBCZXN0IHJlZ2FyZHMsCj4gQWxleGV5Cj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsLzIwMjYwMjE3LXR5cGVhLXZidXMtdjEtMS02NTdiNGU1NWE0YzJAZmxpcHBl
ci5uZXQvCj4gWzJdIGh0dHBzOi8vZ2l0aHViLmNvbS9mbGlwcGVyZGV2aWNlcy9mbGlwcGVyLWxp
bnV4LWtlcm5lbC9ibG9iLzJmODE0Y2RmMDdmNTBlOTAxZmMxYjEzMjgyMTNlNzY0NjA4NjRjMjAv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtZmxpcHBlci1vbmUtcmV2LWYwYjBj
MS5kdHMjTDMwMy1MMzI4CgpTb3JyeSBmb3IgdGhlIGRlbGF5LCBJIGFtIHRha2luZyBhIGxvb2sg
YXQgaXQgbm93LiBQbGVhc2UgbGV0IG1lIGtub3cKd2hlbiBpdCBsYW5kcyBpbiAtbmV4dC4gSW4g
dGhlIG1lYW50aW1lLCBJIGJlbGlldmUgd2hhdCBJIGhhdmUgaXMgaW4KZ29vZCBzaGFwZSBhbmQg
aXMgd29ya2luZyB3ZWxsIGhlcmUuIEkgYW0gaGFwcHkgdG8gbWFrZSBhIGNoYW5nZSBvbmNlCnN1
cHBvcnQgbGFuZHMgdXBzdHJlYW0uCgpEZW5uaXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
