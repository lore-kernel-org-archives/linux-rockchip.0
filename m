Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD08FC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jul 2022 12:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qxkl1n8b8RwpLFOUVwmnMtfKc3A4P4mA914Ham2VVcc=; b=TYNY2242/3CURL
	OtrHa/jpzWo9k+0Bih9URajSP0UA0A1c4v+PFsoKsoYG46QE+I7ItVitFTASIIbrMSLngI4bj55oZ
	0IDw1lty4agH+uuoca8HCg/ydTklbfVJ7P8mz6PBLa1/mj9IbQmKg2ZUlDK0G6c+7jnj7raJ4vOtw
	9shGda6iHv8l7svljwLig1/OGfPGSQArfse9wvm0uWFyahwcI3JR9KBy8ihsIiBoSS9B+64fKFSDs
	5rPDqIKUQoxKVc6dF1KwQ+66BsWz0VmYeMBCLxKh2WmbVy+cil9M1fBFotH9erDfsw/EFuHaVEk1A
	T87akQOVO3Sc4Q7f91gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPTw-00D4wl-0n; Mon, 18 Jul 2022 12:04:12 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oDPTr-00D4tC-Hn
	for linux-rockchip@lists.infradead.org; Mon, 18 Jul 2022 12:04:11 +0000
Received: by mail-ed1-x529.google.com with SMTP id w12so14895014edd.13
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Jul 2022 05:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=from:content-transfer-encoding:mime-version:subject:date:references
         :to:in-reply-to:message-id;
        bh=J5dOe3qrpwhe/mTO5TEDOsdj83anttAafBGUgOVvK+c=;
        b=A6LpQRPCboZ1AspzqoN4bdntSlMXB6dfD1lNPLJxeWeGkd6tfVcDUTG4jAzdnKvfxE
         TdLOcLCXKZA2+Nkj/3uZTroMW74hUFtXa6mlQHspaKwyxKx4up/f2zfGJ04zVGTjiTxH
         h8y/01xZFeQJp8sKo9Qjsd3AmqSTCpeCOAk7SmCPmGrZXYHoFGU6UVK9EDCRqSSzjibS
         T66HlPYEjU0eUzMiHvMlVtImH55Se6Avu9zEUDHHWijlmB8oOhmn//JTyNBCHdEn2yOz
         C7+sO41EtK1kpAkoXsu7DXwMc6DA61H/mtSxpNge8L0cfJX2rXb0Rx1UuVNoiUyxt2nM
         CddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:date:references:to:in-reply-to:message-id;
        bh=J5dOe3qrpwhe/mTO5TEDOsdj83anttAafBGUgOVvK+c=;
        b=6qioDQfs9BCkqCSoBZ2RS5JxFLPoLANe92WSm3aRiKOPBDkCtiSH9R+y1rG1IPNMAQ
         chooVha1WMi8fGEcP4rSUd0c5RYnF08G/UojrPEM4KYbAk6ztWTJo4AlrgcrVq95fJt1
         csn+lYjNw/F0hV//YOJaIASCGqJVjifE7kdB0mcipGkbxY5lqdjKmKcX16o/h2RZPEHr
         8bmYVvW9JXBxmpyiMpaBXbzkS5+ObwrFXH8Z4kN/9MgI9Ofalyj1PvIkIWWn0VgHUG4b
         IIgTH861aOAM2/lmfXjgX1bXoLevifGhuV645fcatGWyT57oON+6B7gb6KHP4rz3EIoW
         IsLw==
X-Gm-Message-State: AJIora+e/MsPPp0ueSS1WhzP/zHkzgrDzdP+As7NPYxXgqqpnl7rr9fd
	PjElTmr1b5c2SJe6RZkOa6bhpw==
X-Google-Smtp-Source: AGRyM1tMyLWy+XGWgajL31TM0hNIHdtRpK7GdQZ1WaJ0dLa8h4P4f34Y26ViVdXKxkfb34oUe82E8w==
X-Received: by 2002:a05:6402:1e95:b0:437:ce7f:e17a with SMTP id f21-20020a0564021e9500b00437ce7fe17amr35833626edf.169.1658145844061;
        Mon, 18 Jul 2022 05:04:04 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id mb1-20020a170906eb0100b0072aa38d768esm5430355ejb.64.2022.07.18.05.04.03
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jul 2022 05:04:03 -0700 (PDT)
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk3399-nanopi4: Fix voltage
 regulator config
Date: Mon, 18 Jul 2022 14:04:02 +0200
References: <963AF33B-54B7-4172-92D1-E2898E256A7E@kohlschutter.com>
 <14EE0603-99C5-49AE-BDDB-C22C5B1924E2@kohlschutter.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>
In-Reply-To: <14EE0603-99C5-49AE-BDDB-C22C5B1924E2@kohlschutter.com>
Message-Id: <7AFECB02-5A87-43DD-8161-6068720AB8E3@kohlschutter.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220718_050407_612640_2558223B 
X-CRM114-Status: UNSURE (   8.59  )
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

QW0gMTguMDcuMjAyMiB1bSAxNDowMiBzY2hyaWViIENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxj
aHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT46Cj4gCj4gQSBzZXJpZXMgb2YgaXNzdWVzIGV4aXN0
IGFyb3VuZCB0aGUgInZjYzN2MF9zZCIgdm9sdGFnZSByZWd1bGF0b3IgdGhhdAo+IG1hZGUgaXQg
bmVjZXNzYXJ5IHRvIG1hcmsgaXQgImFsd2F5cy1vbiIuCj4gCj4gV2l0aCB0aGUgcGF0Y2ggInJl
Z3VsYXRvcjogY29yZTogUmVzb2x2ZSBzdXBwbHkgbmFtZSBlYXJsaWVyIHRvIHByZXZlbnQKPiBk
b3VibGUtaW5pdCIsIHRoaXMgb3B0aW9uIGlzIG5vIGxvbmdlciBuZWNlc3NhcnkuCj4gLi4uCgpX
YWxraW5nIGJhY2sgb24gbXkgY2xhaW0gaW4gdGhlIGNvbW1pdCBtZXNzYWdlIHRoYXQgbm8gZnVy
dGhlciBwYXRjaGVzIGFyZSBuZWVkZWQgZm9yIHRoZSB1LWJvb3QgaW50ZWdyYXRpb24gdG8gd29y
ay4KT3RoZXIgdGhhbiB0aGF0LCB0aGUgYWN0dWFsIHBhdGNoIGlzIHVuY2hhbmdlZC4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
