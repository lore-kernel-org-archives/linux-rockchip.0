Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1251CC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 07:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ewq1JtS2y/aBvci1Oa39I+UIbdCOzfnjacoAjoCABfI=; b=xeGf6e3LTUx6cG
	68Ir6pEM6opIV+7IouyyKDWThf92ccD1DbBhi+FDaPrWuerYgrt9DWVRTSCvLfFU5noV3ucEVzLzx
	scNBCaNnitPqqkKS1lRml8ARxhST1ThfIdz9kteTR95hxBwfFUEzJH0RXzB0ztDb9kqbLRVs3D+59
	W048vm91vxXdUbqoNsHyHC49V9IvdGK0zSFN0bb1eBpWziBpkaiSDvwpbzPCSCjskou7e/X04jVHR
	241eW7MWFq48jGYci61XyBiCqUnCnMiiYDdIX7BTu6K4YBBHr5berkt/ci6qoR6ksx7eEnmq5g7R2
	dEhePiVmNk7eM2QSaf8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBVY8-00EzOz-2m;
	Fri, 08 Dec 2023 07:45:28 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBVY6-00EzOe-0x
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 07:45:27 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-5d05ff42db0so16019937b3.2
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Dec 2023 23:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1702021522; x=1702626322; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ghq7wW4uMw2oLv50wEkEd05rhjsG93gT8bRQi/KK5aE=;
        b=j47qnTPmzcnDK//Y4lGwFwv9Bqa0IeWbroruO2mKHj7DQmO4oY3P/epcbW716Hw0+P
         5IbhoMSTkoHkvJNwLZESWN4ahGzt5U6NUP0UNAMsipDZLomMGixUyr7bIroi0Cxhojjt
         wBmJVzPdtF7Fuq0EoJk5QOLz6255VrLOExdic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702021522; x=1702626322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ghq7wW4uMw2oLv50wEkEd05rhjsG93gT8bRQi/KK5aE=;
        b=aUm2xxhnkfBuyJEbc7+bmWJs+lu6PbqDZcMTbjfuDu2IxrcXYCYn2IPmTr2bfjhO4s
         S69hwKs9wYjD+mQCh+VXzHUsf9xgUUDnz6LzWvMHBu7EoF+4DHb7b3Bd6mh8n4iTuXU4
         Bdvs3pgH6WBJfVzfBxANbYJEOBqr2+tY+s6wvae9i7l0ieIn6qt4eeWrZcwpytHyXZyu
         ZtpHRTPLzh7ALaJFIWcT6dgHsVJyJvtSaQoo86HUTYgL3+yD9nOC2BrfmnZA7j1PEoU+
         JlgFwRLsVrKy3LSFRsUtIVmmHXvgnkczKhK2BabZBrPUyxdrnNrIzdTTT5LE0O+Mk/46
         +xPw==
X-Gm-Message-State: AOJu0YzZAQm3E8K/wZqcEb9EMESXhbxspuLHpO+VHar8m3k63CZx3UO/
	ijjeO/SoceLNxgPi6kwv/3rUpGDcVypXK1iZBNS2nQ==
X-Google-Smtp-Source: AGHT+IGFgHQdGnYLSc/srs4GW6YhQmfDNX04o78BWbSx1Xe4s/0m6gqMoEHcZk7G9Gk+JbT/6WoMzyfozNJiiaGZg68=
X-Received: by 2002:a81:af26:0:b0:5c9:9815:b8ef with SMTP id
 n38-20020a81af26000000b005c99815b8efmr3570988ywh.49.1702021522603; Thu, 07
 Dec 2023 23:45:22 -0800 (PST)
MIME-Version: 1.0
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
In-Reply-To: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 8 Dec 2023 13:15:10 +0530
Message-ID: <CAMty3ZDXxNZomicTtMm88SUc9MKmmaKK+GsnnKsOcZqp65ACZw@mail.gmail.com>
Subject: Re: Rk3399 - Typec - Extcon
To: Shantur Rathore <i@shantur.com>, Suniel Mahesh <sunil@amarulasolutions.com>
Cc: cw00.choi@samsung.com, tom@radxa.com, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_234526_371325_B9AA6F49 
X-CRM114-Status: GOOD (  10.84  )
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

