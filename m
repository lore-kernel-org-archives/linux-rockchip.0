Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D779DCCF9F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 04:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=35BvdL2uOItH6geCHjBZh/h73xY6ILNr9iGoY5EbrVo=; b=fX2ytEB9YxyV2m
	sDEH5leoyRsIzeEZMKdHmhfo8R9bPSC7n5vygOiZbe7yM9x5ENXpTig8n6UksU06rACqWsvMptTWK
	2+tG+HjMMwEDIA84FjQ7f5YWnNxprJcWy6SmU53Fm6Ae0aPo+3wEtagK5c+s1nlVl0IfxPm1sxYHQ
	uJLSoglAv/ffwuoqCXcEdkwzyirA+3y4BolB7f+vbB34M2Bs3gjo9c7AELPAoE0kuYWpUO7VmUlhj
	FuO1tKxi3WRxivZ0DpGTF5NJ6/fZcypOEyIVWD51ViPBKa8SkXAck6tBJiS5rEFzlnJBohgFE0Hbd
	2AoP+XzjN7epcTsN1nvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGs09-0000000Es1Q-24WQ;
	Thu, 06 Nov 2025 04:53:37 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGs06-0000000Es13-2S5P
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 04:53:36 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-429b9b6ce96so378837f8f.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 20:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762404813; x=1763009613; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+OfTCC1ghWomz4s5fQs5JEH5xj4yrR7Mt44vqrfS3E=;
        b=UwdvgXLAWdFNbtlgNZPgXNf/rpjYPT98Y9xy0Gy0ypHNWVZCh8mIbpTB/OS67jHhhv
         Q14yd+BIWV+SYJzp3zoyGm8JlnnOStmzmhbJWts6ZlYot+tK/WJ5XJ7Aj36T5TXmvD8v
         8nFsnEQqEXH591KArqBJlZvHDQiAoXGtJRtAKwheVj39YKrpf12HAzVM2JbzaiL1IxDc
         ufRqyGEsicDBplREYeTCMk3Fr8DnyPy2TRHb1xuwIUC5ptBSPI+y80U8A6AwsUPTqnug
         yIP/HZeJpNUFF7u1o7Uno0T2hTnQDUUKfiOVeR9Vj7phBShmSfXUoCBD4ChSwJnO31xT
         jVoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762404813; x=1763009613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S+OfTCC1ghWomz4s5fQs5JEH5xj4yrR7Mt44vqrfS3E=;
        b=uynL7mufnAdP3aWQ64IV4Z6oXZ7yKsAdTX/Dbu+1DjZ5GIOQdUZVnNLpa5zdTyWV3A
         9c6BHqV6K5+KcDuhB9V+Zunwq8itb7Emh+Nkc7JyjY4VT2MB+3AOGFklOTBB6U9RIm4L
         lpDtZixSDo7D6l1xY+zT5aI/eQj0OTqVowA0EQyUIhTEqA4pQwH2r1dhEX0sspMeZlsZ
         3pOTMKD8wd4kNKsr45O0FVZG9p6kS4LPAkRN+8hb/j48k1nYNpxxGbbABWyV/oAOe+dp
         6GxDG1EB7ADxpNE0wgskFjDxPn8BKncArW2XoK6HvR7mNhXVdUXfAIZlOBTcQyb6vMfQ
         bvCg==
X-Forwarded-Encrypted: i=1; AJvYcCWu8DJNn6AEfXpb9ppZEz43ZnYUAA5U+O69doFVNHhEqADkVxFAbqZASh9Pea8LImHv5uXZ1VfZrm2ujyUpkQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzb0GFDA91lCPrb7U2D9OhKZ5szTHAEM4qHCnicRlMjwB/Gd1O5
	BEZOypm96uJhgvb+lyRUzZJc1JaDJZjkCaoaXx43hM7XiXQRgiJ0PpCclPZHUHhM0mRacDzXJDd
	MihJh/otDih3zpt6Ip8G4tBz/XSnZd5I=
