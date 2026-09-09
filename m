Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 773BEC79FB7
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2026 13:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFbLUCc3F2qxPvCC1x1ByLdjDZKLew7cAB+1iyW4h5Y=; b=x5R3AaYdSXw8D/
	CIPLRvkPYSLQ+qfVwZlc7RYJJ4cDuasJNWAMzmsxMWTDRkZAVpQcjHTyzeZ+UpbLcVHA1KdU+auYT
	4N5kmy/Vm1qUwHvALHS748whqsgWbvjpfi6+itMAZPAcGWkH8BNWoRx3sUt4IL/4+vPZWDvC7LryL
	sJsVAvr+Z8ISY/9fz4j1p3JnlMtRBWjJ9FfsJzx5rdo24ci02k9tkY3ioG4wp8kjV+7am0rNUuyCs
	aGOK/fxEfv5D6FCunJj0nJCIoS0I4DRs1YhH8jGXjeBG8hsuU7+3mP/ZIbXSP8oF6fTYrlJyZdKLL
	F1H8MeuN6Qr9Lko6S3Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Ie4-0000000Bq2a-3kZD;
	Wed, 09 Sep 2026 13:47:24 +0000
Received: from mail-lr2-x10.google.com ([2a00:1450:4864:38::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4Ie2-0000000Bq1K-1nvl
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Sep 2026 13:47:23 +0000
Received: by mail-lr2-x10.google.com with SMTP id 38308e7fff4ca-3a2ff16c0e6so2028431fa.0
        for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2026 06:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788961640; x=1789566440; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Pkp/eQf09LCqXaqLSVyyyJ0ciI7AzbJ9Q/c0YuMCG0k=;
        b=rtomgUTubCbvsYLbKWikH4lLO+Uge8/ACegOk9QVAksWj9RHGhIUKVEc8NiHjNfNb/
         lIyA070dm2GcLt7veRyoG7ZdYSrzh28n/GPUmnTcFrYM+kliPKO2xw+cYk15eXrgtsKS
         jHFstCuhjk+aoSBpn+y+oMVe5aubemMAaeGtK3Tby9vc7w+j2O7aYxw2JzmNuMz/KASv
         q19+wgrDoHSGkQWwqByFebwlrE6NHJ2ft2Y8/xzy91WEsg5D9Rl5dnJyS3wgfd7bcLqL
         TTd3BTRZRt4JsNZE1ozt7li6BJPhdhiaQg4un9GwtSIL1uiS3sWVEYFW0NrZ/nxZenYB
         hceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788961640; x=1789566440;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Pkp/eQf09LCqXaqLSVyyyJ0ciI7AzbJ9Q/c0YuMCG0k=;
        b=rmZ98vJslq7GZvxm5vIWeH1lz9pHLsNTeKTTmtdGHykwh4ke9nlHNyyd5CWvMjruux
         d2ombVBLCIAvAAww2JSH5JgoRbxU9zHnogWPqtwMllJzRcjGu/HRieSPRncZ5zyx6f0D
         kpc8BbVjF6bOu8wTR7CQ1BB0Jn+fMvCAibPFe7NklMWUgQS7kjCdAmzt3vCMB3NyQSrv
         OZrbrMDyArE53bEc6r/aXHjh0P92+w0DOM+SjSk4rjtGcAirGro/i4bc4Y+B78Ad9RC6
         804+wMCesv7h5fs5zKhtxej6q2Ll0PNvUaK7w27RkzbHcR8DbGNRSk4/dliSO4PY4vBu
         Q+zA==
X-Forwarded-Encrypted: i=1; AKwUvBwkC1eJtqgXqn/NPMgHKmDKRm9TBJ+V/fyR/uskOK9tTMHeobaDOQXzyOp7SaDko4cOkR6aGxzO0judAKqrdg==@lists.infradead.org
X-Gm-Message-State: AFuF++kvnWNzMGA5CgT6Y9OfvRFrAxRIZmrWeYk+cTIdtLExVEjrWd6G
	HdnyjvGw6+h9ADu8sfcRo7OCwze41FOCSLEfEX2ocCBIHqA6hy3LkcdO
X-Gm-Gg: AYBFou0O2JBoIAYxqcYTCMQqWc+ZMRkaM4fkOU1i3jsvYykmxbBrZ45BJWnmiHZz1ib
	SRKTLG8FIYpe8sRQCQd/+v0YY7s/trjCTm4wiKO42yHRJtzPogWNbIBEXV9pQs1AYS7oi61rL9i
	1ITLlSmUdZ9gPNAKdhXUJbdRXMzm53MXX9xYKhGPdDWfcQvpAWIoV+AHUksXXsbmBWRBbEi3+fm
	KKjO/tgjb/vOFw6R9p4HasMm8Pa7d3aZ/spzn9NYJdJNC2fXpdJav0zmo7q6uXv+RB+2sMaqulN
	Qk/+qO2NQfXpmV8SmbE+nX6NpvZQJKPPBRWfHSNpZJiJCmWKoTlvSRiITzJ5oQ1O3ekQmz10ims
	KTRjvS8+x8bqIt2jEJSaZi1t5ekxO4SOj4UyjhMG5Tj/qPtm9+PaIRBCzQdA39f6/V2FVih2/Al
	wy8HdPMRZwaU0A3Zu94pzPyzcdMzvjVunhAmtYGTgy2agtnrSKjyt0MLoVqgUQQbCflILhtlKQo
	JTGfEBFivnCbNOx0jz27qll
X-Received: by 2002:a05:651c:1511:b0:3a4:8913:a259 with SMTP id 38308e7fff4ca-3a58d59a433mr1654671fa.29.1788961639878;
        Wed, 09 Sep 2026 06:47:19 -0700 (PDT)
Received: from KAS (94-29-32-34.dynamic.spd-mgts.ru. [94.29.32.34])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3a3705cd8d5sm42008571fa.37.2026.09.09.06.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2026 06:47:19 -0700 (PDT)
From: Andrey Korshunov <razor1702@gmail.com>
To: devnull+hystericaldragons.proton.me@kernel.org
Cc: HystericalDragons@proton.me,
	amadeus@jmu.edu.cn,
	jensenhuang@friendlyarm.com,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Split out the common NanoPi RK3528 parts
Date: Wed,  9 Sep 2026 16:47:16 +0300
Message-ID: <20260909134716.879-1-razor1702@gmail.com>
X-Mailer: git-send-email 2.54.0.windows.1
In-Reply-To: <20260907-r28s-upstream-v2-2-21ab570fc91c@proton.me>
References: <20260907-r28s-upstream-v2-2-21ab570fc91c@proton.me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260909_064722_490762_CF66CFC2 
X-CRM114-Status: GOOD (  12.01  )
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

T24gTW9uIFNlcCA3LCAyMDI2IGF0IDQ6MTMgUE0gQ0VTVCwg5a6J5a65IHZpYSBCNCBSZWxheSB3
cm90ZToKPiArJm1kaW8xIHsKPiArCXJnbWlpX3BoeTogZXRoZXJuZXQtcGh5QDEgewo+ICsJCWNv
bXBhdGlibGUgPSAiZXRoZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIiOwo+ICsJCXJlZyA9IDwweDE+
Owo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJcGluY3RybC0wID0gPCZnbWFj
MV9yc3RuX2w+Owo+ICsJCXJlc2V0LWFzc2VydC11cyA9IDwyMDAwMD47Cj4gKwkJcmVzZXQtZGVh
c3NlcnQtdXMgPSA8MTAwMDAwPjsKPiArCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEMyIEdQ
SU9fQUNUSVZFX0xPVz47Cj4gKwl9Owo+ICt9OwoKVGhpcyBpcyBjYXJyaWVkIG92ZXIgdW5jaGFu
Z2VkIGZyb20gdGhlIE5hbm9QaSBaZXJvMiwgc28gbm90IHNvbWV0aGluZwp0aGlzIHBhdGNoIGlu
dHJvZHVjZXMsIGJ1dCBpdCBpcyB3b3J0aCBmaXhpbmcgd2hpbGUgdGhlIG5vZGUgaXMgYmVpbmcK
bW92ZWQsIGJlY2F1c2UgYXMgd3JpdHRlbiB0aGUgcG9ydCBkZXBlbmRzIG9uIHRoZSBib290bG9h
ZGVyLgoKb2ZfbWRpb19idXNfcmVnaXN0ZXIoKSByZWFkcyB0aGUgUEhZIElEIHdpdGggZ2V0X3Bo
eV9kZXZpY2UoKSBiZWZvcmUKcGh5X2RldmljZV9yZWdpc3RlcigpIGZldGNoZXMgdGhlIFBIWSBu
b2RlJ3MgcmVzZXQtZ3Bpb3MsIHNvIGEgUEhZIHRoYXQKdGhlIGJvb3Rsb2FkZXIgbGVmdCBpbiBy
ZXNldCBpcyBzaW1wbHkgbm90IGZvdW5kOgoKICBtZGlvX2J1cyBzdG1tYWMtMDogTURJTyBkZXZp
Y2UgYXQgYWRkcmVzcyAxIGlzIG1pc3NpbmcuCgpJIGhpdCBleGFjdGx5IHRoYXQgb24gYSBOYW5v
UGkgUjI4UyBib290ZWQgd2l0aCBtYWlubGluZSBVLUJvb3QKKGdlbmVyaWMtcmszNTI4KSwgd2hp
Y2ggZG9lcyBub3QgdG91Y2ggdGhhdCBwaW4gLSB0aGUgUkdNSUkgcG9ydCBuZXZlcgpjYW1lIHVw
LiBEZXNjcmliaW5nIHRoZSByZXNldCBvbiB0aGUgTUFDIGluc3RlYWQgbWFrZXMgc3RtbWFjIGlu
c3RhbGwgaXQKYXMgbWlpX2J1cy0+cmVzZXQsIHdoaWNoIHJ1bnMgYmVmb3JlIHRoZSBidXMgaXMg
c2Nhbm5lZDoKCgkmZ21hYzEgewoJCXNucHMscmVzZXQtYWN0aXZlLWxvdzsKCQlzbnBzLHJlc2V0
LWRlbGF5cy11cyA9IDwwIDIwMDAwIDEwMDAwMD47CgkJc25wcyxyZXNldC1ncGlvID0gPCZncGlv
NCBSS19QQzIgR1BJT19BQ1RJVkVfTE9XPjsKCX07Cgp3aXRoICZnbWFjMV9yc3RuX2wgbW92ZWQg
dG8gdGhlIE1BQydzIHBpbmN0cmwtMCBhbmQgdGhlIHRocmVlIHJlc2V0CnByb3BlcnRpZXMgZHJv
cHBlZCBmcm9tIHRoZSBQSFkgbm9kZS4gVGhlbiB0aGUgcG9ydCBjb21lcyB1cCB3aGF0ZXZlcgp0
aGUgYm9vdGxvYWRlciBkaWQsIG9uIGJvdGggYm9hcmRzLiBBcm1iaWFuIGNhcnJpZXMgdGhlIHNh
bWUgY2hhbmdlIGZvcgp0aGUgTmFub1BpIFplcm8yLCBmb3IgdGhlIHNhbWUgcmVhc29uLgoKSSBo
YWQgYW4gUjI4UyBzZXJpZXMgb2YgbXkgb3duIG91dCBiZWZvcmUgSSBzYXcgeW91cnM7IEkgYW0g
ZHJvcHBpbmcgaXQuCkhhcHB5IHRvIHRlc3QgdGhpcyBvbmUgb24gdGhlIGhhcmR3YXJlIGFuZCBz
ZW5kIGEgVGVzdGVkLWJ5LgoKQW5kcmV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
