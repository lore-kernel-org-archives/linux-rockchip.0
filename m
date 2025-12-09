Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72B7BD3B7EA
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 07:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56ISdHW78k/7iuE4nML2Gc6QgyfxIf9w93GiCToapu0=; b=yRsyvfI2DBl7Ex
	sKDMZt/Y9MevYggj7JQ5DdM/zY52CtlXtbqOQ3K4eKY4RBtrdJTgSa0TR+JoyARZlAuDxaQlSBhQE
	YCtvvVnY64h6x7vciNCDLDQ/Ylss11JKdLuXD2YtbCmVkOsS1vXzdczSOQEvQDwFp0UdTW3osmyC9
	i5lVaIRfhlQJvsMCl7C+gMBkNg3HQ8oBAO2+LAJw3Lhnfnm25qeu0/ay8TOWEMRWQt5KCWgfbASjg
	X0hkDfVfZ05l1q60A91V2EtK2Z3kDECpz7oBazaRrT2QfHZoyXL/aKBQwsDDhEggBGyJro1qEXfur
	qcKAvaodiGAOPkwCHvlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSrj0-0000000DvL9-3Yj9;
	Tue, 09 Dec 2025 07:01:30 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSriy-0000000DvKi-1jl6
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Dec 2025 07:01:29 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-64312565c10so8521060a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 08 Dec 2025 23:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765263686; x=1765868486; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0DbuzN9syF5gLYTINrkFF7uVR5YkoKg6hIujf/OLS4=;
        b=JqhDoWybcVPBnwRQMn0MRbxmxoPgT3pkg5UiXhXqZI90OsboBX+/WOWuF/p4rTCxY1
         h0Mf4MPHMTjFt2B8k3VlyupkFrkdWq5/unbsFbMD5uXNQxn2L00UVHrQEhocNUx4O7Ga
         QFDSDTl5eu0WfFauz13V9exIT58cKqXEhRR2u/fvORUsgX8DJq6uArGEIXQS/hZlN5Iq
         7/pj4LhUMyBR0uhs0l0Z1VesghOdq0+dJeVnXK8JDqBnH9EYhJjNlk1QpZgET36siXav
         v/qh2X96S+AaBC51/UhkzzeILvfyKZq7WtdPv5vHe9hIBiGSmBkcwcYbXIvInp7i1cGt
         gROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765263686; x=1765868486;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L0DbuzN9syF5gLYTINrkFF7uVR5YkoKg6hIujf/OLS4=;
        b=Zoltnw14TiZiIIsjo8xa274AUXts1LSSCxWDfYic2yY6GGhVKEHamqXHKNq5Cdf9qK
         dmEbGKWpEaav0/37n+iv1dsL9sFvD3CPVfC/NXUhnT/Kul+IhTsz8GkIXplwqdM9flYr
         eeIeoaYEr6I8i2ZU7F8q9zGbhmYxObIoFrzWlOc/7W84U/E5FKCobi0BQzzt8sbWvGZJ
         fpJ2AbutMY4eFbFbvlNErE4HoqkLVQWL7WGcPgo9+vdrhxkqSB1Z8nIPPG3chCsg+oQ9
         UWxXyD9qycMoXNEQOb87y6oC/HkmzuHV0iLapJRyaS9dZqgJjTJM57+klPBVeAxWnlac
         V7ww==
X-Forwarded-Encrypted: i=1; AJvYcCVKNESG95bKsQmkGqEJztc6bNBKGwO2rgdN/Mvbi5AUme8gohKDjVG9XKvtD4U1mUDaxlGoyk1R/tdRSdD/bg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwxybeAaCNUBJ6d7E+KcrYP3M5mdODUe+SMMySYSHjO2br5Vgdf
	xNUJl+JbKoSmQ52NKRuMDjZzhih4lblo+aYLyt2pKZ158YQKnrMtU+Cbv5RmAUnKQWCAYBzl0MM
	6tsQvLUtkCSOU1dyTnxkddTkuX7sSei8=
X-Gm-Gg: ASbGncsSWBFWGTtcBo14dtHGGPWr7iqEoxDKhZv+OMsqprqE3jeY3v3Va70WsdxNQ7z
	JvYEFd1FrIxFrNVUowH+zxMtb53zYU0fr5CFqiHdrto2cCSnxjzS0oqMWCNKUYlG4NR2uoxMjft
	Br1WigfMuBtQFiqGPJKGTb9NhuZ/ieN3TIQWRxMdudbAUe5elpGcNIicAQu6XKEB3zhEXzrNgZD
	T3aJGvv2O6ZjS+1SXLywf3SNVRrDUtnM4pd0TKuVXQTFujyKQ5x0ha8POylqGygwqQ=
X-Google-Smtp-Source: AGHT+IGemjVn/5z9SPhKEvbZ1Dc4loTg6z0rhYH36pyS8g2k2GNU3zfgub77sPBn6Xmoc6N/LTN4BclhEp2Gs9+rVY0=
X-Received: by 2002:a05:6402:3584:b0:640:ef6e:e069 with SMTP id
 4fb4d7f45d1cf-64919c0e44bmr7245951a12.1.1765263685788; Mon, 08 Dec 2025
 23:01:25 -0800 (PST)
