Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95BC2C28B28
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 20:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bjEZgrly14Fmao+QCUK2ZEfnPmfv0GFhIh6Qufkpimk=; b=gcnLlmW/lQ/lhc
	6U483M4lw2veJ54uVhsXNPmnzCXFgcsnWVZakBKGqHNeUF70Ofni7maindPxK0lI87Sa6bTDXiXTp
	vW4AtyM29Bt9plax6mH9w48KMceMukNrmL8+E19vfxsNZpvu8pTZrcqITZ0lCEh27VL4fobAh6yP5
	aUcr6UudBQ69dvTOP3+ZambNn/9v+icBi3z5zuW/FTkjFAeZjQL8KiKhDhfsFRAbO8cZjEt1Vwa2I
	yezeBN1MCvyxBdpjxH/f642rKCSkNGY9RdE1WflnF3jpTLDdXIKusPIU2WXKPoxVfNmBNm42MzxiH
	XbgUdTsOXpTiW0ADs8Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trNf4-0000000192l-394K;
	Sun, 09 Mar 2025 20:54:14 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trNf2-0000000192I-2YXX;
	Sun, 09 Mar 2025 20:54:13 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-5e5e63162a0so3493642a12.3;
        Sun, 09 Mar 2025 13:54:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741553650; x=1742158450; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kSm+onMEHwFJZpJzuOCRbpMFcD/0+q6u6nZOZEP268Y=;
        b=JTNLl2+haH2gSUurU34SYRM6rARKjmHxCXmEaMxiuDpjRSEr8HY1yi1YMZaoHuqfyI
         4dN97K42Y38TO4sCE3A2uF+guMX81BlFQd/roIg1B6LCkuQc3iaWj1OdcXrC4/2Sa6js
         gTWA5/fkBCInJUNPmdxJXdikKcbTaXh6bepDk7AHrVsZt2AYaFMUMKxEgyqcldgR/snD
         Zw4TQYlU1W+G8EYNJkkLPpiaasA2l9mPobLRwu013mAI9syqTrQ5BfrJ2pmanceWtj12
         eWHYrU6GYyHYcss4mlKJw7mqUCeJRxuaXLwIhJU+ppimX8gEVTNgp5DbIAw22HmRBQN6
         kk5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741553650; x=1742158450;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kSm+onMEHwFJZpJzuOCRbpMFcD/0+q6u6nZOZEP268Y=;
        b=npZLunF+GPEuCuqP6pVp+qDwZwLItp4tvgeOwVV2JdjlbGw8gFDE7o0dPbRUdqIla+
         wZcYPLFKOHPi0eO8kOcKbLGdARLhVUTiXGTUpFeihzYoOJGlqDmg95i3JoVc03SRyg4J
         jEBVeA6TickNdIWtF3JOAYgar7X+JMOOD+48mBiU6KZi1lIxatlAxJdIsPgSl83ZYmM+
         GLEgl1dBH0A2i+2EGq5QKzESoQRTXEZULTOmKktQrD5gF3xVgD3iBTwIA89QouYSXGgq
         4AjIYpvprx+bWUan/POZ5TRocUjZuJY8ZIdrzwW6RvitPgzn+h678VCjz3QasfrBkDr0
         yUOg==
X-Forwarded-Encrypted: i=1; AJvYcCUPCckTSWvyQbEZNNV57AyP3xKEyvaqAOq0O1NSP8gQIcu6wPqED5L6Hld8VuW2ifJJNmAHU+wjh+ipvPY7m17G@lists.infradead.org, AJvYcCVV/9bvd9vqM3agMk2bsBmdnGeFSafnbXEoe3XRaPwbGCSkuRV0a2GQ0FHesg2TONZkjXYMp+xP7Upa/mHF0nQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8OsbpjbwSlu8etYbT+M9gsMMm02TZmSRg2TL0I1+QJFfucgGB
	xZogSqggxKyxqgInPmHtz7AcPbpEDi1cRDzDVlziwlgzrBAIntKuHc6v1A==
