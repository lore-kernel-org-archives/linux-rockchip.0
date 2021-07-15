Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,FSL_HELO_FAKE,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6520FC07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 11:07:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27A016102A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 11:07:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 27A016102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0ZP1f7EQ0FOY+2M0bq3Le1U/J1WTxIghaOofQSN8fQ=; b=B9y/Ze3Sdy0lZ8
	6dy2kkqSmL4bYta96hfkY1w3+PSG5Fds+QT2I9FuKY6sXJOxcBs5rfglVuLPp4uPMBMXr8afHiTJS
	BhXC5+jOQ82LXMITGJORRfyuckkxc8ZsjSTsRVh0PcocYjJ0mfbV2cQ+lj6EUbtEpn14FRXEe4qna
	NPXVgW3f3ii3sL+RYyfEHVdEan6T2QGZC+I6curbem8YsqNMLa3Gs1uE8AlnguxEWr3YAwY1EZ07Z
	8O48KWBd+eClCY1EqfcK7uV+GxoRZhL9Ep3gcDSq7guwgRp3fogodwkph/Knc63yLZBuoAtRzirkN
	6XMlVLe1FUMW44+adQ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3zDB-000XWl-OB; Thu, 15 Jul 2021 11:07:25 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3zCv-000XRV-6j
 for linux-rockchip@lists.infradead.org; Thu, 15 Jul 2021 11:07:10 +0000
Received: by mail-wr1-x429.google.com with SMTP id r11so7206711wro.9
 for <linux-rockchip@lists.infradead.org>; Thu, 15 Jul 2021 04:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=jdYwECk9furkh7KTSGCqufIb1FYGTuZUpaNXiuZiY34=;
 b=kiHiErv9a3uauPXHpRI8CSrnoJdVyXl1oedxILs0eaAn0EpMPztBinOM08zsmzNpIm
 lo+w4jaz1ywCEGo6M88nrJtK+neap6d8xwmtxbelLX3qHVRKUwNgBBv4xfDuTpHPjjPV
 aG/KPw+tmx0C0GLIUosSKkzhx211f+mK9ZEi390ZjhooPPGKY1xdE9RQQaOL6U8Ut/f0
 3EBG/M28s5IyD+Puh2gTZQX3JBONLXJc6jYGVRs40a/HPxXM2q3qwIx/yvpSnR7vMeyK
 WSWnfTXyjyXRXk1lDV7Q8WIYYnZdeaxxIWZjVxi4XYUbdRrZ9j4O/AZvu8ZnbHczaVkN
 HP8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=jdYwECk9furkh7KTSGCqufIb1FYGTuZUpaNXiuZiY34=;
 b=pHCxxvhFOvWjP1sLh7F4f5c9WHFnb9E+73+15/GmRe07n5h6g0brEGcl3QKLEM05T5
 s1ExI1/3iJAcyNo1NnIVBAVYcZQqnO8X0mVNJ0K351F0swvzojsvMgTjVXWWiXW0V6cO
 eUUg0eK+ME8kn8kvj3vwBuI56Sc9yezIjpqps3fthKyAuIzLTOQHsoeiY+aqnyBrYfK+
 kK/2ugULVXDPWUsBjc5xH3cU0sPqTqlB04QdPtgFDl1H+weLaVy/QsPw+NA6BQ1fchIp
 u9DDNHCcObF2PmyYCAUxtl+G+Yd4z8YMcF0G/s40UcFuRRdg+QxvCpT4VQc2BGTJdDgp
 qGqQ==
X-Gm-Message-State: AOAM530T1hbPQEGEzl7E5mD/BBWII21rMbFIIhNa8JdRCi9BMtVLVfAR
 uWk2r0DSNoYaJIgv7RLB0qNx6A==
X-Google-Smtp-Source: ABdhPJwPOnYA05PxM9Ze6qn2v3mYFlXBEvHSAoHc82BK2drzF1umfX5qFL53y4rzX8C8pSyZxQ1OgQ==
X-Received: by 2002:a5d:68c2:: with SMTP id p2mr4614409wrw.27.1626347226995;
 Thu, 15 Jul 2021 04:07:06 -0700 (PDT)
