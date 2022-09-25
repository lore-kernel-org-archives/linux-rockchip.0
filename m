Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B74DDC6FA82
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Sep 2022 21:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQGBDcfvZ2xecfLQD7YN5AyN9aRteP10JoUhl0/6xeE=; b=KTTeM+31J1CvVS
	9v+FKx1XeMho+iYITECiJxURzGxEkax8EVn3QpudfW2NuvjSJPShwiUaJ1kcIx9rpqPJ8tdALqoPR
	8smw+iXB8hvSYQtLbW9dYtFUPa/CahPYpzn455L2voBDJBQoSSyUDhy+ZWkECTRHHvVWU7RfI9GWE
	Ak9enxfBymWybBrQpWa1L+5GVjZpIvJ81qGTKaB0vbfN7IJtfaPIGGoky/L/BkUGrY/CQqVPz6yaa
	iRTqINPnREZ7VfS1Ied8hqtbpLz2H9la5gLAfXFn++r11BKpDIL3BOOEQ269F/QkVLbosHc5McAHr
	W9EBnjFe3Ouy/LwQMFJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocZXN-00GwcI-M0; Sun, 25 Sep 2022 21:51:45 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocZXH-00GwZp-VX
	for linux-rockchip@lists.infradead.org; Sun, 25 Sep 2022 21:51:41 +0000
Received: by mail-wm1-x332.google.com with SMTP id d12-20020a05600c3acc00b003b4c12e47f3so2749218wms.4
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Sep 2022 14:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=8W/8vKYwkXDyZf6kmPk/cuu68RlPeqrtdVnVl7E0RE0=;
        b=dSzKB+J/H1svyzXSTyrgd1+KHBBR0YNon8uJ/2Gs5JAugJLozOXsjpRZmjJLFC1Vl6
         tf5TnQVi1nT79LFIluu1r1hLHWDTOixxy6ApUtR//bhS3F/PKhJGyXBAGGzRaYhp46yP
         SjFi94xav4UsKJ4WQ5CYyY5cWLoRrqFDZdYMmsOV/77iFq9NLZsejs1jDlX04dj8FElZ
         MPq5HDmgyDSZ6NmT3sfgv5/IarNB0zYSeYXLrrhYJDlCe1dtS63LkyopORvWa/g5sDou
         TE/3f0QDVYiHpQ6aoCakZ2xWD02SHaJEkDlObh7fOd3IhZmDnzUd3cD7KZMGt+0L8j3q
         Hnkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=8W/8vKYwkXDyZf6kmPk/cuu68RlPeqrtdVnVl7E0RE0=;
        b=I7bOtdd3F4jru4Bqozzcp7oKMdTmyJogQm9t2cI7K77jHjsi9AEc7PqMBDlRaBPV0o
         l7gdcESLMfUvlY58rxpD8Hrd+D0D2MPhKUpsIJmWqTVu4L1Ay9raYma9LC2DulRGUaxr
         XF9Z7Li1ZHozvq5kItOuG7lJJPYZGqwoB7IjNbl8+x611olc6uvRm3pidAhAGz9kkjVg
         17ntFIh9NQvQ1jFf2gOwkcu6wdTFc8TPUhpVC7r537B/X/bJzmrCHmuWIVdaDTa9p1DE
         JeJOcFtR+jy0Guv2WDLFro9fV8Z0/49ASq2w7feuJ5kCjMIEP02FPmH+IRFW6Igk4XTQ
         p3bQ==
X-Gm-Message-State: ACrzQf2YQsIlY1SK3YYpxqpreLOvqllhHsKaDmPzadcyWhZfXUKJ/AGy
	8szWjtn+OjaM0eb5sVs4vwFtsg==
X-Google-Smtp-Source: AMsMyM4i01gZmvF6v/OejPkAJ//OyJZA3+DEhlQ1k4bKLB9pFOxg+zP9ltV/KI/NoV/To5eWm7Kx0g==
X-Received: by 2002:a05:600c:3d8e:b0:3b4:a61c:52cc with SMTP id bi14-20020a05600c3d8e00b003b4a61c52ccmr20898067wmb.7.1664142695145;
        Sun, 25 Sep 2022 14:51:35 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id c3-20020a5d63c3000000b0021e51c039c5sm12541823wrw.80.2022.09.25.14.51.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 14:51:34 -0700 (PDT)