X-Gm-Gg: ASbGncuo48DbVqwI5sdRa+xbPDQdEW8mh8aMMVVoJE6cld/4hWKZyiDO7Nu75f7byE6
	IYPdliU6KQ3e4s6rEmBso+oIrOs7/LhFSet+6MneiUxsV20PPAGqwG8eSuFJiyRr+eWfB+UvdjV
	3VU7p/NuqqDbSeNvVOSLYaFib7SEfWzF+klvYQ/WMMoRKTeRkAC8GFQ505QipDYz42hy+es0VNU
	NdXBeLmrVSAWwJPS4yHaLMiJwQ4AkiNH0UBSNcCgx0V4k4XH2kwUW5QT/nAXYjSzkpW5XxPxk6K
	pj93xWnP832LDO+01OBgdpyAPzGxe38OqaDuQ0S2opMDj1JzMqynHb3bm0ziFAX3A2WfuOuZ+nL
	TkCOwguFeU9yqRnwJYb/2t8B+kQ==
X-Google-Smtp-Source: AGHT+IEkphpQpWmxa52E9NmJ7R2K15iVQw2MxsItmN3QV+4Fwm8dnR0PSWqP8wMiR4tkyT8ZY5e5Bg==
X-Received: by 2002:a17:906:240c:b0:ac2:6a7c:142e with SMTP id a640c23a62f3a-ac26a7c2295mr672419366b.44.1741553650157;
        Sun, 09 Mar 2025 13:54:10 -0700 (PDT)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac278a7a7e7sm299767966b.47.2025.03.09.13.54.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Mar 2025 13:54:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH 0/6] Add support for RK3588 DisplayPort Controller
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-Priority: 3
In-Reply-To: <545cc438.7e3.1956e13a3e2.Coremail.andyshrk@163.com>
Date: Sun, 9 Mar 2025 21:53:50 +0100
Cc: heiko@sntech.de,
 neil.armstrong@linaro.org,
 sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org,
 hjc@rock-chips.com,
 mripard@kernel.org,
 linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 yubing.zhang@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>,
 krzk+dt@kernel.org,
 robh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Message-Id: <AD2A56F9-B4FB-406B-BE7C-49BB5DFD3BAD@gmail.com>
References: <25401bfa.291d.19564244e54.Coremail.andyshrk@163.com>
 <75189787-28E1-4FC2-8E10-4960B3877A6F@gmail.com>
 <28b0d3fc.bb3.19568f6b5f8.Coremail.andyshrk@163.com>
 <44213B17-FE14-4FB8-8319-1E31BBF6EAA0@gmail.com>
 <74c154b6.8c50.1956aa8c8d2.Coremail.andyshrk@163.com>
 <1573D5D6-AFED-4D92-8112-B0C6BB52D5FF@gmail.com>
 <46c0d239.a4f5.1956b619b97.Coremail.andyshrk@163.com>
 <252BB2E2-4BC5-4402-953D-F7B30EA5DE14@gmail.com>
 <326B91E9-FB91-43C3-B98B-3EF079F313C6@gmail.com>
 <545cc438.7e3.1956e13a3e2.Coremail.andyshrk@163.com>