SGkgU2hhbnR1ciwKCk9uIEZyaSwgRGVjIDgsIDIwMjMgYXQgMjo0MuKAr0FNIFNoYW50dXIgUmF0
aG9yZSA8aUBzaGFudHVyLmNvbT4gd3JvdGU6Cj4KPiBIaSBKYWdhbiwKPgo+IFdoaWxlIHRyeWlu
ZyB0byBmaWd1cmUgb3V0IGlzc3VlcyB3aXRoIFR5cGVjIEFsdE1vZGUgKyBTdXBlclNwZWVkIG9u
Cj4gbWFpbmxpbmUgZm9yIFJrMzM5OSBiYXNlZCBSb2NrUHJvNjQsIEkgY2FtZSBhY3Jvc3MgeW91
ciBwcm9wb3NlZCBwYXRjaAo+IGZvciBUeXBlQyBWaXJ0dWFsIFBEIERyaXZlciBbMF0uCj4KPiBX
b3VsZCB5b3Uga25vdyBpZiB0aGVyZSdzIGJlZW4gYW55IG90aGVyIGRldmVsb3BtZW50IG9uIHN1
cHBvcnRpbmcKPiBSb2NrY2hpcC1UeXBlQy1QaHkgd2l0aCBGVVNCMzAyIGJvYXJkcyBsaWtlIFJv
Y2tQcm82NCBvciBQaW5lQm9vayBQcm8uCj4KPiBbMF0gLSBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9sa21sLzIwMjAwOTA0MTkxODMwLjM4NzI5Ni0zLWphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29t
L1QvI203YjVkNjc0NzY0Mzc5MjUzNTY4YTQ5MTVmMmY5OTg4ZDc0Yzg2NTkzCgoxLiBQaHlzaWNh
bCBUeXBlLUMgRlVTQjMwMjogUk9DLVJLMzM5OS1QQyAoUEMsIEFsdG1vZGUpCgpUaGlzIHN1cHBv
cnQgUEQsIGFuZCBBbHRtb2RlLgoKLSBQRCBwcm9jZXNzIChpbmNsdWRpbmcgbmVnb3RpYXRpb24p
IGlzIGluY29uc2lzdGVudCBpbiBtYWlubGluZSB0Y3BtLgpJZiB3ZSBjb25uZWN0IFBEIHN1cHBs
eSBib2FyZCB3aWxsIChoYXJkIHJlc2V0KSByZWJvb3QgYW5kIG5lZ290aWF0aW9uCndvbid0IGhh
cHBlbiBwcm9wZXJseS4KCjIuIFZpcnR1YWwgUEQgKE5vdCByZWxhdGVkIHRvIHRoZSB0eXBlLWMg
Y29ubmVjdG9yIGFuZCBGVVNCMzAyKTogUk9DSwo0IEJvYXJkcyAoQWx0bW9kZSkKClRoaXMgaGFz
IHRvIGJlIHN1cHBvcnRlZCB2aWEgc29tZSBmYWtlIGNvbm5lY3RvciB3aXRoIGFsdC1tb2RlIHN1
cHBvcnQKdGhhdCBsaW5rcyB0byBEUCBhcyBleHRjb24gaXMgbm90IHRoZSB3YXkgdG8gZ28uIFFD
IFVTQiBoYXMgc29tZQpzb2x1dGlvbnMgZm9yIGl0IGJ1dCBuZWVkIHRvIGZpbmQgdGhlIHByb3Bl
ciBvbmVzLgoKRGEgaGFzIDYuMSBXaGljaCBmaXhlcyBzdGVwIDEgYnV0IGl0IGJlY29tZXMgbm90
IHN0YWJsZSBpbiBMVFMgNi4xIGFuZApNYWlubGluZS4gU3VuaWVsIGhhcyBwcm9ncmVzc2VkIHNv
bWV0aGluZyBvbiB0aGlzIGluIExUUyA2LjEgYW5kCnRyeWluZyB0byBmaXggVENQTSAtbmV4dC4g
IE1heSBiZSBoZSB3aWxsIHB1c2ggc29tZSBwYXRjaGVzIHNvb24gb24KdGhlIG1haWxpbmcgbGlz
dC4KClRoYW5rcywKSmFnYW4uCgotLQpKYWdhbiBUZWtpLApBbWFydWxhIFNvbHV0aW9ucyBJbmRp
YSBQdnQuIEx0ZC4KQ28tRm91bmRlciAmIEVtYmVkZGVkIExpbnV4IEFyY2hpdGVjdAo0MDUvRS1C
bG9jaywgU3JpIExha3NobWkgU2h1YmhhbSBBcmNhZGUsIENoYW5kYW5hZ2FyLCBIeWRlcmFiYWQg
LSA1MDAwNTAsIEluZGlhCk0uICgrOTEpIDkxMCAwMDkgMDk1OQpbYGFzXSBodHRwOi8vd3d3LmFt
YXJ1bGFzb2x1dGlvbnMuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
