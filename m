Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B1A109C055
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 18:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9kOfNzKoTCMh0HxYmN+FW5DlnwUBwvrEixU/3yuiwo=; b=e55vXw6nBWk1eL
	yUL0TN/lFUR2lfM44Is//WTwrlOi3xn90+2/UIg6dJTmbBlB5AKpzyMVm3TIwyl4icD5kbLypN20U
	NnSP7Ce6Q5BuKu5r8hwYFnnFgpw8CynhONFLaS7v03s67brFme3CgUTNXdE03caTZ6jIyLTc8EnY2
	lqw2lBu+R56C7XsrlxROZnQMTctNVJ6lzZBBRBaQG7cFux1ZKO5c5udJy4/wVS7LgMZf0vVOASP66
	QWnymqCgZmW2XNO/Ak4v6McwjPbZjidmUywodpncut/3U6twxjQPuu7AUv1z9JbBlhbDZ6s7x6EEg
	OfrDA+8PfhkI142zqpDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Suo-000000044eH-3CdV;
	Wed, 25 Mar 2026 18:25:14 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Sul-000000044dO-2dfL
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 18:25:13 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-66970715adbso232876a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Mar 2026 11:25:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774463109; cv=none;
        d=google.com; s=arc-20240605;
        b=OTjgWULFbcAS72YcQqIcjQe1Iv7tkSel37Fkjfhm1vxuFfY2/VAmBjwkWOBybr9K5N
         HewiNFtXH5rDc/U5vb+6npGnm/c/+I7sHFgni6xQZplPnOvPQeiicwS4FzsT7fm3/A1y
         YroVetdlE32QQUjGsId20WFUv6z9MH68QG7PEIvAPguZttzeT2ZoyWJudVo3bekkt5WS
         aDit8lsxW3c6Q2sufDZ3sX64CVCYNrJ7ZsdX6xhM8/cCEcnoa87DJ0XRzT/OJnxDS2Rw
         0yDdisiAtpPJFplsPdSIb3z7GSiT0d1KBjSHuvKZebIWskOSY9iDpbqI2rCWrL3JttWh
         /H6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+vWMfDOSQfWlw8ZoOH44pVZOnW6Fijg7msvIoLlglLw=;
        fh=ChBbeEDB7uWteLSe9J6rUXGyEotST+0DM8SrebjoePg=;
        b=TQ06oKW9e0Z4DpG8oqF27BuBUCo0CTjq7dMGIyrBTMNDkxNFmt8lASOVk8Rz0sFecW
         Mdpk15PJ8mhLPE6dRRxRJXRXwq9N1Zqx1dkJniHqraifUEdfCdqw/0wrJGdYm3ijcil9
         zAzjkBj3dyRO+T2WJ/HsyGZhYmDjBZEO7ViUvKD62ljucuj0eaH6Yx8NpNujJFiIn1gi
         nKLqRzjKjKNGQ9q1Ab1MEQUR9Z+PU2VwOdifGO7QUcNCa+890pE0iudYMq9laiuejKZe
         tony65RemFXzHU2qXIdk4pS3f1kfPKH2f9sSvSSvXaUPJi55VHWPYsAkIdzkJmqmcXho
         a8AA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774463109; x=1775067909; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+vWMfDOSQfWlw8ZoOH44pVZOnW6Fijg7msvIoLlglLw=;
        b=UL7Oqdp5y8Efsm3Il6FBINmkOkoWrLceIzsgwzfpJCtB7fV0oUvWTn7k17CK7GjyYY
         shfYRam9ltdvu84uY1GmMR/S/8aAI/FgVm5pKUWmAHwOwRuDpaDN0q/dtp3zlI+ajckM
         nwYS1+cmTYJSd2E4Kk8B+1PaSQdfwvcvVG1JiSjyzSIxwDGPK9eypfXRijteYzFLJoeG
         wDmiVpGzA5pCmCmU3LyeiYflY3zfF/O6iKxWKdn/6LrLcLZgA+GI0GI7AcosIzlZyKAD
         ESODE/cSEewBEcrLIby4rnya3Icxwj2bO9FcjZ3E5yUkiTD0kR3BL4noevDBW+1+HhbB
         6DVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774463109; x=1775067909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+vWMfDOSQfWlw8ZoOH44pVZOnW6Fijg7msvIoLlglLw=;
        b=YZbrRDAU+CelT+003PgJRRXjx+2xZfM2x0Yx1FC+18gXiy8HuV2mHNTUiLitAN3Wea
         n66om/eRBQ+jZpKenVAapoK7sGbKAY/OW/iMwmwKb2dKqlSN5t3x4lpHDWzIBR1+ARs4
         nn/YsOVVbfv0NQ34mTR084Hm08YcibiLvyqCjzuZDPjWsGCQtCTOkasHT5hL2XLf8oK4
         AvBBUjpHZTS70mrf6Tk5MWzo6v6/LJWfzlqRKo9w1fZsm2yZC77/uCrAZUsfsregVPnQ
         3Kb1nJslNyYSGrDzCVxY5+UyiJvXqbvgddBFqlxIxjKWRI8+/+lpva0ytbi/u5P8xo76
         ZQVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUINMeo3NWXMTiiM+GGXX/CFyBXHrI8MrMwoAS1k48KgDDEfNB4xUoVv0i8jNv0qEM63fPV91Wei/bV/8inbg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1yjrHY4TGNYZOfjbWGkfJle6d4FdyE27EKj1umb5UZR+i3NXq
	kaA08tQ0P0HUo1uLs4nuCWUFsWhvtoRPFw7l+tdAEuqMFhH9g1JiUQmfwoHA4XPrIo83PPvdfBf
	v/AFMM8xfZUIhnHxB3xO7GqQvGuaqo+E=
