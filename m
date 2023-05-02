Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A669BC77B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 21:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5m9vWkrnUmzIjkHs2JfIKTzsZi6k/Lm0QaYJEa/Yl0E=; b=fAuZZ5WtouEt0z
	PGJji+byWJi04WXOqH/ZPYhym4RMxCDZE317ckPXV+PaqM40JGQ7/ISyYtJsaTzViC2H//fva4qgT
	cKTUgbnH8rXzQMPggaxw9woubwrfqLTH/Dt/0tUfvtrFlZEsH7KuqY68So5lt0YqlKfRyQEWQjHCY
	70i2WG2/R4S70RpX2QfJua2WmzjtlqtaTZpf+43qpGhprbFV6hIJdRPvV1jXEnqXzv4uINpzPgbCe
	ePJM3MD7FLCgQQdT1pf7B25HCASGdz8xx304cXqohUD/WSY+AG7er40fbVsz/GNF251xa6wqaAy3a
	t6wAnok9WCtPk/LjZpEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptxP7-002fZV-00;
	Tue, 02 May 2023 21:19:21 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptxP2-002fVQ-0d
	for linux-rockchip@lists.infradead.org;
	Tue, 02 May 2023 21:19:17 +0000
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-55a1462f9f6so31454727b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 02 May 2023 14:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683062351; x=1685654351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0h/G3jDyFIlsGjKztRY6ZyzstNpimF/rtsReSh8uQhc=;
        b=KRpm0LIjs28Qed8shWU3rN8qoEPt7Z2dbTHfeBDQWUYQ/eleo/D1hSCVxF8U6UZ+bs
         F1XMfbU8w5Ga3fHrL9f52m54VFw9b/NoIHxi6VJvUi0wJbHm/C9DZq5Ys2jrTCtfhcm1
         oBkQ2yn5ZHZ/TfTLorY09e+913thRNTfaqI5mNLT0k9tsDcNET4Mx+BQIf1502z+U6F5
         zdPY5wpLT0wKF469rWVGVCkKCBVQOBcwk1PBnM9kbNCfxW76JztqaMMAKMKH5t+1tPeB
         +v6bV47t5nalynw/2xl/re8ehZcjTh36Ag3m136LAbl2iZeuJ0S5NvYOTuc93MhpGwqC
         v4lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683062351; x=1685654351;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0h/G3jDyFIlsGjKztRY6ZyzstNpimF/rtsReSh8uQhc=;
        b=JD1sR8dEjjL7xBntmCzhrYCv5udybvIIWtJEqRhAFip1b5GNDyfgd4EZ8bf03bdVLC
         Onbil1FatHSzIUSBZYSgSr4f1+3jnmw1JbgnL91gujanUV8CWesDCi6F35jvUf5aOIkr
         e6xs7CiNL4TVI3CMm8Ig1EEp47XMWE3ZQoNTHlxzQny1NagP0gmPKZHg+WUlpUZvOiZq
         cbCD+mVIc/toiHdqvHIdbfULeBXBejHXF6oxvnbZJlLZc61OQ148hQxaHJDKvzTLzecq
         oZWG2WCfYT5VzpKYzpkQXSClq5dJVaZ1YfEs306nXm4arqsd2HfRv15TGIGR6mL2OWg4
         yN5w==
X-Gm-Message-State: AC+VfDycnyLBWf2lfANmyWAtSHEwmflrNJQIADUVnzY5E8nNh09AwQKV
	6pHO0zSffs70J4yGWSrp3b59DEjaK0N6JxkjdJvuEw==
X-Google-Smtp-Source: ACHHUZ40eKx7z1zIEK43ZteAtF8Wd9UqjzfberS/RGyfg0Yc35rUPQJQ5+CsgQDyrPQsSFVeJx8PEmL+DqYZgiAtTAc=
X-Received: by 2002:a0d:e68f:0:b0:54f:6a20:5a19 with SMTP id
 p137-20020a0de68f000000b0054f6a205a19mr17486306ywe.34.1683062351071; Tue, 02
 May 2023 14:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
