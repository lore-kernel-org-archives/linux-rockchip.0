Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B1A3C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 21:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dGVQd5bBkepELC267b0YGqwXtHSrd8vtJ8oeq0rSURk=; b=C+dhQFgfKMpEy0
	qGR22ot72fJK2E9ZBMOScQYqEQpeSXooSsgmJfAATxFsCLmRGVmk+U5eei5ZfvgT44s8JoMAeNsnX
	0enSQfCzpRuwsfjw7sdi8yllvl/0s9hLiMQhQmp9uzQ57/UOz/0SzR6yWZvOs4etmr3jp74xmqVt4
	Sft2p7GfN9kgD4pZvbdy505uLBQ31yPQg8R9JFHAL+3tkRjgRsQAF26Y+d8XiBMda1cD3LOGbhCBL
	5KPcPx2S7QQ5yzIdK8a0TFqpUb/MhsRTRtK2PpuNsKASdkQllkPssuWzL2coq/lnasBZBzn6v1qVF
	G/mXffkC5MMRig/qcwGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIVB-00000005mIm-05Si;
	Fri, 10 Jul 2026 21:11:17 +0000
Received: from mail-pj2-x02.google.com ([2607:f8b0:4864:39::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiIV8-00000005mHr-3HIn
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jul 2026 21:11:15 +0000
Received: by mail-pj2-x02.google.com with SMTP id d9443c01a7336-2ccbff2e6a7so8657455ad.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jul 2026 14:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783717874; x=1784322674; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=64t7FYB+aOc4n1B7jdfC1HLjfGo79OokY8KIFToWw7M=;
        b=Mk0SAZ0mLspEz6z5SBtui4QgSB5ykHglgWLwNw8FdAlVAZ0EhlanxmeVX2fLMJS79L
         JgIrnY4rwcJupla2y0FojNzTX2YtwnGzJ3RQMVs2sHVlfrxqkeIvITjEB01NArbRmaxM
         bcIdKnLJ8cdyBxgp/2RLmKtIv8Wy6Ch2UsirfrLluwgb9bkLTu45X8nE6vBs/8Tjz6Pu
         9wilfpmlI9UzqkaxOkZYLUcjFihB/9ha5I2HUbDLPPGpWg05TrshgFbyzrOggSRwj5p3
         doYoCTjnCDx9PvQAhJtw1KOI0/kdu3UZjZI0QX3IYPahHFMtcZazWQ6tATQK12aiyrI3
         gJLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783717874; x=1784322674;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=64t7FYB+aOc4n1B7jdfC1HLjfGo79OokY8KIFToWw7M=;
        b=Par8EpE4RHuQ8VP2WPQnsyIx4gMe5qaORtcEo5XQAhxHnnjcFBhOqejg4IgO3QF8QO
         b9GS/s0wQv6QCMQJjgiwMdLMDVz3VZrYvcySR2MWBDPsc0qghObo4fnRWgp1i8KTPVpA
         /lJfOYIJMplt2Nt0GZtu2IVeCZyTKnOr/DKfhnKZzFSVJAZJ5T2TtRRULbEqBVlVD2yK
         agENVub6bSMcMXFZ80HEeEv/IbXWL43Qgo4R+y4uzXr11Oagzg0p2FXeDFXJz40HhJWi
         87NrB4VfRRmj5mybel2ujpe9gZk1MdU9pj28aqGoJpLDHplx7ZYOAHuXNWB1h01IRKRm
         jgTg==
X-Forwarded-Encrypted: i=1; AHgh+RozcNype0mnX7aAP5fFrqBzKSNT9+n6XdSTnDCoWJ+l0TicSvmoSVk3dwQZD/EsJ37ZOPwMPDj/nr0MKg3PWA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBmrIjlfuLbS+0GVA26CnnlwIDngS9qphdHGIrE3jh2rDJjlcj
	tAILfRqkkopbZkUBS5YRtCm1TwjJ7Gatz8tj86a8gSEmd9ClQ4WDXb8K
X-Gm-Gg: AfdE7cl4YoL0+bqCOoa+1i4tYyrW88HRS7SY05rhPySeDBa1078Nr0qQcKoFW11KYgs
	qby9ycreQuyzPQzpc5GLb22Lja3btIbOXsaL7dHE/Ees5X8H5goR2yPki33fiRK4wvFSCnZUtdv
	hhMhuEENelrnbV/oSKV7U3iweZJqSrXv29rbhu4/C3hjszGT/wcrchs+a8OaSPDqONZk/eYLTH+
	3Gc5c33r8xM6JMsZxI6djh+L0vhkzsHUUnAvFQ+4NMlazKXkWWiJTdGp6OyVGDJNmohsRWYuXGY
	u37Vdho2N6q9AteduOeOGoo3qhY5YqrIfgJljUfOG8G8zhCFopfz1jTuvbzHhkpd9o5YxwWLxDX
	P05DMUHZVcy4TCgrXc5XP5f4A//5lnwSJ7q12x3kJwEdbMi2zsccDZCHHF8eX6QwoKqbkUKDGl/
	Tsz7pZtLcJIve6S9UVCi0meF8+xSuRx2Abs3M3wJlFZzo4x7j1btn2V/cljXzGId1EL+Ly/Hw=
X-Received: by 2002:a17:903:458f:b0:2cb:3f5b:6663 with SMTP id d9443c01a7336-2ce9e9b4534mr6597835ad.11.1783717873913;
        Fri, 10 Jul 2026 14:11:13 -0700 (PDT)
Received: from ubuntu-gnu-linux-24-04-3.hub ([2407:7000:af23:3e00:f127:785b:6e87:f831])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccdf808379sm52881965ad.48.2026.07.10.14.11.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 14:11:13 -0700 (PDT)
From: Jiaxing Hu <huhuvmb88@gmail.com>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Will Deacon <will@kernel.org>,
	Joerg Roedel <joro@8bytes.org>,
	Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] iommu/rockchip: implement .flush_iotlb_all
Date: Sat, 11 Jul 2026 09:11:05 +1200
Message-ID: <20260710211105.9782-1-huhuvmb88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260710111508.917486-1-huhuvmb88@gmail.com>
References: <20260710060513.863714-1-huhuvmb88@gmail.com> <20260710111508.917486-1-huhuvmb88@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_141114_816591_78CEDD63 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCAxMCBKdWwgMjAyNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gYWNjZWwvcm9ja2V0
IGlzIGluIG1haW5saW5lLCBzbyBJIGd1ZXNzIHRoZSBpbnRlcmVzdGluZyBxdWVzdGlvbiBpcywg
d2h5Cj4gYXJlIHlvdSBleHBlY3RpbmcgeW91ciBjaGFuZ2VzIHRvIGJlIChzdGF5Pykgb3V0IG9m
IHRyZWU/CgpUaGFua3MuIEkgaGFkIGJlZW4gdHJlYXRpbmcgaXQgYXMgZXhwbG9yYXRvcnk6IHNp
bmdsZS1sYXllciBpbmZlcmVuY2UgcnVucwpvbiB0aGUgb3BlbiBzdGFjayAocm9ja2V0ICsgVGVm
bG9uKSBvbiBSSzM1NzYsIGJ1dCBjaGFpbmVkIGluZmVyZW5jZSBkb2VzCm5vdCwgYW5kIEkgbmFy
cm93ZWQgdGhlIGZhaWx1cmUgdG8gYmVsb3cgdGhlIHNvZnR3YXJlIHN1cmZhY2UKKGZpeGVkLWZ1
bmN0aW9uIGhhcmR3YXJlIEkgY2Fubm90IHJlYWNoIGZyb20gYW4gb3BlbiBib2FyZCksIHNvIGl0
IGZlbHQgdG9vCnVuZmluaXNoZWQgdG8gc2VuZC4KCkJ1dCB5b3UgYXJlIHJpZ2h0IHRoYXQgYW4g
UkZDIGlzIHRoZSBiZXR0ZXIgd2F5IHRvIGhhbmRsZSBpdC4gSSB3aWxsIGNsZWFuCnVwIHRoZSBS
SzM1NzYgYnJpbmctdXAgKHBvd2VyIGRvbWFpbnMsIGNsb2NrcywgSU9NTVUsIERQVS9SRE1BLCBE
VFMpIGludG8KYW4gUkZDIGFnYWluc3QgY3VycmVudCBtYWlubGluZSBhbmQgcG9zdCBpdCwgd2l0
aCB0aGUgY2hhaW5lZC10YXNrCmxpbWl0YXRpb24gZGVzY3JpYmVkIGhvbmVzdGx5LiBJZiB5b3Ug
Y2FuIHBvaW50IG1lIGF0IHdobyBlbHNlIGlzIHdvcmtpbmcKb24gdGhlIFJLMzU3NiBOUFUsIEkg
d291bGQgYmUgZ2xhZCB0byBjb21wYXJlIG5vdGVzLgoKVGhhbmtzLApKaWF4aW5nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