MIME-Version: 1.0
References: <1764809428-183623-1-git-send-email-shawn.lin@rock-chips.com>
 <CANAwSgSn_6g1a=LYqKGom+FyhJ+qqbi5qRMKCxAoe5Q2nsN5sQ@mail.gmail.com> <951049c1-231b-4e40-9a00-7daef5a73fad@rock-chips.com>
In-Reply-To: <951049c1-231b-4e40-9a00-7daef5a73fad@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 9 Dec 2025 12:31:07 +0530
X-Gm-Features: AQt7F2pRf_1FfGMrfkbFLNOUuoHuhMYP3pxW6A2olSjPR9Rhk4yxpW7U4GMaMDc
Message-ID: <CANAwSgSo_mkaQrHmpq+7qUgpZtAgFboKK96LYbaL_WrPu=Xr6A@mail.gmail.com>
Subject: Re: [RESEND PATCH v3] arm64: dts: rockchip: Add PCIe clkreq stuff for
 RK3588 EVB1
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251208_230128_462082_7C4B9B17 
X-CRM114-Status: GOOD (  15.03  )
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

SGkgU2hhd24sCgpPbiBNb24sIDggRGVjIDIwMjUgYXQgMDU6NTUsIFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPgo+IOWcqCAyMDI1LzEyLzA3IOaYn+acn+aXpSAx
NTo1MCwgQW5hbmQgTW9vbiDlhpnpgZM6Cj4gPiBIaSBTaGF3biwKPiA+Cj4gPiBPbiBUaHUsIDQg
RGVjIDIwMjUgYXQgMDY6MjEsIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3
cm90ZToKPiA+Pgo+ID4+IEFkZCBzdXBwb3J0cy1jbGtyZXEgYW5kIHBpbm11eCBmb3IgUENJZSBB
U1BNIEwxIHN1YnN0YXRlcy4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hh
d24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4+IEFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbmlAa2VybmVsLm9yZz4KPiA+PiBSZXZpZXdlZC1ieTogSGFucyBaaGFuZyA8aGFucy56
aGFuZ0BjaXh0ZWNoLmNvbT4KPiA+PiAtLS0KPiA+IFRoYW5rcywgYXJlIHRoZXJlIHBsYW5zIHRv
IHN1cHBvcnQgdGhpcyBmZWF0dXJlIG9uIHRoZSByZW1haW5pbmcKPiA+IFJLMzU2eCBhbmQgUksz
NTg4IFNCQ3M/Cj4KPiBJdCBuZWVkcyB0byBiZSBjaGVja2VkIG9uIGEgcGVyLWJvYXJkIGJhc2lz
Lgo+CkFjY29yZGluZyB0byB0aGUgc2NoZW1hdGljcywgYWxsIFJvY2tjaGlwIFBDSWUgaW50ZXJm
YWNlcyBpbmNsdWRlIHRoZQpDTEtSRVEjIGFuZCBXQUtFIyBHUElPIHBpbnMuCgpbMV0gaHR0cHM6
Ly9kbC5yYWR4YS5jb20vcm9jazUvNWIrL2RvY3MvaHcvcmFkeGFfcm9jazVicF92MS4yX3NjaGVt
YXRpYy5wZGYKWzJdIGh0dHBzOi8vd2lraS5vZHJvaWQuY29tL19tZWRpYS9vZHJvaWQtbTEvaGFy
ZHdhcmUvbTFfbWFpbl9yZXYxLjAucGRmClszXSBodHRwczovL3dpa2kub2Ryb2lkLmNvbS9fbWVk
aWEvb2Ryb2lkLW0yL2hhcmR3YXJlL20yX21haW5fcmV2MS4wXzI0MDYxMS5wZGYKCj4gV2UncmUg
aGFwcHkgZm9yIGZvbGtzIHRvIGFkZCBpdCB0aGVtc2VsdmVzIGZvciB0aGVpciBib2FyZHMgb25j
ZSB0aGV5J3ZlCj4gdmVyaWZpZWQgdGhlIGNsa3JlcXBpbiBvbiB0aGVpciBoYXJkd2FyZS4KClRo
ZSBjb21taXQgNDI5NGUzMjExMTc4ICjigJxhcm02NDogZHRzOiByb2NrY2hpcDogU3BsaXQgdXAg
UkszNTg44oCZcyBQQ0llCnBpbmN0cmxz4oCdKQpzZXBhcmF0ZXMgdGhlIENMS1JFUSMsIFBFUlNU
IywgYW5kIFdBS0UjIHBpbmN0cmwgc2lnbmFscyBmb3IgdGhlClJLMzU4OCBwbGF0Zm9ybS4KU2hv
dWxkIHdlIGFwcGx5IGEgc2ltaWxhciBzcGxpdCBmb3IgdGhlIFJLMzU2eCBwaW5jdHJsIGRlZmlu
aXRpb25zIGFzIHdlbGw/CgpUaGFua3MKLUFuYW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
