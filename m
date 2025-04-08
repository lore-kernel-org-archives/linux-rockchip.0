Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F005C3600C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 11:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVRnTEzEikubCTwZei7dg+ksfToydPqJYUc3In/b1+k=; b=xGKlWSJN3dUfcE
	59sh22h/SFDxjCxCTsKcJXrdm/NljvL2d3jQxkFoViRfqOINGRSMRiHC5f8HdkdWogPFQkrG9EToj
	KMXzDEgVCt4Fd0gXO9dRmd2QXtNPOhqMpzo/CVQ1WYA2T05JLC1mqaQyyBCkub2hTYLEyNggET7iR
	LQoZdvF6kOXdTeArbQAJ4O0THrDwifBbJI/eNem6jex14xXLGVveMIZi4ZaPZreyuG4nn3e9lZuGJ
	EVArwzWImhTSm6xxzcs5UnjMXKW+V5QtHDmpycUTHUPNtT/vES6XPcgG7Nb3I1Pq8i9lqu5pcZydY
	O+CTJfINAQvPG+l+xOZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u26sh-00000003oUC-1EQS;
	Tue, 08 Apr 2025 11:12:39 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u26XC-00000003k2L-2dyc;
	Tue, 08 Apr 2025 10:50:31 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-7369ce5d323so4212271b3a.1;
        Tue, 08 Apr 2025 03:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744109426; x=1744714226; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f3Q51sZ60y2IRit4uwnvdvwQuRZcBvSxnxMj6vQGFPQ=;
        b=fNDDCxfFKS+u6xnRWloRwmD2LMSN45Ncq9cojY2sB2QplWeydpuF07qUgcfheHu2Rt
         EehK7ZhvWOoHB7F2dh3mDQHcWnH9jNDh7hvbBe6usedJCLmH9T6QUdBhhfYVSZ7Joylz
         PpQ8+g3r6NuAVz+u9I0nXWRhFH+ooWCxtwdRb3XdKACxoM6kh8VxSxJHzTp2JANHwxF1
         zxY0xB+SP9VFdK7btvWqQbERz3LJhOKeQP79Zv2QBln3asQ9h+Kvegx11+rYir9qiA+Z
         5gotKdyzyj/IUR3BoknXwc8Zm6piTqFx7fpPLj/u8rc2sodJn1nD8CP3m3dnVEtSn49M
         sdaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744109426; x=1744714226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f3Q51sZ60y2IRit4uwnvdvwQuRZcBvSxnxMj6vQGFPQ=;
        b=G5VOaE1iV6/JC+l5j7YMViL4PDwQNfkWBnX9LotUgWt4p01BYkzwJrxPYI9Snb/EIQ
         P2g+S9eCJXVRmSuMFF/y7sQfHjJdnZksbGyLT2o94Nib7WD7mIXuzqGN7Gdu597jhjRB
         oNKVQYELqr9IJEe2rcQNk5y2LMpj+q1CMcNCG6Y51vTG97l0jOC7nE3x+NbncpFC0VwU
         9u9Dxe8FW6vvj0ivOSzr+HgHWEr2PlbqQ3D9hJTu1Vppti+YP1Bdbs9oq8zQ5p0fMP1/
         /zxbq9S0vz53tcGSe4f85eKda2xhe12B3CoSszrbsyU0PACquwFu1P70k/8TIbegukOP
         kfgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWN+PVbgla6NIqDdX5X9ItksqJlLcnrvBmajk5ZjhTDyGNsHxPIUt23agG3K/m4Op9/T6a5U0US0V2hlhHUvTwN@lists.infradead.org
X-Gm-Message-State: AOJu0YygPwdUDEFb0oBVJBLEVq9T/C2UqtihiDJVWMzxr+S1K/nSVFaT
	c3tLyIhp9d3V6awNrSaFiVx6NDARewRt171zXRL9yh2vw6n2zkh+P9EBbpivxj7dLUish3TI/ZT
	mRcawtXm7ss5MnpC6L4MhUCl1GyE=
X-Gm-Gg: ASbGncvNhj/NM7fuuZMIhuq4Lx/7NvL5seUwC7nK9tpsAp4K7ufNZHntH0LHpN0SgAi
	oaR8ownhbdWpkgdzT4875TFCztMybGpcO2PAGOQonMNEM6ZYSIoF2G2EM7gY+t2GTu2NwMa12uX
	AuSh5BxuXCGpUolDjstcgD8gMoiaegw5Q/424FwQ==
X-Google-Smtp-Source: AGHT+IFSFb+27H971KbXVzz4EA/pQ4KZ6RM/00kknTpi6QdSo41B8akPVUKL+TDvHdXUVTdc2mjINkgXv5Uk3yDpFHE=
X-Received: by 2002:a17:90b:350f:b0:2fc:ec7c:d371 with SMTP id
 98e67ed59e1d1-306a60e4acbmr19761690a91.3.1744109425696; Tue, 08 Apr 2025
 03:50:25 -0700 (PDT)
MIME-Version: 1.0
References: <20250408063126.38904-1-eagle.alexander923@gmail.com> <3871892.kQq0lBPeGt@diego>
In-Reply-To: <3871892.kQq0lBPeGt@diego>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 8 Apr 2025 13:50:12 +0300
X-Gm-Features: ATxdqUFHAHiaqii7LVTJPA3SVoeUA4jgiLCR4gVUptoIYcrxzRz4O4py-gVNqIc
Message-ID: <CAP1tNvQtNY2GZ3HKUtaqKeMY-g7ie2CejDhbTZNYuipgXwif8Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: clk-pll: Fix CRU_xx_CON2 register usage
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_035026_670947_83AB0729 
X-CRM114-Status: GOOD (  21.66  )
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

