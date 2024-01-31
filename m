Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 302FCC47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 09:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jMz3Zg12ww/N/8HwvlG8ZefllbCeMPzK6++5/hR+Yf0=; b=zjGdIo/LhKcUfI
	M+kKVZdHn47hAPPBNT+akHX7gjADdb4TZTtNUWspdgAMx8SPolAso/a5dW94XobGRiRkvZ5EVFxyu
	x4jW/o83vtjN+L6yRm+kPx6ZCei12F/SUZyU0dPP8oobpinqhET0lsDPWLKEpDTZZPEdu8qKvZ1J1
	EnP2OH1dRbM0Zw252269k9w41J9lPE2K75vRRRcX6oSilI3TGjfHDtSHZjOxM09QTgjy9Z0bKOOaD
	AOUN9f4g8376eyzupVa7uIpXHrVgSolg4kgw62nkhU2B2KQ7jTwS+FJRn1cmActddP2+o7NAHDRdg
	W8tlQmtzLfXeYdgF5xrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV6zc-00000002Uer-11Uy;
	Wed, 31 Jan 2024 09:34:52 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV6zY-00000002Ucl-462p;
	Wed, 31 Jan 2024 09:34:50 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-a354fc17f24so455935466b.0;
        Wed, 31 Jan 2024 01:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706693686; x=1707298486; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0bvmHWRVIhb0Il2NpTti4MBidwTy+fe33l+Bnmw+NIE=;
        b=DU/kv9wAz0ouR+U38yBBZNR8rHEDggBmDfhdUo+0h1/QwgzTUEmQrDauMiSNu1SgsG
         dObphrb9CrmswJ9fZq0cP0R5rpExnxTvHKYpzYYeeAe3U0qd524mfAVWdpCcCj78KAlE
         jHD3JAM+K1dXurkqrNAijE/G5OdEyVL7aDqJJidG+bP0/sAaA0JqwUpdtSyGQ7IR45pu
         AuGhjxqzNhoAzgHq5qhRaZWuuVgs1bBdOiRpxC66YiewulDadxPNiHYBb4l+mOsfu8t4
         zj8stHaLrdlcDoY8hBe4mCxmEQ0uBkTlPXhsa46TjIZyDXXCZNNlUY/6ifBh3+zrZY0C
         qmdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706693686; x=1707298486;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0bvmHWRVIhb0Il2NpTti4MBidwTy+fe33l+Bnmw+NIE=;
        b=pswleXjFlFsHsc/LpZAJMql6sZDOSosW2O3X36McQAycDf519EiOE8N+wMAK9BL8mH
         0Pwlziwq0tHfGjzJjOMpel7gitI2V8rPlzge/h3ch4KRnIXy5ExHTGQIRNFRvXHMK63O
         RIrO73hGB5Aa8YHpH/2HuvEG8Zc+tAI4uZxVFUQFWbY4yNzh3t6id2ZNzMp0mlbhmTbL
         frAiFnF4o9h2enVaFJqr1a92luW2QLdGWwLr/EQeYVyR2kjZsT6ESIdpZRU14bHk8j3W
         DRoiAm9xy1/5p4Y79XUmCaMtAWPCx01RtWD1+e2uDmxdau2DVczmSRxO1em5Hcx6JuUW
         42Ng==
X-Gm-Message-State: AOJu0YyDpZwZeUyA3Ld8si3uNZwiaz0JeKp3N5ZXwuG5RYGDLvs3uu9e
	/Y5OVpBoTIxkNdYioc+u3xyyMaioMpVjesS3H1qsH7x9nKWcUKV+qZaEeyVoB1/Ek/yOnLWGCvd
	bAiBWGPKSWVTOFlBPM6pS0ehrHoA=
X-Google-Smtp-Source: AGHT+IGFyt7lQ201fi4xu6j6gSabpBoKZGN4x12n0ouWCLG/sm6Ywl9bRWpFNo8iF8qxkJ2R2K81OAjaBguQzikvjYg=
X-Received: by 2002:a17:906:4f0a:b0:a35:64ff:4817 with SMTP id
 t10-20020a1709064f0a00b00a3564ff4817mr734980eju.0.1706693686267; Wed, 31 Jan
 2024 01:34:46 -0800 (PST)
MIME-Version: 1.0
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
 <20240130-rk-dts-additions-v2-3-c6222c4c78df@gmail.com> <2168725.pYTLVKaXyH@diego>
In-Reply-To: <2168725.pYTLVKaXyH@diego>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 31 Jan 2024 13:34:34 +0400
Message-ID: <CABjd4YzR6KuqqXQQaTt5Fw_QKwkSf4iaBiM_KXX_sFoD4bNX9A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add OPP data for CPU cores
 on RK3588
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Dragan Simic <dsimic@manjaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_013449_037910_FFB086FC 
X-CRM114-Status: GOOD (  13.18  )
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

T24gV2VkLCBKYW4gMzEsIDIwMjQgYXQgMToxMuKAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gRGllbnN0YWcsIDMwLiBKYW51YXIgMjAyNCwgMTk6MjE6
MTUgQ0VUIHNjaHJpZWIgQWxleGV5IENoYXJrb3Y6Cj4gPiBCeSBkZWZhdWx0IHRoZSBDUFVzIG9u
IFJLMzU4OCBzdGFydCB1cCBpbiBhIGNvbnNlcnZhdGl2ZSBwZXJmb3JtYW5jZQo+ID4gbW9kZS4g
QWRkIGZyZXF1ZW5jeSBhbmQgdm9sdGFnZSBtYXBwaW5ncyB0byB0aGUgZGV2aWNlIHRyZWUgdG8g
ZW5hYmxlCj4gPiBkeW5hbWljIHNjYWxpbmcgdmlhIGNwdWZyZXEKPgo+IFBsZWFzZSBhZGQgYSBw
YXJhZ3JhcGggZGVzY3JpYmluZyB3aGVyZSB0aGUgb3BwIHZhbHVlcyBjb21lcyBmcm9tLgo+IFBy
b2JhYmx5IGp1c3QgdGhlIHZlbmRvciBrZXJuZWwsIHdoaWNoIGlzIGZpbmUsIGJ1dCBJIHJlYWxs
eSBsaWtlIHRvCj4gZG9jdW1lbnQgdGhhdCB0aGVzZSB2YWx1ZXMgaGF2ZSBzb21lIHNvcnQgb2Yg
Z3JvdW5kcyA7LSkKCldpbGwgZG8sIHRoYW5rIHlvdSEgWWVzLCB0aGVzZSBhcmUgZnJvbSB0aGUg
dmVuZG9yIGtlcm5lbCwgbmFtZWx5IGZyb20KUmFkeGEncyB2ZXJzaW9uIFsxXS4KClsxXSBodHRw
czovL2dpdGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2Ivc3RhYmxlLTUuMTAtcm9jazUvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKCkJlc3QgcmVnYXJkcywKQWxleGV5
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