X-Gm-Gg: ASbGncuL/pRw9eQ0n0rLZxLqK1/C5DDCDqfMCRqGwnyRuPl1/MeComxq/JGMjH4RzEK
	4blSHYgJINlrNgJJnEZ2ccTXh8qAY8Oh63QGEDDE7Uptp4TjqxSLKdK2IPoYCEfBWS06DpG9/pp
	20hpit9T0R7vxXFaHkj5vQy393XGabFUQLs5p/rMmOCyd3l+CNgkH/OoAtZEnalz9ybMTlweSQq
	+V0dl3NfxJdVa/Dp+eZ4NzPvLKwlgFHQgv9wTUhSy6uCTnrzQFX2WsIhhN7jT9Pf6tFcUpeKfNN
	5kaKks0weIJbHrzG
X-Google-Smtp-Source: AGHT+IGAjXb/Q/przVpRUfKZTD5lS4KZ4kv0Tnwpkiq5kQ1gfN1giZ+0HUHkAMRpVnRpkcroUk8etEXyROhko1pdvnE=
X-Received: by 2002:a05:6000:2912:b0:429:bce4:20bf with SMTP id
 ffacd0b85a97d-429e33128eamr4447044f8f.55.1762404812526; Wed, 05 Nov 2025
 20:53:32 -0800 (PST)
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com> <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
In-Reply-To: <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 22:53:20 -0600
X-Gm-Features: AWmQ_bmoqJIpQq8Yl_KhXnpSEqseh0O854YZOBSV5Rc8FywyMsrXnXSmQBd3rG8
Message-ID: <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Dragan Simic <dsimic@manjaro.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de, joseph.kogut@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, 
	amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_205334_678859_99C80F5C 
X-CRM114-Status: GOOD (  19.07  )
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

