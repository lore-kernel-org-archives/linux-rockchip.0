Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7FA7CD8C92
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bGhhdtESQv+fh9ViT+0dZfSlWfDBdukoJSfH9oPWcCc=; b=rGfh0njT8dbm8b
	1RHD5sN6yAtowcxtql1X9rPHI6fT/9jv9QZwlWuegWHRJPSfqMhUNVzZTJfn4rAsqBdABWnFL9fSx
	+7ey8BNIjz2zuNv1CAEoCib4PM3R/7AwSAVooRORPKhVnyoiuq2OKByyPklwODnYdjS0OWVuBK2Ni
	FJA449b+5ZBy9I/yDEyjUATJm4S+uX4T9f4Jt2lVXznRX5Yh/KdJcYPup5x5nO4EGymYFqHAr50pF
	ivNkkLGcyKW7bORPNFaFRDjnZh8josOuI2eSVbO9Jfo8GeuPSv+W7Fju4PXJgl+5JvXhSHTpb7CRe
	cefkHfr5Vrj1zl+30AyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUwc-000000031vs-3npS;
	Mon, 08 Jun 2026 08:02:50 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWUwZ-000000031uf-2BRo
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 08:02:49 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-68bac6e24fdso5351913a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2026 01:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780905765; cv=none;
        d=google.com; s=arc-20240605;
        b=BsxClC0U24rQw983HDt6IMr2CtwiWWRfkpCFMbvA+x/l+xW17xxQXQzTrSn5fMXSD0
         OehKdLlvd43/An+AE2B3XVmMNRSjhjaVoclTwQCfL2yeZXySL4QO33WQo/GqlTz3WSNq
         RU7TQ2dKSNcrcd1CE+53J2lXXD1m/Gem1Lc2xZw2/kYtlv+pjXGzLkuhDPUVLxDRtb1L
         j/bRleFKY6B1HhvnncCXBunfn/7rQmxhwWcBowVCBJB6u7ShkHXNhXZ+qKl2naVPdvLl
         gRW5/4EOZic208UeOVQ7t4wg2ZzN7R0Pe18AoXze2k7J+76PkFNPQZm1p8L+lX23OarA
         jZXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bLq1D7uP5MxHvai6FqrEhNmJ5qKAoR2b/ce+Jxe1kds=;
        fh=1n59wdlOEaiKARRF6ttD/RAfLhT48lwAwXnBcRObNzY=;
        b=dks2ebJPIeeaXjLkQODsjTmKRUVKQUsgJ1sQ/zyE6OyWvZiQuiMtHhErrW962IznPy
         DEdhwQRq35gSAb8S2aP3I9vRkm2UialZLUTW07KCI0Kzk9XzQVztyUB6DrU0KocVun0r
         FPDCv6vPS8sY321cK1UrMIbF4RPVrAjT8z3Ey1MVy5REV2lMqzhMoFqSEub3d+deZFEQ
         1e3c/vBMqmck1JfKQO5gQhLFowkeHXpA36V2qfbXHZkamZP44kLWhc9r0kJb45JESr3y
         FUnzl76mtLGg9+HAGHzv4iJ1v1O2KKnlJ474PLPH+wlpS96laT/vbnbGIOmwQBJcOoLE
         DgYQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780905765; x=1781510565; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLq1D7uP5MxHvai6FqrEhNmJ5qKAoR2b/ce+Jxe1kds=;
        b=I4obooXRjadVsVD8DtvILypmY1WqHk4JGE8R+6+sCPC9tgqTE0UofOv/DPugvtYUXW
         AzWiBz3e6KldibjOfmn/jdkqn1w7KHBE+pvOvecNnW2ZeifCS825JNosx9XzuFnBH25n
         M5SdK5YWl6GGVUoYTVB5wlNXexr/6UOm7WwxgJSWwi97EIdAHctQRH6Rt7Z/UmIkNlhV
         gxFDUrTuOn9yUvBxmbPCXCBeS+FmYZRErNT0fMEkYM0brhVb3nHjurZiD0udUH4hLXkY
         p/7iqYnw1ao5BHd/DPZ2v/C/4UJNnckwg6NMF2+Df1IBF4w57S+ITuTT/JisAw36A5oG
         JRRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780905765; x=1781510565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bLq1D7uP5MxHvai6FqrEhNmJ5qKAoR2b/ce+Jxe1kds=;
        b=hiiaTVW7QXfwzE/+nmdze2FnWlI67ENuNWRHNMGB9LpqlMAn99ySoppgQAgecCb9VY
         VBrSEWF11XIVGPMp40F4VlD26b9AoSCo4X8S6mVpPbarGZCgikaT2mBTaQk0YxUwQCdL
         smVJnbEcZkvi5f4vE77MfE35UAB8NH8VZUWP8vATc5ieO38XkTUeXcWitd9HtdOhN+Lo
         yyg0/73gyMwd5bTMxJLsYz5f97hhj8FXy97DZ/uakq94J2jjejtGDaJ4willL/1HHKQu
         gccd383EznRLDtOGHdspZYUQPsFXw1hee792WYJBnFZOW4ykgpLgkeBDvvMnx6GJXgJl
         SjTA==