SGVsbG8uCgpZZXMsIGV2ZXJ5dGhpbmcgd29ya3MgYXMgZXhwZWN0ZWQ6CgojIG13IDB4ZmQ3YzAx
YTggMHgwMDAwMTIzNAojIG1kIDB4ZmQ3YzAxYTgrNApmZDdjMDFhODogMDAwMDEyMzQKIyBtdyAw
eGZkN2MwMWE4IDB4MDAwMDU2NzgKIyBtZCAweGZkN2MwMWE4KzQKZmQ3YzAxYTg6IDAwMDA1Njc4
CgrQstGCLCA4INCw0L/RgC4gMjAyNeKAr9CzLiDQsiAxMDozMSwgSGVpa28gU3TDvGJuZXIgPGhl
aWtvQHNudGVjaC5kZT46Cj4KPiBIaSBBbGV4YW5kZXIsCj4KPiBBbSBEaWVuc3RhZywgOC4gQXBy
aWwgMjAyNSwgMDg6MzE6MjUgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBB
bGV4YW5kZXIgU2hpeWFuOgo+ID4gQWNjb3JkaW5nIHRvIFJLMzU4OCBUUk0sIENSVV8oQ1BMTC9H
UExML2V0YylfQ09OMiByZWdpc3Rlcgo+ID4gKHJhdGUtayB2YWx1ZSkgZG9lcyBub3QgdXNlIGhp
Z2h3b3JkIHdyaXRlIGVuYWJsZSBtYXNrLgo+ID4gTGV0cyBmaXggdGhpcy4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgU2hpeWFuIDxlYWdsZS5hbGV4YW5kZXI5MjNAZ21haWwuY29t
Pgo+Cj4gVGhlIGNvbW1pdCBtZXNzYWdlIGRvZXNuJ3Qgc2F5LCBidXQgZGlkIHlvdSBjaGVjayB0
aGlzIG9uIGFjdHVhbAo+IGhhcmR3YXJlIHRvbz8KPgo+IFNvbWV0aW1lcyB0aGVyZSBpcyBhIGRp
c2Nvbm5lY3QgYmV0d2VlbiB0aGUgVFJNIGFuZCBhY3R1YWwgaGFyZHdhcmUsCj4gc28gdGhlIGFj
dHVhbCByZWFsLWxpZmUgc2l0dWF0aW9uIHNob3VsZCBiZSBjaGVja2VkLgo+Cj4KPiBBcyBmb3Ig
YSB0ZXN0LWNhc2UsIGFueSB3cml0ZSB3aXRob3V0IHdyaXRlLW1hc2sgdG8gYSByZWdpc3RlciB0
aGF0Cj4gd291bGQgcmVxdWlyZSBhIHdyaXRlLW1hc2sgd291bGQgbm90IGNvbWUgdGhyb3VnaC4K
PiBTbyB3aXRoIHlvdXIgcGF0Y2ggYXBwbGllZCwgZG9lcyB0aGUgcmVnaXN0ZXIgdmFsdWUgY2hh
bmdlIGFmdGVyCj4gdGhlIHdyaXRlIGJlbG93IHdoZW4gcmVhZGluZyBpdCBiYWNrIGFnYWluPwo+
Cj4KPiBUaGFua3MKPiBIZWlrbwo+Cj4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1wbGwuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
LXBsbC5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jCj4gPiBpbmRleCAyYzJhYmIz
YjQyMTAuLjc3YmE0ZDZlN2I1ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1wbGwuYwo+ID4gKysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXBsbC5jCj4gPiBA
QCAtOTU5LDcgKzk1OSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcmszNTg4X3BsbF9zZXRfcGFy
YW1zKHN0cnVjdCByb2NrY2hpcF9jbGtfcGxsICpwbGwsCj4gPiAgICAgICAgICAgICAgICAgICAg
ICBISVdPUkRfVVBEQVRFKHJhdGUtPnMsIFJLMzU4OF9QTExDT04xX1NfTUFTSywgUkszNTg4X1BM
TENPTjFfU19TSElGVCksCj4gPiAgICAgICAgICAgICAgICAgICAgICBwbGwtPnJlZ19iYXNlICsg
UkszMzk5X1BMTENPTigxKSk7Cj4gPgo+ID4gLSAgICAgd3JpdGVsX3JlbGF4ZWQoSElXT1JEX1VQ
REFURShyYXRlLT5rLCBSSzM1ODhfUExMQ09OMl9LX01BU0ssIFJLMzU4OF9QTExDT04yX0tfU0hJ
RlQpLAo+ID4gKyAgICAgd3JpdGVsX3JlbGF4ZWQoKHJhdGUtPmsgJiBSSzM1ODhfUExMQ09OMl9L
X01BU0spIDw8IFJLMzU4OF9QTExDT04yX0tfU0hJRlQsCj4gPiAgICAgICAgICAgICAgICAgICAg
ICBwbGwtPnJlZ19iYXNlICsgUkszMzk5X1BMTENPTigyKSk7Cj4gPgo+ID4gICAgICAgLyogc2V0
IHBsbCBwb3dlciB1cCAqLwo+ID4KPgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
