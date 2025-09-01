Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38551CA0FE8
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Sep 2025 00:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ce5Wf2pPOANV0nhvPer5w4ha8N/bgiAlsR/M/qFdWs=; b=A+1EUiLf1yKIDb
	9XGxSF4Le0BDnKyfPAsuu3TMpTCdYiBUbB8xTuHd4XSWOwfbwTGejoh5Vk/Hka4Wj7TF9h9Ub3T13
	RtpMr12lre8/I9u8wAWMDXw8ItJ5ncD2GABU9gRtnoEEUDQoftvgVgnEHqzbhJpJawK9NkF8huqFi
	giH37AJDk9r1hWxKfx3K5/dGj7hdIN2Yw8euIMF0txd2AFD9tkJk6ScuIW11HIomo35iRdsILngCk
	K1XT0jxi7Bn8hH2J8In20gURvUhA7ayGFv66w++y10CZ+DlzdJFwpyknrWGRqzaAIa7W6bYb4zj4L
	Bgxkrix8mgteAvc7HsGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussI6-0000000Ard9-1zzC;
	Mon, 01 Sep 2025 00:20:58 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ussEQ-0000000ArNq-3mgm;
	Mon, 01 Sep 2025 00:17:12 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-61cdab7eee8so5045829a12.0;
        Sun, 31 Aug 2025 17:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756685829; x=1757290629; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ktkbla4NPIaC9jC6psct3vSFUUII2FVq3tu2TmWqa/E=;
        b=VzFObhKBtqB/tzokicnV21LP7MdDnTK4PUaWQ/9mCg1oJSyzO8WCG8RGkKnp7IY5T/
         iaf57ukbqgKvpR4yvxlJT+oXOm2hrX17645cRWPsHipTUIW3PU3vtA5Exl/EQb/mJvCN
         bxdAr1/zbFtZPZYEOYusp6y2/G/z3IGx6FbrHc2rlhHAMsXW/0uALsQWW0LpYW9Fbdjf
         RBw6/YigZ6FzqO8GrjGk8guV+jBNa1x4xZwrOhWrSlzC8HTr+YglXr7W6vHkfF7QWeZN
         G/DQT4Ql/q068Qo9rPL8wvSC24dpzOEMflIfy3ZJI1Qt5BQok7ShmRUCftacEFqeHnwG
         O2RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756685829; x=1757290629;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ktkbla4NPIaC9jC6psct3vSFUUII2FVq3tu2TmWqa/E=;
        b=EhKc1KtPVUbcjxsqdfnrkks5EKyrbgybb+wJLObxJgbri4YD+C6fhSfgATDOP1bzfQ
         Yoy8vaOdgZkct2M/cKY7o1Roi2d3HQj+TPYYt0rJvKU+OM9EwiThJby7gRwTNMt1OQUj
         aBUbY33aKMvvvbb5YrMjv901NvQCz3JGnZZef6kHrlGNYXcgPesHNhUPGefG3ETQF46f
         f89xQttZFigsWwEMwn749TfcfKRAnrw+nGhzgTTim0GTm6lYQNOnHeFQYDQWqG0op1a4
         gyLGWCO5i163Pm4fp2YVbg4BZTRw6hYETbGiPIWSMMmrv9nwLrmZqmTgFmB3UsFmw0qX
         rpCw==
X-Forwarded-Encrypted: i=1; AJvYcCVcNFMK1tpC//L+VX7AUZcEGq1aTHze32473KRbHUqf+/OOexXQpZUE+pNOIfwsjKAwvFGmXF9Kw2Suq/gwF7XG@lists.infradead.org, AJvYcCXsdoMMpjiaIARkrSeSbX3YhJ9ydlV0dO1ZqiwbJMWqKvOcf1HZNQp61ZZvHC7AWPmLPSvR7oWBj7+LHwTK3L4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxzKlRPdj+YAZYbeCQSZ4vITrrvr0yQGZZRAg2GNju+hx2DXxIM
	gRyAag/JxuIEXuFW5Qy8c360ZMDSf5MTQPxc2ipFu3iHYqZz99IJNg41F9haf5G82Y7L37pl/7H
	34T1ojSgaJ/a6nx363bcYPZPeHRITvhc=
X-Gm-Gg: ASbGncvHCABeOXZXRrFGr0MKDWDjcc3nMz+4TmSqPxOYS0zxnk0w70p8EmCzfJz+baB
	S1l8ZKypkdBqJDYz91zW0M2JUb6T9Oiwc+mIRuz8TTgzN5AujZjNbAZp9ezC/tXd5qfcQgE909E
	Y7yjKkNnOaZg71mKiMwShrlAoydSDGFFrqTOYlz8+SzwtJYnqcDRQQljt8rsnjVNklxf9u3lxql
	Eg3/Vr5oAjArg==
X-Google-Smtp-Source: AGHT+IGHE8aXMx7ALK07ZZk4ApSRlHpCLRxAscpFITkZtZyfxE5oqk93LXZDU0pPe6ZM5AlFYhwbpT0EWRO3nMFED/w=
X-Received: by 2002:a05:6402:13d0:b0:61c:cf8d:e51d with SMTP id
 4fb4d7f45d1cf-61d26d78f71mr5111270a12.22.1756685829050; Sun, 31 Aug 2025
 17:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250831104855.45883-1-cn.liweihao@gmail.com> <20250831104855.45883-4-cn.liweihao@gmail.com>
 <2235041.irdbgypaU6@diego>
