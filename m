Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4C18C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 04:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0W0GjZH8wRTsfF0QKYoGg5W/fFCvaII6DzRzewg26gQ=; b=jeXrpDp4Til7jF
	RFRmTrm6+mrSqQp5KtXQACspNxWIcnQ7evERqnicu60B8GNVJfE9FTmh0hm3Hgu046ner+ceETVeb
	sVUAD6g/+dp0jMJ+aSDGdVeXA+PDZqDQU0uEXfb/16y/Nq2dL6EhkdFjvPXljwEX8w1EHYkUGB27/
	J2msZu6tH81IEyhTotq5m4wBYe7Am33vJBlfW465jWhosj1kKE9oPq2LLFMpU27YTtbMx4ChHXMzf
	oJqBEAAqktS5+vpC5MSMSwSe/3CfBjSc+hiTU7TxABymDlN3A/TSWNLRtUs9nZparcMgN4667iNnx
	AVI/zhIjdrM4nzebqf3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBSKL-00EfS1-2l;
	Fri, 08 Dec 2023 04:19:01 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBSKI-00EfQ6-2x
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 04:19:00 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-59063f8455eso828105eaf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Dec 2023 20:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused; t=1702009134; x=1702613934; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8DBwHZ16KcBWg9hH0rsHHbG94f47xbnv7WTBkG6FFNI=;
        b=Toa1ND4xJiimMw1ypSPj6s0lrMQZubcpA0AcZArRLEkqxfEncxQhejKT5wp/pvrt1A
         WwBBJ4mvhYfMzz8HFfdTa2fWP7ibQOkjBv6tBdVb/ebn2fd1pbY6FcaCKQEFil78c2H/
         hYc2lcXcXnzo7b6fzLzfw8zKxSui04lAoeXic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702009134; x=1702613934;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8DBwHZ16KcBWg9hH0rsHHbG94f47xbnv7WTBkG6FFNI=;
        b=v74l8iDKqPu3HUCSVA+Kv3Wzd9sPjFUVcMVmrDL0ixV8X3c3/VqQcboNOrhtflv1fR
         DUj6yeQR9JkmPd+S5fY+5ji5aexAJNH7Zd2piaOR/wkuFKOyU/L2SOxI/VfKVJF8yA6V
         6I4BXamhmjyFzXnTiytGVAeZelXYxsPczGj/010rOtlLfLyNjYAJuF9wf9xjr19+/CNV
         1lnA4yosZ+LRA85pMX2or8S3LiGsKwNDTA2oZVnWaTv8KLn+nxwnPQy2BTd7yWNgzODI
         rFOD5QLGk+4aJjr1sdMP9+tzRYiWQqUjjE+Ixn4FGggvQr14cOvpt+s0F0d0IhstGI6E
         OFDw==
X-Gm-Message-State: AOJu0YwtHkN8610ihXJTAmGkKrxFoU3RcJCASU+bxX4GeHYWtze37RTe
	9qweMbZLx0KSykMN7hG0vzZwKAPMgmnBcWX+X2E22CMiqzRX1tB0FzA=
X-Google-Smtp-Source: AGHT+IEM/sq1yBJywwY0QmQvQoUJl67+MstAbSektVpnsW/ZzH0oRLSYkIZj+IUwckd9FgcBICwacgT/+778nKopXUk=
X-Received: by 2002:a05:6358:5e12:b0:16e:508e:1706 with SMTP id
 q18-20020a0563585e1200b0016e508e1706mr4279784rwn.25.1702009133745; Thu, 07
 Dec 2023 20:18:53 -0800 (PST)
MIME-Version: 1.0
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
 <6c89feb8ca7701d2a45710485fef8fc8@manjaro.org>
In-Reply-To: <6c89feb8ca7701d2a45710485fef8fc8@manjaro.org>
From: Da Xue <da@lessconfused.com>
Date: Thu, 7 Dec 2023 23:18:42 -0500
Message-ID: <CACdvmAhzOnR=uQ-6MH30jiH1wyzO=fuqk4U4ayp03H53hqA3gQ@mail.gmail.com>
Subject: Re: Rk3399 - Typec - Extcon
To: Dragan Simic <dsimic@manjaro.org>
Cc: Shantur Rathore <i@shantur.com>, Jagan Teki <jagan@amarulasolutions.com>, cw00.choi@samsung.com, 
	tom@radxa.com, linux-rockchip@lists.infradead.org, 
	dmitry.baryshkov@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_201858_985972_A40DF773 
