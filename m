Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73AACCD1288
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Apr 2024 23:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AWwcydCwKo2g2O2fUbwbT6HqaTh2nF+Jse1LNUeXwoQ=; b=LIxoiqFGZ3ccB6
	1CWQh+KAKbVTXtr3v/8nMEdlFkl7OjxRHD/yXn6yOVMoR1XQ3pmZ5ly9iZrdCyHVin3KtKNFmowKI
	0bN8ZShL2M8ChrkztJ00sNMLGg/pn1VyjM50KUrj+p44wNXrUtJjUkDTm+4oQgyxh8Xus8anRwhb0
	LHhtHJq0sOiZ8QXHJ7caiOeTDzjy2RYxi5pTqT0KZNpQcsjOY1oXQqv4aGk9dbiEYI1phl3eHq+In
	C9NXQuMT75VmooSEYLDwYi58VjWXVermRfnDFMrxbVUVX+cr9zVLuN+3MB5qHZUS99DWTWEcK+fMq
	RNnxntTdZPPVrNBPYuSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrR1z-000000096iY-04Va;
	Mon, 01 Apr 2024 23:25:35 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrR1v-000000096gy-3Qfk
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Apr 2024 23:25:33 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-432d55b0fa9so674291cf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Apr 2024 16:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1712013928; x=1712618728; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RBFnvPatyDI2+u+ojuWnolOosfbwXQU3OHbOSZ7OXrI=;
        b=OR93ZTFN1HavD29FXGI1+gzpp0lTVQ1z5VZFMiCw0yDkOfCVWuEnqBY/tmK8fUtk+S
         lS6cBEkUMuk/b5sYLb7W3INLWHp3C/mLDDhw7id+2mbhW9equL4k5Yvf82Nji930mmsq
         LAxodxqGqq59nlNKMrp2wip0ANNrmcWViaAzqI29saqIMOQ+3mhQACtQqpoBAKMydKRt
         XOeFlX/77NtBs/T1aN1mRGSlPsQCKnl2GuV0ymzvTxMlJK6g46BuaayAKm098SRLPJ7w
         SDLYaks6dNGUfZDD8waVMoTOKYMgbtgMrESt3lcHldTBP8+qciYTd3RFsIAYZn6WNFxN
         fF6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712013928; x=1712618728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RBFnvPatyDI2+u+ojuWnolOosfbwXQU3OHbOSZ7OXrI=;
        b=aKNk1vBLOyh2xkUx/+5ZiIqcO/v6em6K0vTm07/sF8TRsR13w30CvHlCIUS1mI3CGz
         B7gNwxrAtIsKrUVb4/moCrAaFpuhnov+LE5wfrjMos/0xg6nGie+ybN9gftLfBK/W9w/
         HQKMu7W5IK05ZOKHxHbOn71UGsBkaCjvVdagQF+pQmsNSOm2T/bzgNPNdqCHE2LsQ0Vy
         GU6688s9By81AYxNr93gL+0sSs6YX1ztV0/RtY6TIt5wcXJc6TthyAUQN0r4tEHd+ttk
         8pqGC6uzhbD3J57+1i7YnS5HQ58dVFFj5bIVC2JTb2A9vp21wrNqGdVh/dfHuHNfLsNF
         Me3w==
X-Forwarded-Encrypted: i=1; AJvYcCUJhw3ejUHmE7dbdAnqY1yd/GtiN91DqPJWjdgIEsXszLfifWRspB1YjkfiTrIU3d7WtEyLVpH4hmUKSIFxqoeVi9W3s8sHFzNAPMSOtTx3JNkr
X-Gm-Message-State: AOJu0YwVJt7fSGGdR1EmkBCfHVo4CS19kirrMH2CiABgaw0V2HsTn5cI
	rbBgV6ddLCcDV0T5SBkafmAP26jkB07/eJEH1CSxA70YkMBbSz1+vR2NSbFvkzlRFTq1+WS0bxI
	anTon5Bb38+tML0umVnJzV6q2i/qkcz4j3KxD