In-Reply-To: <2235041.irdbgypaU6@diego>
From: =?UTF-8?B?5p2O57u06LGq?= <cn.liweihao@gmail.com>
Date: Mon, 1 Sep 2025 08:17:00 +0800
X-Gm-Features: Ac12FXwV9Ji8b_vqPwpDGDVUUVyRfoYaArbF6DLUc5xbBllmI6nYQLBSmIsHBpA
Message-ID: <CAPEOAkQYA+XSx9QJSmNFLypH0ifE1jvui=MHiEHZ+5a3SR7=uA@mail.gmail.com>
Subject: Re: [PATCH v1 3/7] dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: robh@kernel.org, hjc@rock-chips.com, andy.yan@rock-chips.com, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_171710_939415_2A88A7CA 
X-CRM114-Status: GOOD (  18.02  )
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

SGkgSGVpa28sCgpUaGFua3MgZm9yIHlvdXIgcmV2aWV3LgoKSSBhY3R1YWxseSB1c2VkIHNjcmlw
dCB0byBnZXQgdGhlIG1haW50YWluZXIgbGlzdCwgYnV0IEkgd2FzIG5vdCBzdXJlCndoZXRoZXIg
SSBzaG91bGQgc2VuZC10byBvciBjYyBldmVyeSBtYWludGFpbmVyLCBzbyBJIGNvbnN1bHRlZCB0
aGUKQUksIGFuZCB0aGUgQUkgc2FpZCB0byB0cnkgbm90IHRvIGRvIHNvIGJlY2F1c2UgaXQgbWln
aHQgYmUgY29uc2lkZXJlZApub2lzZSBlbWFpbCwgYW5kIG9ubHkgc2VuZCBpdCB0byB0aGUgbWFp
biBtYWludGFpbmVycy4KClNob3VsZCBJIGNjIGFsbCB0aGUgZGV2aWNldHJlZSBtYWludGFpbmVy
cyB3aXRoIHRoZSBuZXh0IHBhdGNoZXM/CgpCZXN0IHJlZ2FyZHMsCldlaUhhbwoKSGVpa28gU3TD
vGJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqOMjAyNeW5tDjmnIgzMeaXpeWRqOaXpSAyMzowMOWG
memBk++8mgo+Cj4gSGksCj4gQW0gU29ubnRhZywgMzEuIEF1Z3VzdCAyMDI1LCAxMjo0ODo1MSBN
aXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFdlaUhhbyBMaToKPiA+IEFkZCBh
IGNsb2NrIGlkIGZvciBtaXBpIGRzaSByZWZlcmVuY2UgY2xvY2ssIG1pcGkgZHNpIG5vZGUgdXNl
ZCBpdC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBXZWlIYW8gTGkgPGNuLmxpd2VpaGFvQGdtYWls
LmNvbT4KPgo+IHlvdSBtaXNzZWQgYSBudW1iZXIgb2YgZGV2aWNldHJlZSBtYWludGFpbmVycywg
Um9iIHRoYW5rZnVsbHkgZG9lcwo+IG5vdCBuZWVkIHRvIGRvIHRoaXMgb24gaGlzIG93biBhbnlt
b3JlLgo+Cj4gc28gcGxlYXNlIGdldCB0aGUgYXBwcm9wcmlhdGUgbGlzdCBvZiBtYWludGFpbmVy
cyB2aWEgc2NyaXB0cy9nZXRfbWFpbnRhaW5lci5wbAo+Cj4gQ2hhbmdlIGl0c2VsZiBsb29rcyBm
aW5lIHRob3VnaC4KPgo+IEhlaWtvCj4KPiA+IC0tLQo+ID4gIGluY2x1ZGUvZHQtYmluZGluZ3Mv
Y2xvY2svcmszMzY4LWNydS5oIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcmszMzY4
LWNydS5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMzNjgtY3J1LmgKPiA+IGluZGV4
IGViYWUzY2JmOC4uYjk1MWUyOTA2IDEwMDY0NAo+ID4gLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5n
cy9jbG9jay9yazMzNjgtY3J1LmgKPiA+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2sv
cmszMzY4LWNydS5oCj4gPiBAQCAtNzIsNiArNzIsNyBAQAo+ID4gICNkZWZpbmUgU0NMS19TRkMg
ICAgICAgICAgICAgMTI2Cj4gPiAgI2RlZmluZSBTQ0xLX01BQyAgICAgICAgICAgICAxMjcKPiA+
ICAjZGVmaW5lIFNDTEtfTUFDUkVGX09VVCAgICAgICAgICAgICAgMTI4Cj4gPiArI2RlZmluZSBT
Q0xLX01JUElEU0lfMjRNICAgICAxMjkKPiA+ICAjZGVmaW5lIFNDTEtfVElNRVIxMCAgICAgICAg
IDEzMwo+ID4gICNkZWZpbmUgU0NMS19USU1FUjExICAgICAgICAgMTM0Cj4gPiAgI2RlZmluZSBT
Q0xLX1RJTUVSMTIgICAgICAgICAxMzUKPiA+Cj4KPgo+Cj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