X-Forwarded-Encrypted: i=1; AFNElJ+IK+ySAA/kj3lIKOY9wyB1v69PeXruIipAQJ+Sj+9FJIHak2Pmitr5P8mWYb5lxB/U8+r5StAfq+VQhuGdCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ+wZTcbEtD/XQx7MvB1W5dh6QqYdeMgA/VpZZzH8EqaMRLUWI
	zsf8yhDlKljDYuhPNe8WpgAsATR5w74OLIgCKonTiCjKovRV1C+sKJcmtDYBdJHkSNP84wR7Bzh
	FQtZmk1/h/j7MsGr8lnFIsvT6mYWNCss=
X-Gm-Gg: Acq92OFC/1PSythWrHqmBRs22c5cEfG+BGOiTPVPvfTf/F/if5JLOXvUpO4oHVYGGwy
	6nJkogCZbHfXJf20ms5aaD0jmoaWddFfXWN4RW80dULAH360n7PLWYdSdG+P2GpMNikRiydIuIT
	LIR9Qeu7AeNsdFTxWvMyXL6kBU3FtEYEvLS824/DDcv5Hre5TffTJq3MZjYVPIPEHCEWEFGFKC5
	jaSCRQSz2l37Goh4kx+aWiqAcI/YCHRlB9yrdqmrcn9qgTJzlDf1GMz05RAu4le4flv3KXY8KnS
	I+sxFdn1obpgAJJ8oA==
X-Received: by 2002:a17:906:8a46:b0:bec:4b96:5fb9 with SMTP id
 a640c23a62f3a-bf3701806dcmr422529166b.3.1780905765057; Mon, 08 Jun 2026
 01:02:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260604135255.62682-1-midgy971@gmail.com> <3d99569e-9c3a-49d1-93fb-1335382523e9@rock-chips.com>
 <CA+GS1Y1s78PwN63X2YJoS8VEGp7CpTERo_K65yKs00U4VRAw4Q@mail.gmail.com> <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com>
In-Reply-To: <e5058919-9485-4de5-8eea-331ebfc2987c@rock-chips.com>
From: Midgy Balon <midgy971@gmail.com>
Date: Mon, 8 Jun 2026 10:05:33 +0200
X-Gm-Features: AVVi8Cc-kS2uobepJQqeen5fwApM6uunQz9mBN_BXk5X1LlYp7Vi43yabrw2ZY0
Message-ID: <CA+GS1Y3ysdWZ3qCq3ip_Pbw+v4LxHZd95aBo=jwB+orYaMBBNw@mail.gmail.com>
Subject: Re: [RFC PATCH v3 0/9] accel: rocket: Add RK3568 NPU support
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: tomeu@tomeuvizoso.net, ogabbay@kernel.org, heiko@sntech.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, 
	will@kernel.org, robin.murphy@arm.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
	linux-kernel@vger.kernel.org, Simon Xue <xxm@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_010247_601863_26BCC41C 
X-CRM114-Status: GOOD (  42.85  )
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

