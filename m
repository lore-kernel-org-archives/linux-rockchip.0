Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9983CE68941
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 00:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dja/DEyolSWRBqHfvNnvpzB4lNNjY+NfQbwFLnd0h/M=; b=l0NS0JjDJG8NPV
	bX1bT2A6VO7tdg4qWvuxyjbr21vYKZJRq9Ky63FAHSstxMOBlLH5OouMDoDR/2hJmpLWuslREbUyP
	KPDrvqnt8Xas59rtXKoASVHYY5dH9LNdONwQXqc0PToqybXT/GkeZv310X+A841GS31uGalqlj788
	+Rfg8ReAng5RZ83wuLLie7YG6kP4OvNkjRcSxxfYrbv3jZQSIHj+Kd7s2tLJ6gcdi5Na04gTVeUii
	9jT6IpZxsD75iOH/2m+4s2xYkfDmob1jMI3JkgslyxmxgnXeSiixKOgLuPl3wkoP9VIrkxWOgxmCF
	uWxrTA9yCOIbWAOzz3iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6JNM-00000002C5d-29lB;
	Thu, 31 Oct 2024 00:49:24 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6JNJ-00000002C55-2vFZ
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Oct 2024 00:49:23 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4314c4cb752so3482445e9.2
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2024 17:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730335759; x=1730940559; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZjtbT2Pdo5aYguq16kK5+0TmKumhpkQwfo5YKWlpA4U=;
        b=nWh8PZwR0llkaTESuPBQgAHDp7Wcr6w2MIWOzCBuBLS0yLEzei38YnJuNBZe5UWG2c
         urxUg50qMRtriSWvf7b8ommr/LfsGO8uW1/D/TyQr5MfZSIkIFIXlnjXpmeNIlj5IOUo
         SGHUX4hlvcFoWdWBixnZONr702YHkPd3/EghoX3UHfZjTSAWnBl5JiJA27FXbz1zi03P
         WpBL1vjoNYEwaBdx1m3eCb3IY+H6TQLNo2woiktnXsprfirROxcyQtxnoERV3cj0/XRP
         +qp2EIvKE7YbHDtsvx9bulloJS/k+S996jkuuFsZ9sTXKGOGFMWnrgqeUDJCIG6SS73E
         KNug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730335759; x=1730940559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZjtbT2Pdo5aYguq16kK5+0TmKumhpkQwfo5YKWlpA4U=;
        b=AYNMre+zvb5HVerkw49ZTVrsDn8jQVKLgaYOKbip5FbiaJtY5E4TLKxLFmox08kCdz
         2j2+rSlJxof+GCNs7QKsAmRY0wXFHzUzRD0T71snjxj19PARSuKNeeE08E6IWAQSRQTk
         wpmkiFNujF8YROAp11JEhg0wTtcXiiDv5ApR3PGnf4+EpjERZPONuO4yCFfJ9JoQGOUH
         9M3zUZkqxwHJlWKvfdKj7rfpcOWPwdmWojeA8Eee0wzbUXlkQhPy5mtODvn7wxt6uPFE
         /ERB9oLiXPv301OWY1BArJI0z0aedzToRoDeGU0/0PMGJsRqWuh5Jjn94XqxJRa04Ag/
         tTeQ==
X-Gm-Message-State: AOJu0Yw8LYxzvGqu1a39dRZdyMOXcPx7xJ/GsIfb94of1PhlhBThDa5N
	l62k99ohETPVrGVjPl3woce0ELDt8+OX6hlLpTfteOIuTuHfFK3R1IFlgkqM+H50DgZXH5ivgYL
	MOZxmF28rIj58y2aR/lJh0XVC5zg=