X-Gm-Gg: ATEYQzy5fJi01FPKc6C3e+5nthuUJ2peAMyz7uAR9qUKSZSdP4VEwOYPxuQp6XOWqKT
	AOkSVr7tcjO/+ChR2/Uz2HPxvKUO4I4sVoW0G3YsEPa2NPe7PuoOyvLJo5Dy2fvesxLQf+4THH3
	DyjOTZ6sM3xa2dwrafGW093Pls0Zth4OA3zRI3fkZzfxqas3K9dUAq4CxDhxUfV+iuKuTjaZv0F
	ScXXRBn0eD4McnPwZ94UeStx0ykwZkziJ1OCZXJ9SQWJvw2n2wtcUKgOFvGRlqdy/QGNicuD1wP
	0Jsk8Q==
X-Received: by 2002:a05:6402:1d4e:b0:669:d9a4:cd4b with SMTP id
 4fb4d7f45d1cf-66a8262af14mr3212998a12.11.1774463108886; Wed, 25 Mar 2026
 11:25:08 -0700 (PDT)
MIME-Version: 1.0
References: <87bc37ee-234c-4568-b72e-955c130a6838@arm.com> <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com> <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org> <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org> <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
 <acNgUoWWMCi1oLU4@google.com> <DHBYL7Y262J2.263EOC2JNN4RK@kernel.org> <acP9-AfUQ7zp3kMS@google.com>
In-Reply-To: <acP9-AfUQ7zp3kMS@google.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 25 Mar 2026 23:54:51 +0530
X-Gm-Features: AQROBzC57btNYqd28tboSY034eYP0IcSkF3_Hl9bgfxidfp7h8unSgphUiRekA8
Message-ID: <CANAwSgR7ABawrnSG6CievYT-BZ447TaFC_kqCYc+oqxkD6Uxjg@mail.gmail.com>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Manivannan Sadhasivam <mani@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Grimmauld <grimmauld@grimmauld.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_112511_695844_A9738010 
X-CRM114-Status: GOOD (  19.33  )
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