SGVsbG8gQ2hhb3lpLAoKVGhhbmtzIC0tIHRoaXMgaXMgZXhhY3RseSB3aGF0IEkgbmVlZGVkLgoK
LSB2Mi9EVEU6IHdpbGwgZG8uIEknbGwga2VlcCBidWlsZGluZyBvbiBTaW1vbidzIHBlci1kZXZp
Y2Utb3BzIHNlcmllcyAtLSB3aXRoCiAgdGhhdCBpbiBwbGFjZSB0aGUgTlBVIE1NVSBjYW4gdXNl
IHRoZSAzMi1iaXQtRFRFIG9wcyAodGhlIHBlci1vcHMgR0ZQX0RNQTMyCiAgdGhhdCdzIGFscmVh
ZHkgaW4gbWFpbmxpbmUpIHdpdGhvdXQgdGhlIGdsb2JhbCBya19vcHMgY29uZmxpY3QuIEknbGwK
a2VlcCBpdCBhcwogIGEgc3RhdGVkIGRlcGVuZGVuY3kgb2YgdGhlIHY0IGNvdmVyIGxldHRlci4K
Ci0gdmRkX25wdTogIEknbGwgc3dpdGNoIHRoZSBSSzM1NjggTlBVCiAgcG93ZXIgZG9tYWluIHRv
IG5lZWRfcmVndWxhdG9yICsgZG9tYWluLXN1cHBseSA9IDwmdmRkX25wdT4gYW5kIGRyb3AgdGhl
CiAgcmVndWxhdG9yLWFsd2F5cy1vbiB3b3JrYXJvdW5kLiBJIHN1c3BlY3QgdGhhdCdzIGFsc28g
dGhlIHJpZ2h0IGZpeCBmb3IgdGhlCiAgcG93ZXItb2ZmL29uIGRlLWlkbGUgaXNzdWUgSSBkZXNj
cmliZWQgLS0gdGhlIGFsd2F5cy1vbiB3YXMgcmVhbGx5Cmp1c3QgcGFwZXJpbmcKICBvdmVyIHRo
ZSBkb21haW4gbm90IGJlaW5nIG1vZGVsbGVkIHdpdGggYSByZWd1bGF0b3IuIEknbGwgY29uZmly
bSBvbgp0aGUgYm9hcmQuCgotIEFVVE9fR0FUSU5HOiB0aGFua3MgZm9yIHRoZSBjb21taXQgcmVm
ZXJlbmNlcyAtLSBJJ2xsIGtlZXAgdGhlIGJpdC0zMQogIHJlYWQtbW9kaWZ5LXdyaXRlIGZvcm0g
d2l0aCB5b3VyIFN1Z2dlc3RlZC1ieSBhbmQgd3JpdGUgdGhlIGNvbW1lbnQKZnJvbSB0aG9zZS4K
ICBGb3IgdGhlIHJlY29yZDogb24gdjcuMS1yYzYgdGhlIE5QVSBNTVUgYWxzbyBjb21wbGV0ZXMg
dHJhbnNsYXRpb25zCm9uIHRoZSByZXNldAogIHZhbHVlIChJIGNvdWxkbid0IHJlcHJvZHVjZSBh
IHBhZ2Utd2FsayBzdGFsbCB3aXRob3V0IHRoZSB3cml0ZSksIHNvIEknbGwgbm90ZQogIGluIHRo
ZSBjb21taXQgdGhhdCBpdCBtYXRjaGVzIHRoZSB2ZW5kb3IgY2xvY2stZ2F0aW5nIGhhbmRsaW5n
IHJhdGhlciB0aGFuCiAgZml4aW5nIGEgZmFpbHVyZSBJIGNhbiByZXByb2R1Y2UgaGVyZSAtLSBo
YXBweSB0byBkcm9wIGl0IGlmIHRoZSBpb21tdQogIG1haW50YWluZXJzIHdvdWxkIHByZWZlci4K
Ci0gUFZUUExML05vQzogSSdsbCBmb2xsb3cgdXAgd2l0aCBGaW5sZXkuIEZpcnN0IEknbGwgY2hl
Y2sgd2hldGhlciB0aGUKICBuZWVkX3JlZ3VsYXRvciBjaGFuZ2UgcmVzb2x2ZXMgdGhlIE5vQyBy
ZS1wb3dlciBkZS1pZGxlIG9uIGl0cyBvd247CmlmIGl0IHN0aWxsCiAgSSdsbCBicmluZyBoaW0g
dGhlIGRldGFpbHMgKHRoZSBnZW5wZCBwb3dlci1vbiBkZS1pZGxlIGFjayBhbmQgdGhlCiAgQlVT
X0lETEVfU1Qgc3RhdGUpLgoKSSdsbCBzZW5kIGEgdjQgd2l0aCB0aGVzZS4gVGhhbmtzIGFnYWlu
IGZvciB0aGUgcXVpY2ssIGRldGFpbGVkIGFuc3dlcnMuCgpLaW5kIHJlZ2FyZHMsCk1pZGd5CgpM
ZSBsdW4uIDgganVpbiAyMDI2IMOgIDAzOjQwLCBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9j
ay1jaGlwcy5jb20+IGEgw6ljcml0IDoKPgo+IEhpIE1pZGd5LAo+Cj4gT24gNi84LzIwMjYgNTow
MyBBTSwgTWlkZ3kgQmFsb24gd3JvdGU6Cj4gPiBIaSBDaGFveWksCj4gPgo+ID4gVGhhbmtzIGEg
bG90IGZvciBsb29raW5nIGF0IHRoaXMgLS0gaW5wdXQgZnJvbSBSb2NrY2hpcCBpcyBleGFjdGx5
IHdoYXQgdGhpcwo+ID4gc2VyaWVzIG5lZWRzLgo+ID4KPiA+PiBIbW1tLiBJZiBJIHVuZGVyc3Rh
bmQgY29ycmVjdGx5LCB0aGUgTlBVIElPTU1VIHNob3VsZCBiZSB2MiByYXRoZXIgdGhhbiB2MSwK
PiA+PiBpbXBseWluZyBpdCBzaG91bGQgc3VwcG9ydCA0MC1iaXQgUEFzLiBOZXZlcnRoZWxlc3Ms
IHBsZWFzZSBub3RlIHRoYXQgdGhlCj4gPj4gdXBwZXIgbGltaXQgZm9yIERURSBpcyAzMiBiaXRz
Lgo+ID4KPiA+IFVuZGVyc3Rvb2QsIGFuZCB0aGF0IDMyLWJpdC1EVEUgbm90ZSBpcyB0aGUgY3J1
eCBvZiB0aGUgdHJvdWJsZSBJIGhhZCwgc28gbGV0Cj4gPiBtZSBsYXkgb3V0IHdoYXQgSSBzZWUg
YW5kIGFzayBob3cgeW91J2QgcHJlZmVyIHRvIHNvbHZlIGl0Lgo+ID4KPiA+IFRoZSBtYWlubGlu
ZSBub2RlIGlzIGFscmVhZHkgdjIgKHJvY2tjaGlwLHJrMzU2OC1pb21tdSBpbiByazM1NngtYmFz
ZS5kdHNpKS4KPiA+IFRoZSBwcm9ibGVtIG9uIHRoaXMgOCBHaUIgYm9hcmQ6IHdpdGggdGhlIHYy
IG9wcyB0aGUgcGFnZS10YWJsZSBhbGxvY2F0aW9ucwo+ID4gKGdmcF9mbGFncyA9PSAwKSBjYW4g
bGFuZCBhYm92ZSA0IEdpQiwgc28gdGhlIERURSBlbmRzIHVwID4gMzIgYml0cyBhbmQgdGhlCj4g
PiBOUFUncyBmaXJzdCB0cmFuc2xhdGlvbiBmYXVsdHMgd2l0aCBETUFfUkVBRF9FUlJPUi4gVG8g
d29yayBhcm91bmQgdGhhdCBJIGhhZAo+ID4gc3dpdGNoZWQgdGhlIE5QVSBNTVUgdG8gdGhlIHYx
IGNvbXBhdGlibGUgKHJvY2tjaGlwLGlvbW11KSwgd2hvc2Ugb3BzIHNldAo+ID4gR0ZQX0RNQTMy
IGFuZCBrZWVwIHRoZSBEVEUgc3ViLTQgR2lCLiBUaGF0IHdvcmtzIGluIGlzb2xhdGlvbiwgYnV0
IGJlY2F1c2UgdGhlCj4gPiBkcml2ZXIga2VlcHMgYSBzaW5nbGUgZ2xvYmFsIHJrX29wcywgYSB2
MSBOUFUgTU1VIHRoZW4gdHJpcHMKPiA+IFdBUk5fT04ocmtfb3BzICE9IG9wcykgYWdhaW5zdCB0
aGUgU29DJ3MgdjIgaW5zdGFuY2VzIChWT1AvVkRFQyksIHdoaWNoIGlzIHdoeQo+ID4gSSBiYXNl
ZCB0aGUgc2VyaWVzIG9uIFNpbW9uJ3MgcGVyLWRldmljZS1vcHMgd29yay4KPiA+Cj4gPiBTbyBt
eSBxdWVzdGlvbjogd2l0aCBwZXItZGV2aWNlIG9wcyBpbiBwbGFjZSwgd2hhdCdzIHRoZSBpbnRl
bmRlZCB3YXkgdG8ga2VlcAo+ID4gdGhlIE5QVSBNTVUgb24gdjIgKmFuZCogY2FwIGl0cyBEVEUg
YXQgMzIgYml0cyBvbiBib2FyZHMgd2l0aCA+NCBHaUIgb2YgUkFNPwo+ID4gQSB2MiBvcHMgdmFy
aWFudCBjYXJyeWluZyBHRlBfRE1BMzIgZm9yIHRoaXMgZGV2aWNlLCBvciBpcyB0aGVyZSBhIHJl
Z2lzdGVyLwo+ID4gY29uZmlnIGJpdCB0aGF0IGNvbnN0cmFpbnMgdGhlIERURSBhZGRyZXNzPyBJ
J2QgcmF0aGVyIGZvbGxvdyB0aGUgUm9ja2NoaXAKPiA+IGludGVudCBoZXJlIHRoYW4gY2Fycnkg
dGhlIHYxIHdvcmthcm91bmQuIChTaW1vbiwgY2MnZCAtLSB0aGlzIGlzIHJpZ2h0IG5leHQgdG8K
PiA+IHlvdXIgcGVyLWRldmljZS1vcHMgc2VyaWVzLikKPiA+Cj4KPiBJZiBTaW1vbidzIG1ldGhv
ZCB3b3JrcywgcGxlYXNlIHVzZSBpdCA6KQo+Cj4gPj4gQ2FuIHRoZXNlIG9wZXJhdGlvbnMgbm90
IGJlIGNvbXBsZXRlZCB2aWEgdGhlIHBtZG9tYWluIGRyaXZlcj8KPiA+PiBJZiBzb21lIG9wZXJh
dGlvbnMgYXJlIGNvbnRyb2xsZWQgYnkgVEYtQSwgYXJlIHlvdSB1c2luZyBvcGVuIHNvdXJjZSBU
Ri1BPwo+ID4KPiA+IE1vc3Qgb2YgaXQgaXMgaW4gcG1kb21haW4gYWxyZWFkeS4gUG93ZXItb24g
YW5kIE5vQyBkZS1pZGxlIGFyZSBkb25lIGJ5IHRoZQo+ID4gUkszNTY4IE5QVSBwb3dlciBkb21h
aW4gKGdlbnBkKSBhdCBwb3dlci1vbiAtLSB0aGUgZHJpdmVyIG5vIGxvbmdlciBwb2tlcyB0aGUK
PiA+IFBNVSBkaXJlY3RseS4gVHdvIHRoaW5ncyByZW1haW4gb3V0c2lkZSBpdDoKPiA+Cj4gPiAg
LSB2ZGRfbnB1OiBJIG1hcmsgaXQgcmVndWxhdG9yLWFsd2F5cy1vbiBpbiBEVCByYXRoZXIgdGhh
biB3aXJpbmcgaXQgYXMgdGhlCj4gPiAgICBkb21haW4ncyBkb21haW4tc3VwcGx5LCBiZWNhdXNl
IGFzIGEgZG9tYWluLXN1cHBseSBpdCBjcmVhdGVkIGEgZGV2aWNlLWxpbmsKPiA+ICAgIHRvIHRo
ZSBJMkMgUE1JQyAocms4MDkpIGFuZCBnZW5wZCdzIHBvd2VyLW9mZiBRb1Mtc2F2ZSBwYXRoIHRo
ZW4gaHVuZwo+ID4gICAgcmVhZGluZyB0aGUgTlBVIFFvUyByZWdpc3RlcnMgYmVoaW5kIHRoZSAo
Z2F0ZWQpIE5vQy4gSWYgdGhlcmUncyBhIGNsZWFuIHdheQo+ID4gICAgdG8gbGV0IGdlbnBkIG93
biB2ZGRfbnB1IHdpdGhvdXQgdGhhdCBJMkMgb3JkZXJpbmcgZGVhZGxvY2sgSSdkIG11Y2ggcHJl
ZmVyCj4gPiAgICB0aGF0IC0tIHBvaW50ZXJzIHdlbGNvbWUuCj4gPgo+Cj4gUGxlYXNlIHJlZmVy
IHRvIHRoZSBwYXRjaCBiZWxvdyByZWdhcmRpbmcgdGhlIFJLMzU4OCBOUFUgcG1kb21haW4uCj4g
SW4gc2hvcnQsIHlvdSBuZWVkIHRvIHNldCBhICJuZWVkX3JlZ3VsYXRvciIgZm9yIHRoZSBSSzM1
NjggTlBVIHBtZG9tYWluLgo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjUxMjE2
MDU1MjQ3LjEzMTUwLTEtcm14cHpsYkBnbWFpbC5jb20vCj4KPiA+ICAtIHRoZSBOUFUgY29tcHV0
ZSBjbG9jayAoUFZUUExMKTogc2V0IGZyb20gdGhlIGRyaXZlciB2aWEgU0NNSSwgYW5kIG9ubHkK
PiA+ICAgIG5lZWRlZCBmb3IgYWN0dWFsIGNvbXB1dGUsIG5vdCBmb3IgYnJpbmctdXAuCj4gPgo+
ID4gT25lIG1vcmUgcG1kb21haW4gb2JzZXJ2YXRpb24gZnJvbSB0ZXN0aW5nLCBwb3NzaWJseSBy
ZWxldmFudCB0byBob3cgdGhlIE5QVQo+ID4gZG9tYWluIHNob3VsZCBiZSBtb2RlbGxlZDogdGhl
IGRvbWFpbidzIHBvd2VyLW9mZi9vbiBjeWNsZSBkb2Vzbid0IHJlbGlhYmx5Cj4gPiByZS1kZS1p
ZGxlIHRoZSBOb0MuIElmIHRoZSBOUFUgaXMgcHJvYmVkIGFmdGVyIGdlbnBkIGhhcyBhbHJlYWR5
IHBvd2VyZWQgdGhlCj4gPiAodW51c2VkKSBkb21haW4gb2ZmLCB0aGUgcG93ZXItb24gZGUtaWRs
ZSBmYWlscyAoImZhaWxlZCB0byBzZXQgaWRsZSBvbiBkb21haW4KPiA+ICducHUnIikgYW5kIHRo
ZSBOUFUgSU9NTVUgdGhlbiB0YWtlcyBhbiBleHRlcm5hbCBhYm9ydCBvbiBpdHMgZmlyc3QgTU1J
TyBhY2Nlc3MuCj4gPiBQcm9iaW5nIHRoZSBOUFUgYmVmb3JlIHRoZSB1bnVzZWQtZG9tYWluIHBv
d2VyLW9mZiwgb3IgbWFya2luZyB0aGUgZG9tYWluCj4gPiBhbHdheXMtb24sIGJvdGggYXZvaWQg
aXQuIElzIHRoZSBOb0MgZGUtaWRsZSBleHBlY3RlZCB0byB3b3JrIG9uIGEgZ2VucGQKPiA+IHJl
LXBvd2VyIGhlcmUsIG9yIHNob3VsZCB0aGlzIGRvbWFpbiBlZmZlY3RpdmVseSBzdGF5IG9uPwo+
ID4KPgo+IE5vdCBxdWl0ZSBzdXJlIHdoYXQncyBnb2luZyBvbiB3aXRoIFBWVFBMTCBhbmQgTk9D
Lgo+IE1heWJlIEBGaW5sZXkga25vd3MgYWJvdXQgdGhpcz8KPgo+ID4gT24gVEYtQTogeWVzIC0t
IGJsMzEgaXMgYnVpbHQgZnJvbSB1cHN0cmVhbSBhcm0tdHJ1c3RlZC1maXJtd2FyZQo+ID4gKGdp
dGh1Yi5jb20vQVJNLXNvZnR3YXJlL2FybS10cnVzdGVkLWZpcm13YXJlLCBSSzM1NjggcGxhdGZv
cm0pLCBwcm92aWRpbmcgUFNDSQo+ID4gYW5kIHRoZSBTQ01JIGNsb2NrIHNlcnZpY2UuIFRoZSBv
bmx5IGNsb3NlZCBibG9iIGluIHRoZSBib290IGNoYWluIGlzIFJvY2tjaGlwJ3MKPiA+IEREUiBp
bml0IChya2JpbiksIHdoaWNoIGlzIHRoZSBzdGFuZGFyZCBzaXR1YXRpb24gZm9yIG1haW5saW5l
IFJLMzU2eC4KPgo+IC0tCj4gQmVzdCwKPiBDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
