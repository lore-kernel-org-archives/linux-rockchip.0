Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D248FE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 13:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EpCs7zzFFWhwpxdJg3lrye9B2OqdAfZXCF21T9Qq3k0=; b=iraLlqdHOX0ZZU
	ZllK5We1Nu1vbXFVW84F/JfcHrWzLWdEIhtXE/Ga2fkWaUrSmVe5KNGk8HCS5OqLHLzo2iMRQ0AQk
	ahVzHTqzo/u9ls/t+5AqXWq9NZgm0tToPP8shLKtu+y/uEpih/fDGEwhyYEpmAqQy0lEAE9mG0oEq
	lLyVPXUQmO/rNDzDML/AjNP744cqXmP7EfTMZjebwggLXO06TbbqA8TLDFXw3EbvD5Cq27Pl6REQA
	Ied6bYWuQbJ9OccILLaaFbA7Ge9jzQ3GkXCUWrKHSUoRB7O+NgljcirBrKxyV0fQYb4204cOvgXNX
	kXrrCDc2pyCVKGT8Mksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0IO-0000000BaEa-0Hx9;
	Tue, 10 Dec 2024 13:29:00 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0Gq-0000000BZo4-3F1v;
	Tue, 10 Dec 2024 13:27:26 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5d3e9f60bf4so4311579a12.3;
        Tue, 10 Dec 2024 05:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733837243; x=1734442043; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kBCKmYeQtQXtJD2nS/OX7EenTXHyXCtFX8tV6++9Flc=;
        b=KrOcK7Hp+8iu+N9lQqQ3zSKAEJeuvJiV1jTgTFUxxvVukQY+pPzLcvyg3RNCiBN1XF
         qd2DO3p7HMfyrI0RaNUJMSGk7zjBrdW0ymH/KeKQaBTq+dqOCGbyQf4+lhwSRyPWLht3
         ZMuvpC3JfAMvOKCZ8tYzt6+6si4E2GAW54wFWklBntYNL5jDpVFDYQa0U9WLgN9KZUeL
         ikrO8wjP286tGHpjhScZ/WkK+nlNryXD61GlfDwONpnogT18DgOLUjQ2JZHcqu/yiOH4
         EGyQ0/r137+6U5tQ5xDr6U5KPHyUnh7hUTy/puFVq+F83MWNTBfScY1UI/MuXFzwYKrZ
         0cRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733837243; x=1734442043;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kBCKmYeQtQXtJD2nS/OX7EenTXHyXCtFX8tV6++9Flc=;
        b=Gxuy02Gi2s6UtK4uPPUGl12Wci3Xkq025VVCLt0kbsBwZxqSrsptZT0TkprniQ4MWK
         jfmpSRVj2edc3JyZxSoiMD9PodQ9BagnGH5hlmHHJiRZLVLxFLD89XAkZfDl8jOHQVox
         YInEaAJFyiPffhtSn7lpRgvJMr9FwAErhtJR/QpmZL8+QyA7eYEZf/5RKOZym7RLn+Jj
         fpsC89XYTP1TcV+wz8ZkugBUtORlqt9LlyMqZruwMxy37WIPQ6l4tzgqrDVaNAHHX1c/
         h9iEWcGRU7X4XLf6/KAUBwpzhFylz6ZpenkedO0pfLT4fVFP6rM1YdI6ghUbJXTqQI3J
         ZPjQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9Rl9nNRLP0V3pDhgyB29wGubvBGJvDbwStsuL8+BHovWTc7mWQojdKlRTj/3ojham0SCPvbOi/rnoN2kJnY4=@lists.infradead.org, AJvYcCWij2kgWxDPRj1rOT/JnYCa7gCZjItbS/sLrBopgsT89BV8NuwixSWLdXWV/YcaWMcwkEV+sgv/ZvpdRybyB2CW@lists.infradead.org