To: Andy Yan <andyshrk@163.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_135412_647879_5499390C 
X-CRM114-Status: GOOD (  12.75  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PiB3IGRuaXUgNyBtYXIgMjAyNSwgbyBnb2R6LiAwMTo0ODoKPiAKPiAKPiBIaSBQaW90ciwKPiDl
nKggMjAyNS0wMy0wNiAyMjoyODowOO+8jCJQaW90ciBPbmlzemN6dWsiIDxwaW90ci5vbmlzemN6
dWtAZ21haWwuY29tPiDlhpnpgZPvvJoKPj4gCj4+IAo+IAo+IEFsbCBkdW1wIGluZm9ybWF0aW9u
IGN1cnJlbnRseSBhcHBlYXJzIHRvIGJlIGNvcnJlY3QsIHNvIEknbSB0ZW1wb3JhcmlseSB1bnN1
cmUgd2h5Cj4gdGhlcmUgaXMgbm8gZGlzcGxheSBvbiB0aGUgbW9uaXRvci4KPiBNYXliZSB0cnkg
c29tZSBwbHVnIGFuZCB1bnBsdWcgZm9yIHRoZSBEUCBjYWJsZSwgb3IgdHJ5IGFub3RoZXIgY2Fi
bGUgb3IgbW9uaXRvcj8KPiAKPiBJdCBzZWVtcyB0aGF0IHRoaXMgYm9hcmQgdXNlcyBhIERQIHRv
IEhETUkgY29udmVydGVyPyBEb2VzIHRoaXMgdHJhbnNtaXR0ZXIgbmVlZCBhIGRyaXZlcj8KPiAK
PiBJIHdvbid0IGJlIGF0IG15IGNvbXB1dGVyIG92ZXIgdGhlIG5leHQgdHdvIG9yIHRocmVlIGRh
eXMsIHNvIGFueSBmdXJ0aGVyIHJlcGxpZXMgdG8geW91ciBlbWFpbAo+IG1pZ2h0IGhhdmUgdG8g
d2FpdCB1bnRpbCBuZXh0IHdlZWsuCj4gCj4gCgpBbmR5LApGWUk6CgpJIGRvbmUgdGVzdCBvbiBt
aW5lIHJvY2s1YSB3aXRoIGFwcGxpZWQgTmFva2kgZHAwIGVuYWJsZW1lbnQgaW4gZHRzIChhbmQg
b25seSBpbiBkdHMpLgpObyBhbnkgY2hhbmdlcyBpbiBkdyBkcCBkcml2ZXIgKHNvIGnigJltIG9u
IHZhbmlsbGEgIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2Nr
Y2hpcC9jb3Zlci8yMDI1MDIyMzExMzAzNi43NDI1Mi0xLWFuZHlzaHJrQDE2My5jb20vICAgKQoK
b24gbWluZSByb2NrNWEgcmE2MjAgaGRtaSBwb3J0IHdvcmtzIG9rLgooSSBjb250YWN0ZWQgYWxz
byBSYWR4YSBhYm91dCByYTYyMCBhbmQgdGhleSBjb25maXJtZWQ6IHJhNjIwIGlzIGp1c3QgRFAt
PkhETUkgY29udmVydGVyLiBObyBhbnkgZHJpdmVyIG5vciBzcGVjaWFsIHByb2dyYW1taW5nL2Vu
YWJsZW1lbnQgaXMgbmVlZGVkKQoKVGhpcyB0ZWxscyBtZSB0aGF0IGRwMCAocm9jazVhKSB3b3Jr
cyBvayB3aGlsZSBkcDEgKHJvY2s1aXR4KSBub3QuCmkgc3VzcGVjdCBpc3N1ZSBpcyBwcm9iYWJs
eSBpbiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtcm9ja2NoaXAv
Y292ZXIvMjAyNTAyMjMxMTMwMzYuNzQyNTItMS1hbmR5c2hya0AxNjMuY29tLyBhbmQgaXMgcmVs
YXRlZCB0byBkcDEgaGFuZGxpbmc/CgpCVFc6IHRoZXJlIHNlZW1zIHRvIGJlIGlzc3VlIHdpdGgg
dmlkZW8gbW9kZXMgaGFuZGxpbmcgb24gZHAwIHBvcnQ6IAotcGxheWluZyB2aWRlbyAxOTIwQDEw
ODBANTAgLSBvawotcGxheWluZyB0aGVuIHZpZGVvMTkyMEAxMDgwQDU5LDY0IGhhbmdzIGJvYXJk
4oCmLgoKaGRtaTAgd29ya3Mgb2suIHZpZGVvIG1vZGVzIGlzc3VlIGlzIG9ubHkgb24gZHAwCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
