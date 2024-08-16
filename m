Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12890C531DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 09:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2oW25ziB/aX0g7VTh30IumtNncyP/dM9jAhPNYKVmU=; b=2LmV6/gKiyHqPp
	6ri0t9QTy7A9PFAI4M5ZxSoCtppAYER2vBumxG5CzYpLtHBCD52525Z4z+vJ0n6Ha5dm/dPdyWbQG
	VG7HUB3pTeP1RxxtFaat6Wm/dMD5fuyPdREaMrXWa+EjIZrThR6TFoolkL45uq+Mvhz8WSKwETSNG
	Oq1E3nAE9Jq40EFcZQu6Jl/N+NOAiOLsqf/lZoQocEVKm5eM/kaTddpMtDa1R/pOQFBkwlSdcaINt
	OdKaqjkmduttDixXqWdoMHCcF4Q58Uv0VFwBdrJlo3I7poGOObaAzpitwgras/6RscLpju13aqrWO
	hocrO3MqPoWn64Cm1Czw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setYI-0000000CTWf-4BBg;
	Fri, 16 Aug 2024 09:47:22 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setXY-0000000CTIe-2I3h
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 09:46:38 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-52efa16aad9so2265681e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 02:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723801594; x=1724406394; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K9FPDpC98yx9w2tg8hr+an2980Cz94S+kQLAPpDLRKA=;
        b=Si6Sp1b+rXDYgeBvQkjkE/OSYMD/khKOJj6GsAxHOV2PfaBh4lI43M90GNp/xnICZP
         WUJES4Jj+CmsxjFfiYZhUuRfza1LCmtGIT8oQpbA5yf24TkfZSTOxHNZAZJS4+TlMgnL
         l0cSPFUcZuPDWBU0Bc6x/xash7fCd1k0z8LdfarBXe0QKI0qwMd2la9T/bRRN45yxIn6
         ULojv6YrftKDXNKW8KU2rnBS7INf4ENrQVAiG+dRgsDnA0pIP7xyJwJtdXIFbFCQl9KQ
         aOta3bGg8LgDYA/Gqoz6lwMrKJFdCOkjYoVivHstclnWQ4V2vIpS7jXmeuCK3dux2EwI
         rQdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723801594; x=1724406394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K9FPDpC98yx9w2tg8hr+an2980Cz94S+kQLAPpDLRKA=;
        b=X4MKm0d6dH0f8xolAmjym/kkQ5Wa5M9qABKdsqODZKtCb/mT3kTKEXe9CHEheGQ7tD
         5iRMmo+pxyCfNQELTqC9Dw3JkiSwWOOub4g1pCw1TcU+Hcz2ygbI3tJYVDZOif7ftG/d
         bHJO3m++Kldmw4USSw3VcjZhziz2IdEGZDqcoKevNT8jnN8hCKb6vzdijABMr75KUtxj
         bX3cCI+UUX3dtpUvRB/dPgC+AKafD7A5Tm8+puPoS1w0fDhkxWxXPoj3GFQIA11zxAj9
         kVaUqJ9obpo3ANvnOG/HgNwA8N15zLFMR8uXqJY2HZRzfL8g3aKbwoNtXkXZCtfg4UBK
         RfQw==
X-Forwarded-Encrypted: i=1; AJvYcCUHr74w6LttCiKqNrqK0oYLDQty/v552935aIifCq4eD7S9Ivc9GUyZZ9qoCZZRk84jOsE9OdxECh96GFWfYQZccLDhaj2gMFCX/S5MbSonK6EI
X-Gm-Message-State: AOJu0YyxeodXzBDdYJV1q/xcpJpDm8YB1wCjqYP90kg2C/fUlKt1EKmc
	18eodvuPsfqtUI2PeNca7z0Lnm9UISfj3s679jQs2kG645Xid9Agqd4of8IpSl3cNd23MimkcNa
	EZabj2RUDSqvkp1342qUghEjAC8+HH+FAnPPgcw==
X-Google-Smtp-Source: AGHT+IElPnoMlGEFeaYa6XJMX42p2RFjCrFohE/fSRX4wJDpOl934ILAd0fjz1CAkQ4BdsJ8KwsBja6aeGlxue7xk1w=
X-Received: by 2002:a05:6512:2528:b0:530:d088:234a with SMTP id
 2adb3069b0e04-5331c6ede52mr1482287e87.54.1723801593845; Fri, 16 Aug 2024
 02:46:33 -0700 (PDT)
MIME-Version: 1.0
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
In-Reply-To: <20240815071651.3645949-1-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 11:46:22 +0200
Message-ID: <CAMRc=McL-ddFd8foH=cXW8nNvX=FVY+PwErYkh_OO9t0K=a_AA@mail.gmail.com>
Subject: Re: [PATCH v1 0/5] gpio: rockchip: Update the GPIO driver
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_024636_678169_31164EFB 
X-CRM114-Status: UNSURE (   9.78  )
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

T24gVGh1LCBBdWcgMTUsIDIwMjQgYXQgOToxN+KAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBHUElPIGRyaXZlciBzdXBwb3J0IGFjcGkgYW5kIG5ldyB2
ZXJzaW9uLCBzZXQgaW5wdXQgZGlyZWN0aW9uIGluCj4gaXJxX3JlcXVlc3RfcmVzb3VyY2VzLCBm
aXggZGl2aXNpb24gZXJyb3IgYW5kIGRlYm91bmNlIGNvbmZpZyBlcnJvci4KPgo+IFllIFpoYW5n
ICg1KToKPiAgIGdwaW86IHJvY2tjaGlwOiBzdXBwb3J0IGFjcGkKPiAgIGdwaW86IHJvY2tjaGlw
OiBzdXBwb3J0IEdQSU9fVFlQRV9WMl8yCj4gICBncGlvOiByb2NrY2hpcDogU2V0IGlucHV0IGRp
cmVjdGlvbiBpbiBpcnFfcmVxdWVzdF9yZXNvdXJjZXMKPiAgIGdwaW86IHJvY2tjaGlwOiBhdm9p
ZCBkaXZpc2lvbiBieSB6ZXJvCj4gICByb2NrY2hpcDogZ3BpbzogZml4IGRlYm91bmNlIGNvbmZp
ZyBlcnJvcgo+Cj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgfCAyODYgKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDE4MCBpbnNlcnRp
b25zKCspLCAxMDYgZGVsZXRpb25zKC0pCj4KPiAtLQo+IDIuMzQuMQo+CgpQbGVhc2UgQ2MgdGhl
IEdQSU8gQUNQSSBtYWludGFpbmVycyBvbiB0aGlzIHNlcmllczogTWlrYSBXZXN0ZXJiZXJnCjxt
aWthLndlc3RlcmJlcmdAbGludXguaW50ZWwuY29tPiBhbmQgQW5keSBTaGV2Y2hlbmtvCjxhbmRy
aXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+LgoKQmFydAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