T24gV2VkLCBOb3YgNSwgMjAyNSBhdCA5OjMx4oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFu
amFyby5vcmc+IHdyb3RlOgoKWyBzbmlwIF0KCj4KPiBXaXRoIGFsbCB0aGF0IGluIG1pbmQsIHdl
IHNob3VsZCBzcGVjaWZ5ICJuby1tbWMiIGhlcmUsIGJlY2F1c2UKPiB3ZSdyZSBkZXNjcmliaW5n
IGEgbWljcm9TRCBzbG90LCBpbnN0ZWFkIG9mIGRlc2NyaWJpbmcgc29tZSBoeWJyaWQKPiBNTUMv
bWljcm9TRCBzbG90LiAgVGhhdCBhbHNvIGV4cGxhaW5zIHdoeSB0aGUgYWRhcHRlciBzb2xkIGJ5
IFJhZHhhCj4gaXMgZGVzY3JpYmVkIGFzIG5vdCB0byBiZSB1c2VkIHdpdGggbWljcm9TRCBjYXJk
IHNsb3RzIG9uIFNCQ3MuICBJJ2QKPiBhbHNvIGxpa2UgdG8gaGVhciBpcyB0aGlzIGFkYXB0ZXIv
ZU1NQyBjaGlwIGNvbWJvIHJlY29nbml6ZWQgYnkgdGhlCj4ga2VybmVsIHdoZW4gIm5vLW1tYyIg
aXMgc3BlY2lmaWVkOyBpdCBzaG91bGQgZmFpbC4KPgo+IEFjdHVhbGx5LCBub3Qgc3BlY2lmeWlu
ZyAibm8tbW1jIiBoZXJlIG1heSByZXN1bHQgaW4gc29tZSB1bmZvcmVzZWVuCj4gaXNzdWVzIHdp
dGggc29tZSAob3IgcGVyaGFwcyBtYW55PykgbWljcm9TRCBjYXJkcywgYmVjYXVzZSB0aGUgTU1D
Cj4gZHJpdmVycyB3aWxsIHRyZWF0IHRoZW0gYXMgTU1DLWNhcGFibGUgZGV2aWNlcyBhbmQgdHJ5
IHRvIGluaXRpYWxpemUKPiB0aGVtIGFzIHN1Y2gsIHdoaWNoIG1heSBjYXVzZSBhbGwga2luZHMg
b2YgaXNzdWVzLiAgSW4gZmFjdCwgSSdtIG5vdAo+IHJlYWxseSBzdXJlIHRoYXQgdGhlIE1NQyBk
cml2ZXJzIGFyZSBhY3R1YWxseSBpbXBsZW1lbnRlZCBpbiBhIHdheQo+IHRoYXQgYXZvaWRzIGFs
bCBwb3NzaWJsZSBpc3N1ZXMgd2l0aCB0aGUgc3RvcmFnZSBjb250cm9sbGVycyB0aGF0Cj4gYXJl
IGNhcGFibGUgb2YgYm90aCBTRCBhbmQgTU1DIG1vZGVzIHdoZW4gbmVpdGhlciBvZiAibm8tc2Qi
IGFuZAo+ICJuby1tbWMiIGlzIHNwZWNpZmllZCBpbiB0aGVpciBEVCBub2Rlcy4KCkh5YnJpZCBN
TUMgYW5kIFNEIHNsb3RzIGFyZSBwcmV0dHkgbm9ybWFsIG9uIFVTQiBjYXJkIHJlYWRlcnMuIFNv
IGl0J3MKbm9ybWFsIGZvciB0aGUgaG9zdCBjb250cm9sbGVyIHRvIGZpZ3VyZSBvdXQgd2hhdCBr
aW5kIG9mIGNhcmQgaXMgaW4KdGhlIHNsb3QuCmh0dHBzOi8vdWRpdGFnYXJ3YWwuaW4vdW5kZXJz
dGFuZGluZy1zZC1zZGlvLWFuZC1tbWMtaW50ZXJmYWNlLwoKaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9
NmFlM2U1MzdlYWI5ZjU2MGI1MTZiMDAxZWI4OWYwY2Q1NjhiZGNlZAp3YXMgdGhlIGNvbW1pdCB0
aGF0IGludHJvZHVjZWQgdGhlIGRldmljZSB0cmVlIHByb3BlcnRpZXMuIEJ5IHRoZQp3b3JkaW5n
IG9mIHRoZSBjb21taXQgbWVzc2FnZSwgdGhlc2UgZGV2aWNlIHRyZWUgcHJvcGVydGllcyBhcmUg
dXNlZAp0byBpbmRpY2F0ZSB0byB0aGUgZHJpdmVyIGlmIHRoZSBob3N0IGNvbnRyb2xsZXIgaGFy
ZHdhcmUgaXMgY2FwYWJsZQpvZiBNTUMgaW5pdGlhbGl6YXRpb24gb3IgU0QgaW5pdGlhbGl6YXRp
b24uCgpTaW5jZSB0aGUgaG9zdCBjb250cm9sbGVyIGluIHRoZSBSSzM1ODggaXMgY2FwYWJsZSBv
ZiBhbGwgdGhlIG1vZGVzLAp0aGVzZSBwcm9wZXJ0aWVzIGRvIG5vdCBuZWVkIHRvIGJlIHNwZWNp
ZmllZC4KClNpbmNlIFJhZHhhIGhhcyB0aGUgZU1NQyB0byB1U0QgYWRhcHRlciwgaXQgbWFrZXMg
c2Vuc2UgUmFkeGEgd291bGQKd2FudCB0byBjb25maWd1cmUgdGhlaXIgbWljcm9TRCBjYXJkIHNs
b3Qgb24gdGhlaXIgYm9hcmRzIHRvIGJlIGEKaHlicmlkIFNEL01NQyBzbG90LgoKTm93LCB0aGUg
bW9yZSBmdW4gcXVlc3Rpb24gaXMgaWYgdGhlIGFkYXB0ZXIgY2FuIGhhbmRsZSBlTU1DIEhTMjAw
CnVzaW5nIHRoZSA0LWJpdCBidXM/CgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