Message-ID: <ebca0c67-43f6-ce57-372b-f6ddaac69914@linaro.org>
Date: Sun, 25 Sep 2022 23:51:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: v6.0-rc6 - arm64 / rock960 : kernel panic
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Heiko St??bner <heiko@sntech.de>,
 Samuel Holland <samuel@sholland.org>, Vinod Koul <vinod.koul@linaro.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
References: <4f398e4c-973b-7843-2f75-27324d109277@linaro.org>
 <CAOf5uwnfCCwHjSXTurMtyEpZc_tF8bH=fxfwBzOtHcfM_S4tYg@mail.gmail.com>
 <CAOf5uw=_+WQO7qH_Bxs5qEBn2_nemzuLiXdYe8+W_+OnFZNYkw@mail.gmail.com>
 <fb52982c-745e-ef9b-6258-0870d00a744b@linaro.org>
 <CAOf5uwnVZxYGDfph6wKKpF413obt3786WPMn8mnSdizKe=XkzQ@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CAOf5uwnVZxYGDfph6wKKpF413obt3786WPMn8mnSdizKe=XkzQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_145140_341211_CA2C999B 
X-CRM114-Status: UNSURE (   8.41  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkhpLAoKYWZ0ZXIgYSBwYWluZnVsIGdpdCBiaXNlY3QsIHRoZSBrZXJuZWwgcGFuaWMgaGFwcGVu
cyB3aXRoOgoKY29tbWl0IDhkYzYwZjhkYTIyZmRiYWExZmFmY2ZiNWZmNmQyNGJjOWVmZjU2YWEg
KHJlZnMvYmlzZWN0L2JhZCkKQXV0aG9yOiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29t
PgpEYXRlOiAgIFR1ZSBKdW4gMjEgMjA6MzE6NDAgMjAyMiAtMDQwMAoKICAgICBwaHk6IHJvY2tj
aGlwLWlubm8tdXNiMjogU3luYyBpbml0aWFsIG90ZyBzdGF0ZQoKICAgICBUaGUgaW5pdGlhbCBv
dGcgc3RhdGUgZm9yIHRoZSBwaHkgZGVmYXVsdHMgdG8gZGV2aWNlIG1vZGUuIFRoZSBhY3R1YWwK
ICAgICBzdGF0ZSBpc24ndCBkZXRlY3RlZCB1bnRpbCBhbiBJRCBJUlEgZmlyZXMuIEZpeCB0aGlz
IGJ5IHN5bmNpbmcgdGhlIElECiAgICAgc3RhdGUgZHVyaW5nIGluaXRpYWxpemF0aW9uLgoKICAg
ICBGaXhlczogNTFhOWIyYzAzZGQzICgicGh5OiByb2NrY2hpcC1pbm5vLXVzYjI6IEhhbmRsZSBJ
RCBJUlEiKQogICAgIFNpZ25lZC1vZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5j
b20+CiAgICAgUmV2aWV3ZWQtYnk6IFNhbXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxhbmQub3Jn
PgogICAgIExpbms6IApodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjIwNjIyMDAzMTQwLjMw
MzY1LTEtcGd3aXBlb3V0QGdtYWlsLmNvbQogICAgIFNpZ25lZC1vZmYtYnk6IFZpbm9kIEtvdWwg
PHZrb3VsQGtlcm5lbC5vcmc+CgpSZXZlcnRpbmcgaXQgZml4ZXMgdGhlIGlzc3VlCgo9PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PQoKQEBAQGAwYCBAYEBAIEBAQEBAQEBbICAgIDMuNTY2MzY1XSBVbmFibGUgdG8gaGFu
ZGxlIGtlcm5lbCBOVUxMIHBvaW50ZXIgCmRlcmVmZXJlbmNlIGF0IHZpcnR1YWwgYWRkcmVzcyAw
MDAwMDAwMDAwMDAwMDAwClsgICAgMy41NjcxODJdIE1lbSBhYm9ydCBpbmZvOgpbICAgIDMuNTY3
NDQwXSAgIEVTUiA9IDB4MDAwMDAwMDA4NjAwMDAwNgpbICAgIDMuNTY3NzgzXSAgIEVDID0gMHgy
MTogSUFCVCAoY3VycmVudCBFTCksIElMID0gMzIgYml0cwpbICAgIDMuNTY4MjY0XSAgIFNFVCA9
IDAsIEZuViA9IDAKWyAgICAzLjU2ODU0NF0gICBFQSA9IDAsIFMxUFRXID0gMApbICAgIDMuNTY4
ODMzXSAgIEZTQyA9IDB4MDY6IGxldmVsIDIgdHJhbnNsYXRpb24gZmF1bHQKWyAgICAzLjU2OTI3
NV0gdXNlciBwZ3RhYmxlOiA0ayBwYWdlcywgNDgtYml0IFZBcywgcGdkcD0wMDAwMDAwMDAyNGJl
MDAwClsgICAgMy41Njk4NTRdIFswMDAwMDAwMDAwMDAwMDAwXSBwZ2Q9MDgwMDAwMDAwMTcyNTAw
MywgCnA0ZD0wODAwMDAwMDAxNzI1MDAzLCBwdWQ9MDgwMDAwMDAwMGYxMTAwMywgcG1kPTAwMDAw
MDAwMDAwMDAwMDAKWyAgICAzLjU3MDkxMl0gSW50ZXJuYWwgZXJyb3I6IE9vcHM6IDg2MDAwMDA2
IFsjMV0gUFJFRU1QVCBTTVAKWyAgICAzLjU3MTQyMV0gTW9kdWxlcyBsaW5rZWQgaW46ClsgICAg
My41NzE3MTJdIENQVTogMyBQSUQ6IDAgQ29tbTogc3dhcHBlci8zIE5vdCB0YWludGVkIDUuMTku
MC1yYzErICM3OTUKWyAgICAzLjU3MjMwM10gSGFyZHdhcmUgbmFtZTogOTZib2FyZHMgUm9jazk2
MCAoRFQpClsgICAgMy41NzI3MjJdIHBzdGF0ZTogMjAwMDAwMDUgKG56Q3YgZGFpZiAtUEFOIC1V
QU8gLVRDTyAtRElUIC1TU0JTIApCVFlQRT0tLSkKWyAgICAzLjU3MzM1NF0gcGMgOiAweDAKWyAg
ICAzLjU3MzU2N10gbHIgOiBjYWxsX3RpbWVyX2ZuLmNvbnN0cHJvcC4wKzB4MjQvMHg4MApbICAg
IDMuNTc0MDM3XSBzcCA6IGZmZmY4MDAwMGE3MDNhNTAKWyAgICAzLjU3NDMzOV0geDI5OiBmZmZm
ODAwMDBhNzAzYTUwIHgyODogMDAwMDAwMDAwMDAwMDAwNSB4Mjc6IAowMDAwMDAwMDAwMDAwMDAw
ClsgICAgMy41NzUwMDJdIHgyNjogZmZmZjgwMDAwYTMzNzljMCB4MjU6IGZmZmYwMDAwZjc3OThk
ZTggeDI0OiAKZmZmZjgwMDAwYTcwM2FlMApbICAgIDMuNTc1NjY0XSB4MjM6IDAwMDAwMDAwMDAw
MDAwMDAgeDIyOiBkZWFkMDAwMDAwMDAwMTIyIHgyMTogCjAwMDAwMDAwMDAwMDAxMDEKWyAgICAz
LjU3NjMyNV0geDIwOiBmZmZmMDAwMDAwNmI2MjAwIHgxOTogMDAwMDAwMDAwMDAwMDAwMCB4MTg6
IAowMDAwMDAwMDAwMDAwMDAwClsgICAgMy41NzY5ODZdIHgxNzogZmZmZjgwMDBlZDc3MzAwMCB4
MTY6IGZmZmY4MDAwMDgwMWMwMDAgeDE1OiAKMDAwMDNkMDkwMDAwN2QwMApbICAgIDMuNTc3NjQ4
XSB4MTQ6IDAwMDAwMDAwMDAwMDAwMDAgeDEzOiAwMDAwMDAwMDAwMDAwMDAwIHgxMjogCjAwMDAw
MDAwMDAwMDAwMDAKWyAgICAzLjU3ODMwOF0geDExOiAwMDAwMDAwMDAwMDAwMDA0IHgxMDogZmZm
ZjgwMDBlZDc3MzAwMCB4OSA6IApmZmZmMDAwMGY3Nzk4ZTMwClsgICAgMy41Nzg5NzBdIHg4IDog
MDAwMDAwMDAwMDAwMDAwMSB4NyA6IGZmZmZmZmZmZmZmZmZmZmYgeDYgOiAKMDAwMDAwMDAwMDAw
MDAwMApbICAgIDMuNTc5NjMwXSB4NSA6IDAwMDAwMDAwMDAwMDAwMDAgeDQgOiAwMDAwMDAwMDAw
MDAwMDAwIHgzIDogCjAwMDAwMDAwMDAwMDAyMDAKWyAgICAzLjU4MDI5MF0geDIgOiAwMDAwMDAw
MDAwMDAwMjAwIHgxIDogMDAwMDAwMDAwMDAwMDAwMCB4MCA6IApmZmZmMDAwMDAxMDI1MzEwClsg
ICAgMy41ODA5NTFdIENhbGwgdHJhY2U6ClsgICAgMy41ODExNzhdICAweDAKWyAgICAzLjU4MTM1
OV0gIF9fcnVuX3RpbWVycy5wYXJ0LjArMHgxZjAvMHgyMzQKWyAgICAzLjU4MTc1OV0gIHJ1bl90
aW1lcl9zb2Z0aXJxKzB4M2MvMHg3YwpbICAgIDMuNTgyMTMwXSAgX3N0ZXh0KzB4MTI0LzB4MmEw
ClsgICAgMy41ODI0MzBdICBfX2lycV9leGl0X3JjdSsweGU0LzB4MTAwClsgICAgMy41ODI3OTBd
ICBpcnFfZXhpdF9yY3UrMHgxMC8weDFjClsgICAgMy41ODMxMTddICBlbDFfaW50ZXJydXB0KzB4
MzgvMHg3MApbICAgIDMuNTgzNDU0XSAgZWwxaF82NF9pcnFfaGFuZGxlcisweDE4LzB4MjQKWyAg
ICAzLjU4MzgzNV0gIGVsMWhfNjRfaXJxKzB4NjQvMHg2OApbICAgIDMuNTg0MTU2XSAgY3B1aWRs
ZV9lbnRlcl9zdGF0ZSsweDEzMC8weDJmMApbICAgIDMuNTg0NTYwXSAgY3B1aWRsZV9lbnRlcisw
eDM4LzB4NTAKWyAgICAzLjU4NDkwMV0gIGRvX2lkbGUrMHgyMTQvMHgyOWMKWyAgICAzLjU4NTIx
MF0gIGNwdV9zdGFydHVwX2VudHJ5KzB4MjgvMHgzMApbICAgIDMuNTg1NTc4XSAgc2Vjb25kYXJ5
X3N0YXJ0X2tlcm5lbCsweDEzYy8weDE1MApbICAgIDMuNTg2MDAyXSAgX19zZWNvbmRhcnlfc3dp
dGNoZWQrMHhhMC8weGE0ClsgICAgMy41ODY0MDhdIENvZGU6IGJhZCBQQyB2YWx1ZQpbICAgIDMu
NTg2Njk5XSAtLS1bIGVuZCB0cmFjZSAwMDAwMDAwMDAwMDAwMDAwIF0tLS0KWyAgICAzLjU4NzEx
OV0gS2VybmVsIHBhbmljIC0gbm90IHN5bmNpbmc6IE9vcHM6IEZhdGFsIGV4Y2VwdGlvbiBpbiAK
aW50ZXJydXB0ClsgICAgMy41ODc3MzJdIFNNUDogc3RvcHBpbmcgc2Vjb25kYXJ5IENQVXMKWyAg
ICAzLjU4ODIzMF0gS2VybmVsIE9mZnNldDogMHg4MDAwMCBmcm9tIDB4ZmZmZjgwMDAwODAwMDAw
MApbICAgIDMuNTg4NzI1XSBQSFlTX09GRlNFVDogMHgwClsgICAgMy41ODg5OTFdIENQVSBmZWF0
dXJlczogMHg4MDAsMDAxMjc4MTEsMDAwMDEwODIKWyAgICAzLjU4OTQyMF0gTWVtb3J5IExpbWl0
OiBub25lClsgICAgMy41ODk3MjRdIC0tLVsgZW5kIEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5n
OiBPb3BzOiBGYXRhbCAKZXhjZXB0aW9uIGluIGludGVycnVwdCBdLS0tCgoKLS0gCjxodHRwOi8v
d3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMv
TGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0
dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