X-Gm-Message-State: AOJu0Yx6D6qPRH6RTdJkj5La5i6MulsX3jFSEk/aOJ4XPNVkRHTFEfdS
	dbTrcBOEDijLOAdbhDq6A5YYJdxJ0go0t8WHTrolhyqCCQmQgoOmRfPTMYxcTIN/nGk+Q3CvGXw
	3BD3Qi2dFqhpUAW6pdNYS1hWC8xtk5WOG+E0=
X-Gm-Gg: ASbGnctylIUdypiTqJLT/6Rq7bMl5q3ihIxlDn4R/ravp3nh4aWfBglSjBlA1Jxu+fa
	gKar+eqwxT8W/BPnKklh56ovlQK6wKwjNe0/wGNofSTkYZY8NhAqcVlZ+LPQ=
X-Google-Smtp-Source: AGHT+IH4cq4eJMBBv9InVUxlo+TzZnHjLwzmvamweU5oP6kP+jJlPr/U3U9rCW2HNtHUYQxnPZCF1RFlpv5NCQEhnhU=
X-Received: by 2002:a05:6402:5190:b0:5d0:feec:e15d with SMTP id
 4fb4d7f45d1cf-5d3be6d650cmr14520588a12.8.1733837242523; Tue, 10 Dec 2024
 05:27:22 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-3-pgwipeout@gmail.com>
 <0d11705121f29ccfb7cfa342505a6e35@manjaro.org>