X-Google-Smtp-Source: AGHT+IE9kEhPn7zleAyFMbH7KL0/80IedkMpTxBdxFKB0CUsFcu0GnoRPTCofF61WV28ypcgTSjTd1XcRg3PlY2rXu8=
X-Received: by 2002:a05:600c:1f91:b0:426:66a2:b200 with SMTP id
 5b1f17b1804b1-4327b6c79f7mr12136815e9.0.1730335758928; Wed, 30 Oct 2024
 17:49:18 -0700 (PDT)
MIME-Version: 1.0
References: <20241030192236.839105-1-macroalpha82@gmail.com> <20241030192236.839105-4-macroalpha82@gmail.com>
In-Reply-To: <20241030192236.839105-4-macroalpha82@gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 30 Oct 2024 19:49:07 -0500
Message-ID: <CALWfF7LNN2dAtr00nLyk8rgE-K1vtSXkjhCFMbkVSzxhhSDvWQ@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_174921_757790_6022494E 
X-CRM114-Status: UNSURE (   9.95  )
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

T24gV2VkLCBPY3QgMzAsIDIwMjQgYXQgMjoyNeKAr1BNIENocmlzIE1vcmdhbiA8bWFjcm9hbHBo
YTgyQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2Fu
QGhvdG1haWwuY29tPgo+Cj4gRW5hYmxlIHRoZSBIRE1JMCBwb3J0IGZvciB0aGUgSW5kaWVkcm9p
ZCBOb3ZhLiBUaGUgc2NoZW1hdGljcyBhdmFpbGFibGUKPiBzaG93IHRoZSBoZG1pbTBfcnhfaHBk
aW4gaXMgY29ubmVjdGVkLCBzbyB0aGlzIHBpbmN0cmwgaXMgZW5hYmxlZCBpbgo+IGNvbnRyYXN0
IHdpdGggdGhlIG90aGVyIHJrMzU4OCBib2FyZHMuCgpXaGljaCBwaW4gaW4gdGhlIHNjaGVtYXRp
YyBbMV0gKHBhZ2UgMjQpIGRvZXMgaXQgcmVmZXIgdG8/IEl0J3Mgbm90Cm9idmlvdXMgaG93IHRv
IG1hdGNoIGl0IHVwLgpUaGUgc2NoZW1hdGljIGxvb2tzIHRoZSBzYW1lIGFzIHRoZSBSb2NrIDVC
IHNjaGVtYXRpYyBbMl0gKHBhZ2UgMzEpCmFuZCB0aGUgUm9jayA1QiBkdHMgdXNlcyB0aGUgZGVm
YXVsdCBwaW5jdHJsIFszXQoKTm90ZTogVGhlIHZlbmRvciBrZXJuZWwgRFRTIGRvZXNuJ3QgbW9k
aWZ5IHRoZSBwaW5jdHJsIGVpdGhlci4gWzRdCgpJZiB5b3UgdHJ5IHVzaW5nIHRoZSBkZWZhdWx0
IHBpbmN0cmwgKG5vdCBvdmVycmlkaW5nKSwgZG9lcyBIRE1JIG5vdCB3b3JrPwoKSmltbXkKClsx
XSBodHRwczovL3dpa2kuaW5kaWVkcm9pZC51cy9Ob3ZhL3NjaGVtYXRpY3MKWzJdIGh0dHBzOi8v
ZGwucmFkeGEuY29tL3JvY2s1LzViL2RvY3MvaHcvcmFkeGFfcm9ja181Yl92MTQ1MF9zY2hlbWF0
aWMucGRmClszXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9tbWluZC9saW51eC1yb2NrY2hpcC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1yb2NrLTViLmR0cz9oPWZvci1uZXh0JmlkPWM4MTUyZjc5YzJkZDgwMzllMTQw
NzNiZTc2ZmRiY2U4NzYwMTc1ZGEjbjIwNwpbNF0gaHR0cHM6Ly9naXRodWIuY29tL3N0dmhheS9r
ZXJuZWwvYmxvYi9iYXRvY2VyYS1yazM1ODgtNC4wL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4cy05dHJpcG9kLXgzNTg4cy5kdHNpI0wyMjYKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