X-CRM114-Status: GOOD (  16.32  )
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

T24gVGh1LCBEZWMgNywgMjAyMyBhdCA3OjA34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFu
amFyby5vcmc+IHdyb3RlOgo+Cj4gSGVsbG8gU2hhbnR1ciwKPgo+IE9uIDIwMjMtMTItMDcgMjI6
MTIsIFNoYW50dXIgUmF0aG9yZSB3cm90ZToKPiA+IEhpIEphZ2FuLAo+ID4KPiA+IFdoaWxlIHRy
eWluZyB0byBmaWd1cmUgb3V0IGlzc3VlcyB3aXRoIFR5cGVjIEFsdE1vZGUgKyBTdXBlclNwZWVk
IG9uCj4gPiBtYWlubGluZSBmb3IgUmszMzk5IGJhc2VkIFJvY2tQcm82NCwgSSBjYW1lIGFjcm9z
cyB5b3VyIHByb3Bvc2VkIHBhdGNoCj4gPiBmb3IgVHlwZUMgVmlydHVhbCBQRCBEcml2ZXIgWzBd
LgoKSSB3ZW50IHRvIHRoZSBGVVNCMzAyL1RDUE0gc3RhY2sgaXNzdWVzIGZvciBST0MtUkszMzk5
LVBDLCBzZWUgdGhlCnBhdGNoZXMgbmVlZGVkIGhlcmUKaHR0cHM6Ly9naXRodWIuY29tL2xpYnJl
LWNvbXB1dGVyLXByb2plY3QvbGlicmV0ZWNoLWJ1aWxkZXItc2ltcGxlL2lzc3Vlcy8yI2lzc3Vl
Y29tbWVudC0xODM3MjY5NDc1CgpBIG1ham9yIGlzc3VlIGlzIHRoZSBsYWNrIG9mIGEgZHJpdmVy
IGluIHUtYm9vdCB3aGljaCBjYXVzZXMgbWFueQpub24tY29uZm9ybWFudCBwb3dlciBzdXBwbGll
cyB0byB0aW1lIG91dCBjYXVzaW5nIGVycm9yIG1lc3NhZ2VzLiBUaGUKcGF0Y2hlcyBhYm92ZSBk
byB0aGVpciBiZXN0IHRvIGtlZXAgdGhlIHN0YWNrIHdvcmtpbmcgZGVzcGl0ZSB0aGlzLgoKPiA+
Cj4gPiBXb3VsZCB5b3Uga25vdyBpZiB0aGVyZSdzIGJlZW4gYW55IG90aGVyIGRldmVsb3BtZW50
IG9uIHN1cHBvcnRpbmcKPiA+IFJvY2tjaGlwLVR5cGVDLVBoeSB3aXRoIEZVU0IzMDIgYm9hcmRz
IGxpa2UgUm9ja1BybzY0IG9yIFBpbmVCb29rIFByby4KPiA+Cj4gPiBbMF0gLQo+ID4gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIwMDkwNDE5MTgzMC4zODcyOTYtMy1qYWdhbkBhbWFy
dWxhc29sdXRpb25zLmNvbS9ULyNtN2I1ZDY3NDc2NDM3OTI1MzU2OGE0OTE1ZjJmOTk4OGQ3NGM4
NjU5Mwo+Cj4gQmFzaWNhbGx5LCB3ZSBuZWVkIHRvIGdldCByaWQgb2YgdGhlIHdob2xlIGV4dGNv
biBoYWNrLCBhcyBkZXNjcmliZWQgaW4KPiB0aGUgdGhyZWFkIGxpbmtlZCBhYm92ZSwgd2hpY2gg
aXMgYSBtYXNzaXZlIGpvYiB0aGF0IGJvcmRlcnMgd2l0aCBhCj4gY29tcGxldGUgcmV3cml0ZS4g
IEknbGwgcHJvYmFibHkgKGFuZCBob3BlZnVsbHkgOikgZGl2ZSBpbnRvIGFsbCB0aGF0IGluCj4g
dGhlIGZvcmVzZWVhYmxlIGZ1dHVyZS4KCmV4dGNvbiBpcyBhIGRlYWQgZW5kLiBEbWl0cmkgaXMg
dXNpbmcgc29tZXRoaW5nIGVsc2UgZm9yIFF1YWxjb21tIGJ1dApJJ20gbm90IHN1cmUgaG93IG11
Y2ggb3ZlcmxhcCB0aGVyZSBpcyB3aXRoIHRoZSBzdGFuZGFyZCBUQ1BNLgoKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