In-Reply-To: <0d11705121f29ccfb7cfa342505a6e35@manjaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 08:27:13 -0500
Message-ID: <CAMdYzYqJLK6oJHCUVztth6mtJsYrRQSPzNYpR-ZmR7rNprZXfg@mail.gmail.com>
Subject: Re: [PATCH 2/6] clk: rockchip: fix wrong clk_ref_usb3otg parent for rk3328
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_052724_807026_3E023421 
X-CRM114-Status: GOOD (  24.96  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgNDo0NOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIFBldGVyLAo+Cj4gT24gMjAyNC0xMi0xMCAwMjoz
MCwgUGV0ZXIgR2VpcyB3cm90ZToKPiA+IENvcnJlY3QgdGhlIGNsa19yZWZfdXNiM290ZyBwYXJl
bnQgdG8gZml4IGNsb2NrIGNvbnRyb2wgZm9yIHRoZSB1c2IzCj4gPiBjb250cm9sbGVyIG9uIHJr
MzMyOC4gVmVyaWZpZWQgYWdhaW5zdCB0aGUgcmszMzI4IHRybSBhbmQgdXNiMyBjbG9jawo+ID4g
dHJlZQo+ID4gZG9jdW1lbnRhdGlvbi4KPiA+Cj4gPiBGaXhlczogZmUzNTExYWQ4YTFjICgiY2xr
OiByb2NrY2hpcDogYWRkIGNsb2NrIGNvbnRyb2xsZXIgZm9yIHJrMzMyOCIpCj4gPiBTaWduZWQt
b2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPgo+ID4gLS0tCj4gPgo+ID4g
IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMjguYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzMyOC5jCj4gPiBiL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL2Nsay1yazMzMjguYwo+ID4gaW5kZXggM2JiODdiMjdiNjYyLi5jZjYwZmNmMmZhNWMgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzI4LmMKPiA+ICsrKyBi
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMjguYwo+ID4gQEAgLTIwMSw3ICsyMDEsNyBA
QCBQTkFNRShtdXhfYWNsa19wZXJpX3ByZV9wKSAgICAgICAgPSB7ICJjcGxsX3BlcmkiLAo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJncGxsX3BlcmkiLAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICJoZG1pcGh5X3BlcmkiIH07Cj4gPiAgUE5BTUUo
bXV4X3JlZl91c2Izb3RnX3NyY19wKSA9IHsgInhpbjI0bSIsCj4gPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgImNsa191c2Izb3RnX3JlZiIgfTsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAiY2xrX3JlZl91c2Izb3RnX3NyYyIgfTsKPiA+ICBQTkFNRSht
dXhfeGluMjRtXzMya19wKSAgICAgICAgICAgICAgPSB7ICJ4aW4yNG0iLAo+ID4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICJjbGtfcnRjMzJrIiB9Owo+ID4gIFBOQU1FKG11eF9t
YWMyaW9fc3JjX3ApICAgICAgICAgICAgICA9IHsgImNsa19tYWMyaW9fc3JjIiwKPgo+IFNvcnJ5
LCBidXQgSSB3YXMgdW5hYmxlIHRvIHZlcmlmeSB0aGlzIGluIHRoZSBwYXJ0IDEgb2YgdGhlCj4g
UkszMzI4IFRSTSwgaW4gYm90aCB2ZXJzaW9ucyAxLjEgYW5kIDEuMiwgd2hpY2ggaXMgYWxsIEkg
aGF2ZQo+IHdoZW4gaXQgY29tZXMgdG8gdGhlIFJLMzMyOCBUUk0uICBJcyB0aGF0IG1heWJlIGRl
c2NyaWJlZCBpbgo+IHRoZSBwYXJ0IDIsIHdoaWNoIEkndmUgYmVlbiB1bmFibGUgdG8gbG9jYXRl
IGZvciB5ZWFycz8KPgo+IE1vcmVvdmVyLCB0aGUgZG93bnN0cmVhbSBrZXJuZWwgc291cmNlIGZy
b20gUm9ja2NoaXAgZG9lcyBpdAo+IHRoZSB3YXkgWzFdIGl0J3MgY3VycmVudGx5IGRvbmUgaW4g
dGhlIG1haW5saW5lIGtlcm5lbCwgd2hpY2gKPiBtYWtlcyBtZSBjb25mdXNlZCBhIGJpdD8gIENv
dWxkIHlvdSwgcGxlYXNlLCBwcm92aWRlIG1vcmUKPiBkZXRhaWxzIGFib3V0IHRoZSB0d28gcmVm
ZXJlbmNlcyB5b3UgbWVudGlvbmVkIGluIHRoZSBwYXRjaAo+IGRlc2NyaXB0aW9uLCBvciBtYXli
ZSBldmVuIHlvdSBjb3VsZCBwcm92aWRlIHRoZSBsaW5rcyB0bwo+IHRob3NlIHR3byByZWZlcmVu
Y2VzPwo+Cj4gWzFdCj4gaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL3JvY2tjaGlw
LWxpbnV4L2tlcm5lbC9yZWZzL2hlYWRzL2RldmVsb3AtNC40L2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1yazMzMjguYwoKSXQgaXMgdW5mb3J0dW5hdGUgdGhlIFRSTSBkb2Vzbid0IGluY2x1ZGUg
dGhlIGNsb2NrIG1hcHMsIGJlY2F1c2UgdGhleQphcmUgZXh0cmVtZWx5IGhlbHBmdWwgd2hlbiBv
bmUgY2FuIGFjcXVpcmUgdGhlbS4gSXQgYWxzbyBkb2Vzbid0IGhlbHAKdGhhdCB0aGUgVFJNIHJl
Z2lzdGVyIGRlZmluaXRpb24gb25seSByZWZlcnJlZCB0byB0aGlzIGFzICJwbGwiLiBJIHdhcwpz
ZW50IHNwZWNpZmljYWxseSB0aGUgdXNiMyBwaHkgY2xvY2sgbWFwIGZvciBteSB3b3JrIG9uIHRo
ZSBkcml2ZXIsCndoaWNoIGhhZCB0aGUgbG9jYXRpb24gb2YgZWFjaCBzd2l0Y2ggYW5kIGRpdmlk
ZXIgYWxvbmcgd2l0aCB0aGUKcmVnaXN0ZXIgYW5kIGJpdCB0aGF0IGNvbnRyb2xsZWQgaXQuIFRo
YXQgY29tYmluZWQgd2l0aCB0aGUgVFJNCnJlZ2lzdGVyIG1hcCBhbGxvd2VkIG1lIHRvIGZpbmQg
dGhpcyBlcnJvci4KClRoYW5rcyEKUGV0ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