Received: from google.com ([109.180.115.218])
 by smtp.gmail.com with ESMTPSA id z11sm5969559wru.65.2021.07.15.04.07.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 04:07:06 -0700 (PDT)
Date: Thu, 15 Jul 2021 12:07:04 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/12] dt-bindings: mfd: syscon: add Rockchip
 RK3036/RK3228 qos compatibles
Message-ID: <YPAW2FglO/4Lhs+i@google.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-2-knaerzche@gmail.com>
 <20210601154651.GE2159518@dell> <3527273.z0yIoBN5P9@diego>
 <78b492b8-55c4-dfbd-cda6-f78c4b8557b0@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78b492b8-55c4-dfbd-cda6-f78c4b8557b0@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_040709_334169_F7031A7A 
X-CRM114-Status: GOOD (  18.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gVGh1LCAxNSBKdWwgMjAyMSwgQWxleCBCZWUgd3JvdGU6Cgo+IEhpIExlZSwgSGVpa28sCj4g
Cj4gQW0gMTEuMDcuMjEgdW0gMTM6NTUgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiA+IEhpIExl
ZSwKPiA+IAo+ID4gQW0gRGllbnN0YWcsIDEuIEp1bmkgMjAyMSwgMTc6NDY6NTEgQ0VTVCBzY2hy
aWViIExlZSBKb25lczoKPiA+ID4gT24gVGh1LCAyNyBNYXkgMjAyMSwgQWxleCBCZWUgd3JvdGU6
Cj4gPiA+IAo+ID4gPiA+IERvY3VtZW50IFJvY2tjaGlwIFJLMzAzNi9SSzMyMjggcW9zIGNvbXBh
dGlibGVzCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleCBCZWUgPGtuYWVyemNo
ZUBnbWFpbC5jb20+Cj4gPiA+ID4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gCj4gPiA+ID4gICBDaGFuZ2VzIGluIHYyOgo+
ID4gPiA+ICAgLSBjb2xsZWN0IFJldmlld2VkIHRhZwo+ID4gPiA+IAo+ID4gPiA+ICAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFtbCB8IDIgKysKPiA+ID4g
PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+ID4gQXBwbGllZCwgdGhhbmtz
Lgo+ID4gbm90IHN1cmUgaWYgSSdtIG1pc3Npbmcgc29tZXRoaW5nLCBidXQgdGhpcyBwYXRjaCB3
YXNuJ3QgcGFydCBvZiB5b3VyIDUuMTQ/Cj4gPiBBbmQgSSBhbHNvIGRvbid0IHNlZSBpdCBpbiB5
b3VyIGZvci1tZmQtbmV4dCBicmFuY2guIERpZCBpdCBnZXQgbG9zdCBzb21ld2hlcmU/CgpIbW0u
Li4gbG9va3MgbGlrZSBpdCB3YXMgZHJvcHBlZCBzb21lIGhvdy4gIEFwb2xvZ2llcyBmb3IgdGhh
dC4KCj4gSSBjYW4ndCBmaW5kIHRoaXMgcGF0Y2ggaW4gbmVpaHRlciB0aGUgbWVudGlvbmVkIHRy
ZWVzIG5vciBpbiA1LjE0LXJjMS4KPiAKPiBMZWUsIGNvdWxkIHlvdSBxdWV1ZSBpdCBmb3IgcmMy
LCBwbGVhc2U/CgpVbmZvcnR1bmF0ZWx5LCB0aGF0J3Mgbm90IGhvdyBpdCB3b3Jrcy4KCk9ubHkg
YnVnIGZpeGVzIGFyZSBhbGxvd2VkIGZvciBpbmNsdXNpb24gaW50byB0aGUgcmNzLgoKSSdsbCBy
ZS1xdWV1ZSBmb3IgdjUuMTUgdGhvdWdoLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5p
b3IgVGVjaG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwg
VHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