X-Google-Smtp-Source: AGHT+IFcZ8LGPNpxD+CyijkSEakaabqejnuTmSNnd7xvNofgmBOU9Q+hLp0gjmEcQ9dp7UWhkk+oSQSje588a0Wc16k=
X-Received: by 2002:ac8:7fc2:0:b0:432:fea5:e3b4 with SMTP id
 b2-20020ac87fc2000000b00432fea5e3b4mr179052qtk.3.1712013928247; Mon, 01 Apr
 2024 16:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <tQ0L3-34g4t-mzfQIP6KDe5OYelGnEo6Udzq6Kb_nEcljppSQUXOktpE__nL-CdLOu9gW-4tIIbjtSbqrdCrjEkdhZLPiiHTqRcCB6WORuM=@thefossguy.com>
 <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org>
In-Reply-To: <ac4246bf3786230eb9ca85b329e7d0df@manjaro.org>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 1 Apr 2024 16:24:51 -0700
Message-ID: <CAGETcx89V5CJrAq6XwuGiusQnkR804pTgYAtS94v7Q+v=Cv+qA@mail.gmail.com>
Subject: Re: Fixing the devicetree of Rock 5 Model B (and possibly others)
To: Dragan Simic <dsimic@manjaro.org>
Cc: Pratham Patel <prathampatel@thefossguy.com>, sebastian.reichel@collabora.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	regressions@lists.linux.dev, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_162531_976921_364A0640 
X-CRM114-Status: GOOD (  26.34  )
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