In-Reply-To: <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 2 May 2023 23:18:59 +0200
Message-ID: <CACRpkdZx6vEVnxVt0tW4nYtnbv8g=Dc11sa_3myB3GW4jXk1oA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Rob Herring <robh+dt@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson <olof@lixom.net>, 
	Christian Marangi <ansuelsmth@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Linux-OMAP <linux-omap@vger.kernel.org>, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_141916_235702_B8703A7C 
X-CRM114-Status: GOOD (  14.46  )
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

T24gVHVlLCBNYXkgMiwgMjAyMyBhdCA5OjQw4oCvUE0gUm9iIEhlcnJpbmcgPHJvYmgrZHRAa2Vy
bmVsLm9yZz4gd3JvdGU6Cgo+IEkndmUgZHVzdGVkIG9mZiBteSBzY3JpcHQgYW5kIG1hZGUgYSBi
cmFuY2hbMV0gd2l0aCB0aGUgcmVzdWx0Lgo+IFRoZXJlJ3MganVzdCBhIGNvdXBsZSBvZiBmaXhl
cyBuZWVkZWQgYWZ0ZXIgdGhlIHNjcmlwdCBpcyBydW4gKHNlZSB0aGUKPiB0b3AgY29tbWl0KS4g
VGhlIGNyb3NzIGFyY2ggaW5jbHVkZXMgYXJlIGFsbCBmaXhlZCB1cCBieSB0aGUgc2NyaXB0Lgo+
IGR0YnNfaW5zdGFsbCBtYWludGFpbnMgYSBmbGF0IGluc3RhbGwuIEkgY29tcGFyZWQgdGhlIG51
bWJlciBvZiAuZHRicwo+IGJlZm9yZSBhbmQgYWZ0ZXIgdG8gY2hlY2sgdGhlIHNjcmlwdC4KPgo+
IEkgdGhpbmsgdGhlIG9ubHkgaXNzdWUgcmVtYWluaW5nIGlzIGZpbmFsaXppbmcgdGhlIG1hcHBp
bmcgb2YKPiBwbGF0Zm9ybXMgdG8gc3ViZGlycy4gV2hhdCBJIGhhdmUgY3VycmVudGx5IGlzIGEg
bWl4dHVyZSBvZiBTb0MKPiBmYW1pbGllcyBhbmQgdmVuZG9ycy4gVGhlIG1vc3Qgbm90YWJsZSBh
cmUgYWxsIHRoZSBGcmVlc2NhbGUvTlhQCj4gcGxhdGZvcm1zLCBweGEsIHNvY2ZwZ2EsIGFuZCBz
dG0zMi4gSXQncyBub3QgY29uc2lzdGVudCB3aXRoIGFybTY0Cj4gZWl0aGVyLiBPbmNlIHRoYXQn
cyBmaW5hbGl6ZWQsIEkgc3RpbGwgbmVlZCB0byBnbyB1cGRhdGUgTUFJTlRBSU5FUlMuCgpJIHNl
ZSBteSBuaXRzIHdlcmUgZml4ZWQgbGlrZSBJIHdhbnRlZCB0aGVtLCBhbmQgaXQncyBub3cgbW9z
dGx5IGEKbWl4IG9mIHNvYyBhbmQgdmVuZG9yIG5hbWVzIHRoYXQgbWFrZSBzZW5zZSBzbyBmcm9t
IG15IHBvaW50IG9mIHZpZXc6CkFja2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51cy53YWxsZWlq
QGxpbmFyby5vcmc+CgpOQjoKYXJjaC9hcm02NC9ib290L2R0cy9hcm0kCnZleHByZXNzLXYybS1y
czEuZHRzaSAtPiAuLi8uLi8uLi8uLi9hcm0vYm9vdC9kdHMvdmV4cHJlc3MtdjJtLXJzMS5kdHNp
CgpUaGlzIHN0aWxsIHdvcmtzIGFmdGVyIHRoZSBzY3JpcHQsIHllcz8KCllvdXJzLApMaW51cyBX
YWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
