Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5509FC76196
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Mar 2023 17:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tBPWd50BDdOOJXNQWTaE25kr30jDnMTHQWQzn+ECkHs=; b=G4Osd2zwBf7/F2
	AgPjCzAw10Iv2kCep50mdAL0zfRQ/ibPRXIkrfadAkmo9OmWgkIL2p5l+iEMxl7Hd/nyjjxW6TnvX
	mxT7zpV54SDYgmSWOZ3obQIwAhyxXjtfGwGR1gAq2bqWetI4a1NRXsoK0nwR0H7hpBQHNubkg/e4H
	ukPpBHdQwilcc4NuGHWS0x0WVJpHS+46pGQzDoxK5+7HuoFTuRXZnNL2WrYWooqhatc6GBej4iOHx
	Ajt1SH/EJTVH8jqf7OriOTy3gSEEgQg7AGzC7eeGgAQ3rfS3ZKsmpP+Z5NfdL4JGAFREbtc6mj3q9
	/o0xs+dWslR59dtig4XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phDb6-00FOR5-09;
	Tue, 28 Mar 2023 17:59:04 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phDb4-00FOQ2-1D
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Mar 2023 17:59:03 +0000
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-544787916d9so244420477b3.13
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Mar 2023 10:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680026340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7iCOvJgCRVS4iOzBwVNjZMAZpoPWvfTpuT2EPiIysIw=;
        b=Ch0LQwXMp6+HwADzQ0NyJIAzXIVM0pylhCRxEWpJYjJwkvYRNIhx5XKxJRBwplWCRU
         IIqZ8usKRRmvYYH+OUDZF0pn54PJpweLG5zaHaa/2NtfeBzbKHjsMwZGQD7MSv7pMRIp
         FPgNABLopYdKEfj/eFjrl0iUcaP8lxrzEk/qw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680026340;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7iCOvJgCRVS4iOzBwVNjZMAZpoPWvfTpuT2EPiIysIw=;
        b=A3ogNc1HW2NjdxBr+gvDF+Tp+ebZxdPg64iEwfT0wb5haKtNHncVUz/nxkLt/fkgfZ
         jG08tK1cw36o3WSLw7iv7Cd/XDMt8HsJL8k0t1Zs4RT5f73aBVh7LuTnVzKUUuzwMvVN
         RFeheOb/Py/qWGeeH22nnnsth4c6lHbsfG8gNCoi5LVzbbfmu3FfuKGZciqhzMd3X/e1
         8lGc2pME3TucwQXpht1CqbY/7s7WdfJhaEYPmIvZiRO6fF/OomAaJs+6TJ/yz1ZaY8Xx
         n1htzkCnnnAs6FVPlqCMeHg1jZ/gsBpN2xNn0gDjn9aIOL8ECD14eQPlB9W1MynBWbA3
         bpBQ==
X-Gm-Message-State: AAQBX9dVAhFPSqZXPqHzqGMeJt0Hguq4uYLWfHuRS4XB3eiLI98tnLaK
	BVgVM/htT68AXygvcUfL5gHt8vI9h3pkJseq3ovJqQ==
X-Google-Smtp-Source: AKy350aHWwgQPBqpJInSBfeAdf479+XA9a6tNgHYvVa5TMgjAFjuSiry7nERAIRBJfEqPmVlwGR+2cS8y4t/5dYPOs8=
X-Received: by 2002:a81:ac46:0:b0:544:6828:3c09 with SMTP id
 z6-20020a81ac46000000b0054468283c09mr7950759ywj.0.1680026339915; Tue, 28 Mar
 2023 10:58:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230325074022.9818-1-cnsztl@gmail.com> <20230325074022.9818-2-cnsztl@gmail.com>
In-Reply-To: <20230325074022.9818-2-cnsztl@gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 28 Mar 2023 23:28:48 +0530
Message-ID: <CAMty3ZCvzD8hOsHfMvzMsoj10kXuMitF_Par4v3fxDov7crjTg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: Add doc for FriendlyARM NanoPi R2C
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Peter Geis <pgwipeout@gmail.com>, 
	Brian Norris <briannorris@chromium.org>, Chris Morgan <macromorgan@hotmail.com>, 
	Andrew Lunn <andrew@lunn.ch>, Michael Riesch <michael.riesch@wolfvision.net>, 
	Maya Matuszczyk <maccraft123mc@gmail.com>, Vincent Legoll <vincent.legoll@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230328_105902_415721_B10DBA89 
X-CRM114-Status: UNSURE (   7.27  )
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

T24gU2F0LCBNYXIgMjUsIDIwMjMgYXQgMToxMOKAr1BNIFRpYW5saW5nIFNoZW4gPGNuc3p0bEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gQWRkIGRldmljZXRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9u
IGZvciB0aGUgRnJpZW5kbHlBUk0gTmFub1BpIFIyQy4KPgo+IFNpZ25lZC1vZmYtYnk6IFRpYW5s
aW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+Cj4gLS0tCgpSZXZpZXdlZC1ieTogSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