T24gU2F0LCBNYXIgMjMsIDIwMjQgYXQgMTA6MTDigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBQcmF0aGFtLAo+Cj4gT24gMjAyNC0wMy0yMyAx
ODowMiwgUHJhdGhhbSBQYXRlbCB3cm90ZToKPiA+IFNpbmNlIHRoZSBpbnRyb2R1Y3Rpb24gb2Yg
dGhlIGBvZjogcHJvcGVydHk6IGZ3X2Rldmxpbms6IEZpeCBzdHVwaWQKPiA+IGJ1ZyBpbiByZW1v
dGUtZW5kcG9pbnQgcGFyc2luZ2AgcGF0Y2gsIGFuIGlzc3VlIHdpdGggdGhlIGRldmljZS10cmVl
Cj4gPiBvZiB0aGUgUm9jayA1IE1vZGVsIEIgaGFzIGJlZW4gZGV0ZWN0ZWQuIEFsbCB0aGUgc3Rh
YmxlIGtlcm5lbHMgKDYuNy55Cj4gPiBhbmQgNi44LnkpIHdvcmsgb24gdGhlIE9yYW5nZSBQaSA1
LCB3aGljaCBoYXMgdGhlIFJvY2tjaGlwIFJLMzU4OFMgU29DCj4gPiAoc2FtZSBhcyB0aGUgUksz
NTg4LCBidXQgbGVzcyBJL08gYmFzaWNhbGx5KS4gU28sIGJlaW5nIGFuIG93bmVyIG9mCj4gPiBv
bmx5IHR3byBTQkNzIHdoaWNoIHVzZSB0aGUgUkszNTg4KiBTb0MsIGl0IGFwcGVhcnMgdGhhdCB0
aGUgUm9jayA1Cj4gPiBNb2RlbCBCJ3MgRFQgaXMgaW5jb3JyZWN0Lgo+ID4KPiA+IEkgbG9va2Vk
IGF0IHRoZSBwYXRjaCBhbmQgdHJpZWQgc2V2ZXJhbCB0aGluZ3MsIG5laXRoZXIgcmVzdWx0ZWQg
aW4KPiA+IGFueXRoaW5nIHRoYXQgd291bGQgcG9pbnQgbWUgdG8gdGhlIGNvcmUgaXNzdWUuIFRo
ZW4gSSB0cmllZCB0aGlzOgo+Cj4gQ291bGQgeW91LCBwbGVhc2UsIGNsYXJpZnkgYSBiaXQgd2hh
dCdzIHRoZSBhY3R1YWwgaXNzdWUgeW91J3JlCj4gZXhwZXJpZW5jaW5nIG9uIHlvdXIgUm9jayA1
Qj8KClByYXRoYW0sIGNhbiB5b3UgcmVwbHkgdG8gdGhpcyBwbGVhc2U/IEkgZG9uJ3QgcmVhbGx5
IHVuZGVyc3RhbmQgd2hhdAp5b3VyIGlzc3VlIGlzIGZvciBtZSB0byBiZSBhYmxlIHRvIGhlbHAu
CgpBbHNvLCBjYW4geW91IGdpdmUgdGhlIG91dHB1dCBvZiA8ZGVidWdmcz4vZGV2aWNlc19kZWZl
cnJlZCBmb3IgdGhlCmdvb2QgdnMgYmFkIGNhc2U/CgpUaGFua3MsClNhcmF2YW5hCgo+Cj4gPiBg
YGAKPiA+ICQgZ3JlcCAtQyAzIHJlbW90ZS1lbmRwb2ludAo+ID4gYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+Cj4gPiAgICAgICAgICAgICAgICAgcG9y
dCB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBlczgzMTZfcDBfMDogZW5kcG9pbnQgewo+
ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8Jmky
czBfOGNoX3AwXzA+Owo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+ICAgICAgICAg
ICAgICAgICB9Owo+ID4gICAgICAgICB9Owo+ID4gLS0KPiA+ICAgICAgICAgICAgICAgICBpMnMw
XzhjaF9wMF8wOiBlbmRwb2ludCB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBkYWktZm9y
bWF0ID0gImkycyI7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBtY2xrLWZzID0gPDI1Nj47
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgICByZW1vdGUtZW5kcG9pbnQgPSA8JmVzODMxNl9w
MF8wPjsKPiA+ICAgICAgICAgICAgICAgICB9Owo+ID4gICAgICAgICB9Owo+ID4gfTsKPiA+IGBg
YAo+ID4KPiA+IFNvLCBmcm9tIGEgY3Vyc29yeSBsb29rLCB0aGUgaXNzdWUgc2VlbXMgdG8gYmUg
cmVsYXRlZCB0byBlaXRoZXIgdGhlCj4gPiBEVCBub2RlIGZvciB0aGUgYXVkaW8gY29kZWMgb3Ig
cmVsYXRlZCB0byB0aGUgZXM4MzE2J3MgYmluZGluZyBpdHNlbGYuCj4gPiBUaG91Z2ggSSBkb3Vi
dCB0aGF0IHRoZSBsYXRlciBpcyB0aGUgaXNzdWUgYmVjYXVzZSBpZiB0aGF0IHdlcmUgdGhlCj4g
PiBpc3N1ZSwgX3NvbWVvbmVfIHdpdGggYSBQaW5lNjQgUGluZWJvb2sgUHJvIHdvdWxkJ3ZlIHJh
aXNlZCBhbGFybXMuIFNvCj4gPiBmYXIsIHRoaXMgc2VlbXMgdG8gYmUgcmVsYXRlZCB0byB0aGUg
YHJrMzU4OC1yb2NrLTViLmR0c2AgYW5kIHBvc3NpYmx5Cj4gPiB3aXRoIHRoZSBgcmszNTg4cy1y
b2NrLTVhLmR0c2AgdG9vLgo+ID4KPiA+IEkgd291bGQgKipsb3ZlKiogdG8gaGVscCBidXQgSSdt
IGFmcmFpZCBJIGRldmljZS10cmVlcyBhcmUgbm90Cj4gPiBzb21ldGhpbmcgdGhhdCBJIGFtIGF0
LWFsbCBmYW1pbGlhciB3aXRoLiBUaGF0IHNhaWQsIEkgYW0gb3BlbiB0bwo+ID4gbWV0aG9kcyBv
ZiBkZWJ1Z2dpbmcgdGhpcyBpc3N1ZSB0byBwcm92aWRlIGEgZml4IG15c2VsZi4KPiA+Cj4gPiBJ
IHdvdWxkIGhhdmUgcmVwbGllZCB0byB0aGUgcGF0Y2gncyBsaW5rIGJ1dCB1bmZvcnR1bmF0ZWx5
LCBJIGhhdmVuJ3QKPiA+IHlldCBzZXR1cCBuZW9tdXR0IGFuZCBteSBlbWFpbCBwcm92aWRlcidz
IHdlYiBVSSBkb2Vzbid0IGhhdmUgYQo+ID4gW3N0cmFpZ2h0Zm9yd2FyZF0gd2F5IHRvIHJlcGx5
IHVzaW5nIHRoZSAnSW4tUmVwbHktVG8nIGhlYWRlciwgaGVuY2UgYQo+ID4gbmV3IHRocmVhZC4g
QXBvbG9naWVzIGZvciB0aGUgaW5jb252ZW5pZW5jZSBjYXVzZWQuCj4gPgo+ID4gICAtLSBQcmF0
aGFtIFBhdGVsCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+ID4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gPiBMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