SGkgRG1pdHJ5LyBSb2JpbiwKCk9uIFdlZCwgMjUgTWFyIDIwMjYgYXQgMjA6NTcsIERtaXRyeSBU
b3Jva2hvdiA8ZG1pdHJ5LnRvcm9raG92QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1h
ciAyNSwgMjAyNiBhdCAwNDoxMzowM1BNICswMTAwLCBEYW5pbG8gS3J1bW1yaWNoIHdyb3RlOgo+
ID4gT24gV2VkIE1hciAyNSwgMjAyNiBhdCA1OjEzIEFNIENFVCwgRG1pdHJ5IFRvcm9raG92IHdy
b3RlOgo+ID4gPiBUaGF0IG1lYW5zIHRoYXQgeW91IGFyZSBraWNraW5nIHRoZSBtYWpvcml0eSBk
ZXZpY2VzIChmb3Igbm93KSBpbnRvCj4gPiA+IGRlZmVycmFsIHBhdGguIEkgZG8gbm90IHRoaW5r
IHRoaXMgaXMgb3B0aW1hbC4KPiA+Cj4gPiBUaGF0J3Mgbm90IG5lY2Vzc2FyeSwgd2UnZCBvbmx5
IG5lZWQgdG8ga2ljayB0aG9zZSBpbnRvIHRoZSBkZWZlcnJhbCBwYXRoIHRoYXQKPiA+IGhhdmUg
UFJPQkVfRk9SQ0VfU1lOQ0hST05PVVMsIG5vPwo+Cj4gWWVzLCBpdCBtYXkgbGltaXQgdGhlIGZh
bGxvdXQsIGJ1dCBhcyBJIGV4cGxhaW5lZCBpbiBteSBvdGhlciBlbWFpbAo+IHRoZXJlIHNlZW0g
dG8gYmUgYSBzZXJpb3VzIGRpc2Nvbm5lY3Qgb24gd2hhdCBzeW5jaHJvbm91cyBhbmQKPiBhc3lu
Y2hyb25vdXMgcHJvYmluZyBtZWFuLgo+Cj4gSSB3b25kZXIsIGRvbid0IHdlIGdldCBpc3N1ZXMg
d2l0aCBwaHlsaWIgaW4gb3RoZXIgY2FzZXM/IERvbid0IHdlIGV2ZXIKPiBoYXZlIGEgbW9kdWxl
IHJlc3VsdGluZyBpbiBjcmVhdGluZyBhIHBoeSBkZXZpY2UgdHJpZ2dlcmluZyBsb2FkaW5nCj4g
YW5vdGhlciBtb2R1bGUgb24gdGhlIHNhbWUgdGhyZWFkPyBXb24ndCB0aGF0IHJlc3VsdCBpbiBh
IHdhcm5pbmcgYWxzbz8KPgo+IFRoYW5rcy4KPgo+IC0tCj4gRG1pdHJ5CgpJbiBjb21wYXJpbmcg
dGhlIE9yYW5nZSBQaSA1IFBsdXMgYW5kIFJhZHhhIFJvY2sgNUIgc2NoZW1hdGljcywKSSBub3Rp
Y2VkIGEga2V5IGRpZmZlcmVuY2UgaW4gcmVndWxhdG9yIGltcGxlbWVudGF0aW9uIGZvciBwY2ll
MngxbDIgbm9kZS4KV2hpbGUgdGhlIE9yYW5nZSBQaSB1c2VzIGEgZGVkaWNhdGVkIEdQSU8gKEdQ
SU8zX0I0KSBmb3IgZXRoZXJuZXRfcG93ZXJfZW4sCgpSZWZlcmVuY2U6IG9yYW5nZXBp4oCRNeKA
kXBsdXMgc2NoZW1hdGljcwpbMV0gaHR0cHM6Ly9kcml2ZS5nb29nbGUuY29tL2ZpbGUvZC8xY1ZU
N2xTTGxndEl2SGg0UGxsaWpQNUU0eno3cHhDeWgvdmlldwoKT24gdGhlIFJvY2sgNUIgdGllcyB0
aGUgTEFOX0VYVF9DT1JFIHJlZ3VsYXRvciBkaXJlY3RseSB0byB0aGUgVkNDXzNWM19TMwpQTUlD
IHJhaWwgd2l0aG91dCBhIGNvbnRyb2wgR1BJTy4KCkZvciBMQU5fRVhUX0NPUkUgcmVndWxhdG9y
IFBPV19FWFRfU1dSL0VOU1dSRUcgaXMgZGVmaW5lZAphcyBlbmFibGVkIGJ5IHRoaXMgcmVndWxh
dG9yLCBidXQgd2l0aCBubyBHUElPIHBpbiBsaW5rZWQgdG8gdG9nZ2xlLgoKUmVmZXJlbmNlOiBS
YWR4YSBSb2NrIDVCIHNjaGVtYXRpY3MKWzJdIGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2s1LzVi
Ky9kb2NzL2h3L3JhZHhhX3JvY2s1YnBfdjEuMl9zY2hlbWF0aWMucGRmCgpCZWNhdXNlIHRoZSBS
b2NrIDVCIGxhY2tzIHRoYXQgR1BJTyB0b2dnbGUsIHRoZSBleGlzdGluZyBkdW1teSByZWd1bGF0
b3IKZGVmaW5pdGlvbiBpcyByZWR1bmRhbnQuCgpCeSBzdHJpcHBpbmcgb3V0IHRoZSBkdW1teSBu
b2RlIGFuZCBwb2ludGluZyB0aGUgUENJZSBzdXBwbHkKZGlyZWN0bHkgdG8gdGhlIFBNSUMgcmFp
bCwKCklmIHNvbWVib2R5IGNvdWxkIHZlcmlmeSB0aGVzZSBEVFMgY2hhbmdlcwoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0
c2kKYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5k
dHNpCmluZGV4IDY2OGIxOWMwNWY3ZS4uY2Y3ZDlkNTE2ZDBlIDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5kdHNpCisrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKQEAg
LTgxLDE1ICs4MSw2IEBAIHZjYzN2M19wY2llMngxbDA6IHJlZ3VsYXRvci12Y2MzdjMtcGNpZTJ4
MWwwIHsKICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7CiAgICAgICAgfTsKCi0g
ICAgICAgdmNjM3YzX3BjaWUyeDFsMjogcmVndWxhdG9yLXZjYzN2My1wY2llMngxbDIgewotICAg
ICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwotICAgICAgICAgICAg
ICAgcmVndWxhdG9yLW5hbWUgPSAidmNjM3YzX3BjaWUyeDFsMiI7Ci0gICAgICAgICAgICAgICBy
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKLSAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+OwotICAgICAgICAgICAgICAgc3RhcnR1cC1k
ZWxheS11cyA9IDw1MDAwPjsKLSAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjY18zdjNf
czM+OwotICAgICAgIH07Ci0KICAgICAgICB2Y2MzdjNfcGNpZTMwOiByZWd1bGF0b3ItdmNjM3Yz
LXBjaWUzMCB7CiAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7
CiAgICAgICAgICAgICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7CkBAIC00ODAsNyArNDcxLDcgQEAg
JnBjaWUyeDFsMiB7CiAgICAgICAgcGluY3RybC0wID0gPCZwY2llMl8yX3JzdD4sIDwmcGNpZTIw
eDFtMF9jbGtyZXFuPjsKICAgICAgICBzdXBwb3J0cy1jbGtyZXE7CiAgICAgICAgcmVzZXQtZ3Bp
b3MgPSA8JmdwaW8zIFJLX1BCMCBHUElPX0FDVElWRV9ISUdIPjsKLSAgICAgICB2cGNpZTN2My1z
dXBwbHkgPSA8JnZjYzN2M19wY2llMngxbDI+OworICAgICAgIHZwY2llM3YzLXN1cHBseSA9IDwm
dmNjXzN2M19zMz47CiAgICAgICAgc3RhdHVzID0gIm9rYXkiOwogfTsKClRoYW5rcwotQW5hbmQK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
